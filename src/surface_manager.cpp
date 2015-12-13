#include "surface_manager.hpp"

#ifdef TARGET_OS_MAC
#include <SDL2/SDL.h>
#elif _WIN32
#include <SDL2/SDL.h>
#else
#include <SDL2/SDL.h>
#endif

#include <iostream>
#include <cmath>
#include <cstdio>
#include <assert.h>

SurfaceManager::SurfaceManager(window_manager_ptr window_manager, std::string program_path)
    : m_window_manager(window_manager)    
    , m_programPath(program_path)
    , m_currentFont("vga8x16.bmp")
    , m_previousFont("")
    // Initalize Color Masks.
    #if SDL_BYTEORDER == SDL_BIG_ENDIAN
    , m_redMask(0xff000000)
    , m_greenMask(0x00ff0000)
    , m_blueMask(0x0000ff00)
    , m_alphaMask(0x000000ff)
    #else
    , m_redMask(0x000000ff)
    , m_greenMask(0x0000ff00)
    , m_blueMask(0x00ff0000)
    , m_alphaMask(0xff000000)
    #endif
    , m_surfaceWidth(640)
    , m_surfaceHeight(400)
    , m_windowWidth(640)
    , m_windowHeight(400)
    , m_surfaceBits(32)
    , m_characterWidth(8)
    , m_characterHeight(16)
{
}

SurfaceManager::~SurfaceManager()
{
    std::cout << "*** Free Textures" << std::endl;
    SDL_DestroyTexture(m_selectionTexture);
    m_selectionTexture = nullptr;

    SDL_DestroyTexture(m_globalTexture);
    m_globalTexture = nullptr;

    std::cout << "~SurfaceManager" << std::endl;
}

/**
 * @brief Add Surface to Container
 * @param value
 * @param surface
 */
void SurfaceManager::addSurface(int value, surface_ptr surface)
{
    m_surfaceList.insert(std::make_pair(value, surface));
}

/**
 * @brief Remove Surface From Container
 * @param value
 */
void SurfaceManager::delSurface(int value)
{
    auto it = m_surfaceList.find(value);
    if(it != m_surfaceList.end())
    {
        m_surfaceList.erase(it);
    }
}

/**
 * @brief Tests if Surface is in list.
 * @param value
 */
bool SurfaceManager::surfaceExists(int value)
{
    auto it = m_surfaceList.find(value);
    if(it != m_surfaceList.end())
    {
        return true;
    }
    return false;
}

/**
 * @brief Set the Current Fontname
 * @return
 */
void SurfaceManager::setCurrentFont(std::string font)
{
    m_previousFont = m_currentFont;
    m_currentFont = font;
}

/**
 * @brief Grab the Current Fontname
 * @return
 */
std::string SurfaceManager::getCurrentFont()
{
    return m_currentFont;
}

/**
 * @brief Check if a new Font was Set
 * @return
 */
bool SurfaceManager::didFontChange()
{
    return (m_currentFont != m_previousFont);
}

/**
 * @brief Loads Bitmap Fonts from Files
 * @param fontName
 * @return
 */
bool SurfaceManager::loadBitmapImage(std::string fontName)
{
    std::string path = m_programPath;
    std::cout << "loading Fontname -> : " << fontName << std::endl;

#ifdef _WIN32
    path.append("assets\\");
#else
    path.append("assets/");
#endif
    path.append(fontName);

    // Loading Bitmap first time, or reloading,  If already Exists remove it.
    if(surfaceExists(SURFACE_FONT))
    {

        delSurface(SURFACE_FONT);
    }

    // Debugging.  1 is missing in 8x16.bmp !!!
    //std::cout << "loading Font -> current: "
    //          << TheRenderer::Instance()->getCurrentFont()
    //          << std::endl;

    surface_ptr fontSurface(
        new Surfaces(
            SDL_LoadBMP(path.c_str())
        )
    );

    if(!fontSurface->exists())
    {
        SDL_Log("loadBitmapImage() fontSurface font: %s", path.c_str());
        SDL_Delay(1500);
        assert(false);
    }

    // Convert and Add to Surface Manager.
    if(!fontSurface->convert())
    {
        SDL_Log("Error Converting Font Surface!");
        return false;
    }
    addSurface(SURFACE_FONT, fontSurface);

    return true;
    /*
     * WIP, Reimpliment this!
     */
    /*
       // Redraw Cursor with new font!
       // When no data received, this is when we want to show the cursor!
       // Setup cursor in current x/y position Cursor.
       if(TheSequenceParser::Instance()->isCursorActive())
       {
           setupCursorChar();
           renderCursorOnScreen();
           drawTextureScreen();
       }

       m_previousFont = m_currentFont; // Current to Previous
       m_currentFont  = fontName;    // New to Current.
       return m_cachedSurface != nullptr;*/
}


/**
 * @brief Creates / Recreate Textures
 * @param textureType
 * @param surface
 */
void SurfaceManager::createTexture(int textureType, SDL_Surface *surface)
{
    switch(textureType)
    {
        case TEXTURE_GLOBAL:
            if(m_globalTexture)
            {
                SDL_DestroyTexture(m_globalTexture);
            }
            m_globalTexture =
                SDL_CreateTexture(m_window_manager->getRenderer(),
                                  SDL_PIXELFORMAT_ARGB8888,
                                  SDL_TEXTUREACCESS_STREAMING,
                                  surface->w, surface->h);
            if(m_globalTexture)
            {
                if(SDL_SetTextureBlendMode(
                            m_globalTexture,
                            SDL_BLENDMODE_NONE) < 0)
                    //SDL_BLENDMODE_BLEND) < 0)
                {
                    SDL_Log("%s: Error Setting Blend on Texture - %s",
                            SDL_GetError());
                }
            }
            break;

        case TEXTURE_SELECTION:
            if(m_selectionTexture)
            {
                SDL_DestroyTexture(m_selectionTexture);
            }
            m_selectionTexture =
                SDL_CreateTexture(m_window_manager->getRenderer(),
                                  SDL_PIXELFORMAT_ARGB8888,
                                  SDL_TEXTUREACCESS_TARGET,
                                  surface->w, surface->h);
            if(m_selectionTexture)
            {
                if(SDL_SetTextureBlendMode(
                            m_selectionTexture,
                            SDL_BLENDMODE_ADD) < 0)
                {
                    SDL_Log("%s: Error Setting Blend on Texture - %s",
                            SDL_GetError());
                }
            }
            break;

        default:
            break;
    }
}

/**
 * @brief Fills or Clears a Surface with Black.
 * @param surface
 */
void SurfaceManager::clearSurface(int value)
{
    auto it = m_surfaceList.find(value);
    if(it != m_surfaceList.end())
    {
        (*it).second->clear();
    }
}

/**
 * @brief Handle Converting Surface and Adding to SurfaceManager.
 * @param surface
 */
void SurfaceManager::convertAndAdd(int surfaceType, surface_ptr surface)
{
    // Convert the Pixel Format.
    if(surface->exists())
    {
        if(!surface->convert())
        {
            SDL_Log("Unable to create charSurface");
            assert(false);
        }

        // Success, add the Surface to the Manager
        addSurface(surfaceType, surface);
    }
    else
    {
        SDL_Log("Unable to create charSurface");
        assert(false);
    }
}

/**
 * @brief Create RGB Surface, then Converts to RGBA on the fly.
 * @param surfaceType
 */
void SurfaceManager::createSurface(int surfaceType)
{
    // Run Through Surface Alias and create surface.
    switch(surfaceType)
    {
            // Handle Indivdiual Character Surfaces
        case SURFACE_CHARACTER:
        case SURFACE_CURSOR_ON:
        case SURFACE_CURSOR_OFF:
            {
                // If Exists, Recreate it.
                if(surfaceExists(surfaceType))
                {
                    delSurface(surfaceType);
                }

                // Create Surface with Smartpointer.
                surface_ptr surface(
                    new Surfaces(
                        SDL_CreateRGBSurface(
                            SDL_SWSURFACE,
                            m_characterWidth, m_characterHeight, m_surfaceBits,
                            m_redMask, m_greenMask, m_blueMask, m_alphaMask
                        )
                    )
                );

                convertAndAdd(surfaceType, surface);
            }
            break;

            // Handles Main Screen Surfaces
        case SURFACE_MAIN_SCREEN:
            {
                // If Exists, Recreate it.
                if(surfaceExists(surfaceType))
                {
                    delSurface(surfaceType);
                }

                // Create Surface with Smartpointer.
                surface_ptr surface(
                    new Surfaces(
                        SDL_CreateRGBSurface(
                            SDL_SWSURFACE,
                            m_surfaceWidth, m_surfaceHeight, m_surfaceBits,
                            m_redMask, m_greenMask, m_blueMask, m_alphaMask
                        )
                    )
                );

                convertAndAdd(surfaceType, surface);
            }
            break;

            // Handles Screen Surface Scaled to Match Texture Dimensions.
        case SURFACE_MAIN_SCALED:
            {
                // If Exists, Recreate it.
                if(surfaceExists(surfaceType))
                {
                    delSurface(surfaceType);
                }

                // Get the Actual size of the Renderer to match the surface for scaling.
                int screenWidth, screenHeight;
                SDL_GetRendererOutputSize(m_window_manager->getRenderer(), &screenWidth, &screenHeight);

                // Create Surface with Smartpointer.
                surface_ptr surface(
                    new Surfaces(
                        SDL_CreateRGBSurface(
                            SDL_SWSURFACE,
                            screenWidth, screenHeight, m_surfaceBits,
                            m_redMask, m_greenMask, m_blueMask, m_alphaMask
                        )
                    )
                );

                convertAndAdd(surfaceType, surface);
            }
            break;

            // Handles Last Row of a Surface for Scrolling
            // Currently used for Main Screen, might need scaled version instead?
        case SURFACE_BOTTOM_ROW:
            {
                // If Exists, Recreate it.
                if(surfaceExists(surfaceType))
                {
                    delSurface(surfaceType);
                }

                if(!surfaceExists(SURFACE_MAIN_SCREEN))
                {
                    SDL_Log("Main Screen Doesn't Exist for Bottom Row Surface!");
                    assert(false);
                }

                // Create Surface with Smartpointer, uses with of Main Screen, Must exist first!
                surface_ptr surface(
                    new Surfaces(
                        SDL_CreateRGBSurface(
                            SDL_SWSURFACE,
                            m_surfaceList[SURFACE_MAIN_SCREEN]->getSurface()->w, m_characterHeight, m_surfaceBits,
                            m_redMask, m_greenMask, m_blueMask, m_alphaMask
                        )
                    )
                );

                convertAndAdd(surfaceType, surface);
            }
            break;

        default:
            break;
    }
}
