project('com.github.raininja.relay',
  ['c','vala'])

add_global_arguments('-DGETTEXT_PACKAGE="com.github.raininja.relay"', language: 'c')

find_program ('glib-compile-schemas')
atk_dep = dependency('atk')
cairo_dep = dependency('cairo')
cairo_gobject_dep = dependency('cairo-gobject')
# dee_1_0_dep = dependency('dee-1.0')
gdk_3_0_dep = dependency('gdk-3.0')
gdk_pixbuf_2_0_dep = dependency('gdk-pixbuf-2.0')
gee_0_8_dep = dependency('gee-0.8')
gio_2_0_dep = dependency('gio-2.0')
gio_unix_2_0_dep = dependency('gio-unix-2.0')
glib_2_0_dep = dependency('glib-2.0')
gobject_2_0_dep = dependency('gobject-2.0')
granite_dep = dependency('granite')
gtk_3_0_dep = dependency('gtk+-3.0')
harfbuzz_gobject_dep = dependency('harfbuzz-gobject')
pango_dep = dependency('pango')
pangocairo_dep = dependency('pangocairo')
sqlite3_dep = dependency('sqlite3')
# unity_dep = dependency('unity')
cc = meson.get_compiler('c')
m_dep = cc.find_library('m', required: true)

install_data('data/relay.desktop',install_dir:join_paths(get_option('prefix'),get_option('datadir'), 'applications'))
install_data('data/com.github.raininja.relay.gschema.xml', install_dir: join_paths(get_option('prefix'),get_option('datadir'), 'glib-2.0', 'schemas'))
meson.add_install_script('meson_scripts/install_schemas.sh')
subdir('src')
