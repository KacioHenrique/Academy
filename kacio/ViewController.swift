//
//  ViewController.swift
//  kacio
//
//  Created by Aluno on 12/04/2018.
//  Copyright © 2018 Ailton Lessa. All rights reserved.
//

import UIKit
// na orientção a objeto eu tenho a calasse que eu vou herdar que no caso UIViewController, com os protocolo que eu vou emplementar UITableViewDataSource
class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    @IBOutlet weak var celula: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //celula.delegate = self
        //essa função *tableView.dataSource*pergunta que delegate eu devo chamar
        // quando eu passo self sem .algo eu to chamando a própia classe que nesse caso é UIviewController
        celula.dataSource = self
        //->a protoclos tableView.delegate -> me informa sobre a interação na tela
        celula.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //número de linhas dessas seção
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //o que vc quer mostrar na sua tableview celula porém da para ser por linha de código ou pelo mainStoryBoard
        // nesse caso aqui eu vou pegar pelo storyboard vou em propriedades e   seto um nome para minha     tableView cell
        let cellIndentifier = "mapView"
        //essa função salva a nossa vida -> ela tira da fila um celela reusável ou seja ela mostra de acordo com
        //quantidade visível de cell ou seja ela reusa e contro a memória para isso *nesse codigo conforme vc for rolando ela vai criando e vai mudando e trocando os dados que tem dentro de acordo com a nossa memória
        let cell = celula.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200.0;//Choose your custom row height
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

