##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=EtherTerm
ConfigurationName      :=Debug
WorkspacePath          :=/home/blue/code/EtherTerm/linux
ProjectPath            :=/home/blue/code/EtherTerm/linux
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=
Date                   :=12/30/17
CodeLitePath           :=/home/blue/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="EtherTerm.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch).. $(IncludeSwitch)../src 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)SDL2main $(LibrarySwitch)SDL2 $(LibrarySwitch)pthread $(LibrarySwitch)ssh 
ArLibs                 :=  "SDL2main" "SDL2" "pthread" "libssh" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -pedantic -W -std=c++11 -Wall  $(Preprocessors)
CFLAGS   :=  -g -O0 -pedantic -W -std=c++11 -Wall  $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/up_src_input_handler.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_link_list.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_menu_config.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_menu_function.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_menu_io.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_menu_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_protocol.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_renderer.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_screen_buffer.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_sequence_parser.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_session_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_surface_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_telnet_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_tinystr.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_tinyxml.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_window_manager.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/up_src_io_service.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_socket_handler.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_socket_ssh.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_socket_telnet.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_irc_manager.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_socket_irc.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(ObjectSuffix) \
	



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_src_input_handler.cpp$(ObjectSuffix): ../src/input_handler.cpp $(IntermediateDirectory)/up_src_input_handler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/input_handler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_input_handler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_input_handler.cpp$(DependSuffix): ../src/input_handler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_input_handler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_input_handler.cpp$(DependSuffix) -MM ../src/input_handler.cpp

$(IntermediateDirectory)/up_src_input_handler.cpp$(PreprocessSuffix): ../src/input_handler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_input_handler.cpp$(PreprocessSuffix) ../src/input_handler.cpp

$(IntermediateDirectory)/up_src_link_list.cpp$(ObjectSuffix): ../src/link_list.cpp $(IntermediateDirectory)/up_src_link_list.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/link_list.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_link_list.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_link_list.cpp$(DependSuffix): ../src/link_list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_link_list.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_link_list.cpp$(DependSuffix) -MM ../src/link_list.cpp

$(IntermediateDirectory)/up_src_link_list.cpp$(PreprocessSuffix): ../src/link_list.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_link_list.cpp$(PreprocessSuffix) ../src/link_list.cpp

$(IntermediateDirectory)/up_src_main.cpp$(ObjectSuffix): ../src/main.cpp $(IntermediateDirectory)/up_src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_main.cpp$(DependSuffix): ../src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_main.cpp$(DependSuffix) -MM ../src/main.cpp

$(IntermediateDirectory)/up_src_main.cpp$(PreprocessSuffix): ../src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_main.cpp$(PreprocessSuffix) ../src/main.cpp

$(IntermediateDirectory)/up_src_menu_config.cpp$(ObjectSuffix): ../src/menu_config.cpp $(IntermediateDirectory)/up_src_menu_config.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/menu_config.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_menu_config.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_menu_config.cpp$(DependSuffix): ../src/menu_config.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_menu_config.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_menu_config.cpp$(DependSuffix) -MM ../src/menu_config.cpp

$(IntermediateDirectory)/up_src_menu_config.cpp$(PreprocessSuffix): ../src/menu_config.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_menu_config.cpp$(PreprocessSuffix) ../src/menu_config.cpp

$(IntermediateDirectory)/up_src_menu_function.cpp$(ObjectSuffix): ../src/menu_function.cpp $(IntermediateDirectory)/up_src_menu_function.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/menu_function.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_menu_function.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_menu_function.cpp$(DependSuffix): ../src/menu_function.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_menu_function.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_menu_function.cpp$(DependSuffix) -MM ../src/menu_function.cpp

$(IntermediateDirectory)/up_src_menu_function.cpp$(PreprocessSuffix): ../src/menu_function.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_menu_function.cpp$(PreprocessSuffix) ../src/menu_function.cpp

$(IntermediateDirectory)/up_src_menu_io.cpp$(ObjectSuffix): ../src/menu_io.cpp $(IntermediateDirectory)/up_src_menu_io.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/menu_io.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_menu_io.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_menu_io.cpp$(DependSuffix): ../src/menu_io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_menu_io.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_menu_io.cpp$(DependSuffix) -MM ../src/menu_io.cpp

$(IntermediateDirectory)/up_src_menu_io.cpp$(PreprocessSuffix): ../src/menu_io.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_menu_io.cpp$(PreprocessSuffix) ../src/menu_io.cpp

$(IntermediateDirectory)/up_src_menu_manager.cpp$(ObjectSuffix): ../src/menu_manager.cpp $(IntermediateDirectory)/up_src_menu_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/menu_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_menu_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_menu_manager.cpp$(DependSuffix): ../src/menu_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_menu_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_menu_manager.cpp$(DependSuffix) -MM ../src/menu_manager.cpp

$(IntermediateDirectory)/up_src_menu_manager.cpp$(PreprocessSuffix): ../src/menu_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_menu_manager.cpp$(PreprocessSuffix) ../src/menu_manager.cpp

$(IntermediateDirectory)/up_src_protocol.cpp$(ObjectSuffix): ../src/protocol.cpp $(IntermediateDirectory)/up_src_protocol.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/protocol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_protocol.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_protocol.cpp$(DependSuffix): ../src/protocol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_protocol.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_protocol.cpp$(DependSuffix) -MM ../src/protocol.cpp

$(IntermediateDirectory)/up_src_protocol.cpp$(PreprocessSuffix): ../src/protocol.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_protocol.cpp$(PreprocessSuffix) ../src/protocol.cpp

$(IntermediateDirectory)/up_src_renderer.cpp$(ObjectSuffix): ../src/renderer.cpp $(IntermediateDirectory)/up_src_renderer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/renderer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_renderer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_renderer.cpp$(DependSuffix): ../src/renderer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_renderer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_renderer.cpp$(DependSuffix) -MM ../src/renderer.cpp

$(IntermediateDirectory)/up_src_renderer.cpp$(PreprocessSuffix): ../src/renderer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_renderer.cpp$(PreprocessSuffix) ../src/renderer.cpp

$(IntermediateDirectory)/up_src_screen_buffer.cpp$(ObjectSuffix): ../src/screen_buffer.cpp $(IntermediateDirectory)/up_src_screen_buffer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/screen_buffer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_screen_buffer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_screen_buffer.cpp$(DependSuffix): ../src/screen_buffer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_screen_buffer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_screen_buffer.cpp$(DependSuffix) -MM ../src/screen_buffer.cpp

$(IntermediateDirectory)/up_src_screen_buffer.cpp$(PreprocessSuffix): ../src/screen_buffer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_screen_buffer.cpp$(PreprocessSuffix) ../src/screen_buffer.cpp

$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(ObjectSuffix): ../src/sequence_decoder.cpp $(IntermediateDirectory)/up_src_sequence_decoder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/sequence_decoder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(DependSuffix): ../src/sequence_decoder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(DependSuffix) -MM ../src/sequence_decoder.cpp

$(IntermediateDirectory)/up_src_sequence_decoder.cpp$(PreprocessSuffix): ../src/sequence_decoder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_sequence_decoder.cpp$(PreprocessSuffix) ../src/sequence_decoder.cpp

$(IntermediateDirectory)/up_src_sequence_parser.cpp$(ObjectSuffix): ../src/sequence_parser.cpp $(IntermediateDirectory)/up_src_sequence_parser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/sequence_parser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_sequence_parser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_sequence_parser.cpp$(DependSuffix): ../src/sequence_parser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_sequence_parser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_sequence_parser.cpp$(DependSuffix) -MM ../src/sequence_parser.cpp

$(IntermediateDirectory)/up_src_sequence_parser.cpp$(PreprocessSuffix): ../src/sequence_parser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_sequence_parser.cpp$(PreprocessSuffix) ../src/sequence_parser.cpp

$(IntermediateDirectory)/up_src_session_manager.cpp$(ObjectSuffix): ../src/session_manager.cpp $(IntermediateDirectory)/up_src_session_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/session_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_session_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_session_manager.cpp$(DependSuffix): ../src/session_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_session_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_session_manager.cpp$(DependSuffix) -MM ../src/session_manager.cpp

$(IntermediateDirectory)/up_src_session_manager.cpp$(PreprocessSuffix): ../src/session_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_session_manager.cpp$(PreprocessSuffix) ../src/session_manager.cpp

$(IntermediateDirectory)/up_src_surface_manager.cpp$(ObjectSuffix): ../src/surface_manager.cpp $(IntermediateDirectory)/up_src_surface_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/surface_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_surface_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_surface_manager.cpp$(DependSuffix): ../src/surface_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_surface_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_surface_manager.cpp$(DependSuffix) -MM ../src/surface_manager.cpp

$(IntermediateDirectory)/up_src_surface_manager.cpp$(PreprocessSuffix): ../src/surface_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_surface_manager.cpp$(PreprocessSuffix) ../src/surface_manager.cpp

$(IntermediateDirectory)/up_src_telnet_manager.cpp$(ObjectSuffix): ../src/telnet_manager.cpp $(IntermediateDirectory)/up_src_telnet_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/telnet_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_telnet_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_telnet_manager.cpp$(DependSuffix): ../src/telnet_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_telnet_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_telnet_manager.cpp$(DependSuffix) -MM ../src/telnet_manager.cpp

$(IntermediateDirectory)/up_src_telnet_manager.cpp$(PreprocessSuffix): ../src/telnet_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_telnet_manager.cpp$(PreprocessSuffix) ../src/telnet_manager.cpp

$(IntermediateDirectory)/up_src_tinystr.cpp$(ObjectSuffix): ../src/tinystr.cpp $(IntermediateDirectory)/up_src_tinystr.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/tinystr.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_tinystr.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_tinystr.cpp$(DependSuffix): ../src/tinystr.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_tinystr.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_tinystr.cpp$(DependSuffix) -MM ../src/tinystr.cpp

$(IntermediateDirectory)/up_src_tinystr.cpp$(PreprocessSuffix): ../src/tinystr.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_tinystr.cpp$(PreprocessSuffix) ../src/tinystr.cpp

$(IntermediateDirectory)/up_src_tinyxml.cpp$(ObjectSuffix): ../src/tinyxml.cpp $(IntermediateDirectory)/up_src_tinyxml.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/tinyxml.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_tinyxml.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_tinyxml.cpp$(DependSuffix): ../src/tinyxml.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_tinyxml.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_tinyxml.cpp$(DependSuffix) -MM ../src/tinyxml.cpp

$(IntermediateDirectory)/up_src_tinyxml.cpp$(PreprocessSuffix): ../src/tinyxml.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_tinyxml.cpp$(PreprocessSuffix) ../src/tinyxml.cpp

$(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(ObjectSuffix): ../src/tinyxmlerror.cpp $(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/tinyxmlerror.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(DependSuffix): ../src/tinyxmlerror.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(DependSuffix) -MM ../src/tinyxmlerror.cpp

$(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(PreprocessSuffix): ../src/tinyxmlerror.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_tinyxmlerror.cpp$(PreprocessSuffix) ../src/tinyxmlerror.cpp

$(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(ObjectSuffix): ../src/tinyxmlparser.cpp $(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/tinyxmlparser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(DependSuffix): ../src/tinyxmlparser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(DependSuffix) -MM ../src/tinyxmlparser.cpp

$(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(PreprocessSuffix): ../src/tinyxmlparser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_tinyxmlparser.cpp$(PreprocessSuffix) ../src/tinyxmlparser.cpp

$(IntermediateDirectory)/up_src_window_manager.cpp$(ObjectSuffix): ../src/window_manager.cpp $(IntermediateDirectory)/up_src_window_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/window_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_window_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_window_manager.cpp$(DependSuffix): ../src/window_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_window_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_window_manager.cpp$(DependSuffix) -MM ../src/window_manager.cpp

$(IntermediateDirectory)/up_src_window_manager.cpp$(PreprocessSuffix): ../src/window_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_window_manager.cpp$(PreprocessSuffix) ../src/window_manager.cpp

$(IntermediateDirectory)/up_src_io_service.cpp$(ObjectSuffix): ../src/io_service.cpp $(IntermediateDirectory)/up_src_io_service.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/io_service.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_io_service.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_io_service.cpp$(DependSuffix): ../src/io_service.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_io_service.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_io_service.cpp$(DependSuffix) -MM ../src/io_service.cpp

$(IntermediateDirectory)/up_src_io_service.cpp$(PreprocessSuffix): ../src/io_service.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_io_service.cpp$(PreprocessSuffix) ../src/io_service.cpp

$(IntermediateDirectory)/up_src_socket_handler.cpp$(ObjectSuffix): ../src/socket_handler.cpp $(IntermediateDirectory)/up_src_socket_handler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/socket_handler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_socket_handler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_socket_handler.cpp$(DependSuffix): ../src/socket_handler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_socket_handler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_socket_handler.cpp$(DependSuffix) -MM ../src/socket_handler.cpp

$(IntermediateDirectory)/up_src_socket_handler.cpp$(PreprocessSuffix): ../src/socket_handler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_socket_handler.cpp$(PreprocessSuffix) ../src/socket_handler.cpp

$(IntermediateDirectory)/up_src_socket_ssh.cpp$(ObjectSuffix): ../src/socket_ssh.cpp $(IntermediateDirectory)/up_src_socket_ssh.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/socket_ssh.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_socket_ssh.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_socket_ssh.cpp$(DependSuffix): ../src/socket_ssh.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_socket_ssh.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_socket_ssh.cpp$(DependSuffix) -MM ../src/socket_ssh.cpp

$(IntermediateDirectory)/up_src_socket_ssh.cpp$(PreprocessSuffix): ../src/socket_ssh.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_socket_ssh.cpp$(PreprocessSuffix) ../src/socket_ssh.cpp

$(IntermediateDirectory)/up_src_socket_telnet.cpp$(ObjectSuffix): ../src/socket_telnet.cpp $(IntermediateDirectory)/up_src_socket_telnet.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/socket_telnet.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_socket_telnet.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_socket_telnet.cpp$(DependSuffix): ../src/socket_telnet.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_socket_telnet.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_socket_telnet.cpp$(DependSuffix) -MM ../src/socket_telnet.cpp

$(IntermediateDirectory)/up_src_socket_telnet.cpp$(PreprocessSuffix): ../src/socket_telnet.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_socket_telnet.cpp$(PreprocessSuffix) ../src/socket_telnet.cpp

$(IntermediateDirectory)/up_src_irc_manager.cpp$(ObjectSuffix): ../src/irc_manager.cpp $(IntermediateDirectory)/up_src_irc_manager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/irc_manager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_irc_manager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_irc_manager.cpp$(DependSuffix): ../src/irc_manager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_irc_manager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_irc_manager.cpp$(DependSuffix) -MM ../src/irc_manager.cpp

$(IntermediateDirectory)/up_src_irc_manager.cpp$(PreprocessSuffix): ../src/irc_manager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_irc_manager.cpp$(PreprocessSuffix) ../src/irc_manager.cpp

$(IntermediateDirectory)/up_src_socket_irc.cpp$(ObjectSuffix): ../src/socket_irc.cpp $(IntermediateDirectory)/up_src_socket_irc.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/socket_irc.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_socket_irc.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_socket_irc.cpp$(DependSuffix): ../src/socket_irc.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_socket_irc.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_socket_irc.cpp$(DependSuffix) -MM ../src/socket_irc.cpp

$(IntermediateDirectory)/up_src_socket_irc.cpp$(PreprocessSuffix): ../src/socket_irc.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_socket_irc.cpp$(PreprocessSuffix) ../src/socket_irc.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(ObjectSuffix): ../src/SDL2_net/SDLnet.cpp $(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/SDL2_net/SDLnet.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(DependSuffix): ../src/SDL2_net/SDLnet.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(DependSuffix) -MM ../src/SDL2_net/SDLnet.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(PreprocessSuffix): ../src/SDL2_net/SDLnet.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_SDL2_net_SDLnet.cpp$(PreprocessSuffix) ../src/SDL2_net/SDLnet.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(ObjectSuffix): ../src/SDL2_net/SDLnetselect.cpp $(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/SDL2_net/SDLnetselect.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(DependSuffix): ../src/SDL2_net/SDLnetselect.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(DependSuffix) -MM ../src/SDL2_net/SDLnetselect.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(PreprocessSuffix): ../src/SDL2_net/SDLnetselect.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_SDL2_net_SDLnetselect.cpp$(PreprocessSuffix) ../src/SDL2_net/SDLnetselect.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(ObjectSuffix): ../src/SDL2_net/SDLnetTCP.cpp $(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/SDL2_net/SDLnetTCP.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(DependSuffix): ../src/SDL2_net/SDLnetTCP.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(DependSuffix) -MM ../src/SDL2_net/SDLnetTCP.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(PreprocessSuffix): ../src/SDL2_net/SDLnetTCP.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_SDL2_net_SDLnetTCP.cpp$(PreprocessSuffix) ../src/SDL2_net/SDLnetTCP.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(ObjectSuffix): ../src/SDL2_net/SDLnetUDP.cpp $(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/blue/code/EtherTerm/src/SDL2_net/SDLnetUDP.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(DependSuffix): ../src/SDL2_net/SDLnetUDP.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(DependSuffix) -MM ../src/SDL2_net/SDLnetUDP.cpp

$(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(PreprocessSuffix): ../src/SDL2_net/SDLnetUDP.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_SDL2_net_SDLnetUDP.cpp$(PreprocessSuffix) ../src/SDL2_net/SDLnetUDP.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


