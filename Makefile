NAME=hello
VERSION=1.00

.HELLO: package
package:
	rm -f hello.exe
	gcc -o hello.exe hello.c
	fpm -s dir -t deb -n $(NAME) -v $(VERSION) --prefix /opt/hello hello.exe

