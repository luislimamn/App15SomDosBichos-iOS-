//
//  ViewController.swift
//  SomDosBichos
//
//  Created by Luis Lima on 02/01/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    @IBAction func tocarCao(_ sender: Any) {
        self.executarSom(nomeSom: "cao")
    }
    @IBAction func tocarGato(_ sender: Any) {
        self.executarSom(nomeSom: "gato")
    }
    @IBAction func tocarLeao(_ sender: Any) {
        self.executarSom(nomeSom: "leao")
    }
    @IBAction func tocarMacaco(_ sender: Any) {
        self.executarSom(nomeSom: "macaco")
    }
    @IBAction func tocarOvelha(_ sender: Any) {
        self.executarSom(nomeSom: "ovelha")
    }
    @IBAction func tocarVaca(_ sender: Any) {
        self.executarSom(nomeSom: "vaca")
    }
    
    func executarSom(nomeSom: String) {
        
        if let path = Bundle.main.path(forResource: nomeSom, ofType: "mp3") {
            let urlSom = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: urlSom)
                player.prepareToPlay()
                player.play()
            } catch  {
                print("Erro ao executar o Som")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

