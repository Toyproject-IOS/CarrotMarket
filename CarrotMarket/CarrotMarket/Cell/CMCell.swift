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
        iv.backgroundColor = .red
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    let mainTitleLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        lb.textAlignment = .left
        lb.backgroundColor = .systemPink
        lb.numberOfLines = 2
        lb.text = "메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다.메인 라벨 입니다."
        return lb
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
        addSubview(mainTitleLabel)
    }
    
    func setConstraints() {
        mainImageViewConstraints()
        mainTitleLabelConstraints()
    }
    
    // MARK: - Constraints
    private func mainImageViewConstraints() {
      mainImageView.translatesAutoresizingMaskIntoConstraints = false
      mainImageView.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
      mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
      mainImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
      mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    
    private func mainTitleLabelConstraints() {
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTitleLabel.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 10).isActive = true
        mainTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        mainTitleLabel.topAnchor.constraint(equalTo: mainImageView.topAnchor).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 0.4).isActive = true
    }
}
