package com.example.jspdemo;

import java.util.Scanner;

public class factoril {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入要求的数阶乘:");
        int num = sc.nextInt();
        int result = 1;
        for (int i = 1; i <= num; i++) {
            result *= i;
        }
        System.out.println("result =" + result);
    }

}
