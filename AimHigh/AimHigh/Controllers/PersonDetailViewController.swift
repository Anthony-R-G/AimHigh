//
//  PersonDetailViewController.swift
//  AimHigh
//
//  Created by Anthony Gonzalez on 6/16/20.
//  Copyright © 2020 Chisme y Cafecito. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    //MARK: --TODO:
    //Textured background in different colors. Possibly using an enum.
    //Get image assets for social media buttons.
    //Monochrome filter for bitmojis/person images (done externally)
    //Find new comic-y font.
    
    //MARK: -- Lazy Variable Declaration
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Alexandria Ocasio-Cortez"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    //Profession Label Pair
    lazy var professionTitleLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: true, text: "Profession:")
    }()
    
    //FIX LATER: HARDCODED
    lazy var professionDetailLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: false, text: "Politician")
    }()
    
    //Origin Label Pair
    lazy var originTitleLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: true, text: "Origin:")
    }()
    
    //FIX LATER: HARDCODED
    lazy var originDetailLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: false, text: "Bronx-born Puerto Rican")
    }()
    
    //Education Label Pair
    lazy var educationTitleLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: true, text: "Education:")
    }()
    
    //FIX LATER: HARDCODED
    lazy var educationDetailLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: false, text: "Pursuit Fellow")
    }()
    
    //2nd row right-side label pair
    lazy var rightUntitledTitleLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: true, text: "Untitled:")
    }()
    
    lazy var rightUntitledDetailLabel: UILabel = {
        Utilities.createPersonDetailLabel(isTitle: false, text: "Untitled")
    }()
    
    
    lazy var summaryButton: UIButton = {
        let button = UIButton()
        button.setTitle("Summary", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.borderWidth = 1.0
        button.showsTouchWhenHighlighted = true
        button.addTarget(self, action: #selector(summaryButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //TEMPORARY. Better implementation later using a separate, more stylized vc.
    @objc private func summaryButtonPressed() {
        Utilities.showAlert(vc: self, message: "Alexandria Ocasio-Cortez, also known as AOC, attended Boston University and graduated with degrees in Economics and International Relations. She serves as the U.S. Representative for New York's 14th congressional district.")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4014604986, green: 0.530303061, blue: 0.6796504855, alpha: 1)
        setConstraints()
    }
}

//MARK: -- Constraints Extension
extension PersonDetailViewController {
    private func setConstraints() {
        let UIElements = [nameLabel, professionTitleLabel, professionDetailLabel, originTitleLabel, originDetailLabel, summaryButton, educationTitleLabel, educationDetailLabel, rightUntitledTitleLabel, rightUntitledDetailLabel]
        
        UIElements.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        UIElements.forEach({view.addSubview($0)})
        
        setNameLabelConstraints()
        setProfessionTitleLabelConstraints()
        setProfessionDetailLabelConstraints()
        setOriginTitleLabelConstraints()
        setOriginDetailLabelConstraints()
        setEducationTitleLabelConstraints()
        setEducationDetailLabelConstraints()
        setRightUntitledTitleLabelConstraints()
        setRightUntitledDetailLabelConstraints()
        setSummaryButtonConstraints()
        
    }
    
    private func setNameLabelConstraints(){
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            nameLabel.heightAnchor.constraint(equalToConstant: 200),
            nameLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    //Profession Label Pair
    private func setProfessionTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            professionTitleLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            professionTitleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 40),
            professionTitleLabel.heightAnchor.constraint(equalToConstant: 20),
            professionTitleLabel.widthAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    private func setProfessionDetailLabelConstraints() {
        NSLayoutConstraint.activate([
            professionDetailLabel.leadingAnchor.constraint(equalTo: professionTitleLabel.trailingAnchor, constant: 0),
            professionDetailLabel.topAnchor.constraint(equalTo: professionTitleLabel.topAnchor),
            professionDetailLabel.heightAnchor.constraint(equalTo: professionTitleLabel.heightAnchor),
            professionDetailLabel.widthAnchor.constraint(equalTo: professionTitleLabel.widthAnchor)
        ])
    }
    
    //Origin Label Pair
    private func setOriginTitleLabelConstraints(){
        NSLayoutConstraint.activate([
            originTitleLabel.leadingAnchor.constraint(equalTo: professionDetailLabel.trailingAnchor, constant: 30),
            originTitleLabel.topAnchor.constraint(equalTo: professionTitleLabel.topAnchor),
            originTitleLabel.heightAnchor.constraint(equalTo: professionTitleLabel.heightAnchor),
            originTitleLabel.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setOriginDetailLabelConstraints(){
        NSLayoutConstraint.activate([
            originDetailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            originDetailLabel.topAnchor.constraint(equalTo: professionTitleLabel.topAnchor),
            originDetailLabel.heightAnchor.constraint(equalTo: professionTitleLabel.heightAnchor),
            originDetailLabel.widthAnchor.constraint(equalTo: professionTitleLabel.widthAnchor)
        ])
    }
    
    //Education Label Pair
    private func setEducationTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            educationTitleLabel.leadingAnchor.constraint(equalTo: professionTitleLabel.leadingAnchor),
            educationTitleLabel.topAnchor.constraint(equalTo: professionTitleLabel.bottomAnchor, constant: 30),
            educationTitleLabel.heightAnchor.constraint(equalTo: professionTitleLabel.heightAnchor),
            educationTitleLabel.widthAnchor.constraint(equalTo: professionTitleLabel.widthAnchor)
        ])
    }
    
    private func setEducationDetailLabelConstraints() {
        NSLayoutConstraint.activate([
            educationDetailLabel.leadingAnchor.constraint(equalTo: educationTitleLabel.trailingAnchor),
            educationDetailLabel.topAnchor.constraint(equalTo: educationTitleLabel.topAnchor),
            educationDetailLabel.heightAnchor.constraint(equalTo: educationTitleLabel.heightAnchor),
            educationDetailLabel.widthAnchor.constraint(equalTo: educationTitleLabel.widthAnchor)
        ])
    }
    
    //Right Untitled Label Pair
    private func setRightUntitledTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            rightUntitledTitleLabel.leadingAnchor.constraint(equalTo: educationDetailLabel.trailingAnchor, constant: 30),
            rightUntitledTitleLabel.topAnchor.constraint(equalTo: educationTitleLabel.topAnchor),
            rightUntitledTitleLabel.heightAnchor.constraint(equalTo: professionTitleLabel.heightAnchor),
            rightUntitledTitleLabel.widthAnchor.constraint(equalTo: professionTitleLabel.widthAnchor)
        ])
    }
    
    private func setRightUntitledDetailLabelConstraints() {
        NSLayoutConstraint.activate([
            rightUntitledDetailLabel.trailingAnchor.constraint(equalTo: originDetailLabel.trailingAnchor),
            rightUntitledDetailLabel.topAnchor.constraint(equalTo: educationTitleLabel.topAnchor),
            rightUntitledDetailLabel.heightAnchor.constraint(equalTo: professionTitleLabel.heightAnchor),
            rightUntitledDetailLabel.widthAnchor.constraint(equalTo: professionTitleLabel.widthAnchor)
        ])
    }
    
    //Summary Button
    private func setSummaryButtonConstraints() {
        NSLayoutConstraint.activate([
            summaryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            summaryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            summaryButton.widthAnchor.constraint(equalToConstant: 350),
            summaryButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
