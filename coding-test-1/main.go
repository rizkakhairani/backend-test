package main

import (
	"fmt"
	"strconv"
)

func binaryToDecimal(num string) int {
	result, err := strconv.ParseInt(num, 2, 64)
    if err != nil {
        fmt.Println(err)
        return -1
    }
    return int(result)
}

func decimalToBinary(num int) string {
	result := fmt.Sprintf("%b", num)

	return result
}

func main() {
	var option int
	fmt.Println("Konversi Bilangan")
	fmt.Println("1 Binary ke decimal")
	fmt.Println("2 Decimal ke binary")
	fmt.Printf("Input Option: ")
	fmt.Scanf("%d\n", &option)
	
	if option == 1 {
		var number string
		fmt.Printf("Input Binary: ")
		fmt.Scanf("%s\n", &number)
		fmt.Println(binaryToDecimal(number))
	} else if option == 2 {
		var number int
		fmt.Printf("Input Decimal: ")
		fmt.Scanf("%d\n", &number)
		fmt.Println(decimalToBinary(number))
	} else  {
		fmt.Println("Tidak terdapat di pilihan")
	}
}