//
//  ViewController.swift
//  AllOfDiary
//
//  Created by 김민기 on 2020/05/25.
//  Copyright © 2020 Mingky. All rights reserved.
//

import UIKit
import WebKit
class DiaryViewController: UITableViewController {

    @IBOutlet var table: UITableView!
    
    let diaries = [
        "3시간만에 어플 완성 하기",
        "오늘 점심 무엇"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "table",for:indexPath)
        cell.textLabel?.text = diaries[indexPath.row]
        cell.detailTextLabel?.text = "test"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped")
    }
}

