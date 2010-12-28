VERSION=0.9.0

all:		lib docs xmms pacplay

lib:
		cd src && make

pacplay:
		cd src/pacplay && make

xmms:		
		cd src/xmms && make

docs:
		cd doc && make

tar:		
		find . -type f \! \( -path '*/www*' -or -path '*/test*' -or \
		-path '*CVS*' -or -path '.' \) | xargs tar -s \
		/./libpac-${VERSION}/ -czf libpac-${VERSION}.tgz

clean:
		-rm -rf libpac-*.tgz
		cd doc && make clean
		cd src && make clean
		cd src/pacplay && make clean
		cd src/xmms && make clean
