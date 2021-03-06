#############################################################################
# Makefile for building: Games_3_GL3
# Generated by qmake (3.0) (Qt 5.3.0)
# Project:  Games_3_GL3.2_Template.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt5/bin/qmake -o Makefile Games_3_GL3.2_Template.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_OPENGL_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I. -isystem /usr/include/x86_64-linux-gnu/qt5 -isystem /usr/include/x86_64-linux-gnu/qt5/QtOpenGL -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS) -L/usr/X11R6/lib64 -lGLEW -lQt5OpenGL -L/usr/lib/x86_64-linux-gnu -lQt5Widgets -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/x86_64-linux-gnu/qt5/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = glwidget.cpp \
		main.cpp \
		Window.cpp qrc_resources.cpp \
		moc_glwidget.cpp \
		moc_Window.cpp
OBJECTS       = glwidget.o \
		main.o \
		Window.o \
		qrc_resources.o \
		moc_glwidget.o \
		moc_Window.o
DIST          = /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/shell-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		Games_3_GL3.2_Template.pro glwidget.cpp \
		main.cpp \
		Window.cpp
QMAKE_TARGET  = Games_3_GL3
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = Games_3_GL3


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Games_3_GL3.2_Template.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/shell-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		Games_3_GL3.2_Template.pro \
		resources.qrc \
		/usr/lib/x86_64-linux-gnu/libQt5OpenGL.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Gui.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Core.prl
	$(QMAKE) -o Makefile Games_3_GL3.2_Template.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/shell-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
Games_3_GL3.2_Template.pro:
resources.qrc:
/usr/lib/x86_64-linux-gnu/libQt5OpenGL.prl:
/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl:
/usr/lib/x86_64-linux-gnu/libQt5Gui.prl:
/usr/lib/x86_64-linux-gnu/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile Games_3_GL3.2_Template.pro

qmake_all: FORCE

dist: 
	@test -d .tmp/Games_3_GL31.0.0 || mkdir -p .tmp/Games_3_GL31.0.0
	$(COPY_FILE) --parents $(DIST) .tmp/Games_3_GL31.0.0/ && $(COPY_FILE) --parents resources.qrc .tmp/Games_3_GL31.0.0/ && $(COPY_FILE) --parents glheaders.h glwidget.h Window.h .tmp/Games_3_GL31.0.0/ && $(COPY_FILE) --parents glwidget.cpp main.cpp Window.cpp .tmp/Games_3_GL31.0.0/ && (cd `dirname .tmp/Games_3_GL31.0.0` && $(TAR) Games_3_GL31.0.0.tar Games_3_GL31.0.0 && $(COMPRESS) Games_3_GL31.0.0.tar) && $(MOVE) `dirname .tmp/Games_3_GL31.0.0`/Games_3_GL31.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Games_3_GL31.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all: qrc_resources.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_resources.cpp
qrc_resources.cpp: resources.qrc \
		simple.frag \
		simple.vert
	/usr/lib/x86_64-linux-gnu/qt5/bin/rcc -name resources resources.qrc -o qrc_resources.cpp

compiler_moc_header_make_all: moc_glwidget.cpp moc_Window.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_glwidget.cpp moc_Window.cpp
moc_glwidget.cpp: glheaders.h \
		glm/glm/gtc/matrix_transform.hpp \
		glm/glm/mat4x4.hpp \
		glm/glm/detail/type_mat4x4.hpp \
		glm/glm/fwd.hpp \
		glm/glm/detail/type_int.hpp \
		glm/glm/detail/setup.hpp \
		glm/glm/detail/type_float.hpp \
		glm/glm/detail/type_vec.hpp \
		glm/glm/detail/precision.hpp \
		glm/glm/detail/type_mat.hpp \
		glm/glm/detail/type_vec4.hpp \
		glm/glm/detail/_swizzle.hpp \
		glm/glm/detail/_swizzle_func.hpp \
		glm/glm/detail/type_vec4.inl \
		glm/glm/detail/type_vec4_sse2.inl \
		glm/glm/detail/type_vec4_avx.inl \
		glm/glm/detail/type_vec4_avx2.inl \
		glm/glm/detail/type_mat4x4.inl \
		glm/glm/vec2.hpp \
		glm/glm/detail/type_vec2.hpp \
		glm/glm/detail/type_vec2.inl \
		glm/glm/vec3.hpp \
		glm/glm/detail/type_vec3.hpp \
		glm/glm/detail/type_vec3.inl \
		glm/glm/vec4.hpp \
		glm/glm/gtc/constants.hpp \
		glm/glm/gtc/constants.inl \
		glm/glm/gtc/matrix_transform.inl \
		glm/glm/geometric.hpp \
		glm/glm/detail/func_geometric.hpp \
		glm/glm/detail/func_geometric.inl \
		glm/glm/detail/func_exponential.hpp \
		glm/glm/detail/type_vec1.hpp \
		glm/glm/detail/type_vec1.inl \
		glm/glm/detail/func_exponential.inl \
		glm/glm/detail/func_vector_relational.hpp \
		glm/glm/detail/func_vector_relational.inl \
		glm/glm/detail/_vectorize.hpp \
		glm/glm/detail/func_common.hpp \
		glm/glm/detail/_fixes.hpp \
		glm/glm/detail/func_common.inl \
		glm/glm/trigonometric.hpp \
		glm/glm/detail/func_trigonometric.hpp \
		glm/glm/detail/func_trigonometric.inl \
		glm/glm/matrix.hpp \
		glm/glm/detail/func_matrix.hpp \
		glm/glm/mat2x2.hpp \
		glm/glm/detail/type_mat2x2.hpp \
		glm/glm/detail/type_mat2x2.inl \
		glm/glm/mat2x3.hpp \
		glm/glm/detail/type_mat2x3.hpp \
		glm/glm/detail/type_mat2x3.inl \
		glm/glm/mat2x4.hpp \
		glm/glm/detail/type_mat2x4.hpp \
		glm/glm/detail/type_mat2x4.inl \
		glm/glm/mat3x2.hpp \
		glm/glm/detail/type_mat3x2.hpp \
		glm/glm/detail/type_mat3x2.inl \
		glm/glm/mat3x3.hpp \
		glm/glm/detail/type_mat3x3.hpp \
		glm/glm/detail/type_mat3x3.inl \
		glm/glm/mat3x4.hpp \
		glm/glm/detail/type_mat3x4.hpp \
		glm/glm/detail/type_mat3x4.inl \
		glm/glm/mat4x2.hpp \
		glm/glm/detail/type_mat4x2.hpp \
		glm/glm/detail/type_mat4x2.inl \
		glm/glm/mat4x3.hpp \
		glm/glm/detail/type_mat4x3.hpp \
		glm/glm/detail/type_mat4x3.inl \
		glm/glm/detail/func_matrix.inl \
		glm/glm/gtx/transform.hpp \
		glm/glm/glm.hpp \
		glm/glm/exponential.hpp \
		glm/glm/common.hpp \
		glm/glm/packing.hpp \
		glm/glm/detail/func_packing.hpp \
		glm/glm/detail/func_packing.inl \
		glm/glm/detail/type_half.hpp \
		glm/glm/detail/type_half.inl \
		glm/glm/vector_relational.hpp \
		glm/glm/integer.hpp \
		glm/glm/detail/func_integer.hpp \
		glm/glm/detail/func_integer.inl \
		glm/glm/gtx/transform.inl \
		glwidget.h
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/s/shmosh001/Desktop/openGL1 -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/4.9 -I/usr/include/x86_64-linux-gnu/c++/4.9 -I/usr/include/c++/4.9/backward -I/usr/lib/gcc/x86_64-linux-gnu/4.9/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/4.9/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include glwidget.h -o moc_glwidget.cpp

moc_Window.cpp: glwidget.h \
		glheaders.h \
		glm/glm/gtc/matrix_transform.hpp \
		glm/glm/mat4x4.hpp \
		glm/glm/detail/type_mat4x4.hpp \
		glm/glm/fwd.hpp \
		glm/glm/detail/type_int.hpp \
		glm/glm/detail/setup.hpp \
		glm/glm/detail/type_float.hpp \
		glm/glm/detail/type_vec.hpp \
		glm/glm/detail/precision.hpp \
		glm/glm/detail/type_mat.hpp \
		glm/glm/detail/type_vec4.hpp \
		glm/glm/detail/_swizzle.hpp \
		glm/glm/detail/_swizzle_func.hpp \
		glm/glm/detail/type_vec4.inl \
		glm/glm/detail/type_vec4_sse2.inl \
		glm/glm/detail/type_vec4_avx.inl \
		glm/glm/detail/type_vec4_avx2.inl \
		glm/glm/detail/type_mat4x4.inl \
		glm/glm/vec2.hpp \
		glm/glm/detail/type_vec2.hpp \
		glm/glm/detail/type_vec2.inl \
		glm/glm/vec3.hpp \
		glm/glm/detail/type_vec3.hpp \
		glm/glm/detail/type_vec3.inl \
		glm/glm/vec4.hpp \
		glm/glm/gtc/constants.hpp \
		glm/glm/gtc/constants.inl \
		glm/glm/gtc/matrix_transform.inl \
		glm/glm/geometric.hpp \
		glm/glm/detail/func_geometric.hpp \
		glm/glm/detail/func_geometric.inl \
		glm/glm/detail/func_exponential.hpp \
		glm/glm/detail/type_vec1.hpp \
		glm/glm/detail/type_vec1.inl \
		glm/glm/detail/func_exponential.inl \
		glm/glm/detail/func_vector_relational.hpp \
		glm/glm/detail/func_vector_relational.inl \
		glm/glm/detail/_vectorize.hpp \
		glm/glm/detail/func_common.hpp \
		glm/glm/detail/_fixes.hpp \
		glm/glm/detail/func_common.inl \
		glm/glm/trigonometric.hpp \
		glm/glm/detail/func_trigonometric.hpp \
		glm/glm/detail/func_trigonometric.inl \
		glm/glm/matrix.hpp \
		glm/glm/detail/func_matrix.hpp \
		glm/glm/mat2x2.hpp \
		glm/glm/detail/type_mat2x2.hpp \
		glm/glm/detail/type_mat2x2.inl \
		glm/glm/mat2x3.hpp \
		glm/glm/detail/type_mat2x3.hpp \
		glm/glm/detail/type_mat2x3.inl \
		glm/glm/mat2x4.hpp \
		glm/glm/detail/type_mat2x4.hpp \
		glm/glm/detail/type_mat2x4.inl \
		glm/glm/mat3x2.hpp \
		glm/glm/detail/type_mat3x2.hpp \
		glm/glm/detail/type_mat3x2.inl \
		glm/glm/mat3x3.hpp \
		glm/glm/detail/type_mat3x3.hpp \
		glm/glm/detail/type_mat3x3.inl \
		glm/glm/mat3x4.hpp \
		glm/glm/detail/type_mat3x4.hpp \
		glm/glm/detail/type_mat3x4.inl \
		glm/glm/mat4x2.hpp \
		glm/glm/detail/type_mat4x2.hpp \
		glm/glm/detail/type_mat4x2.inl \
		glm/glm/mat4x3.hpp \
		glm/glm/detail/type_mat4x3.hpp \
		glm/glm/detail/type_mat4x3.inl \
		glm/glm/detail/func_matrix.inl \
		glm/glm/gtx/transform.hpp \
		glm/glm/glm.hpp \
		glm/glm/exponential.hpp \
		glm/glm/common.hpp \
		glm/glm/packing.hpp \
		glm/glm/detail/func_packing.hpp \
		glm/glm/detail/func_packing.inl \
		glm/glm/detail/type_half.hpp \
		glm/glm/detail/type_half.inl \
		glm/glm/vector_relational.hpp \
		glm/glm/integer.hpp \
		glm/glm/detail/func_integer.hpp \
		glm/glm/detail/func_integer.inl \
		glm/glm/gtx/transform.inl \
		Window.h
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/s/shmosh001/Desktop/openGL1 -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/4.9 -I/usr/include/x86_64-linux-gnu/c++/4.9 -I/usr/include/c++/4.9/backward -I/usr/lib/gcc/x86_64-linux-gnu/4.9/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/4.9/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include Window.h -o moc_Window.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_moc_header_clean 

####### Compile

glwidget.o: glwidget.cpp glwidget.h \
		glheaders.h \
		glm/glm/gtc/matrix_transform.hpp \
		glm/glm/mat4x4.hpp \
		glm/glm/detail/type_mat4x4.hpp \
		glm/glm/fwd.hpp \
		glm/glm/detail/type_int.hpp \
		glm/glm/detail/setup.hpp \
		glm/glm/detail/type_float.hpp \
		glm/glm/detail/type_vec.hpp \
		glm/glm/detail/precision.hpp \
		glm/glm/detail/type_mat.hpp \
		glm/glm/detail/type_vec4.hpp \
		glm/glm/detail/_swizzle.hpp \
		glm/glm/detail/_swizzle_func.hpp \
		glm/glm/detail/type_vec4.inl \
		glm/glm/detail/type_vec4_sse2.inl \
		glm/glm/detail/type_vec4_avx.inl \
		glm/glm/detail/type_vec4_avx2.inl \
		glm/glm/detail/type_mat4x4.inl \
		glm/glm/vec2.hpp \
		glm/glm/detail/type_vec2.hpp \
		glm/glm/detail/type_vec2.inl \
		glm/glm/vec3.hpp \
		glm/glm/detail/type_vec3.hpp \
		glm/glm/detail/type_vec3.inl \
		glm/glm/vec4.hpp \
		glm/glm/gtc/constants.hpp \
		glm/glm/gtc/constants.inl \
		glm/glm/gtc/matrix_transform.inl \
		glm/glm/geometric.hpp \
		glm/glm/detail/func_geometric.hpp \
		glm/glm/detail/func_geometric.inl \
		glm/glm/detail/func_exponential.hpp \
		glm/glm/detail/type_vec1.hpp \
		glm/glm/detail/type_vec1.inl \
		glm/glm/detail/func_exponential.inl \
		glm/glm/detail/func_vector_relational.hpp \
		glm/glm/detail/func_vector_relational.inl \
		glm/glm/detail/_vectorize.hpp \
		glm/glm/detail/func_common.hpp \
		glm/glm/detail/_fixes.hpp \
		glm/glm/detail/func_common.inl \
		glm/glm/trigonometric.hpp \
		glm/glm/detail/func_trigonometric.hpp \
		glm/glm/detail/func_trigonometric.inl \
		glm/glm/matrix.hpp \
		glm/glm/detail/func_matrix.hpp \
		glm/glm/mat2x2.hpp \
		glm/glm/detail/type_mat2x2.hpp \
		glm/glm/detail/type_mat2x2.inl \
		glm/glm/mat2x3.hpp \
		glm/glm/detail/type_mat2x3.hpp \
		glm/glm/detail/type_mat2x3.inl \
		glm/glm/mat2x4.hpp \
		glm/glm/detail/type_mat2x4.hpp \
		glm/glm/detail/type_mat2x4.inl \
		glm/glm/mat3x2.hpp \
		glm/glm/detail/type_mat3x2.hpp \
		glm/glm/detail/type_mat3x2.inl \
		glm/glm/mat3x3.hpp \
		glm/glm/detail/type_mat3x3.hpp \
		glm/glm/detail/type_mat3x3.inl \
		glm/glm/mat3x4.hpp \
		glm/glm/detail/type_mat3x4.hpp \
		glm/glm/detail/type_mat3x4.inl \
		glm/glm/mat4x2.hpp \
		glm/glm/detail/type_mat4x2.hpp \
		glm/glm/detail/type_mat4x2.inl \
		glm/glm/mat4x3.hpp \
		glm/glm/detail/type_mat4x3.hpp \
		glm/glm/detail/type_mat4x3.inl \
		glm/glm/detail/func_matrix.inl \
		glm/glm/gtx/transform.hpp \
		glm/glm/glm.hpp \
		glm/glm/exponential.hpp \
		glm/glm/common.hpp \
		glm/glm/packing.hpp \
		glm/glm/detail/func_packing.hpp \
		glm/glm/detail/func_packing.inl \
		glm/glm/detail/type_half.hpp \
		glm/glm/detail/type_half.inl \
		glm/glm/vector_relational.hpp \
		glm/glm/integer.hpp \
		glm/glm/detail/func_integer.hpp \
		glm/glm/detail/func_integer.inl \
		glm/glm/gtx/transform.inl
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o glwidget.o glwidget.cpp

main.o: main.cpp glwidget.h \
		glheaders.h \
		glm/glm/gtc/matrix_transform.hpp \
		glm/glm/mat4x4.hpp \
		glm/glm/detail/type_mat4x4.hpp \
		glm/glm/fwd.hpp \
		glm/glm/detail/type_int.hpp \
		glm/glm/detail/setup.hpp \
		glm/glm/detail/type_float.hpp \
		glm/glm/detail/type_vec.hpp \
		glm/glm/detail/precision.hpp \
		glm/glm/detail/type_mat.hpp \
		glm/glm/detail/type_vec4.hpp \
		glm/glm/detail/_swizzle.hpp \
		glm/glm/detail/_swizzle_func.hpp \
		glm/glm/detail/type_vec4.inl \
		glm/glm/detail/type_vec4_sse2.inl \
		glm/glm/detail/type_vec4_avx.inl \
		glm/glm/detail/type_vec4_avx2.inl \
		glm/glm/detail/type_mat4x4.inl \
		glm/glm/vec2.hpp \
		glm/glm/detail/type_vec2.hpp \
		glm/glm/detail/type_vec2.inl \
		glm/glm/vec3.hpp \
		glm/glm/detail/type_vec3.hpp \
		glm/glm/detail/type_vec3.inl \
		glm/glm/vec4.hpp \
		glm/glm/gtc/constants.hpp \
		glm/glm/gtc/constants.inl \
		glm/glm/gtc/matrix_transform.inl \
		glm/glm/geometric.hpp \
		glm/glm/detail/func_geometric.hpp \
		glm/glm/detail/func_geometric.inl \
		glm/glm/detail/func_exponential.hpp \
		glm/glm/detail/type_vec1.hpp \
		glm/glm/detail/type_vec1.inl \
		glm/glm/detail/func_exponential.inl \
		glm/glm/detail/func_vector_relational.hpp \
		glm/glm/detail/func_vector_relational.inl \
		glm/glm/detail/_vectorize.hpp \
		glm/glm/detail/func_common.hpp \
		glm/glm/detail/_fixes.hpp \
		glm/glm/detail/func_common.inl \
		glm/glm/trigonometric.hpp \
		glm/glm/detail/func_trigonometric.hpp \
		glm/glm/detail/func_trigonometric.inl \
		glm/glm/matrix.hpp \
		glm/glm/detail/func_matrix.hpp \
		glm/glm/mat2x2.hpp \
		glm/glm/detail/type_mat2x2.hpp \
		glm/glm/detail/type_mat2x2.inl \
		glm/glm/mat2x3.hpp \
		glm/glm/detail/type_mat2x3.hpp \
		glm/glm/detail/type_mat2x3.inl \
		glm/glm/mat2x4.hpp \
		glm/glm/detail/type_mat2x4.hpp \
		glm/glm/detail/type_mat2x4.inl \
		glm/glm/mat3x2.hpp \
		glm/glm/detail/type_mat3x2.hpp \
		glm/glm/detail/type_mat3x2.inl \
		glm/glm/mat3x3.hpp \
		glm/glm/detail/type_mat3x3.hpp \
		glm/glm/detail/type_mat3x3.inl \
		glm/glm/mat3x4.hpp \
		glm/glm/detail/type_mat3x4.hpp \
		glm/glm/detail/type_mat3x4.inl \
		glm/glm/mat4x2.hpp \
		glm/glm/detail/type_mat4x2.hpp \
		glm/glm/detail/type_mat4x2.inl \
		glm/glm/mat4x3.hpp \
		glm/glm/detail/type_mat4x3.hpp \
		glm/glm/detail/type_mat4x3.inl \
		glm/glm/detail/func_matrix.inl \
		glm/glm/gtx/transform.hpp \
		glm/glm/glm.hpp \
		glm/glm/exponential.hpp \
		glm/glm/common.hpp \
		glm/glm/packing.hpp \
		glm/glm/detail/func_packing.hpp \
		glm/glm/detail/func_packing.inl \
		glm/glm/detail/type_half.hpp \
		glm/glm/detail/type_half.inl \
		glm/glm/vector_relational.hpp \
		glm/glm/integer.hpp \
		glm/glm/detail/func_integer.hpp \
		glm/glm/detail/func_integer.inl \
		glm/glm/gtx/transform.inl \
		Window.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

Window.o: Window.cpp Window.h \
		glwidget.h \
		glheaders.h \
		glm/glm/gtc/matrix_transform.hpp \
		glm/glm/mat4x4.hpp \
		glm/glm/detail/type_mat4x4.hpp \
		glm/glm/fwd.hpp \
		glm/glm/detail/type_int.hpp \
		glm/glm/detail/setup.hpp \
		glm/glm/detail/type_float.hpp \
		glm/glm/detail/type_vec.hpp \
		glm/glm/detail/precision.hpp \
		glm/glm/detail/type_mat.hpp \
		glm/glm/detail/type_vec4.hpp \
		glm/glm/detail/_swizzle.hpp \
		glm/glm/detail/_swizzle_func.hpp \
		glm/glm/detail/type_vec4.inl \
		glm/glm/detail/type_vec4_sse2.inl \
		glm/glm/detail/type_vec4_avx.inl \
		glm/glm/detail/type_vec4_avx2.inl \
		glm/glm/detail/type_mat4x4.inl \
		glm/glm/vec2.hpp \
		glm/glm/detail/type_vec2.hpp \
		glm/glm/detail/type_vec2.inl \
		glm/glm/vec3.hpp \
		glm/glm/detail/type_vec3.hpp \
		glm/glm/detail/type_vec3.inl \
		glm/glm/vec4.hpp \
		glm/glm/gtc/constants.hpp \
		glm/glm/gtc/constants.inl \
		glm/glm/gtc/matrix_transform.inl \
		glm/glm/geometric.hpp \
		glm/glm/detail/func_geometric.hpp \
		glm/glm/detail/func_geometric.inl \
		glm/glm/detail/func_exponential.hpp \
		glm/glm/detail/type_vec1.hpp \
		glm/glm/detail/type_vec1.inl \
		glm/glm/detail/func_exponential.inl \
		glm/glm/detail/func_vector_relational.hpp \
		glm/glm/detail/func_vector_relational.inl \
		glm/glm/detail/_vectorize.hpp \
		glm/glm/detail/func_common.hpp \
		glm/glm/detail/_fixes.hpp \
		glm/glm/detail/func_common.inl \
		glm/glm/trigonometric.hpp \
		glm/glm/detail/func_trigonometric.hpp \
		glm/glm/detail/func_trigonometric.inl \
		glm/glm/matrix.hpp \
		glm/glm/detail/func_matrix.hpp \
		glm/glm/mat2x2.hpp \
		glm/glm/detail/type_mat2x2.hpp \
		glm/glm/detail/type_mat2x2.inl \
		glm/glm/mat2x3.hpp \
		glm/glm/detail/type_mat2x3.hpp \
		glm/glm/detail/type_mat2x3.inl \
		glm/glm/mat2x4.hpp \
		glm/glm/detail/type_mat2x4.hpp \
		glm/glm/detail/type_mat2x4.inl \
		glm/glm/mat3x2.hpp \
		glm/glm/detail/type_mat3x2.hpp \
		glm/glm/detail/type_mat3x2.inl \
		glm/glm/mat3x3.hpp \
		glm/glm/detail/type_mat3x3.hpp \
		glm/glm/detail/type_mat3x3.inl \
		glm/glm/mat3x4.hpp \
		glm/glm/detail/type_mat3x4.hpp \
		glm/glm/detail/type_mat3x4.inl \
		glm/glm/mat4x2.hpp \
		glm/glm/detail/type_mat4x2.hpp \
		glm/glm/detail/type_mat4x2.inl \
		glm/glm/mat4x3.hpp \
		glm/glm/detail/type_mat4x3.hpp \
		glm/glm/detail/type_mat4x3.inl \
		glm/glm/detail/func_matrix.inl \
		glm/glm/gtx/transform.hpp \
		glm/glm/glm.hpp \
		glm/glm/exponential.hpp \
		glm/glm/common.hpp \
		glm/glm/packing.hpp \
		glm/glm/detail/func_packing.hpp \
		glm/glm/detail/func_packing.inl \
		glm/glm/detail/type_half.hpp \
		glm/glm/detail/type_half.inl \
		glm/glm/vector_relational.hpp \
		glm/glm/integer.hpp \
		glm/glm/detail/func_integer.hpp \
		glm/glm/detail/func_integer.inl \
		glm/glm/gtx/transform.inl
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Window.o Window.cpp

qrc_resources.o: qrc_resources.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_resources.o qrc_resources.cpp

moc_glwidget.o: moc_glwidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_glwidget.o moc_glwidget.cpp

moc_Window.o: moc_Window.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Window.o moc_Window.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/home/s/shmosh001/Desktop/openGL1/boom || mkdir -p $(INSTALL_ROOT)/home/s/shmosh001/Desktop/openGL1/boom
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/home/s/shmosh001/Desktop/openGL1/boom/$(QMAKE_TARGET)"
	-$(STRIP) "$(INSTALL_ROOT)/home/s/shmosh001/Desktop/openGL1/boom/$(QMAKE_TARGET)"

uninstall_target: FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/home/s/shmosh001/Desktop/openGL1/boom/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/home/s/shmosh001/Desktop/openGL1/boom/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:

