{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    zed-editor
  ];

  environment.etc."zed/settings.json".text = builtins.toJSON {
    agent = {
      button = false;
      favorite_models = [ ];
      model_parameters = [ ];
      enable_feedback = false;
    };

    outline_panel = { };

    git_panel = {
      dock = "right";
      status_style = "icon";
      file_icons = false;
      folder_icons = true;
      show_count_badge = false;
    };

    disable_ai = false;

    active_pane_modifiers = {
      border_size = 0.0;
    };

    window_decorations = "server";

    tabs = {
      file_icons = false;
      git_status = true;
    };

    tab_bar.show = true;

    title_bar.show_user_picture = true;

    debugger.button = false;
    search.button = false;
    diagnostics.button = false;
    terminal.button = true;

    status_bar = {
      cursor_position_button = true;
      active_language_button = true;
    };

    project_panel = {
      dock = "left";
      button = true;
    };

    indent_guides = {
      background_coloring = "disabled";
      coloring = "fixed";
    };

    hard_tabs = false;
    tab_size = 4;

    toolbar = {
      agent_review = false;
      selections_menu = true;
      breadcrumbs = true;
      quick_actions = false;
    };

    scroll_beyond_last_line = "vertical_scroll_margin";
    text_rendering_mode = "platform_default";
    buffer_font_family = ".ZedMono";

    auto_update = false;

    telemetry = {
      diagnostics = false;
      metrics = false;
    };

    restore_on_startup = "empty_tab";
    cli_default_open_behavior = "new_window";

    redact_private_values = false;
    use_system_path_prompts = false;

    on_last_window_closed = "quit_app";
    when_closing_with_no_tabs = "close_window";

    proxy = "";

    session = {
      trust_all_worktrees = true;
    };

    icon_theme = "Zed (Default)";
    ui_font_size = 16;
    buffer_font_size = 14.0;

    theme = "One Dark";
  };

  system.activationScripts.zed-config = ''
    mkdir -p /home/alikornsause/.config/zed
    cp /etc/zed/settings.json /home/alikornsause/.config/zed/settings.json
  '';
}
