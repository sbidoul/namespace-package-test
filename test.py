import typing

import myframework
import myframework.plugins.plugin1
import myframework.plugins.plugin2
import myframework.plugins.plugin3

print(myframework.name)

if typing.TYPE_CHECKING:
    typing.reveal_type(myframework.name)
    typing.reveal_type(myframework.plugins.plugin1.name)
    typing.reveal_type(myframework.plugins.plugin2.name)
    typing.reveal_type(myframework.plugins.plugin3.name)