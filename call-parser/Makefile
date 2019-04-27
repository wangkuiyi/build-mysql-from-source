parse : main.cc
	g++ -DMYSQL_SERVER -I../build/include -I../build/libbinlogevents/include -I../mysql-server/sql -I../mysql-server/include -I../mysql-server/libbinlogevents/export -I../mysql-server/libbinlogevents/include -L../build/archive_output_directory  -o parse main.cc  -lmysqld -lpthread -lnuma -lrt -lcrypt -ldl
