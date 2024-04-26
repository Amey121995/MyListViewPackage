//
//  UserCell.swift
//  APIManager
//
//  Created by Amey Dalvi on 22/04/24.
//

import UIKit
class UserCell: UITableViewCell {
  private let viewUserCard: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  private let lblUserNames: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  // MARK: - Initialization
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Setup Methods
  private func setupView() {
    contentView.addSubview(viewUserCard)
    viewUserCard.addSubview(lblUserNames)

    // Add constraints for viewUserCard and lblUserNames
    NSLayoutConstraint.activate([
      viewUserCard.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
      viewUserCard.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
      viewUserCard.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
      viewUserCard.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),

      lblUserNames.topAnchor.constraint(equalTo: viewUserCard.topAnchor, constant: 8),
      lblUserNames.leadingAnchor.constraint(equalTo: viewUserCard.leadingAnchor, constant: 16),
      lblUserNames.trailingAnchor.constraint(equalTo: viewUserCard.trailingAnchor, constant: -16),
      lblUserNames.bottomAnchor.constraint(equalTo: viewUserCard.bottomAnchor, constant: -8),
    ])
  }

  // MARK: - Configure Cell
    func configure(data: User, selectedIndex: Int, currentIndex: Int) {
        lblUserNames.text = "\(data.firstName ?? "") \(data.lastName ?? "")"
        if selectedIndex == currentIndex{
            self.viewUserCard.backgroundColor = .blue.withAlphaComponent(0.1)
            self.lblUserNames.textColor = .white
        }
        else{
            self.self.viewUserCard.backgroundColor = .white
            self.lblUserNames.textColor = .black
        }
  }
}
