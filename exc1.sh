cfy tenants create tenant1
cfy tenants create tenant2
cfy plugins upload -t tenant1 -y http://www.getcloudify.org/spec/openstack-plugin/2.0.1/plugin.yaml http://repository.cloudifysource.org/cloudify/wagons/cloudify-openstack-plugin/2.0.1/cloudify_openstack_plugin-2.0.1-py27-none-linux_x86_64-centos-Core.wgn
cfy plugins upload -t tenant2 -y http://www.getcloudify.org/spec/openstack-plugin/2.0.1/plugin.yaml http://repository.cloudifysource.org/cloudify/wagons/cloudify-openstack-plugin/2.0.1/cloudify_openstack_plugin-2.0.1-py27-none-linux_x86_64-centos-Core.wgn
cfy users create new_user -l viewer -t tenant1 -p admin
cfy profiles set -u new_user -p admin -t tenant1 
cfy blueprints upload -b nodecellar -n openstack-blueprint.yaml https://github.com/cloudify-cosmo/cloudify-hello-world-example/archive/master.zip
