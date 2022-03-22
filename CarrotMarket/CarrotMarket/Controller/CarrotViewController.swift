//
//  CarrotViewController.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/14.
//

import UIKit

private let CMCellId = "CMCellId"
class CarrotViewController: UIViewController {
    
    let alarmTopBarButton: UIButton = {
      let image = UIImage(named: "iconAlarm")
      let button = UIButton(type: .custom)
      button.setImage(image, for: .normal)
      return button
    }()
    
    let searchTopBarButton: UIButton = {
      let image = UIImage(named: "iconSearch")
      let button = UIButton(type: .custom)
      button.setImage(image, for: .normal)
      return button
    }()
    
    let listTopBarButton: UIButton = {
      let image = UIImage(named: "iconList")
      let button = UIButton(type: .custom)
      button.setImage(image, for: .normal)
      return button
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        view.backgroundColor = .white
        addViews()
        setConstraints()
        setConfigureTableView()
        setConfigureBarButtonItems()
        setNavigationBarAppearance()
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
    
    func setConfigureBarButtonItems() {
        let iconAlarm = UIBarButtonItem(customView: alarmTopBarButton)
        let iconList = UIBarButtonItem(customView: searchTopBarButton)
        let iconSearch = UIBarButtonItem(customView: listTopBarButton)
        navigationItem.rightBarButtonItems = [iconAlarm,iconList,iconSearch]
    }
    
    func setNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.shadowColor = .lightGray
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
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
