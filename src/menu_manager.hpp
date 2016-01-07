#ifndef MENUSYSTEM_HPP
#define MENUSYSTEM_HPP

#include "menu_function.hpp"
#include "link_list.hpp"
#include "menu_config.hpp"

#include <boost/smart_ptr/shared_ptr.hpp>

#include <string>
#include <vector>

// Forward Declarations.
class SequenceDecoder;
typedef boost::shared_ptr<SequenceDecoder> sequence_decoder_ptr;

class Renderer;
typedef boost::shared_ptr<Renderer> renderer_ptr;

/**
 * @class SystemConnection
 * @author Michael Griffin
 * @date 12/22/2015
 * @file menu_manager.hpp
 * @brief Connection data pulled from XML
 */
typedef struct SystemConnection
{
    std::string name;
    std::string ip;
    int         port;
    std::string protocol;
    std::string login;
    std::string password;  // Make this encrypted with more time.
    std::string font;
    std::string keyMap;    // ANSI, VT100

} SystemConnection;

/**
 * @class MenuManager
 * @author Michael Griffin
 * @date 12/22/2015
 * @file menu_manager.hpp
 * @brief Handle the Menu System / Dialing Directory interface.
 */
class MenuManager
{

public:
    MenuManager(
        std::string          program_path,
        renderer_ptr         renderer,
        sequence_decoder_ptr decoder
    );

    ~MenuManager();

    std::string          m_program_path;
    MenuConfig           m_menu_config;

    sequence_decoder_ptr m_sequence_decoder;
    MenuFunction         m_menu_function;
    renderer_ptr         m_renderer;

    // Dialing Directory
    unsigned long        m_lightbar_position;
    int                  m_directory_top_margin;
    int                  m_directory_bottom_margin;
    int                  m_current_page;
    int                  m_box_size;
    int                  m_current_theme_index;

    // Class Types for use
    LinkList                      m_link_list;
    std::vector<list_bar>         m_result;
    std::vector<SystemConnection> m_systemConnection;

    // Methods
    /**
     * @brief Helper to append folder to path
     */
    std::string getAssetPath();

    /**
     * @brief Helper to append directory path
     */
    std::string getDirectoryPath();

    /**
     * @brief Helper to append ansi path
     */
    std::string getAnsiPath();

    std::vector<list_bar> buildDialList();
    void  readinAnsi(std::string FileName, std::string &buff);
    void  parseHeader(std::string FileName);
    bool  changeTheme(int idx);
    void  readDirectoryListing();

    bool  readDialDirectory();
    void  createDialDirectory();
    void  writeDialDirectory();

    // Setup for Initial Screen
    void  setupDialDirectory();

    // Redraws Pages and Changes.
    void  updateDialDirectory();

    // Take Input from update();
    int  handleMenuUpdates(const std::string &inputSequence);

    // Handles Returned Menu Command From Selection.
    int  handleMenuActions(const std::string &inputSequence);

};

class MenuManager;
typedef boost::shared_ptr<MenuManager> menu_manager_ptr;

#endif // MENUSYSTEM_HPP
