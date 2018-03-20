cd $APP_PATH
rm $APP_BIN
go build -a -installsuffix cgo -o $APP_BIN .
upx $APP_BIN
