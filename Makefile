LIBS=-pthread

all: httpd client

httpd: httpd.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<

clean:
	rm httpd client