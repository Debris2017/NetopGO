package main

import (
	"NetopGO/models"
	_ "NetopGO/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"time"
)

func init() {
	models.RegisterDB()
	orm.RunSyncdb("default", true, true)
}

func main() {
	orm.Debug = true

	o := orm.NewOrm()
	// psw := "nbs2010"
	// encode1 := models.Base64Encode([]byte(psw))
	// beego.Info(string(encode1))
	// // decode, _ := models.Base64Decode(encode)
	// // beego.Info(string(decode))
	// aesKey := beego.AppConfig.String("aesKey")
	// beego.Info(aesKey)
	// encode, _ := models.AESEncode(psw, aesKey)
	// beego.Info(encode)
	// decode, _ := models.AESDecode(encode, aesKey)
	// beego.Info(decode)

	passwd := string(models.Base64Encode([]byte("nbs2010")))
	admin := &models.User{
		Name:    "admin",
		Passwd:  passwd,
		Email:   "admin@tingyun.com",
		Dept:    "op",
		Created: time.Now(),
		Auth:    1,
		Tel:     "18202808939",
	}
	o.Insert(admin)
	dba := &models.User{
		Name:    "dba",
		Passwd:  passwd,
		Email:   "dba@tingyun.com",
		Dept:    "op",
		Created: time.Now(),
		Auth:    2,
		Tel:     "18202808939",
	}
	o.Insert(dba)
	guest := &models.User{
		Name:    "guest",
		Passwd:  passwd,
		Email:   "guest@tingyun.com",
		Dept:    "op",
		Created: time.Now(),
		Auth:    3,
		Tel:     "18202808939",
	}
	o.Insert(guest)
	encode, _ := models.AESEncode("upbjsxt", models.AesKey)
	host := &models.Host{
		Name:    "localhost",
		Ip:      "127.0.0.1",
		Cpu:     "4核",
		Mem:     "8GB",
		Disk:    "1TB",
		Idc:     "Ucloud",
		Rootpwd: encode,
		Readpwd: encode,
		Group:   "flume",
		Created: time.Now(),
	}
	o.Insert(host)

	group := &models.Group{
		Name:    "flume",
		Conment: "flume",
		Created: time.Now(),
	}
	o.Insert(group)
	// str := "nbs2010"
	// beego.Info(models.Md5Encode([]byte(str)))
	beego.Run()
}
