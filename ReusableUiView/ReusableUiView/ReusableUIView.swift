//
//  ReusableUIView.swift
//  ReusableUiView
//
//  Created by Taka on 22.12.19.
//

import UIKit

class ReusableUIView: UIView {
    
    @IBOutlet weak var background: ReusableUIView!
    @IBOutlet weak var label: UILabel!
    
    
    let nibName = "ReusableUIView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
