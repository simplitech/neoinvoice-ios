//
//  LoginViewController.swift
//  NeoInvoice
//
//  Created by Ricardo Kobayashi on 15/05/18.
//  Copyright © 2018 Martinlabs. All rights reserved.
//

import UIKit
import NeoSwift

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfig()
    }

    func viewConfig() {
//        let ac1 = Account(encryptedPrivateKey: "6PYVwbrWfiyKCFnj4EjjBESUer4hbQ48hPfn8as8ivyS3FTVVmAJomvYuv", passphrase: "1234567890")
//        var abc = ""

//        self.lblTest.text = ac1?.address
        
        //AdYJeaHepN3jmdUduBLWPESqwQ9QYQCFi7
        let seed = "http://18.231.135.105:30333"
        let client = NeoClient(network: .main, seedURL: seed)
//        //
        let scriptHash = "899d9f8f2b210014972e3e46eb385cfbd79eeaaf"
//
//        let gasUnspent = Unspent(index: 0, txId: "c1df3cb638a888ae85fb67320e43b846490ec760ccca05dd01bfbf4de3ba438f", value: 713399699999/100000000)
//
//        let neoUnspent = Unspent(index: 0, txId: "e8b8bf4f98490368fc1caa86f8646e7383bb52751ffc3a1a7e296d715c4382ed", value: 10000000000000000/100000000)
//        //        //tohex before posting it to contract
//        //        let second = Int(1000)
//
//        let assets = Assets(gas: Gas.init(balance: 715800000000, unspent: [gasUnspent]), neo: Neo.init(balance: 10000000000000000/100000000, unspent: [neoUnspent]), address: "AK2nJJpJr6o664CWJKi1QRXjqeic2zRp8y", net: "private")
//        //
        let ac1 = Account()
        ac1?.neoClient = client
//        //        //args index is reversed
//        //        //when invokecontract, every string arg has to be in hex format
//
//        //        ac1?.invokeContractFunction(contractHash: scriptHash, method: "readDomain", args:["simpli".toHexString()]) { (success, error) in
//        //            if let suc = success {
//        //
//        //            }
//        //            if let er = error {
//        //
//        //            }
//        //        }
//
        ac1?.invokeContractFunction(contractHash: scriptHash, method: "readDomain", args:["simpli".toHexString()]) { (success, error) in
            if let suc = success {

            }
            if let er = error {

            }
        }
        
        //        client.invokeContract(with: "899d9f8f2b210014972e3e46eb385cfbd79eeaaf", method: "name", args:[""]) { (resp) in
        //
        //        }
    }
}
