#设置PREFIX为Ctrl-x
set -g prefix C-x
#解除Ctrl-b与PREFIX的对应关系
unbind C-b
#copy-mode将快捷键设置为vi模式
setw -g mode-keys vi
#将r键设置为加载配置文件，并显示"reloaded!"信息
bind r source-file ~/.tmux.conf \; display "Reloaded!"
#设置终端颜色为256色
set -g default-terminal "screen-256color"
#开启status-bar uft-8支持
set -g status-utf8 on
#设置pan前景色
set -g pane-border-fg green
#设置pane背景色
set -g pane-border-bg black
#设置活跃pane前景色
set -g pane-active-border-fg white
#设置活跃pane背景色
set -g pane-active-border-bg yellow
#设置消息前景色
set -g message-fg white
#设置消息背景色
set -g message-bg black
#设置消息高亮显示
set -g message-attr bright
#设置status-bar颜色
set -g status-fg white
set -g status-bg black
#设置窗口列表颜色
setw -g window-status-fg cyan
setw -g window-status-bg default
setw -g window-status-attr dim
#设置当前窗口在status bar中的颜色
setw -g window-status-current-fg white
setw -g window-status-current-bg red
setw -g window-status-current-attr bright
#设置status bar格式
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
set -g status-right "#[fg=cyan]%d %b %R"
set -g status-interval 60
set -g status-justify centre
#开启window事件提示
setw -g monitor-activity on
set -g visual-activity on

#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#right
bind-key l select-pane -R


#select last window
bind-key C-l select-window -l

#scroll by using mouse
set-window-option -g mode-mouse on

#Copy tmux paste buffer to CLIPBOARD(CLIPBOARD selection integration)
#must install xclip and xsel
bind C-c run "tmux save-buffer - | xclip -i -selection clipboard"
#Copy CLIPBOARD to tmux paste buffer and paste tmux paste buffer
bind C-v run "tmux set-buffer -- \"$(xclip -o -selection clipboard)\"; tmux paste-buffer"

