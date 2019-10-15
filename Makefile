all:
	g++ -c test-ed25519-crypto.cpp -I . -I tdutils
	#g++ -c ellcurve/*.cpp -I . -I tdutils
	#g++ -c openssl/*.cpp -I . -I tdutils
	#g++ -c common/*.cpp -I . -I tdutils
	#g++ -c tdutils/td/utils/*.cpp -I . -I tdutils
	#g++ -c tdutils/td/utils/port/*.cpp -I . -I tdutils
	#g++ -c tdutils/td/utils/port/detail/*.cpp -I . -I tdutils
	g++ *.o -o mike.out -lcrypto
	./mike.out

	
clean:
	rm -rf *.o
	rm -rf *.out
	
