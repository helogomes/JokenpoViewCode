//
//  JokenpoView.swift
//  JokenpoViewCode
//
//  Created by user218997 on 28/06/22.
//

import Foundation
import UIKit


class JokenpoView: UIViewController {
    
    var computer1: Int = 0
    var computer2: Int = 0

    var play1 = Int.random(in: 0...2){
        didSet{
            imageView.image = UIImage(named: String(play1))
            
        }
    }
    var play2 = Int.random(in: 0...2) {
        didSet{
            imageView2.image = UIImage(named: String(play2))
        }
    }

    
     let jokenpoLabel: UILabel = {
        let label = UILabel()
        label.text = "JOKENPO"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView: UIImageView = {
        let imageV = UIImageView()
        imageV.translatesAutoresizingMaskIntoConstraints = false
        return imageV
    }()
    
     let xLabel: UILabel = {
         let label = UILabel()
         label.text = "X"
         label.font = .boldSystemFont(ofSize: 30)
         label.textColor = .white
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
    }()
    
    let imageView2: UIImageView = {
        let imageV = UIImageView()
        imageV.translatesAutoresizingMaskIntoConstraints = false
        return imageV
    }()
    
   
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imageView, xLabel, imageView2])
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    
    let scoreLabel: UILabel = {
       let label = UILabel()
       label.text = "Placar:"
       label.font = UIFont.systemFont(ofSize: 30)
       label.textColor = .lightGray
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
   }()
    
    let score1: UILabel = {
       let label = UILabel()
       label.text = "0"
       label.font = UIFont.systemFont(ofSize: 30)
       label.textColor = .yellow
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
   }()
    
    let score2: UILabel = {
       let label = UILabel()
       label.text = "0"
       label.font = UIFont.systemFont(ofSize: 30)
       label.textColor = .yellow
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
   }()
 
    
    lazy var stackViewScore: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [score1, score2])
        stackView.alignment = .center
        stackView.spacing = 70
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        addSubviews()
        addConstraints()
        
        // imageView2.image = UIImage(named: String(play1))
        //imageView.image = UIImage(named: String(play2))
        
        for x in 0..<100 {
            DispatchQueue.main.asyncAfter(deadline: .now()+(2 * TimeInterval(x))) {
                let playImage1 = Int.random(in: 0...2)
                let playImage2 = Int.random(in: 0...2)
                self.imageView.image = UIImage(named: String(playImage1))
                self.imageView2.image = UIImage(named: String(playImage2))
                self.play()
                
            }
            
        }
    }
    
    
    private func addSubviews() {
        view.addSubview(jokenpoLabel)
        view.addSubview(stackView)
        view.addSubview(scoreLabel)
        view.addSubview(stackViewScore)
    }
    
  
}


extension JokenpoView: ViewCode {
    func addConstraints() {
        jokenpoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        jokenpoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        jokenpoLabel.constrainSize(CGSize(width: 140, height: 50))
        
        imageView.constrainSize(CGSize(width: 100, height: 100))
        imageView2.constrainSize(CGSize(width: 100, height: 100))
        stackView.constrainSize(CGSize(width: 260, height: 150))
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scoreLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        scoreLabel.constrainSize(CGSize(width: 90, height: 70))
        
        stackViewScore.constrainSize(CGSize(width: 300, height: 100))
        stackViewScore.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackViewScore.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70).isActive = true

        
    }
    
    
}
