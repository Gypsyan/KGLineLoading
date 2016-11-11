//
//  KGLineLoading.swift
//  KGLineLoading
//
//  Created by Anantha Krishnan K G on 11/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit

@IBDesignable
open class KGLineLoading: UIView {

    fileprivate var lineLoadingView: UIView!
    fileprivate var isAnimating: Bool = false

    @IBInspectable
    public var backgroundLineColor:UIColor = UIColor.gray {
        didSet {
            setLayout()
        }
    }
    
    @IBInspectable
    public var backgroundLoaderColor:UIColor = UIColor.green {
        didSet {
            setLayout()
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    fileprivate func setLayout(){
        self.lineLoadingView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: self.frame.size.height))
        loadColors()
        
    }
    
    fileprivate func loadColors(){
        self.backgroundColor = self.backgroundLineColor
        self.lineLoadingView.backgroundColor = self.backgroundLoaderColor
        self.isHidden = false;
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
       self.frame = CGRect(origin: CGPoint(x: self.frame.origin.x,y :self.frame.origin.y), size: CGSize(width: UIScreen.main.bounds.width, height: self.frame.height))
        
    }
    
    open func startAnimation(){
        
        if !isAnimating {
            self.isHidden = false;
            
            self.isAnimating = true
            self.addSubview(self.lineLoadingView)
            self.configureAnimation()

            
        }
    }
    
    open func stopAnimation(){
        
        self.isAnimating = false
        
        UIView.animate(withDuration: 0.5, animations: {
            self.isHidden = true;
        })
    }
    
    fileprivate func configureAnimation() {
        
        guard let superview = self.superview else {
            stopAnimation()
            return
        }
        
        self.lineLoadingView.frame = CGRect(origin: CGPoint(x: 0, y :0), size: CGSize(width: 0, height: self.frame.size.height))
        
        UIView.animateKeyframes(withDuration: 1.0, delay: 0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: {
                self.lineLoadingView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width*0.5, height: self.frame.size.height)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.lineLoadingView.frame = CGRect(x: superview.frame.width+10, y: 0, width: 0, height: self.frame.size.height)
                
            })
            
        }) { (completed) in
            if (self.isAnimating){
                self.configureAnimation()
            }
        }
    }
    
}
