//
//  ViewController.swift
//  Example
//
//  Created by Lourenço Marinho on 09/03/16.
//  Copyright © 2016 Equinocios. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadModels()
        
        self.count()
        self.findAll()
        self.findMaria()
        self.findJoao()
    }
    
    private func loadModels() {
        let joaoPedro = Person.new()
        joaoPedro.name = "João Pedro"
        joaoPedro.save()
        
        let joaoPaulo = Person.new()
        joaoPaulo.name = "João Paulo"
        joaoPaulo.save()
        
        let maria = Person.new()
        maria.name = "Maria Joaquina"
        maria.save()
    }
    
    private func count() {
        let count = Person.count()
        print("I've found \(count) objects")
    }
    
    private func findAll() {
        let people = Person.all()
        print("-----------------------------------------------")
        print("Showing everyone's name...")
        
        for person in people {
            print("Hi, my name is \(person.name)")
        }
    }
    
    private func findMaria() {
        let mariaPredicate = NSPredicate(format: "name CONTAINS[cd] %@", "Maria")
        let optionalMaria = Person.find(mariaPredicate).first
        
        if let maria = optionalMaria {
            print("-----------------------------------------------")
            print("I've found one Maria and her name is: \(maria.name)")
        }
    }
    
    private func findJoao() {
        let joaoPredicate = NSPredicate(format: "name CONTAINS[cd] %@", "João")
        let joaoArray = Person.find(joaoPredicate)
        
        print("-----------------------------------------------")
        print("I've found \(joaoArray.count) people named João")
        
        for joao in joaoArray {
            print("Hi, i'm \(joao.name)")
        }
    }
}