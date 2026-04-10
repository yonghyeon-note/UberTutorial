//
//  LoginController.swift
//  UberTutorial
//
//  Created by Rondo on 4/10/26.
//

import UIKit

class LoginController: UIViewController {

    // MARK: - Properties

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UBER"
        label.font = UIFont(name: "Avenir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        return label
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)

        view.addSubview(titleLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        /* UILabel은 UIView의 자식 클래스라서 anchor()를 호출할 수 있음 */
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centerX(inView: view)

        /* 위 코드와 동일한 작동을 하는 코드임 */
        // titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        // titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
