PulseEffectsTray 0.2

### 更新日志 20201206
by 深度论坛 @dfc643
* 修复 Deepin 上无法启动的问题
* 托盘界面图标美化更匹配系统外观
* 程序界面汉化
* 除去停用后台服务功能（防止手贱）
* 添加卸载脚本

### 原说明翻译
这是惠灵顿·华莱士（Wellington Wallace）制作的PulseEffects的一种快速切换软件，简单的独立附件：

https://github.com/wwmm/pulseeffects

它将在任务栏（托盘）中创建一个GTK3状态图标，以在单击鼠标左键时切换旁路状态，并提供一个菜单以从可用的预置中选择鼠标右键输入和输出。
另外，图标和PulseEffects可以被杀死。

它需要用于Python的Python3和GTK3（在基于Debian的操作系统上为`python3-gi`）。使文件`pulseeffectstray`可执行：

```
chmod a+x pulseeffectstray
```

并执行它。

或者以root用户身份运行脚本“ install.sh”，将脚本安装到“/usr/local/bin”，将图标安装到“ usr/share/pixmaps”，将应用程序启动器安装到“/usr/share/applications”。这样可使托盘图标在应用程序菜单中可用。

在运行时不需要PNG，因为图形数据在脚本本身中是base64编码的。因此，最起码的设置是将可执行文件放在某个地方。

如果您安装了PulseEffects> = v4.7.4，则可以使用该图标来切换窗口的可见性，而不必切换旁路。要使用此功能，请确保运行pulseeffects守护程序（参数--gapplication-service），并使用参数 -h 启动Pulseeffectstray。

如果您要在“隐藏到工作间”模式下单击以绕过 PulseEffects，请创建一个名为 “Bypass” 的全新预设，禁用所有信号处理器并将设置保存为该预设。然后它将出现在任务栏图标菜单中。
