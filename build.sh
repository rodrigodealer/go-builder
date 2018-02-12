cd $APP_PATH
go build -o $APP_BIN
upx $APP_BIN
