//
//  CMCell.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/15.
//

import UIKit

class CMCell: UITableViewCell {
    
    let mainImageView: UIImageView = {
        let image = UIImage(named: "home")
        let iv = UIImageView(image: image)
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    override init(
      style: UITableViewCell.CellStyle,
      reuseIdentifier: String?
    ) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      setup()
      addViews()
      setConstraints()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    func setup() {
    }
    
    func addViews() {
        addSubview(mainImageView)
    }
    
    func setConstraints() {
        mainImageViewConstraints()
    }
    
    // MARK: - Constraints
    private func mainImageViewConstraints() {
      mainImageView.translatesAutoresizingMaskIntoConstraints = false
      mainImageView.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
      mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
      mainImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
      mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    
}
