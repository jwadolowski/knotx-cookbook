#
# Cookbook Name:: knotx
# Attributes:: knotx
#
# Copyright 2016 Karol Drazek
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# OS specific attributes
default['knotx']['user'] = 'knotx'
default['knotx']['group'] = 'knotx'
default['knotx']['base_dir'] = '/opt/knotx'
default['knotx']['log_dir'] = '/var/log/knotx'

# Knotx source attributes
default['knotx']['release_url'] =
  # 'https://github.com/Cognifide/knotx/releases/download'
  'https://github.com/karoldrazek/cookbook-knotx/releases/download'

default['knotx']['init_script']['source_cookbook'] = 'knotx'
default['knotx']['config']['source_cookbook'] = 'knotx'

# JVM default parameters
default['knotx']['debug_enabled'] = false
default['knotx']['jmx_enabled'] = true

default['knotx']['port'] = '8092'
default['knotx']['jmx_ip'] = '0.0.0.0'
default['knotx']['jmx_port'] = '18092'
default['knotx']['debug_port'] = '28092'

default['knotx']['min_heap'] = '256'
default['knotx']['max_heap'] = '1024'
default['knotx']['max_permsize'] = '256'
default['knotx']['code_cache'] = '64'
default['knotx']['extra_opts'] = ''