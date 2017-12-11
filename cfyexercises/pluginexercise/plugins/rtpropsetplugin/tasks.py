from cloudify import ctx
from cloudify.decorators import operation

@operation
def my_task(rt_property):
    ctx.instance.runtime_properties['hello'] = rt_property
    #ctx.instance.update()
