//
//  CarrotViewController.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/14.
//

import UIKit

private let CMCellId = "CMCellId"
class CarrotViewController: UIViewController {
    
    let rightNavigationBarItem = RightNavigationBarItem()
    
    let tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        
        return tableView
    }()
    
    convenience init(bgColor: UIColor) {
        self.init()
        self.view.backgroundColor = bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        view.backgroundColor = .white
        setUIBarButtonItem()
        addViews()
        setConstraints()
        setConfigureTableView()
        configureAddIconAlarm()
    }
    
    func setUIBarButtonItem() {
        let iconAlarm = UIBarButtonItem(customView: rightNavigationBarItem.iconAlarm)
        let iconList = UIBarButtonItem(customView: rightNavigationBarItem.iconList)
        let iconSearch = UIBarButtonItem(customView: rightNavigationBarItem.iconSearch)
        navigationItem.rightBarButtonItems = [iconAlarm,iconList,iconSearch]
    }
    
    func addViews() {
        view.addSubview(tableView)
    }
    
    func setConstraints() {
        tableViewConstratins()
    }
    
    func setConfigureTableView() {
        tableView.register(CMCell.self, forCellReuseIdentifier: CMCellId)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func configureAddIconAlarm() {
        rightNavigationBarItem.addIconAlarm(self, #selector(handleIconAlarm))
    }
    
    @objc func handleIconAlarm() {
        debugPrint("handleIconAlarm")
    }

    
    func tableViewConstratins() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension CarrotViewController: UITableViewDelegate {
    
}

extension CarrotViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 3
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
