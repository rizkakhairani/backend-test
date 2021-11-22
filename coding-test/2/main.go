package main

import (
	"fmt"
	"strings"
)

func getPalindrome(text string) string {
	str := strings.Split(text, " ")
	for i := 0; i < len(str) - 1; i++ {
		for j := i + 1; j < len(str); j++ {
			tempStr := ""
			if len(str[i]) <= len(str[j]) {
				for k := len(str[i]) - 1; k >= 0; k-- {
					tempStr  += string(str[i][k])
				}

				if strings.Contains(str[j], tempStr) {
					result := fmt.Sprintf("%s %s", str[i], tempStr)
					return result
				}
			} else {
				for k := len(str[j]) - 1; k >= 0; k-- {
					tempStr  += string(str[j][k])
				}

				if strings.Contains(str[i], tempStr) {
					result := fmt.Sprintf("%s %s", str[j], tempStr)
					return result
				}
			}
		}
	}

	return ""
}

func main() {
	fmt.Println(getPalindrome("aku suka makan nasi")) 			// aku uka
	fmt.Println(getPalindrome("di rumah saya ada kasur rusak")) // kasur rusak
}