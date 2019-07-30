//
//  ChooseFestViewController.swift
//  FestNav
//
//  Created by Igor Tro on 30/07/2019.
//  Copyright © 2019 Igor Tro. All rights reserved.
//

import UIKit

class ChooseFestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    @IBOutlet weak var genreTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        genreTableView.delegate = self
        genreTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        
        let messageArray = ["Rock", "Electronic", "Jazz", "Pop"]
        
        cell.textLabel?.text = messageArray[indexPath.row]
        
        return cell
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
