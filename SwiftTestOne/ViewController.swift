//
//  ViewController.swift
//  SwiftTestOne
//
//  Created by mic on 16/6/27.
//  Copyright © 2016年 cassia. All rights reserved.
//

import UIKit


struct model_One:CustomStringConvertible {
    var a1:String
    var a2:String
    
    init(a1:String,a2:String)
    {
        self.a1 = a1;
        self.a2 = a2;
    }
    
    var description: String{
    return "a1\(a1) a2\(a2)"
    }
}


class ViewController: UIViewController {
    
    var image1:UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("hello world")
        
        var xt = 10
        print("xt=",xt)
        
        xt = 11
        print("xt=",xt)
        
        let xc:Double = 11
        print("xc=",xc)
        
        //创建第一个按钮
        let bton1 = UIButton(frame: CGRect(x: 100,y: 100,width: 50,height: 20))
        bton1.backgroundColor = UIColor.black
        bton1.setTitle("xxxx", for: UIControlState())
        bton1.setTitleColor(UIColor.white, for: UIControlState())
        self.view.addSubview(bton1)
        
//        image1?.frame = CGRectMake(bton1.frame.origin.x, bton1.frame.origin.y+30, 50, 50)
        image1?.frame = CGRect(x: 100, y: 140, width: 50, height: 50)
        image1?.backgroundColor = UIColor.orange
//        self.view.addSubview(image1!)
        //初始化出来，为什么？
        
        
        let xcx = "那是一个小逗比"
        let widthx = 77
        let width2:(Double) = 12.33333
//        let strx2 = strx + String(width) //那是一个小逗比77
//        let strx2 = "那是\(width)个小逗比"  //那是77个小逗比
        let strx2 = "\(xcx)那是 \(width2) 个小逗比\(widthx)" //那是 12.3 个小逗比
        
        
        print(strx2)
        
        
        let xxx = [self .givemeBunber(111, number2: 222)]
        print("xxx = ",xxx)
        
        
        let bulabula = anotherNumber()
        
        print("bulabula = ",bulabula(123))
        
//        print("b = " ,self.anotherNumber())//错误的写法
        
        
        //结构体练习：不能继承，传值时会copy，线程安全
        let m1 = model_One(a1: "12345", a2: "23456")
        print(m1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*func 1*/
    func givemeBunber(_ number1:Int,number2:Int)->Int{
        
        var numberx = 0;
        numberx = number1+number2;
        
        return numberx;
    }
    
    /*func 2*/
    func anotherNumber()->((Int) -> Int){
        
        func exo(_ number:Int) -> Int{
            return 1+number;
        }
        
        return exo
    }

    
    
}

