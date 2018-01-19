//
//  DNLazyTableViewDelegate.swift
//  DNLazyTableViewController
//
//  Created by DuyN on 1/18/18.
//  Copyright © 2018 DuyN. All rights reserved.
//

import UIKit

public protocol DNLazyTableViewDelegate: UITableViewDelegate {
    func delayTime() -> Int
    func tableView(_ tableView: UITableView, delayTapRowAt indexPath: IndexPath)
}

extension DNLazyTableViewDelegate {
    public func delayTime() -> Int {
        return 3
    }
    public func tableView(_ tableView: UITableView, delayTapRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.isUserInteractionEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(delayTime())) {
            cell?.isUserInteractionEnabled = true
        }
    }
}
