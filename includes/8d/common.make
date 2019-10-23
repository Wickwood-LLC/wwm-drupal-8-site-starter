; This is a list of modules and libraries common to all Drupal 8 platforms

projects[admin_toolbar][version] = 1.27
projects[adminimal_admin_toolbar][version] = 1.9
projects[advanced_help][version] = 1.0-alpha2
; Migrate from better_formats
projects[allowed_formats][version] = 1.1
projects[backup_migrate][version] = 4.0

; need to evaluate for patches used in D7
projects[better_exposed_filters][version] = 3.0-alpha6
projects[captcha][version] = 1.0-beta1

; CKEditor plugin modules
projects[ckeditor_scayt][version] = 1.0-alpha2
projects[ckeditor_find][version] = 1.0-beta1

projects[ckeditor_selectall][version] = 1.x-dev
projects[ckeditor_selectall][download][type] = "git"
projects[ckeditor_selectall][download][url] = "https://git.drupalcode.org/project/ckeditor_selectall.git"
projects[ckeditor_selectall][download][revision] = "7d8b5c6328dcd4ef68e5c60aeb8c6296111e7548"

projects[ckeditor_smiley][version] = 1.0
projects[ckeditor_div_manager][version] = 1.0
projects[pagebreak][version] = 1.0
projects[ckeditor_drupalbreaks][version] = 1.x-dev
projects[colorbutton][version] = 1.1
projects[ckeditor_font][version] = 1.0
projects[ckeditor_descriptionlist][version] = 1.0
projects[anchor_link][version] = 2.0-alpha2
projects[ckwordcount][version] = 1.0
projects[notification][version] = 1.0
projects[ckeditor_liststyle][version] = 1.3
projects[ckeditor_specialchars][version] = 1.1
projects[ckeditor_tabletoolstoolbar][version] = 1.0

projects[colorbox][version] = 1.4
projects[conditional_styles][version] = 1.0
projects[crop][version] = 2.0-rc1

; Evaluate patches applied on D7
projects[ctools][version] = 3.2
projects[devel][version] = 2.1
projects[diff][version] = 1.0-rc2
projects[editor_advanced_link][version] = 1.4
projects[embed][version] = 1.0
projects[entityqueue][version] = 1.0-beta5
projects[entity_browser][version] = 2.2

; Reviewed on 2019-08-22 by Junaid - added patch
projects[entity_embed][version] = 1.0
; To allow configuring separate display mode per bundle of entity type.
; From https://www.drupal.org/project/entity_embed/issues/3073599#comment-13214577
projects[entity_embed][patch][] = "https://www.drupal.org/files/issues/2019-08-08/configure-display-plgins-per-bundle-3073599-2.patch"

projects[entity_embed_permissions] = 1.0
projects[fakeobjects][version] = 1.0
projects[feeds][version] = 3.0-alpha5
projects[field_group][version] = 3.0-rc1
projects[field_permissions][version] = 1.0-rc2
; Required by image_effects
projects[file_mdm][version] = 1.1

projects[filefield_paths][version] = 1.0-beta1
; Use until version later than 1.0-beta1 is used.
; From https://www.drupal.org/project/filefield_paths/issues/2662420
projects[filefield_paths][patch][] = "https://www.drupal.org/files/issues/filefield_paths-ignore_base_fields-2662420-5.patch"

projects[filefield_sources][version] = 1.0-alpha1
; Migrate from imagecache_actions
projects[image_effects][version] = 2.3
projects[image_resize_filter][version] = 1.0-beta1

; For imagemagick, need to run "composer require fileeye/mimemap"
projects[imagemagick][version] = 2.5
projects[inline_entity_form][version] = 1.0-rc1
projects[job_scheduler][version] = 2.0-alpha1
; Migrate from menu_attributes
projects[link_attributes][version] = 1.8
projects[linkit][version] = 4.3

; Use only if other modules depend on it.
projects[libraries][version] = 3.0-alpha1

projects[masquerade][version] = 2.0-beta2

projects[media_ckeditor_extras][download][type] = "git"
projects[media_ckeditor_extras][download][url] = "https://github.com/Wickwood-LLC/media_ckeditor_extras.git"
projects[media_ckeditor_extras][download][branch] = 8.x-1.x

projects[media_entity_embed][download][type] = "git"
projects[media_entity_embed][download][url] = "https://github.com/Wickwood-LLC/media_entity_embed.git"
projects[media_entity_embed][download][branch] = 8.x-1.x

projects[media_extra][download][type] = "git"
projects[media_extra][download][url] = "https://github.com/Wickwood-LLC/media_extra.git"
projects[media_extra][download][branch] = 8.x-1.x

projects[media_entity_browser][version] = 2.0-alpha2
projects[metatag][version] = 1.8
projects[migrate_upgrade][version] = 3.0
projects[migrate_plus][version] = 4.2
projects[migrate_tools][version] = 4.1

; Module to help migrate nodequeue to entityqueue
projects[nodequeue_migrate][version] = 1.x-dev
projects[nodequeue_migrate][download][type] = "git"
projects[nodequeue_migrate][download][url] = "https://git.drupalcode.org/project/nodequeue_migrate.git"
projects[nodequeue_migrate][download][revision] = "3a3174a204653d9ae6b22c40f949bf415c4c9457"

projects[php][version] = 1.0

; No D8, need to migrate to printable or entity_print
;projects[print][version]

; Use Googe tag instead
;projects[googleanalytics] - 2.4

; It does not work
projects[module_filter][version] = 3.1

projects[page_manager][version] = 4.0-beta4
projects[panels][version] = 4.4

; Reviewed on 2019-08-15 by Junaid - added patch
projects[pathauto][version] = 1.4
; Added patch to fix issue that does not save URL Alias for already existing enties without pattern and have no alias.
; From https://www.drupal.org/project/pathauto/issues/2756703#comment-13192348
projects[pathauto][patch][] = "https://www.drupal.org/files/issues/2019-07-22/pathauto-custom-alias-2756703-27.patch"

projects[pathologic][version] = 1.0-alpha1
projects[plupload][version] = 1.0-beta2

; Migrate from expire
projects[purge][version] = 3.0-beta8
projects[purge_purger_http][version] = 1.0-beta4

projects[quick_node_clone][version] = 1.12
projects[readonlymode][version] = 1.0
projects[recaptcha][version] = 2.4

; Migrate from global redirect
projects[redirect][version] = 1.4
projects[replicate][version] = 1.0-alpha1
projects[reroute_email][version] = 1.1
projects[robotstxt][version] = 1.2
projects[scheduler][version] = 1.0
projects[schema_metatag][version] = 1.4
projects[smtp][version] = 1.0-beta4
projects[snippet_manager][version] = 1.7
projects[social_media][version] = 1.3
projects[social_media_links][version] = 2.6
projects[token][version] = 1.5
projects[token_filter][version] = 1.1
projects[twig_tweak][version] = 2.4
projects[varnish_purge][version] = 1.11
projects[video_embed_field][version] = 2.1
projects[views_bulk_operations][version] = 3.2
projects[views_tree][version] = 2.0-alpha1
projects[webform][version] = 5.3

; Reviewed on 2019-07-03 by Junaid - Added patch
projects[wysiwyg_template][version] = 2.1
; Patch allow configurng CSS to use in ckeditor and content view pages.
; Patch from https://gist.github.com/junaidpv/0233531efc7b8294400d4f9922265512
projects[wysiwyg_template][patch][] = "https://gist.githubusercontent.com/junaidpv/0233531efc7b8294400d4f9922265512/raw/8bff4c0e50d91116e1b034e0111a712708aed2b7/allow-to-add-css-for-editor-2855470-7.patch"

projects[xmlsitemap][version] = 1.0-alpha3

; Themes
; ------

projects[adminimal_theme][version] = 1.5


; Libraries
; ---------

; CKEditor plugins
libraries[scayt][download][type] = "file"
libraries[scayt][download][url] = "https://download.ckeditor.com/scayt/releases/scayt_4.12.1.zip"

libraries[find][download][type] = "file"
libraries[find][download][url] = "https://download.ckeditor.com/find/releases/find_4.12.1.zip"
libraries[find][destination] = "libraries/ckeditor/plugins"

libraries[selectall][download][type] = "file"
libraries[selectall][download][url] = "https://download.ckeditor.com/selectall/releases/selectall_4.12.1.zip"

libraries[smiley][download][type] = "file"
libraries[smiley][download][url] = "https://download.ckeditor.com/smiley/releases/smiley_4.12.1.zip"

libraries[div][download][type] = "file"
libraries[div][download][url] = "https://download.ckeditor.com/div/releases/div_4.12.1.zip"
libraries[div][destination] = "libraries/ckeditor/plugins"

libraries[pagebreak][download][type] = "file"
libraries[pagebreak][download][url] = "https://download.ckeditor.com/pagebreak/releases/pagebreak_4.12.1.zip"

libraries[colorbutton][download][type] = "file"
libraries[colorbutton][download][url] = "https://download.ckeditor.com/colorbutton/releases/colorbutton_4.12.1.zip"

libraries[font][download][type] = "file"
libraries[font][download][url] = "https://download.ckeditor.com/font/releases/font_4.12.1.zip"

libraries[descriptionlist][download][type] = "file"
libraries[descriptionlist][download][url] = "https://github.com/Reinmar/ckeditor-plugin-descriptionlist/archive/master.zip"

libraries[link][download][type] = "file"
libraries[link][download][url] = "https://download.ckeditor.com/link/releases/link_4.12.1.zip"

libraries[wordcount][download][type] = "file"
libraries[wordcount][download][url] = "https://download.ckeditor.com/wordcount/releases/wordcount_1.17.6.zip"

libraries[notification][download][type] = "file"
libraries[notification][download][url] = "https://download.ckeditor.com/notification/releases/notification_4.12.1.zip"

libraries[liststyle][download][type] = "file"
libraries[liststyle][download][url] = "https://download.ckeditor.com/liststyle/releases/liststyle_4.12.1.zip"
libraries[liststyle][destination] = "libraries/ckeditor/plugins"

libraries[tabletoolstoolbar][download][type] = "file"
libraries[tabletoolstoolbar][download][url] = "https://download.ckeditor.com/tabletoolstoolbar/releases/tabletoolstoolbar_0.0.1.zip"

libraries[fakeobjects][download][type] = "file"
libraries[fakeobjects][download][url] = "https://download.ckeditor.com/fakeobjects/releases/fakeobjects_4.12.1.zip"



libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.x.zip"

libraries[plupload][download][type] = "file"
libraries[plupload][download][url] = "https://github.com/moxiecode/plupload/archive/v2.3.6.zip"

; Library for WYSIWYG template, templates plugin for CKEditor
libraries[templates][download][type] = "file"
libraries[templates][download][url] = "https://download.ckeditor.com/templates/releases/templates_4.11.1.zip"
