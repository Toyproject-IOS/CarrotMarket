//
//  RightNavigationBarItem.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/19.
//

import UIKit

class RightNavigationBarItem {
    
    let iconAlarm: UIButton = {
        let iconAlarmImg = UIImage(named: "iconAlarm")
        let iconAlarm:UIButton = UIButton(
            frame: CGRect(
                x: 0,
                y: 0,
                width: iconAlarmImg!.size.width,
                height: iconAlarmImg!.size.height
            )
        )
        iconAlarm.setImage(iconAlarmImg, for: .normal)
        return iconAlarm
    }()
    
    let iconSearch: UIButton = {
        let iconSearchImg = UIImage(named: "iconSearch")
        let iconSearch:UIButton = UIButton(
            frame: CGRect(
                x: 0,
                y: 0,
                width: iconSearchImg!.size.width,
                height: iconSearchImg!.size.height
            )
        )
        iconSearch.setImage(iconSearchImg, for: .normal)
        return iconSearch
    }()
    
    let iconList:UIButton = {
        let iconListImg = UIImage(named: "iconList")
        let iconList:UIButton = UIButton(
            frame: CGRect(
                x: 0,
                y: 0,
                width: iconListImg!.size.width,
                height: iconListImg!.size.height
            )
        )
        iconList.setImage(iconListImg, for: .normal)
        return iconList
    }()
    
    func addIconAlarm(
        _ from: UIViewController,
        _ selector: Selector) {
        iconAlarm.addTarget(
            from, action: selector,
            for: .touchUpInside
        )
    }
    
    func addIconSearch(
        _ from: UIViewController,
        _ selector: Selector) {
        iconSearch.addTarget(
            from, action: selector,
            for: .touchUpInside
        )
    }
    
}
