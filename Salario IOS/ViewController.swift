//
//  ViewController.swift
//  Salario
//
//  Created by Dav on 09/10/19.
//  Copyright © 2019 Dav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var salBruto:UITextField!
    @IBOutlet var txtInss:UILabel!
    @IBOutlet var txtResul:UILabel!
    @IBOutlet var btnCalc:UIButton!
    @IBOutlet var lblAlerta:UILabel!
    @IBOutlet var btnReset:UIButton!
    var salarioLiq: Double = 0.0
    var inss = 0.0
    var salarioBruto = 0.0
    var null = ""
    
@IBAction func calcSalario(){
        

    
if(salBruto.text != null )
{
    let salarioBruto = Double(salBruto.text!)
        
            if(salarioBruto! < 1400){
                inss = 0.08
                salarioLiq = salarioBruto! - (salarioBruto! * inss)
                txtInss.text = "O Desconto de INSS é de 8%"
                txtResul.text = "Salário à receber: R$ \(salarioLiq)"
                }
        
            else if(salarioBruto! >= 1400) && (salarioBruto! < 2331){
                inss = 0.09
                salarioLiq =  salarioBruto! - (salarioBruto! * inss)
                txtInss.text = "O Desconto de INSS é de 9%"
                txtResul.text = "Salário à receber: R$ \(salarioLiq)"
                }
            else if(salarioBruto! >= 2331){
                inss = 0.11
                salarioLiq =  salarioBruto! - (salarioBruto! * inss)
                txtInss.text = "O Desconto de INSS é de 11%"
                txtResul.text = "Salário à receber: R$ \(salarioLiq)"
            }
    
}
else{
    txtResul.text = "Por Favor, digite o valor do Salário."
    }
    
}
    
@IBAction func reset(){
        if(salBruto.text != null){
                salBruto.text = ""
            txtInss.text = "Desconto de INSS é"
            txtResul.text = "Salário à receber: R$ "
            
        }else{
            txtResul.text = "Nenhum dado a resetar "
            
            
        }
        
        
    }
       
}
