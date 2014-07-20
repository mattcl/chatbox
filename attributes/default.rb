# passwords here should be changed by a wrapper cookbook, role, or environment
default['rabbitmq']['users'] = {
  'admin' => {
    'password' => 'lMEVzxrhntoi1rpSlpf02aIa',
    'permissions' => '.* .* .*',
    'tags' => 'administrator'
  },
  'weechat' => {
    'password' => 'CS1yMRakfGfmtZDk',
    'permissions' => '.* .* .*',
    'vhost' => '/weechat'
  },
  'weechat_client' => {
    'password' => 'bhkb6AGhGqjXHoEM',
    'permissions' => '^$ ^$ .*',
    'vhost' => '/weechat'
  }
}
