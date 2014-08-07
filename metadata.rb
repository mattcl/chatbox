name             'chatbox'
maintainer       'Matt Chun-Lum'
maintainer_email 'mchunlum@gmail.com'
license          'All rights reserved'
description      'Installs/Configures chatbox'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

depends 'apt'
depends 'rabbitmq'
depends 'weechat'
depends 'bitlbee-latest'
