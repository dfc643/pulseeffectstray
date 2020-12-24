PulseEffectsTray 1.0
by dfc643 at Deepin Forum

## 更新日志
### 1.0b20201224
* 使用 PyQt 重写以适配 DTK
* 添加左键点击图标快速禁用启动音效
* 添加切换音效时显示通知
* 添加打开 PulseEffects 入口
* 添加简体中文、繁体中文、日语、英语支持
* 优化图标大小

### 0.2b20201206
* 修复 Deepin 上无法启动的问题
* 托盘界面图标美化更匹配系统外观
* 程序界面汉化
* 除去停用后台服务功能（防止手贱）
* 添加卸载脚本

## Changelog
### 1.0b20201224
* Adapt to use PyQt rewriting
* Add left click icon to quickly disable start sound effect
* Show notification when adding switch sound
* Add to open the pulseeffects portal
* Add simplified Chinese, traditional Chinese, Japanese, English support
* Optimize icon size

### 0.2b20201206
* Fix the problem of not starting on deepin
* Tray interface icons beautify to match system appearance
* Sinicization of program interface
* Remove and disable the background service function (prevent hand from being cheap)
* Add unload script

## Introduce
It creates a PyQT5 status icon in the taskbar (tray) to toggle bypass state on left-click and offering a menu to select from the available presets for in- and outputs on right-click. Additionally the icon and PulseEffects can be killed.

It requires Python3 and PyQT5 (python3-qt5 on Debian based OS) for python. Make the file pulseeffectstray executable:

chmod a+x pulseeffects

And execute it.

Alternatively run the script install.sh as root to install the script to /usr/local/bin, the icon to usr/share/pixmaps and the application starter to /usr/share/applications. This makes the tray icon available in application menus.

The PNGs are not required on run-time since graphics data is base64 encoded in the script itself. So most minimal setup is to just have the executable lying around somewhere.

If you have PulseEffects >= v4.7.4 installed, the icon can be used to toggle visibility of the window instead of toggling bypass. To make use of this feature, make sure to run the pulseeffects daemon (argument --gapplication-service) and start pulseeffectstray with the argument -h.

If you'd like to bypass PulseEffects on click in hide-to-tray mode, create a fresh preset called Bypass, disable all signal processors and save the settings to the preset. It will appear in the tray icons menu then.

