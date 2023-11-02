cfg_Relay = configuration_data()
cfg_Relay.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_Relay.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'Relay'))
cfg_Relay.set('GETTEXT_PACKAGE', 'Relay')
cfg_Relay.set('RELEASE_NAME', 'Relay')
cfg_Relay.set('PREFIX', get_option('prefix'))
cfg_Relay.set('VERSION', '1.0.0')
cfg_Relay.set('TESTSRCDIR', meson.source_root())

cfgfile_1 = configure_file(
	input: 'Config.vala.base',
	output: 'Config.vala',
	configuration: cfg_Relay)

Relay_deps = [atk_dep]
Relay_deps += [cairo_dep]
Relay_deps += [cairo_gobject_dep]
Relay_deps += [dee_1_0_dep]
Relay_deps += [gdk_3_0_dep]
Relay_deps += [gdk_pixbuf_2_0_dep]
Relay_deps += [gee_0_8_dep]
Relay_deps += [gio_2_0_dep]
Relay_deps += [gio_unix_2_0_dep]
Relay_deps += [glib_2_0_dep]
Relay_deps += [gobject_2_0_dep]
Relay_deps += [granite_dep]
Relay_deps += [gtk_3_0_dep]
Relay_deps += [harfbuzz_gobject_dep]
Relay_deps += [pango_dep]
Relay_deps += [pangocairo_dep]
Relay_deps += [sqlite3_dep]
Relay_deps += [unity_dep]
Relay_deps += [m_dep]
Relay_sources = [cfgfile_1]
Relay_sources += ['Relay.vala']
Relay_sources += ['channel_tab.vala']
Relay_sources += ['connection.vala']
Relay_sources += ['drag_file.vala']
Relay_sources += ['irc.vala']
Relay_sources += ['main_entry.vala']
Relay_sources += ['main_window.vala']
Relay_sources += ['message.vala']
Relay_sources += ['relay.vala']
Relay_sources += ['rich_text.vala']
Relay_sources += ['server_manager.vala']
Relay_sources += ['settings.vala']
Relay_sources += ['sqlclient.vala']
Relay_link_args = ['-rdynamic']

executable('Relay',Relay_sources,
    dependencies: Relay_deps,
    link_args: Relay_link_args,
    install: true)

