# hasard1.do
restart -f -nowave
view signals wave
add wave x y f

force y 0
force x 1
run 200 ns
force x 0
run 100 ns

force y 1
force x 1
run 100 ns
force x 0
run 100 ns
