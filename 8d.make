; ----------------
; Created on 2019-05-22 by Junaid
; This drush make file builds a Plain Vanilla Drupal platform
; Specific versions to all projects are used to maintain more control over updates
; and allow for rebuilding older platforms if needed.
; ----------------
; Any line starting with a `;` is a comment.
; ----------------

; ----------------
; Core version
; ----------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 8.x

; ----------------
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; ----------------
; Reviewed on 2019-08-29 by Junaid - added patch
; Core project
; ----------------
; In order for the makefile to generate a full Drupal site, it must include a core project.
; Note that makefiles included with install profiles *should not* include a core project.

projects[drupal][type] = "core"
projects[drupal][version] = "8.7.4"
; Patch is to make it possible to migrate fields from D7 file etnties to media type entities in D8.
; From https://gist.github.com/junaidpv/2c4c61fafe17e9b357cc03cecb2989e9
projects[drupal][patch][] = "https://gist.githubusercontent.com/junaidpv/2c4c61fafe17e9b357cc03cecb2989e9/raw/1712f92cc71849c6b8eff548d19d65b53f7f32aa/file-type-migrate-to-media-type.patch"
; Patch to bring ckeditor in summary of body fields.
projects[drupal][patch][] = "https://www.drupal.org/files/issues/2019-06-27/use-text-editor-for-summary-field-2671162-23.patch"
; Patch to bring "Name without extension" metadata for Media File Source plugin.
projects[drupal][patch][] = "https://gist.githubusercontent.com/junaidpv/9c4b81324cfb9b48c92f95bd13cdf830/raw/f67b62f8f51576f11b1ea8ca651f3f7b9444d262/media-file-source-bring-filename-without-extension.patch"
; Patch to fix view relationships from file_usage to node and node to file_usage
; From comment #53 on thread https://www.drupal.org/project/drupal/issues/2628230#comment-13213379
projects[drupal][patch][] = "https://www.drupal.org/files/issues/2019-08-08/2628230-53.patch"
; Patch to bring views relationships form file_usage to media and media to file_usage.
projects[drupal][patch][] = "https://gist.githubusercontent.com/junaidpv/cfacd2d8e3ded4a7cd6a0f93a60bb534/raw/5f939fed83af5c16f871943d181bd95a85f9c2a0/media-to-file-relationships.patch"


; Modules automatically included by BOA hosting system.
;includes[] = includes/8d/boa.make

; Common modules for all WWM Drupal 8 sites
includes[] = includes/8d/common.make
