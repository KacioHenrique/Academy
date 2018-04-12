//
//  ViewController.swift
//  chanlege
//
//  Created by Aluno on 05/04/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgCent: UIImageView!
    @IBOutlet weak var passImg: UIButton!
    @IBOutlet weak var confImg: UIButton!
    @IBOutlet weak var backImg: UIButton!
    @IBOutlet weak var controle: UISwitch!
    @IBOutlet weak var textCenter: UILabel!
    @IBOutlet weak var cofSorce: UIButton!
    @IBOutlet weak var pesquisa: UITextField!
    var i = 0
    let dados:[Lugar] = [Lugar(nome:"capivara",posintionX:100,posintionY:200),Lugar(nome:"lugar 1",posintionX:100,posintionY:200)]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cofSorce.addTarget(self, action: #selector(busca),for:.touchUpInside)
        passImg.addTarget(self, action: #selector(proxima),for:.touchUpInside)
        backImg.addTarget(self, action: #selector(anterior), for:.touchUpInside)
        initComponetes()
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func busca() {
        var cont = 0
        while dados.count > cont {
            if let aux = pesquisa.text {
                print(aux)
                if aux == dados[cont].nome {
                    self.imgCent.image = UIImage(named:aux)
                    break
                }
            }
            cont+=1
        }
    }
    @objc func proxima() {
        if i < dados.count - 1 {
            i+=1
        }
        self.imgCent.image = UIImage(named:dados[i].nome)
    }
    @objc func anterior() {
        if i > 0 {
            i-=1
        }
        self.imgCent.image = UIImage(named: dados[i].nome)
    }
    func initComponetes() {
        passImg.setTitle("->", for:.normal)
        backImg.setTitle("<-", for:.normal)
        confImg.setTitle("seta rota", for: .normal)
        cofSorce.setTitle("pesquisar", for: .normal)
    }
}

