#ifndef WINDOW_MANAGER_HPP
#define WINDOW_MANAGER_HPP

#include <SDL2/SDL.h>
#include <string>
#include <memory>

/**
 * @class WindowManager
 * @author Michael Griffin
 * @date 11/16/2015
 * @file window_manager.hpp
 * @brief Manages Individual SDL2 Window Interfaces with Renderers
 */
class WindowManager
{
public:
    WindowManager(int window_height, int window_width);
    ~WindowManager();

    // Handles to Window and Renderer
    SDL_Window *getWindow()
    {
        return m_window;
    }
    SDL_Renderer *getRenderer()
    {
        return m_renderer;
    }
    Uint32 getWindowId() const
    {
        return m_window_id;
    }

    /**
     * @brief Set Current Window to Focus
     */
    void grabWindow();

    /**
     * @brief Override default Window Height
     * @param value
     */
    void setWindowHeight(int value);

    int getWindowHeight() const { return m_height; }

    /**
     * @brief Override default Window Width
     * @param value
     */
    void setWindowWidth(int value);

    int getWindowWidth() const { return m_width; }

    /**
     * @brief Toggle Vertical Sync with GPU
     * @param value
     */
    void setHintVsync(bool value);

    /**
     * @brief Set the Texture Filtering Level for the GPU
     * @param value
     */
    void setTextureFilter(int value);

    /**
     * @brief Set Rendering Acceleration for GPU
     * @param value
     */
    void setHintAcceleration(bool value);

    /**
     * @brief Check if the Currnet window is active
     */
    bool isActiveWindow() const { return m_is_active_window; }

    /**
     * @brief sets if the current window is active.
     * @param isActive
     */
    void setActiveWindow(bool isActive)
    {
        m_is_active_window = isActive;
    }

    /**
     * @brief Sets the Hints for Texture/Renderer
     */
    void createHints();

    /**
     * @brief Recreates the Renderer and Texture
     * @param mode
     */
    void createRenderer();

    /**
     * @brief Window Creation and recreation.
     */
    bool createWindow(bool fullScreen);

    /**
     * @brief Set the Texture Renderer
     * @param texture
     */
    void setRenderTarget(SDL_Texture *texture);

    /**
     * @brief Clears the Renderer of all Data.
     */
    void renderClear();

    /**
     * @brief Set the Renderer Drawing Color (4) Bits.
     * @param R
     * @param G
     * @param B
     * @param A
     */
    void setRenderDrawColor(Uint32 R, Uint32 G, Uint32 B, Uint32 A);

    /**
     * @brief Fill Rect Area of Renderer Display on Screen
     * @param rect
     */
    void renderFill(SDL_Rect *rect);

    /**
     * @brief Copy From Texture to Renderer
     * @param texture
     * @param orig
     * @param dest
     */
    void renderCopy(SDL_Texture *texture, SDL_Rect *orig, SDL_Rect *dest);

    /**
     * @brief Draw Renderer to Screen
     */
    void renderPresent();

    /**
     * @brief Get the Window Dimensions of the Renderer
     * @param screenWidth
     * @param screenHeight
     */
    void renderOutputSize(int &screenWidth, int &screenHeight);

    /**
     * @brief Update The Texture (Streaming)
     * @param texture
     * @param rect
     * @param surface
     */
    void updateTexture(SDL_Texture *texture,
                       SDL_Rect *rect,
                       SDL_Surface *surface);

private:

    SDL_Window*    m_window;
    SDL_Renderer*  m_renderer;
    Uint32         m_window_id;
    int            m_width;
    int            m_height;
    long           m_position_placement;
    std::string    m_hint_vSync;          // "0" or "1" Disabled or Enabled
    std::string    m_hint_textureFilter;  // "0" or "1" for none or linear
    std::string    m_hint_acceleration;   // "0" or "1" Disabled or Enabled
    bool           m_is_active_window;

};

typedef std::shared_ptr<WindowManager> window_manager_ptr;

#endif // WINDOW_MANAGER_HPP
