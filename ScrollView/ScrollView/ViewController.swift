//
//  ViewController.swift
//  ScrollView
//
//  Created by Moacir Lamego on 17/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let oneLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let twoLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let threeLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let a4Label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let a5Label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let a6Label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        view.backgroundColor = .red
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.backgroundColor = .blue
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        setupScrollView()
        setupViews()
    }
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setupViews(){
        contentView.addSubview(oneLabel)
        oneLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        oneLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        oneLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(twoLabel)
        twoLabel.topAnchor.constraint(equalTo: oneLabel.bottomAnchor, constant: 24).isActive = true
        twoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        twoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(threeLabel)
        threeLabel.topAnchor.constraint(equalTo: twoLabel.bottomAnchor, constant: 24).isActive = true
        threeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        threeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(a4Label)
        a4Label.topAnchor.constraint(equalTo: threeLabel.bottomAnchor, constant: 24).isActive = true
        a4Label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        a4Label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(a5Label)
        a5Label.topAnchor.constraint(equalTo: a4Label.bottomAnchor, constant: 24).isActive = true
        a5Label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        a5Label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(a6Label)
        a6Label.topAnchor.constraint(equalTo: a5Label.bottomAnchor, constant: 24).isActive = true
        a6Label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        a6Label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(redView)
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.topAnchor.constraint(equalTo: a6Label.bottomAnchor, constant: 24).isActive = true
        redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        redView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(blueView)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 24).isActive = true
        blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        blueView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        // Se liga aqui.
        blueView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
        
    }
    
    
}

