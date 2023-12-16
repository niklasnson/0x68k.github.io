---
layout: post
title: Installing KDE Frameworks
categories: [open-source, project]
tags: [ruby, rspec, json, rails, scripting, testing]
---

After following the instructions found at [Get Involved/development/Set up a development environment](https://community.kde.org/Get_Involved/development/Set_up_a_development_environment). I got some strange errors running my sample CMAKE file.

{% highlight bash %}
Installing in /usr/local. Run /home/niklasnson/Projects/Active/sample/build/prefix.sh to set the environment for helloworld.
fatal: not a git repository (or any of the parent directories): .git
fatal: not a git repository (or any of the parent directories): .git
-- Could NOT find KF5CoreAddons (missing: KF5CoreAddons_DIR)
-- Could NOT find KF5CoreAddons: found neither KF5CoreAddonsConfig.cmake nor kf5coreaddons-config.cmake 
-- Could NOT find KF5I18n (missing: KF5I18n_DIR)
-- Could NOT find KF5I18n: found neither KF5I18nConfig.cmake nor kf5i18n-config.cmake 
CMake Error at /usr/share/cmake-3.27/Modules/FindPackageHandleStandardArgs.cmake:230 (message):
  Could NOT find KF5 (missing: CoreAddons I18n) (found suitable version
  "5.110.0", minimum required is "5.78.0")
Call Stack (most recent call first):
  /usr/share/cmake-3.27/Modules/FindPackageHandleStandardArgs.cmake:600 (_FPHSA_FAILURE_MESSAGE)
  /usr/share/ECM/find-modules/FindKF5.cmake:93 (find_package_handle_standard_args)
  CMakeLists.txt:21 (find_package)
{% endhighlight %}


After while i found a this [issue](https://github.com/ktechlab/ktechlab/issues/53) where i found out to add the following development packages.

{% highlight bash %}
libkf5doctools-dev 
libkf5texteditor-dev 
libkf5kdelibs4support-dev
{% endhighlight %}


Now i can run my cmake file without any errors.