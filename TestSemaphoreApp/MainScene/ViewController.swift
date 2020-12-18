//
//  ViewController.swift
//  TestSemaphoreApp
//
//  Created by Pero Sechkov on 17.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    //UI Components
    var tableView : UITableView!
    
    var semaphoresDataModel = SemaphoreDataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }
    
    //MARK: - SETUP NAVIGATION BAR
    func setupNavigationBar() {
        self.title = "TEST Igor Auto Send"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(deleteButtonTapped))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    func setupViews() {
        self.view.backgroundColor = .white
        
        self.tableView = UITableView(frame: self.view.bounds)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.tableFooterView = UIView()
        
        self.view.addSubview(self.tableView)
    }
    
    //MARK: - Navigation Buttons Actions
    @objc func deleteButtonTapped() {
        self.semaphoresDataModel.deleteSemaphore(at: self.semaphoresDataModel.count - 1)
        self.tableView.reloadData()
    }
    
    @objc func addButtonTapped() {
        self.semaphoresDataModel.addSemaphore(semaphore: Semaphore(color: .orange, name: "Orange"))
        self.tableView.reloadData()
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.semaphoresDataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let semaphore = self.semaphoresDataModel.getSemaphore(at : indexPath.row)
        cell.textLabel?.text = semaphore.name
        cell.backgroundColor = semaphore.color
        return cell
    }
}

