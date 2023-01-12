//
//  ViewController.swift
//  Tap
//
//  Created by Rabin on 11/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableVw: UITableView!
    
    var like = [Int]()
    var emptyArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emptyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LikeTableViewCell", for: indexPath) as! LikeTableViewCell
        cell.btnLike.tag = indexPath.row
        cell.btnDelete.tag = indexPath.row
        cell.textLabel?.text = emptyArray.sorted()[indexPath.row]
        if like.contains(indexPath.row){
            cell.viewInCell.backgroundColor = .red
        }else {
            cell.viewInCell.backgroundColor = .systemTeal
        }
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }

    @IBAction func buttonActionClickHere(_ sender: UIButton) {
        if textField.text != "" {
            if !emptyArray.contains(textField.text ?? "") {
                emptyArray.append(textField.text ?? "")
            }
        }else {
            
        }
        print(like)
        print(emptyArray)
        tableVw.reloadData()
        textField.text = ""
    }
    
    
    @IBAction func buttonActionDelete(_ sender: UIButton) {
//        if emptyArray.contains(textField.text ?? "") {
//            let
            emptyArray.remove(at: sender.tag)
//        }
        tableVw.reloadData()
    }
    
    @IBAction func Btn(_ sender: UIButton) {
        
        if !like.contains(sender.tag) {
            like.append(sender.tag)
        }else {
            let indx = like.lastIndex(of: sender.tag)
            like.remove(at: indx ?? 0)
        }
        
        print(sender.tag)
       
        print(like)
        tableVw.reloadData()
    }
}

