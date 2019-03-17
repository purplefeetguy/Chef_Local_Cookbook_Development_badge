name 'web'
maintainer 'DevOps Foot Locker'
maintainer_email 'you@footlocker.com'
license 'All Rights Reserved'
description 'Installs/Configures web'
#long_description 'Installs/Configures web'
long_description IO.read("#{File.dirname(__FILE__)}/README.md")
version '0.1.0'
chef_version '>= 13.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/web/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/web'

depends 'java'
