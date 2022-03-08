//
// Assembler program to print "Hello World!"
// to stdout.
//
// X0-X2 - parameters to Unix system calls
// X16 - Mach System Call function number
//

.global _start			// Provide program starting address to linker

// Setup the parameters to print hello world
// and then call the Kernel to do it.
_start: mov	X0, #1		// 1 = StdOut
	ldr	X1, =helloworld 	// string to print
	mov	X2, #14	    	// min length of our string
	mov	X8, #64		// Linux write system call (X8 vs X16)
	svc	0		// Call kernel to output the string

// Setup the parameters to exit the program
// and then call the kernel to do it.
	mov     X0, #0		// Use 0 return code
	mov     X0, #93		// System call number 93 terminates this program
	svc     0		// Call kernel to terminate the program

.data
helloworld:      .ascii  "Hello, World!\n"

