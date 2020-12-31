package main

import (
    "fmt"
)
import "github.com/gin-gonic/gin"


func main() {
        fmt.Println( "Agora sim!!!")
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{ 
			"message": "Ta rolandsfsdfsdfsdfo!!!!",
		})
	})
	r.Run(":1000")
}