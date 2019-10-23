# Introduction

These are Drush make files building Drupal based sites BOA (Barracuda Octopus Aegir) platform.

# Directory Structure

## Include Make Files

Files under 'includes' directory are being included in platform .make files directly or indirectly, they do not represent a platform and cannot be used to create platforms.

Files and directories under 'includes' directory have specific purposes and they are explained below:

* includes
  * 8d - All Drupal 8 related make files will go under this directory
    * packages - Make files under this directory will be packing major functionalities of a specific group, like Media, Drupal Commerce, Profile2, etc. Platform can be built by including one or more of these .make file.
      * commerce.make - Contains Drupal Commerce and related modules
      * domain.make - Contains Domain Access and related modules
      * profile2.make - Contains Profile2 and related modules
    * profiles - This directory holds .make files for different Drupal installation profiles like Panopoly, OpenPublic, etc.
      * openpublic.make - OpenPublic installation profile
      * panopoly.make - Panopoly installation profile.
    * boa.make - Modules supported by BOA platform. It will be part of every platform.
    * common.make - Modules that will be part any platform will go in this make file.

## Platform Make Files

All .make files under root directory are for creating different Drupal platforms with various combination of modules.

### Anatomy of a Platform Make File Name

~~~
8d-panopoly-media_2-profile2-domain.make
└┤ └───┬──┘ └──┬──┘ └───┬──┘ └──┬─┘
 │     │    └───────────┬─────────┘
 │     │                │
 │     │   (Optional) Packages in the platform
 │     │
 │     └── (Optional) Drupal installation profile (distribution)
 │
 └──────── Drupal core (7d, 6d, 8d, etc)
 ~~~


# Platform Names in Aegir

Platform names in Aegir should closely resemble the make it created from. You can follow this rule while creating a new platform in Aegir. Take .make filename, remove all hyphens and '.make' extension. Now CamelCase each of words there. Then, finally add a version number.

For example, platform make file is "8d-panopoly-profile2-domain.make". Then platform name will be like "8d Panopoly Profile2 Domain - 1.00".
