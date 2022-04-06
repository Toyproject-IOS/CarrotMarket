//
//  CarrotViewController.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/14.
//

import UIKit
import Popover
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
    
    let areaTopBarButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("테스트동", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let mainTableView: UITableView = {
        let mainTableView = UITableView(frame: .zero)
        
        return mainTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        view.backgroundColor = .white
        addViews()
        setConstraints()
        setupMainTableView()
        setConfigureBarButtonItems()
        setNavigationBarAppearance()
    }
    
    func addViews() {
        view.addSubview(mainTableView)
    }
    
    func setConstraints() {
        mainTableViewConstraints()
    }
    
    func setupMainTableView() {
        mainTableView.register(CMCell.self, forCellReuseIdentifier: CMCellId)
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    func setConfigureBarButtonItems() {
        let iconAlarm = UIBarButtonItem(customView: alarmTopBarButton)
        let iconList = UIBarButtonItem(customView: searchTopBarButton)
        let iconSearch = UIBarButtonItem(customView: listTopBarButton)
        navigationItem.rightBarButtonItems = [iconAlarm,iconList,iconSearch]
        
        let area = UIBarButtonItem(customView: areaTopBarButton)
        navigationItem.leftBarButtonItem = area
        areaTopBarButton.addTarget(self, action: #selector(handleAreaTopBarButton), for: .touchUpInside)
    }
    
    @objc func handleAreaTopBarButton() {
        let rect = areaTopBarButton.convert(areaTopBarButton.bounds, to: self.view)
        let point = CGPoint(x: rect.midX, y: rect.maxY)
        let popover = Popover(options: nil, showHandler: nil, dismissHandler: nil)
        let aView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width / 2, height: 200))
        popover.show(aView, point: point)
    }
    
    func setNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.shadowColor = .lightGray
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    func mainTableViewConstraints() {
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        mainTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mainTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
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
