package main

import (
  "fmt"
)

var (
  Version   string
  BuildTime string
)

func main() {
  fmt.Println("=========================================")
  fmt.Println("version: "+Version+"; built at: "+BuildTime)
  fmt.Println(">>>> Hello, World")
  fmt.Println("=========================================")
}
