//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var superKahramanIsimleri = [String]()
    var superKahramanGorselisimleri = [String]()
    
    var secilenIsim = ""
    var secilenGorsel = ""
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Iron man")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Captain America")
        
        //var superKahramanGorselleri = [UIImage]()
        //superKahramanGorselleri.append(UIImage(named: "batman")!)
        
        
        superKahramanGorselisimleri.append("batman")
        superKahramanGorselisimleri.append("superman")
        superKahramanGorselisimleri.append("ironman")
        superKahramanGorselisimleri.append("spiderman")
        superKahramanGorselisimleri.append("cptamerica")
        
        
    }
    
    //numberOfRowsInSection -> Kaç tane row olacak
    //cellForRow atInderxPath -> hücrenin içerisinde neler gösterilecek
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superKahramanGorselisimleri.remove(at: indexPath.row)
            superKahramanIsimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahramanIsimleri[indexPath.row]
        secilenGorsel = superKahramanGorselisimleri[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetaisViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselIsmi = secilenGorsel
        }
    }


}

