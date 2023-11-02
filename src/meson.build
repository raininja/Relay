cfg_org_agronick_relay = configuration_data()
cfg_org_agronick_relay.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_org_agronick_relay.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'org.agronick.relay'))
cfg_org_agronick_relay.set('GETTEXT_PACKAGE', 'org.agronick.relay')
cfg_org_agronick_relay.set('RELEASE_NAME', 'org.agronick.relay')
cfg_org_agronick_relay.set('PREFIX', get_option('prefix'))
cfg_org_agronick_relay.set('VERSION', '1.0.0')
cfg_org_agronick_relay.set('TESTSRCDIR', meson.source_root())

cfgfile_1 = configure_file(
	input: 'Config.vala.base',
	output: 'Config.vala',
	configuration: cfg_org_agronick_relay)

org_agronick_relay_deps = [atk_dep]
org_agronick_relay_deps += [cairo_dep]
org_agronick_relay_deps += [cairo_gobject_dep]
org_agronick_relay_deps += [dee_1_0_dep]
org_agronick_relay_deps += [gdk_3_0_dep]
org_agronick_relay_deps += [gdk_pixbuf_2_0_dep]
org_agronick_relay_deps += [gee_0_8_dep]
org_agronick_relay_deps += [gio_2_0_dep]
org_agronick_relay_deps += [gio_unix_2_0_dep]
org_agronick_relay_deps += [glib_2_0_dep]
org_agronick_relay_deps += [gobject_2_0_dep]
org_agronick_relay_deps += [granite_dep]
org_agronick_relay_deps += [gtk_3_0_dep]
org_agronick_relay_deps += [harfbuzz_gobject_dep]
org_agronick_relay_deps += [pango_dep]
org_agronick_relay_deps += [pangocairo_dep]
org_agronick_relay_deps += [sqlite3_dep]
org_agronick_relay_deps += [unity_dep]
org_agronick_relay_deps += [m_dep]
# org_agronick_relay_deps += [x11_dep]
org_agronick_relay_sources = [cfgfile_1]
org_agronick_relay_sources += ['channel_tab.vala']
org_agronick_relay_sources += ['connection.vala']
org_agronick_relay_sources += ['drag_file.vala']
org_agronick_relay_sources += ['irc.vala']
# org_agronick_relay_sources += ['main.vala']
org_agronick_relay_sources += ['main_entry.vala']
org_agronick_relay_sources += ['main_window.vala']
org_agronick_relay_sources += ['message.vala']
org_agronick_relay_sources += ['org.agronick.relay.vala']
org_agronick_relay_sources += ['relay.vala']
org_agronick_relay_sources += ['rich_text.vala']
org_agronick_relay_sources += ['server_manager.vala']
org_agronick_relay_sources += ['settings.vala']
org_agronick_relay_sources += ['sqlclient.vala']
org_agronick_relay_link_args = ['-rdynamic']

executable('org.agronick.relay',org_agronick_relay_sources,
    dependencies: org_agronick_relay_deps,
    link_args: org_agronick_relay_link_args,
    install: true)

