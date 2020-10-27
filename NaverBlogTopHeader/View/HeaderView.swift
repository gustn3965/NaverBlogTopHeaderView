//
//  HeaderView.swift
//  NaverBlogTopHeader
//
//  Created by hyunsu on 2020/10/27.
//

import UIKit

class HeaderView : UIView  {
    let image = UIImageView()
    var inforTopConstraint : NSLayoutConstraint?
    var inforStackView : UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImage("image1")
    }
    init(image : String ) {
        super.init(frame: .zero)
        setImage(image)
        setInforStackView()
    }
    required init?(coder: NSCoder) {
        super.init(coder : coder)
        setImage("image1")
    }
    func setImage(_ imageNamed : String ) {
        image.image = UIImage(named: imageNamed)
        self.addSubview(image)
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [image.topAnchor.constraint(equalTo: self.topAnchor),
             image.bottomAnchor.constraint(equalTo: self.bottomAnchor),
             image.leftAnchor.constraint(equalTo: self.leftAnchor),
             image.rightAnchor.constraint(equalTo: self.rightAnchor)])
    }
    func setInforStackView() {
        
        let person  = UIButton()
        person.setImage(UIImage(systemName: "person.2"), for: .normal)
        person.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        person.tintColor = .white
        person.layer.borderWidth = 0.4
        person.layer.borderColor = UIColor.white.cgColor
        person.translatesAutoresizingMaskIntoConstraints = false
        let comment  = UIButton()
        comment.setImage(UIImage(systemName: "note.text"), for: .normal)
        comment.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        comment.tintColor = .white
        comment.layer.borderWidth = 0.4
        comment.layer.borderColor = UIColor.white.cgColor
        comment.translatesAutoresizingMaskIntoConstraints = false
        let text  = UIButton()
        text.setImage(UIImage(systemName: "text.alignleft"), for: .normal)
        text.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        text.tintColor = .white
        text.layer.borderWidth = 0.4
        text.layer.borderColor = UIColor.white.cgColor
        text.translatesAutoresizingMaskIntoConstraints = false
        let statistic  = UIButton()
        statistic.setImage(UIImage(systemName: "chart.bar.xaxis"), for: .normal)
        statistic.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        statistic.tintColor = .white
        statistic.layer.borderWidth = 0.4
        statistic.layer.borderColor = UIColor.white.cgColor
        statistic.translatesAutoresizingMaskIntoConstraints = false
        
        let setting = UIButton()
        setting.setImage(UIImage(systemName: "gearshape"), for: .normal)
        setting.setTitle("홈편집", for: .normal)
        setting.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        setting.tintColor = .white
        setting.layer.borderWidth = 0.4
        setting.layer.borderColor = UIColor.white.cgColor
        
        
        
        let subtitle = UILabel()
        subtitle.text = "IT 컴퓨터 31명의 이웃"
        subtitle.font = UIFont.systemFont(ofSize: 14)
        subtitle.textColor = .white
        subtitle.textAlignment = .center
        subtitle.backgroundColor = .clear
        
        let count = UILabel()
        count.text = "오늘 91 전체 25,380"
        count.font = UIFont.systemFont(ofSize: 14)
        count.textColor = .white
        count.textAlignment = .center
        count.backgroundColor = .clear
        
        let id = UILabel()
        id.text = "현무"
        id.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        id.textColor = .white
        id.textAlignment = .center
        id.backgroundColor = .clear
        
        let title  = UILabel()
        title.text = "비전공자가 개발자가 되기 위한 노력"
        title.numberOfLines = 2
        title.textAlignment = .center
        title.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        title.textColor = .white
        title.backgroundColor = .clear
        
        
        let user = UIImageView(image: UIImage(named: "user"))
        user.contentMode = .scaleAspectFit
        user.clipsToBounds = true
        user.backgroundColor = .clear
        user.translatesAutoresizingMaskIntoConstraints = false
        
        
        let stack = UIStackView(arrangedSubviews: [setting,text,comment,person,statistic])
        stack.axis = .horizontal
        stack.spacing = 5
        
        
        inforStackView = UIStackView(arrangedSubviews: [count,title,user,id,subtitle,stack])
        inforStackView.axis = .vertical
        inforStackView.alignment = .fill
        inforStackView.translatesAutoresizingMaskIntoConstraints = false
        inforStackView.spacing = 10
        inforStackView.contentMode = .scaleToFill
        
        
        self.image.addSubview(inforStackView)
        
        inforTopConstraint = inforStackView.topAnchor.constraint(equalTo: self.topAnchor)
        inforTopConstraint?.constant = 100
        inforTopConstraint?.isActive = true
        
        NSLayoutConstraint.activate(
            [   inforStackView.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 20),
                inforStackView.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -20),
                
                person.heightAnchor.constraint(equalToConstant: 50),
                person.widthAnchor.constraint(equalTo: person.heightAnchor, multiplier: 1)
                ,
                comment.widthAnchor.constraint(equalTo: comment.heightAnchor, multiplier: 1),
                text.widthAnchor.constraint(equalTo: text.heightAnchor, multiplier: 1),
                statistic.widthAnchor.constraint(equalTo: statistic.heightAnchor, multiplier: 1),
                
                user.heightAnchor.constraint(equalToConstant: 50),
            ])
    }
}
