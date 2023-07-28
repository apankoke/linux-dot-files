
14:06:32: Running steps for project ComprionDesktop...
14:06:32: Starting: "/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/qmake" /home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx/ComprionDesktop.pro -spec linux-oe-g++ CONFIG+=debug CONFIG+=qml_debug
Project MESSAGE: Config=lex yacc debug exceptions depend_includepath testcase_targets import_plugins import_qpa_plugin file_copies qmake_use qt warn_on release link_prl incremental shared shared release linux unix posix gcc debug qml_debug c++11
Project MESSAGE: Kit is CLWave or ZCU102
Project MESSAGE: SDK= /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux
Project MESSAGE: copy artifacts to /srv/tftp/nfsroot/home/root for the CLWave or ZCU102
Project MESSAGE: Out Dir=/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug
Project MESSAGE: Current Folder=/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx
Project MESSAGE: Home=/home/apankoke
Project MESSAGE: Target=ComprionDesktop
Project MESSAGE: Now building version stamp in:/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx with QT Version= 5.15.2 Kit=CLWave What Target Type=Debug
14:06:32: The process "/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/qmake" exited normally.
14:06:32: Starting: "/usr/bin/make" -f /home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/Makefile qmake_all
make: Nothing to be done for 'qmake_all'.
14:06:32: The process "/usr/bin/make" exited normally.
14:06:32: Elapsed time: 00:00.


"/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/qmake" /home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx/ComprionDesktop.pro -spec linux-oe-g++ CONFIG+=debug CONFIG+=qml_debug



Make....


Project MESSAGE: Config=lex yacc debug exceptions depend_includepath testcase_targets import_plugins import_qpa_plugin file_copies qmake_use qt warn_on release link_prl incremental shared shared release linux unix posix gcc qtc_run debug qml_debug qtc_run c++11
Project MESSAGE: Kit is CLWave or ZCU102
Project MESSAGE: SDK= /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux
Project MESSAGE: copy artifacts to /srv/tftp/nfsroot/home/root for the CLWave or ZCU102
Project MESSAGE: Out Dir=/home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug
Project MESSAGE: Current Folder=/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx
Project MESSAGE: Home=/home/apankoke
Project MESSAGE: Target=ComprionDesktop
Project MESSAGE: Now building version stamp in:/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx with QT Version= 5.15.2 Kit=CLWave What Target Type=Debug
Project MESSAGE: Config=lex yacc debug exceptions depend_includepath testcase_targets import_plugins import_qpa_plugin file_copies qmake_use qt warn_on release link_prl incremental shared shared release linux unix posix gcc qtc_run debug qml_debug qtc_run c++11
Project MESSAGE: Kit is CLWave or ZCU102
Project MESSAGE: SDK= /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux
Project MESSAGE: copy artifacts to /srv/tftp/nfsroot/home/root for the CLWave or ZCU102
Project MESSAGE: Out Dir=/home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug
Project MESSAGE: Current Folder=/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx
Project MESSAGE: Home=/home/apankoke
Project MESSAGE: Target=ComprionDesktop
Project MESSAGE: Now building version stamp in:/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx with QT Version= 5.15.2 Kit=CLWave What Target Type=Debug

Compile Output

14:13:28: Running steps for project ComprionDesktop...
14:13:28: Configuration unchanged, skipping qmake step.
14:13:28: Starting: "/usr/bin/make" -j24
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/uic ../fw-xlnx/dialog.ui -o ui_dialog.h
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/uic ../fw-xlnx/mainwindow.ui -o ui_mainwindow.h
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/uic ../fw-xlnx/splash.ui -o ui_splash.h
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o FlashEnvironmentReader.o ../fw-xlnx/FlashEnvironmentReader.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o crc32.o ../fw-xlnx/crc32.cpp
aarch64-xilinx-linux-gcc -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -g -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o mat_mul_demo.o ../fw-xlnx/mat_mul_demo.c
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o openamp.o ../fw-xlnx/openamp.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o uboottools.o ../fw-xlnx/uboottools.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o zynqmp.o ../fw-xlnx/zynqmp.cpp
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/dirent.h:25,
                 from ../fw-xlnx/mat_mul_demo.c:10:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/dirent.h:25,
                 from ../fw-xlnx/zynqmp.h:4,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/type_traits:38,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qglobal.h:45,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qnamespace.h:43,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobjectdefs.h:48,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:46,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/dirent.h:25,
                 from ../fw-xlnx/openamp.h:5,
                 from ../fw-xlnx/openamp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/rcc -name resources ../fw-xlnx/resources.qrc -o qrc_resources.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -dM -E -o moc_predefs.h /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/features/data/dummy.cpp
../fw-xlnx/mat_mul_demo.c: In function ‘matrix_print’:
../fw-xlnx/mat_mul_demo.c:40:16: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   40 |  for (i = 0; i < m->size; ++i) {
      |                ^
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o dialog.o ../fw-xlnx/dialog.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o main.o ../fw-xlnx/main.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o mainwindow.o ../fw-xlnx/mainwindow.cpp
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/moc -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB --include /mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/moc_predefs.h -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0 -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/backward -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include-fixed -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include ../fw-xlnx/dialog.h -o moc_dialog.cpp
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/moc -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB --include /mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/moc_predefs.h -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0 -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/backward -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include-fixed -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include ../fw-xlnx/mainwindow.h -o moc_mainwindow.cpp
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/moc -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB --include /mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/moc_predefs.h -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0 -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/backward -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include-fixed -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include ../fw-xlnx/uboottools.h -o moc_uboottools.cpp
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/moc -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB --include /mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/moc_predefs.h -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx -I/mnt/project_zwo/2021.2/CLWave50/plnx/Software/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0 -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/backward -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/aarch64-xilinx-linux/10.2.0/include -I/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/include-fixed -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include ../fw-xlnx/zynqmp.h -o moc_zynqmp.cpp
../fw-xlnx/mat_mul_demo.c:41:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   41 |   for (j = 0; j < m->size; ++j)
      |                 ^
../fw-xlnx/mat_mul_demo.c: In function ‘generate_matrices’:
../fw-xlnx/mat_mul_demo.c:62:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   62 |   for (j = 0; j < matrix_size; j++) {
      |                 ^
../fw-xlnx/mat_mul_demo.c:64:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   64 |    for (k = 0; k < matrix_size; k++) {
      |                  ^
../fw-xlnx/mat_mul_demo.c: In function ‘ui_thread_entry’:
../fw-xlnx/mat_mul_demo.c:112:26: warning: format ‘%d’ expects argument of type ‘int’, but argument 2 has type ‘long unsigned int’ [-Wformat=]
  112 |   printf("rpmsg device, %d bytes .. \r\n",
      |                         ~^
      |                          |
      |                          int
      |                         %ld
  113 |     sizeof(i_matrix));
      |     ~~~~~~~~~~~~~~~~      
      |     |
      |     long unsigned int
../fw-xlnx/mat_mul_demo.c:93:11: warning: unused variable ‘ret’ [-Wunused-variable]
   93 |  int cmd, ret, i;
      |           ^~~
../fw-xlnx/mat_mul_demo.c:93:6: warning: unused variable ‘cmd’ [-Wunused-variable]
   93 |  int cmd, ret, i;
      |      ^~~
../fw-xlnx/mat_mul_demo.c:91:29: warning: unused parameter ‘ptr’ [-Wunused-parameter]
   91 | void *ui_thread_entry(void *ptr)
      |                       ~~~~~~^~~
../fw-xlnx/mat_mul_demo.c: In function ‘compute_thread_entry’:
../fw-xlnx/mat_mul_demo.c:143:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘long unsigned int’ [-Wsign-compare]
  143 |   } while ((bytes_rcvd < sizeof(r_matrix)) || (bytes_rcvd < 0));
      |                        ^
../fw-xlnx/mat_mul_demo.c:133:34: warning: unused parameter ‘ptr’ [-Wunused-parameter]
  133 | void *compute_thread_entry(void *ptr)
      |                            ~~~~~~^~~
../fw-xlnx/mat_mul_demo.c: In function ‘get_rpmsg_ept_dev_name’:
../fw-xlnx/mat_mul_demo.c:192:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘long unsigned int’ [-Wsign-compare]
  192 |   if (ept_name_len > sizeof(svc_name))
      |                    ^
../fw-xlnx/mat_mul_demo.c: In function ‘mainMatMulDEmo’:
../fw-xlnx/mat_mul_demo.c:299:7: warning: unused variable ‘ept_dev_path’ [-Wunused-variable]
  299 |  char ept_dev_path[32];
      |       ^~~~~~~~~~~~
../fw-xlnx/mat_mul_demo.c:298:7: warning: unused variable ‘ept_dev_name’ [-Wunused-variable]
  298 |  char ept_dev_name[16];
      |       ^~~~~~~~~~~~
../fw-xlnx/mat_mul_demo.c:297:29: warning: unused variable ‘eptinfo’ [-Wunused-variable]
  297 |  struct rpmsg_endpoint_info eptinfo;
      |                             ^~~~~~~
../fw-xlnx/mat_mul_demo.c:296:7: warning: unused variable ‘fpath’ [-Wunused-variable]
  296 |  char fpath[256];
      |       ^~~~~
../fw-xlnx/mat_mul_demo.c:295:7: warning: unused variable ‘rpmsg_char_name’ [-Wunused-variable]
  295 |  char rpmsg_char_name[16];
      |       ^~~~~~~~~~~~~~~
../fw-xlnx/mat_mul_demo.c:294:8: warning: variable ‘rpmsg_dev’ set but not used [-Wunused-but-set-variable]
  294 |  char *rpmsg_dev="virtio0.rpmsg-openamp-demo-channel.-1.0";
      |        ^~~~~~~~~
../fw-xlnx/mat_mul_demo.c:293:11: warning: unused variable ‘ret’ [-Wunused-variable]
  293 |  int opt, ret;
      |           ^~~
../fw-xlnx/mat_mul_demo.c:292:15: warning: unused variable ‘size’ [-Wunused-variable]
  292 |  unsigned int size;
      |               ^~~~
../fw-xlnx/mat_mul_demo.c: In function ‘get_rpmsg_chrdev_fd’:
../fw-xlnx/mat_mul_demo.c:267:25: warning: ‘%s’ directive writing up to 255 bytes into a region of size 251 [-Wformat-overflow=]
  267 |    sprintf(fpath, "/dev/%s", ent->d_name);
      |                         ^~
../fw-xlnx/mat_mul_demo.c:267:4: note: ‘sprintf’ output between 6 and 261 bytes into a destination of size 256
  267 |    sprintf(fpath, "/dev/%s", ent->d_name);
      |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
At top level:
../fw-xlnx/mat_mul_demo.c:247:12: warning: ‘get_rpmsg_chrdev_fd’ defined but not used [-Wunused-function]
  247 | static int get_rpmsg_chrdev_fd(const char *rpmsg_dev_name,
      |            ^~~~~~~~~~~~~~~~~~~
../fw-xlnx/mat_mul_demo.c:205:12: warning: ‘bind_rpmsg_chrdev’ defined but not used [-Wunused-function]
  205 | static int bind_rpmsg_chrdev(const char *rpmsg_dev_name)
      |            ^~~~~~~~~~~~~~~~~
../fw-xlnx/mat_mul_demo.c:166:14: warning: ‘get_rpmsg_ept_dev_name’ defined but not used [-Wunused-function]
  166 | static char *get_rpmsg_ept_dev_name(const char *rpmsg_char_name,
      |              ^~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/type_traits:38,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qglobal.h:45,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui/qtguiglobal.h:43,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets/qtwidgetsglobal.h:43,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets/qdialog.h:43,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets/QDialog:1,
                 from ../fw-xlnx/dialog.h:4,
                 from ../fw-xlnx/dialog.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/type_traits:38,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qglobal.h:45,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qnamespace.h:43,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobjectdefs.h:48,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:46,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../../include/qlinuxutils.h:4,
                 from ../fw-xlnx/mainwindow.h:4,
                 from ../fw-xlnx/mainwindow.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/type_traits:38,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qglobal.h:45,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qnamespace.h:43,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobjectdefs.h:48,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:46,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../../include/qlinuxutils.h:4,
                 from ../fw-xlnx/mainwindow.h:4,
                 from ../fw-xlnx/main.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o moc_uboottools.o moc_uboottools.cpp
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/bits/stl_algobase.h:59,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/memory:63,
                 from moc_uboottools.cpp:9:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o moc_dialog.o moc_dialog.cpp
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/bits/stl_algobase.h:59,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/memory:63,
                 from moc_dialog.cpp:9:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o moc_zynqmp.o moc_zynqmp.cpp
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/bits/stl_algobase.h:59,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/memory:63,
                 from moc_zynqmp.cpp:9:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o qrc_resources.o qrc_resources.cpp
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security -c -pipe --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -O0 -g -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DDESKTOP -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../fw-xlnx -I. -I../../include -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtWidgets -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtGui -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore -I. -I. -I/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/mkspecs/linux-oe-g++ -o moc_mainwindow.o moc_mainwindow.cpp
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/os_defines.h:39,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/aarch64-xilinx-linux/bits/c++config.h:518,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/bits/stl_algobase.h:59,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/c++/10.2.0/memory:63,
                 from moc_mainwindow.cpp:9:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/features.h:397:4: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Wcpp]
  397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
      |    ^~~~~~~
../fw-xlnx/openamp.cpp: In member function ‘bool OpenAMP::Startprocessor(QString, int, bool)’:
../fw-xlnx/openamp.cpp:117:35: warning: ISO C++ forbids converting a string constant to ‘char*’ [-Wwrite-strings]
  117 |         if (0 != file_write(sbuf, "start"))
      |                                   ^~~~~~~
../fw-xlnx/openamp.cpp: In member function ‘bool OpenAMP::InitFileIODemo(QString, int, OpenAMP::taginitLevel)’:
../fw-xlnx/openamp.cpp:798:10: warning: unused variable ‘rpmsg_dev_name_control’ [-Wunused-variable]
  798 |     char rpmsg_dev_name_control[256]="";
      |          ^~~~~~~~~~~~~~~~~~~~~~
../fw-xlnx/openamp.cpp: In member function ‘bool OpenAMP::StartEchoTest()’:
../fw-xlnx/openamp.cpp:1029:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘long unsigned int’ [-Wsign-compare]
 1029 |             for (k = 0; k < r_payload->size; k++)
      |                         ~~^~~~~~~~~~~~~~~~~
../fw-xlnx/openamp.cpp: In member function ‘void OpenAMP::QuitRPCDemo()’:
../fw-xlnx/openamp.cpp:1063:26: warning: null argument where non-null required (argument 1) [-Wnonnull]
 1063 |     fprintf(0, "quit\r\n");
      |                          ^
../fw-xlnx/openamp.cpp: In member function ‘bool OpenAMP::StartMatMulDemo()’:
../fw-xlnx/openamp.cpp:1072:22: warning: ISO C++ forbids converting a string constant to ‘char*’ [-Wwrite-strings]
 1072 |     char* argv[2] = {"-d1","-n1"};
      |                      ^~~~~
../fw-xlnx/openamp.cpp:1072:28: warning: ISO C++ forbids converting a string constant to ‘char*’ [-Wwrite-strings]
 1072 |     char* argv[2] = {"-d1","-n1"};
      |                            ^~~~~
../fw-xlnx/openamp.cpp: In member function ‘bool OpenAMP::StartFileIODemo()’:
../fw-xlnx/openamp.cpp:1119:43: warning: format ‘%d’ expects argument of type ‘int’, but argument 3 has type ‘long unsigned int’ [-Wformat=]
 1119 |     printf("\r\nMaster>Send Init:%s msg. %d\r\n",RPMG_INIT_MSG,sizeof(RPMG_INIT_MSG));
      |                                          ~^                    ~~~~~~~~~~~~~~~~~~~~~
      |                                           |                    |
      |                                           int                  long unsigned int
      |                                          %ld
../fw-xlnx/openamp.cpp: In member function ‘char* OpenAMP::get_rpmsg_ept_dev_name(const char*, const char*, char*)’:
../fw-xlnx/openamp.cpp:1452:26: warning: comparison of integer expressions of different signedness: ‘int’ and ‘long unsigned int’ [-Wsign-compare]
 1452 |         if (ept_name_len > sizeof(svc_name))
      |             ~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
../fw-xlnx/openamp.cpp: In member function ‘int OpenAMP::handle_rpc(_sys_rpc*)’:
../fw-xlnx/openamp.cpp:1559:11: warning: unused variable ‘data’ [-Wunused-variable]
 1559 |     char *data = (char *)rpc;
      |           ^~~~
../fw-xlnx/openamp.cpp: In member function ‘int OpenAMP::file_write(char*, char*)’:
../fw-xlnx/openamp.cpp:1615:23: warning: comparison of integer expressions of different signedness: ‘ssize_t’ {aka ‘long int’} and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
 1615 |     if (bytes_written != str_sz)
      |         ~~~~~~~~~~~~~~^~~~~~~~~
../fw-xlnx/openamp.cpp: In member function ‘void OpenAMP::exit_action_handler(int)’:
../fw-xlnx/openamp.cpp:1652:40: warning: unused parameter ‘signum’ [-Wunused-parameter]
 1652 | void  OpenAMP::exit_action_handler(int signum)
      |                                    ~~~~^~~~~~
../fw-xlnx/openamp.cpp: In member function ‘int OpenAMP::handle_read(_sys_rpc*)’:
../fw-xlnx/openamp.cpp:1728:27: warning: comparison of integer expressions of different signedness: ‘ssize_t’ {aka ‘long int’} and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
 1728 |     return (bytes_written != payload_size) ? -1 : 0;
      |             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘void ZynqMP::DestroyAPUThreads()’:
../fw-xlnx/zynqmp.cpp:46:16: warning: unused variable ‘papuThread’ [-Wunused-variable]
   46 |     APUThread* papuThread;
      |                ^~~~~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘void ZynqMP::ConnectApuThreads()’:
../fw-xlnx/zynqmp.cpp:71:10: warning: variable ‘bResult’ set but not used [-Wunused-but-set-variable]
   71 |     bool bResult;
      |          ^~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘void ZynqMP::DisconnectApuThreads()’:
../fw-xlnx/zynqmp.cpp:83:10: warning: variable ‘bResult’ set but not used [-Wunused-but-set-variable]
   83 |     bool bResult;
      |          ^~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::InitFanCtrl(bool)’:
../fw-xlnx/zynqmp.cpp:134:31: warning: unused parameter ‘bLog’ [-Wunused-parameter]
  134 | bool ZynqMP::InitFanCtrl(bool bLog/*=false*/)
      |                          ~~~~~^~~~
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::GetVoltage(bool, int, double&)’:
../fw-xlnx/zynqmp.cpp:267:39: warning: unused parameter ‘nVoltage’ [-Wunused-parameter]
  267 | bool ZynqMP::GetVoltage(bool bLog,int nVoltage,double& dValue)
      |                                   ~~~~^~~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::WriteFanRPM(bool, int)’:
../fw-xlnx/zynqmp.cpp:337:10: warning: variable ‘bytes_write’ set but not used [-Wunused-but-set-variable]
  337 |      int bytes_write;
      |          ^~~~~~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::ListZCU102VoltageDevices(QString&)’:
../fw-xlnx/zynqmp.cpp:441:89: warning: ‘QStringList QString::split(const QRegExp&, QString::SplitBehavior) const’ is deprecated: Use Qt::SplitBehavior variant instead [-Wdeprecated-declarations]
  441 |     QStringList strResult = strListDevices.split(QRegExp("[\n]"),QString::SkipEmptyParts);
      |                                                                                         ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QString:1,
                 from ../../include/ILogging.h:7,
                 from ../fw-xlnx/zynqmp.h:15,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:622:17: note: declared here
  622 |     QStringList split(const QRegExp &sep, SplitBehavior behavior) const;
      |                 ^~~~~
../fw-xlnx/zynqmp.cpp:454:1: warning: no return statement in function returning non-void [-Wreturn-type]
  454 | }
      | ^
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::ListMPSOCVoltageDevices()’:
../fw-xlnx/zynqmp.cpp:462:89: warning: ‘QStringList QString::split(const QRegExp&, QString::SplitBehavior) const’ is deprecated: Use Qt::SplitBehavior variant instead [-Wdeprecated-declarations]
  462 |     QStringList strResult = strListDevices.split(QRegExp("[\n]"),QString::SkipEmptyParts);
      |                                                                                         ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QString:1,
                 from ../../include/ILogging.h:7,
                 from ../fw-xlnx/zynqmp.h:15,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:622:17: note: declared here
  622 |     QStringList split(const QRegExp &sep, SplitBehavior behavior) const;
      |                 ^~~~~
../fw-xlnx/zynqmp.cpp:474:1: warning: no return statement in function returning non-void [-Wreturn-type]
  474 | }
      | ^
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::GetMPSOCDeviceVoltage(bool, QStringList&)’:
../fw-xlnx/zynqmp.cpp:494:93: warning: ‘QStringList QString::split(const QRegExp&, QString::SplitBehavior) const’ is deprecated: Use Qt::SplitBehavior variant instead [-Wdeprecated-declarations]
  494 |         QStringList strResult = strListDevices.split(QRegExp("[\n]"),QString::SkipEmptyParts);
      |                                                                                             ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QString:1,
                 from ../../include/ILogging.h:7,
                 from ../fw-xlnx/zynqmp.h:15,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:622:17: note: declared here
  622 |     QStringList split(const QRegExp &sep, SplitBehavior behavior) const;
      |                 ^~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::GetDeviceInfo(bool, QString, QString&)’:
../fw-xlnx/zynqmp.cpp:796:18: warning: ignoring return value of ‘QString QString::trimmed() const &’, declared with attribute ‘nodiscard’ [-Wunused-result]
  796 |     info.trimmed();
      |                  ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QString:1,
                 from ../../include/ILogging.h:7,
                 from ../fw-xlnx/zynqmp.h:15,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:520:31: note: declared here
  520 |     Q_REQUIRED_RESULT QString trimmed() const &
      |                               ^~~~~~~
../fw-xlnx/zynqmp.cpp: In member function ‘bool ZynqMP::GetZCUDevicePower(bool, QStringList&)’:
../fw-xlnx/zynqmp.cpp:824:93: warning: ‘QStringList QString::split(const QRegExp&, QString::SplitBehavior) const’ is deprecated: Use Qt::SplitBehavior variant instead [-Wdeprecated-declarations]
  824 |         QStringList strResult = strListDevices.split(QRegExp("[\n]"),QString::SkipEmptyParts);
      |                                                                                             ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QString:1,
                 from ../../include/ILogging.h:7,
                 from ../fw-xlnx/zynqmp.h:15,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:622:17: note: declared here
  622 |     QStringList split(const QRegExp &sep, SplitBehavior behavior) const;
      |                 ^~~~~
../fw-xlnx/zynqmp.cpp:835:92: warning: ‘QStringList QString::split(const QRegExp&, QString::SplitBehavior) const’ is deprecated: Use Qt::SplitBehavior variant instead [-Wdeprecated-declarations]
  835 |             strVirtDevicesList=strListDevices.split(QRegExp("[\n]"),QString::SkipEmptyParts);
      |                                                                                            ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QString:1,
                 from ../../include/ILogging.h:7,
                 from ../fw-xlnx/zynqmp.h:15,
                 from ../fw-xlnx/zynqmp.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:622:17: note: declared here
  622 |     QStringList split(const QRegExp &sep, SplitBehavior behavior) const;
      |                 ^~~~~
../fw-xlnx/zynqmp.cpp:843:21: warning: variable ‘rawP’ set but not used [-Wunused-but-set-variable]
  843 |                 int rawP=0;
      |                     ^~~~
../fw-xlnx/zynqmp.cpp:844:23: warning: unused variable ‘scaleP’ [-Wunused-variable]
  844 |                 float scaleP=0.0;
      |                       ^~~~~~
../fw-xlnx/openamp.cpp: In member function ‘int OpenAMP::get_rpmsg_chrdev_fd(const char*, char*)’:
../fw-xlnx/openamp.cpp:1538:34: warning: ‘%s’ directive writing up to 255 bytes into a region of size 251 [-Wformat-overflow=]
 1538 |             sprintf(fpath, "/dev/%s", ent->d_name);
      |                                  ^~
../fw-xlnx/openamp.cpp:1538:20: note: ‘sprintf’ output between 6 and 261 bytes into a destination of size 256
 1538 |             sprintf(fpath, "/dev/%s", ent->d_name);
      |             ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘bool UBootTools::GetEnvironmentByName_old(const char*, char*, int)’:
../fw-xlnx/uboottools.cpp:86:33: warning: comparison of integer expressions of different signedness: ‘int’ and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
   86 |                         if( len >= strlen(found))
      |                             ~~~~^~~~~~~~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘bool UBootTools::LoadUBootEnvironment(QString)’:
../fw-xlnx/uboottools.cpp:152:11: warning: unused variable ‘ulcrc32’ [-Wunused-variable]
  152 |     ulong ulcrc32 = bacrc32.toULong(&bCheck,16);
      |           ^~~~~~~
../fw-xlnx/uboottools.cpp:157:11: warning: unused variable ‘ulongcrc32’ [-Wunused-variable]
  157 |     ulong ulongcrc32 = *reinterpret_cast<const ulong*>(bacrc32.constData()); //geht auch nich
      |           ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘void UBootTools::CalculateCRC()’:
../fw-xlnx/uboottools.cpp:180:9: warning: unused variable ‘nNewEnvBlockLength’ [-Wunused-variable]
  180 |     int nNewEnvBlockLength = ENV_LENGTH;
      |         ^~~~~~~~~~~~~~~~~~
../fw-xlnx/uboottools.cpp:183:9: warning: unused variable ‘baUbootLength’ [-Wunused-variable]
  183 |     int baUbootLength = baUbootEnv.length();
      |         ^~~~~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘void UBootTools::SaveUBootEnvironment(QString, QStringList)’:
../fw-xlnx/uboottools.cpp:235:46: warning: ‘QByteArray& QByteArray::append(const QString&)’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  235 |                     baUbootEnv.append(strLine);
      |                                              ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1507:20: note: declared here
 1507 | inline QByteArray &QByteArray::append(const QString &s)
      |                    ^~~~~~~~~~
../fw-xlnx/uboottools.cpp:240:46: warning: ‘QByteArray& QByteArray::append(const QString&)’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  240 |                     baUbootEnv.append(strLine);
      |                                              ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1507:20: note: declared here
 1507 | inline QByteArray &QByteArray::append(const QString &s)
      |                    ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘void UBootTools::ReadMACAddressFromFlash_old(char*)’:
../fw-xlnx/uboottools.cpp:272:17: warning: unused variable ‘nCmdLength’ [-Wunused-variable]
  272 |     int items=0,nCmdLength=0;
      |                 ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘bool UBootTools::GetEnvironmentByName(QString, QString&)’:
../fw-xlnx/uboottools.cpp:362:42: warning: ‘int QByteArray::indexOf(const QString&, int) const’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  362 |     int position = baUbootEnv.indexOf(env);
      |                                          ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1519:12: note: declared here
 1519 | inline int QByteArray::indexOf(const QString &s, int from) const
      |            ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::FindEnvironmentByName(QString)’:
../fw-xlnx/uboottools.cpp:391:46: warning: ‘int QByteArray::indexOf(const QString&, int) const’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  391 |     int position = baUbootEnv.indexOf(envName);
      |                                              ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1519:12: note: declared here
 1519 | inline int QByteArray::indexOf(const QString &s, int from) const
      |            ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::DeleteEnvironmentByName(QString)’:
../fw-xlnx/uboottools.cpp:409:46: warning: ‘int QByteArray::indexOf(const QString&, int) const’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  409 |     int position = baUbootEnv.indexOf(envName);
      |                                              ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1519:12: note: declared here
 1519 | inline int QByteArray::indexOf(const QString &s, int from) const
      |            ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::DeleteEnvironmentByName(QString, QString)’:
../fw-xlnx/uboottools.cpp:425:46: warning: ‘int QByteArray::indexOf(const QString&, int) const’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  425 |     int position = baUbootEnv.indexOf(envName);
      |                                              ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1519:12: note: declared here
 1519 | inline int QByteArray::indexOf(const QString &s, int from) const
      |            ^~~~~~~~~~
../fw-xlnx/uboottools.cpp:430:47: warning: ‘int QByteArray::indexOf(const QString&, int) const’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  430 |         position = baUbootEnv.indexOf(envValue);
      |                                               ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1519:12: note: declared here
 1519 | inline int QByteArray::indexOf(const QString &s, int from) const
      |            ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::SaveEnvironmentByName(QString, QString)’:
../fw-xlnx/uboottools.cpp:455:46: warning: ‘int QByteArray::indexOf(const QString&, int) const’ is deprecated: Use QString's toUtf8(), toLatin1() or toLocal8Bit() [-Wdeprecated-declarations]
  455 |     int position = baUbootEnv.indexOf(envName);
      |                                              ^
In file included from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qobject.h:47,
                 from /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/QObject:1,
                 from ../fw-xlnx/uboottools.h:17,
                 from ../fw-xlnx/uboottools.cpp:1:
/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include/QtCore/qstring.h:1519:12: note: declared here
 1519 | inline int QByteArray::indexOf(const QString &s, int from) const
      |            ^~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::DeleteEnvironmentByName_old(const char*)’:
../fw-xlnx/uboottools.cpp:533:51: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
  533 |             memcpy(pNewEnvironment+deleteItemPos, (char*)(ENV_START+nEnvRemaingPos-4),nEnvRemaingLentgth);
      |                                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../fw-xlnx/uboottools.cpp:534:17: warning: unused variable ‘sinnlos’ [-Wunused-variable]
  534 |             int sinnlos=42;
      |                 ^~~~~~~
../fw-xlnx/uboottools.cpp:508:13: warning: unused variable ‘nNewEnvLength’ [-Wunused-variable]
  508 |         int nNewEnvLength = 0;
      |             ^~~~~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::SaveEnvironmentByName_old(const char*, char*)’:
../fw-xlnx/uboottools.cpp:592:1: warning: no return statement in function returning non-void [-Wreturn-type]
  592 | }
      | ^
../fw-xlnx/uboottools.cpp:589:55: warning: unused parameter ‘envName’ [-Wunused-parameter]
  589 | int UBootTools::SaveEnvironmentByName_old(const char *envName, char *envNewValue)
      |                                           ~~~~~~~~~~~~^~~~~~~
../fw-xlnx/uboottools.cpp:589:70: warning: unused parameter ‘envNewValue’ [-Wunused-parameter]
  589 | int UBootTools::SaveEnvironmentByName_old(const char *envName, char *envNewValue)
      |                                                                ~~~~~~^~~~~~~~~~~
../fw-xlnx/uboottools.cpp: In member function ‘int UBootTools::GetEnvironmentLength_old()’:
../fw-xlnx/uboottools.cpp:597:11: warning: unused variable ‘key’ [-Wunused-variable]
  597 |     char* key;
      |           ^~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::InitMainGUI()’:
../fw-xlnx/mainwindow.cpp:88:10: warning: variable ‘bCheckConnect’ set but not used [-Wunused-but-set-variable]
   88 |     bool bCheckConnect;
      |          ^~~~~~~~~~~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::slotTabWidgetChanged(int)’:
../fw-xlnx/mainwindow.cpp:138:43: warning: unused parameter ‘index’ [-Wunused-parameter]
  138 | void MainWindow::slotTabWidgetChanged(int index)
      |                                       ~~~~^~~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::ShowMonitoring(int)’:
../fw-xlnx/mainwindow.cpp:236:15: warning: unused variable ‘sw’ [-Wunused-variable]
  236 |         qreal sw = ttr.width();
      |               ^~
../fw-xlnx/mainwindow.cpp:237:15: warning: unused variable ‘sh’ [-Wunused-variable]
  237 |         qreal sh = ttr.height();
      |               ^~
../fw-xlnx/mainwindow.cpp:211:9: warning: unused variable ‘frw’ [-Wunused-variable]
  211 |     int frw = ui->graphicsView->frameRect().width();
      |         ^~~
../fw-xlnx/mainwindow.cpp:212:9: warning: unused variable ‘frh’ [-Wunused-variable]
  212 |     int frh = ui->graphicsView->frameRect().height();
      |         ^~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::ScaleGraphic()’:
../fw-xlnx/mainwindow.cpp:253:9: warning: unused variable ‘frw’ [-Wunused-variable]
  253 |     int frw = ui->graphicsView->frameRect().width();
      |         ^~~
../fw-xlnx/mainwindow.cpp:254:9: warning: unused variable ‘frh’ [-Wunused-variable]
  254 |     int frh = ui->graphicsView->frameRect().height();
      |         ^~~
../fw-xlnx/mainwindow.cpp:261:11: warning: unused variable ‘sw’ [-Wunused-variable]
  261 |     qreal sw = ttr.width();
      |           ^~
../fw-xlnx/mainwindow.cpp:262:11: warning: unused variable ‘sh’ [-Wunused-variable]
  262 |     qreal sh = ttr.height();
      |           ^~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_checkBoxTempAuto_stateChanged(int)’:
../fw-xlnx/mainwindow.cpp:693:55: warning: unused parameter ‘arg1’ [-Wunused-parameter]
  693 | void MainWindow::on_checkBoxTempAuto_stateChanged(int arg1)
      |                                                   ~~~~^~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_checkBoxMPSOCAuto_stateChanged(int)’:
../fw-xlnx/mainwindow.cpp:897:56: warning: unused parameter ‘arg1’ [-Wunused-parameter]
  897 | void MainWindow::on_checkBoxMPSOCAuto_stateChanged(int arg1)
      |                                                    ~~~~^~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_pushButtonRedirectConsole_clicked()’:
../fw-xlnx/mainwindow.cpp:1189:19: warning: unknown escape sequence: '\&'
 1189 |     strCmd.append("cat /dev/ttyRPMSG0 \&");
      |                   ^~~~~~~~~~~~~~~~~~~~~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_pushButton_22_clicked()’:
../fw-xlnx/mainwindow.cpp:1407:27: warning: unused variable ‘curitem’ [-Wunused-variable]
 1407 |         QTableWidgetItem* curitem;
      |                           ^~~~~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_pushButton_23_clicked()’:
../fw-xlnx/mainwindow.cpp:1458:9: warning: unused variable ‘nReturn’ [-Wunused-variable]
 1458 |     int nReturn= linuxUtils->Shell(cmd);
      |         ^~~~~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_tableWidgetUbootEnv_itemSelectionChanged()’:
../fw-xlnx/mainwindow.cpp:1717:9: warning: unused variable ‘wtf’ [-Wunused-variable]
 1717 |     int wtf=42;
      |         ^~~
../fw-xlnx/mainwindow.cpp: In member function ‘bool MainWindow::LoadUBootEnvironment(QString)’:
../fw-xlnx/mainwindow.cpp:1771:1: warning: no return statement in function returning non-void [-Wreturn-type]
 1771 | }
      | ^
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::InsertLine(QString, QString)’:
../fw-xlnx/mainwindow.cpp:1840:9: warning: unused variable ‘nRow’ [-Wunused-variable]
 1840 |     int nRow = ui->tableWidgetUbootEnv->rowCount();
      |         ^~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_tableWidgetUbootEnv_cellChanged(int, int)’:
../fw-xlnx/mainwindow.cpp:1859:57: warning: unused parameter ‘row’ [-Wunused-parameter]
 1859 | void MainWindow::on_tableWidgetUbootEnv_cellChanged(int row, int column)
      |                                                     ~~~~^~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_pushButtonFindNextHTML_clicked()’:
../fw-xlnx/mainwindow.cpp:2143:10: warning: variable ‘bFound’ set but not used [-Wunused-but-set-variable]
 2143 |     bool bFound;
      |          ^~~~~~
../fw-xlnx/mainwindow.cpp: In member function ‘void MainWindow::on_checkBoxDynamicDebug_stateChanged(int)’:
../fw-xlnx/mainwindow.cpp:2188:59: warning: unused parameter ‘arg1’ [-Wunused-parameter]
 2188 | void MainWindow::on_checkBoxDynamicDebug_stateChanged(int arg1)
      |                                                       ~~~~^~~~
/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx/version.sh /mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx 5.15.2 Linux_Desktop Debug
current path= /home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug
version.sh param 1 targetpath=/mnt/project_zwo/2021.2/CLWave50/plnx/Software/Cmpn-Linux/fw-xlnx
version.sh param 2 targetversion=5.15.2
version.sh param 3 kit=Linux_Desktop
version.sh param 4 build type=Debug
1403
aarch64-xilinx-linux-g++ -mcpu=cortex-a72.cortex-a53 -march=armv8-a+crc -fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux -o ComprionDesktop FlashEnvironmentReader.o crc32.o dialog.o main.o mainwindow.o mat_mul_demo.o openamp.o uboottools.o zynqmp.o qrc_resources.o moc_dialog.o moc_mainwindow.o moc_uboottools.o moc_zynqmp.o   -L/usr/lib -L/opt/lib -lQLinuxUtils /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/libQt5Widgets.so /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/libQt5Gui.so /mnt/project_zwo/2021.2/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib/libQt5Core.so -lGLESv2 -lpthread   
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/libexec/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/real-ld: warning: library search path "/usr/lib" is unsafe for cross-compilation
/mnt/project_zwo/2021.2/sdk/sysroots/x86_64-petalinux-linux/usr/libexec/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/10.2.0/real-ld: skipping incompatible /usr/lib/libQLinuxUtils.so when searching for -lQLinuxUtils
14:13:32: The process "/usr/bin/make" exited normally.
14:13:32: Elapsed time: 00:04.
