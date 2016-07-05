//
//  TableListViewController.swift
//  LoginApp
//
//  Created by Prolins on 30/05/16.
//  Copyright © 2016 Prolins. All rights reserved.
//

import UIKit

class TableListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var array: Array<Person> = []
    
    @IBOutlet weak var feed: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setList()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //    <#code#>
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell :ItemTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! ItemTableViewCell
        let person = array[indexPath.row]
        print(person.image)
        cell.setCell(person.image, text: person.name)
        return cell
    }
    
    func setList(){
        let person_1 = Person(name: "0aafbzx2.necg", image: "0aafbzx2.necg.jpg")
        let person_2 = Person(name: "0algr33s.mvw8", image: "0algr33s.mvw8.jpg")
        let person_3 = Person(name: "0bzdekqg.djeg", image: "0bzdekqg.djeg.jpg")
        let person_4 = Person(name: "0fazt44z.hs19", image: "0fazt44z.hs19.jpg")
        let person_5 = Person(name: "0ggwq40v.f0m6", image: "0ggwq40v.f0m6.jpg")
        let person_6 = Person(name: "i4bljpj.sdd4", image: "0i4bljpj.sdd4.jpg")
        let person_7 = Person(name: "0jipfonw.mlz4", image: "0jipfonw.mlz4.jpg")
        let person_8 = Person(name: "0nvmm3zn.gnig", image: "0nvmm3zn.gnig.jpg")
        let person_9 = Person(name: "0pvi2tv0.ozg2", image: "0pvi2tv0.ozg2.jpg")
        let person_10 = Person(name: "0rukuikm.jmre", image: "0rukuikm.jmre.jpg")
        
        array.append(person_1)
        array.append(person_2)
        array.append(person_3)
        array.append(person_4)
        array.append(person_5)
        array.append(person_6)
        array.append(person_7)
        array.append(person_8)
        array.append(person_9)
        array.append(person_10)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
