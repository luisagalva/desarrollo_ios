//
//  NoticiasVC.swift
//  Prototipo
//
//  Created by Luisa Beatriz Garcia Alva on 08/04/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import UIKit

class NoticiasVC: UITableViewController {

    var noticias:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inset = UIEdgeInsetsMake(60, 0, 0, 0);
        self.tableView.contentInset = inset
        self.tableView.scrollIndicatorInsets = inset
        
        LeerNoticias().getNoticias { (datos) in
            self.noticias = datos
            self.tableView.reloadData()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.noticias.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        celda.textLabel!.text = self.noticias[indexPath.row] 
        
        return celda
    }
 


}
