macro(_BAR)
  foreach(arg IN LISTS ARGN)
    message(STATUS "this is in macro ${arg}")
  endforeach()
endmacro()

function(_FOO)
    foreach(arg IN LISTS ARGN)
        message(STATUS "this in function is ${arg}")
    endforeach()
  _bar(x y z)
endfunction()

_foo(a b c)