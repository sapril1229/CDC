onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib async_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {async_fifo.udo}

run -all

quit -force
