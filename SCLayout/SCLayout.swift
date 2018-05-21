// MIT License
//
// Copyright (c) 2017 mevalid
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.


import UIKit

/**
 Set of named layout attributes.
 
 - center: First elemenet x,y-axis center point equal to the center along the x,y-axis of the second element.
 - centerX: First elemenet x-axis center point equal to the center along the x-axis of the second element.
 - centerY: First elemenet y-axis center point equal to the center along the y-axis of the second element.
 - top: First element top value equal to the top of the second element.
 - bottom: First element bottom value equal to the bottom of the second element.
 - left: First element left value equal to the left of the second element.
 - right: First element right value equal to the right of the second element.
 - height: First element height value equal to the height of the second element.
 - width: First element width value equal to the width of the second element.
 - leftFromCenterX: First element left value equal to the x-axis center point of the second element.
 - rightFromCenterX: First element right value equal to the x-axis center point of the second element.
 - centerXFromLeft: First element x-axis center point value equal to the left point of the second element.
 - centerXFromRight: First element x-axis center point value equal to the right point of the second element.
 - centerYFromTop: First element y-axis center point value equal to the top point of the second element.
 - centerYFromBottom: First element y-axis center point value equal to the bottom point of the second element.
 - bottomFromCenterY: First element bottom value equal to the y-axis center point of the second element.
 - topFromCenterY: First element top value equal to the y-axis center point of the second element.
 - bottomFromTop: First element bottom value equal to the top of the second element.
 - topFromBottom: First element top value equal to the bottom of the second element.
 - leftFromRight: First element left value equal to the right of the second element.
 - rightFromLeft: First element right value equal to the left of the second element.
 - widthFromHeight: First element width value equal to the height of the second element.
 - heightFromWidth: First element height value equal to the width of the second element.
 */
public enum SCAttribute {
    case center
    case centerX
    case centerY
    case top
    case bottom
    case left
    case right
    case height
    case width
    case leftFromCenterX
    case rightFromCenterX
    case centerXFromLeft
    case centerXFromRight
    case centerYFromTop
    case centerYFromBottom
    case bottomFromCenterY
    case topFromCenterY
    case bottomFromTop
    case topFromBottom
    case leftFromRight
    case rightFromLeft
    case widthFromHeight
    case heightFromWidth
    
}

public struct SCLayout {
    // Run on the view we want to sort
    var closure: ((UIView) -> Void)
    
    /**
     Constraint that defines the relationship between the specified attributes of the given views.
     
     - Parameters:
     - to: Second view of relation.
     - multiplier: The multiplier applied to the second attribute participating in the constraint.
     - constant: The value of the constraint.
     */
    public static func center(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerXConstraint = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            $0.centerYConstraint = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerXConstraint!, $0.centerYConstraint!])
        })
    }
    
    public static func centerX(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerXConstraint = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerXConstraint!])
        })
    }
    
    public static func centerY(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerYConstraint = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerYConstraint!])
        })
    }
    
    public static func top(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.topConstraint = NSLayoutConstraint(item: $0, attribute: .top, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.topConstraint!])
        })
    }
    
    public static func bottom(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.bottomConstraint = NSLayoutConstraint(item: $0, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.bottomConstraint!])
        })
    }
    
    public static func left(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.leftConstraint = NSLayoutConstraint(item: $0, attribute: .left, relatedBy: .equal, toItem: to, attribute: .left, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.leftConstraint!])
        })
    }
    
    public static func right(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.rightConstraint = NSLayoutConstraint(item: $0, attribute: .right, relatedBy: .equal, toItem: to, attribute: .right, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.rightConstraint!])
        })
    }
    
    public static func height(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.heightConstraint = NSLayoutConstraint(item: $0, attribute: .height, relatedBy: .equal, toItem: to, attribute: .height, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.heightConstraint!])
        })
    }
    
    public static func width(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.widthConstraint = NSLayoutConstraint(item: $0, attribute: .width, relatedBy: .equal, toItem: to, attribute: .width, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.widthConstraint!])
        })
    }
    
    public static func leftFromCenterX(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.leftConstraint = NSLayoutConstraint(item: $0, attribute: .left, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.leftConstraint!])
        })
    }
    
    public static func rightFromCenterX(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.rightConstraint = NSLayoutConstraint(item: $0, attribute: .right, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.rightConstraint!])
        })
    }
    
    public static func centerXFromLeft(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerXConstraint = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .left, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerXConstraint!])
        })
    }
    
    public static func centerXFromRight(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerXConstraint = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .right, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerXConstraint!])
        })
    }
    
    public static func centerYFromTop(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerYConstraint = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerYConstraint!])
        })
    }
    
    public static func centerYFromBottom(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.centerYConstraint = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.centerYConstraint!])
        })
    }
    
    public static func bottomFromCenterY(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.bottomConstraint = NSLayoutConstraint(item: $0, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.bottomConstraint!])
        })
    }
    
    public static func topFromCenterY(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.topConstraint = NSLayoutConstraint(item: $0, attribute: .top, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.topConstraint!])
        })
    }
    
    public static func bottomFromTop(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.bottomConstraint = NSLayoutConstraint(item: $0, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.bottomConstraint!])
        })
    }
    
    public static func topFromBottom(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.topConstraint = NSLayoutConstraint(item: $0, attribute: .top, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.topConstraint!])
        })
    }
    
    public static func leftFromRight(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.leftConstraint = NSLayoutConstraint(item: $0, attribute: .left, relatedBy: .equal, toItem: to, attribute: .right, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.leftConstraint!])
        })
    }
    
    public static func rightFromLeft(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.rightConstraint = NSLayoutConstraint(item: $0, attribute: .right, relatedBy: .equal, toItem: to, attribute: .left, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.rightConstraint!])
        })
    }
    
    public static func widthFromHeight(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.widthConstraint = NSLayoutConstraint(item: $0, attribute: .width, relatedBy: .equal, toItem: to, attribute: .height, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.widthConstraint!])
        })
    }
    
    public static func heightFromWidth(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.heightConstraint = NSLayoutConstraint(item: $0, attribute: .height, relatedBy: .equal, toItem: to, attribute: .width, multiplier: multiplier, constant: constant)
            NSLayoutConstraint.activate([$0.heightConstraint!])
        })
    }
    
    // Vertical or horizontal constraints using the visual format
    public static func format(format: String, _ views: [String : AnyObject], _ metrics: [String : AnyObject]? = nil) -> SCLayout {
        return SCLayout(closure: {
            if format.contains("H:") {
                $0.horizontalFormatConstraints = NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: metrics, views: views)
                NSLayoutConstraint.activate($0.horizontalFormatConstraints!)
            }
            else {
                $0.verticalFormatConstraints = NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: metrics, views: views)
                NSLayoutConstraint.activate($0.verticalFormatConstraints!)
            }
        })
    }
    
    // Horizontal connection to the parent view using the visual format with the spacing between their left/right leading edges
    public static func stretchWidth(_ left: CGFloat = 0, _ right: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.widthStretchConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(left)-[view]-(right)-|", options: [], metrics: ["left": left, "right": right], views: ["view": $0])
            NSLayoutConstraint.activate($0.widthStretchConstraints!)
        })
    }
    
    // Vertical connection to the parent view using the visual format with the spacing between their top/bottom leading edges
    public static func stretchHeight(_ top: CGFloat = 0, _ bottom: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            $0.heightStretchConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(top)-[view]-(bottom)-|", options: [], metrics: ["top": top, "bottom": bottom], views: ["view": $0])
            NSLayoutConstraint.activate($0.heightStretchConstraints!)
        })
    }
    
    // Vertical & horizontal connection to the parent view using the visual format with the spacing between their left/top/right/bottom leading edges
    public static func stretch(_ top: CGFloat = 0, _ right: CGFloat = 0, _ bottom: CGFloat = 0, _ left: CGFloat = 0) -> SCLayout {
        
        return SCLayout(closure: {
            $0.widthStretchConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(left)-[view]-(right)-|", options: [], metrics: ["left": left, "right": right], views: ["view": $0])
            NSLayoutConstraint.activate($0.widthStretchConstraints!)
            
            $0.heightStretchConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(top)-[view]-(bottom)-|", options: [], metrics: ["top": top, "bottom": bottom], views: ["view": $0])
            NSLayoutConstraint.activate($0.heightStretchConstraints!)
        })
    }
    
    public static func constant(width: CGFloat? = nil, height: CGFloat? = nil, _ relation: NSLayoutRelation? = .equal) -> SCLayout {
        return SCLayout(closure: {
            
            // Layout anchor constraint that defines the anchor’s width attribute with relations of 'equal', 'greater than or equal', 'less than or equal' to a constant
            if let width = width {
                switch relation! {
                case .equal:
                    $0.widthConstraint = $0.widthAnchor.constraint(equalToConstant: width)
                case .greaterThanOrEqual:
                    $0.widthConstraint = $0.widthAnchor.constraint(greaterThanOrEqualToConstant: width)
                case .lessThanOrEqual:
                    $0.widthConstraint = $0.widthAnchor.constraint(lessThanOrEqualToConstant: width)
                }
                
                $0.widthConstraint!.isActive = true
            }
            
            // Layout anchor constraint that defines the anchor’s height attribute with relations of 'equal', 'greater than or equal', 'less than or equal' to a constant
            if let height = height {
                switch relation! {
                case .equal:
                    $0.heightConstraint = $0.heightAnchor.constraint(equalToConstant: height)
                case .greaterThanOrEqual:
                    $0.heightConstraint = $0.heightAnchor.constraint(greaterThanOrEqualToConstant: height)
                case .lessThanOrEqual:
                    $0.heightConstraint = $0.heightAnchor.constraint(lessThanOrEqualToConstant: height)
                }
                
                $0.heightConstraint!.isActive = true
            }
        })
    }
}

public extension UIView {
    
    /**
     Variables as view's constraint anchors.
     
     - widthConstraint: Width constraint.
     - heightConstraint: Height constraint.
     - centerXConstraint: Center along the x-axis constraint.
     - centerYConstraint: Center along the y-axis constraint.
     - topConstraint: Top constraint.
     - bottomConstraint: Bottom constraint.
     - leftConstraint: Left constraint.
     - rightConstraint: Right constraint.
     - horizontalFormatConstraints: Horizontal constraints from visual format string.
     - verticalFormatConstraints: Vertical constraints from visual format string.
     - widthStretchConstraints: Width constraints from visual format string.
     - heightStretchConstraints: Height constraints from visual format string.
     */
    fileprivate struct AssociatedKeys {
        
        static var widthConstraint: NSLayoutConstraint?
        static var heightConstraint: NSLayoutConstraint?
        static var centerXConstraint: NSLayoutConstraint?
        static var centerYConstraint: NSLayoutConstraint?
        static var topConstraint: NSLayoutConstraint?
        static var bottomConstraint: NSLayoutConstraint?
        static var leftConstraint: NSLayoutConstraint?
        static var rightConstraint: NSLayoutConstraint?
        static var horizontalFormatConstraints: [NSLayoutConstraint]?
        static var verticalFormatConstraints: [NSLayoutConstraint]?
        static var widthStretchConstraints: [NSLayoutConstraint]?
        static var heightStretchConstraints: [NSLayoutConstraint]?
    }
    
    
    var widthConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.widthConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.widthConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var heightConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.heightConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.heightConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var centerXConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.centerXConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.centerXConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var centerYConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.centerYConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.centerYConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var topConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.topConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.topConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var bottomConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.bottomConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.bottomConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var leftConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.leftConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.leftConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var rightConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.rightConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.rightConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var horizontalFormatConstraints: [NSLayoutConstraint]? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.horizontalFormatConstraints) as? [NSLayoutConstraint]
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.horizontalFormatConstraints, newValue as [NSLayoutConstraint]?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var verticalFormatConstraints: [NSLayoutConstraint]? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.verticalFormatConstraints) as? [NSLayoutConstraint]
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.verticalFormatConstraints, newValue as [NSLayoutConstraint]?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var widthStretchConstraints: [NSLayoutConstraint]? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.widthStretchConstraints) as? [NSLayoutConstraint]
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.widthStretchConstraints, newValue as [NSLayoutConstraint]?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    var heightStretchConstraints: [NSLayoutConstraint]? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.heightStretchConstraints) as? [NSLayoutConstraint]
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.heightStretchConstraints, newValue as [NSLayoutConstraint]?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    // Sequence call
    func scLayout(_ layouts: [SCLayout]) {
        guard !layouts.isEmpty else { return }
        
        var layouts = layouts
        
        // Take out the next layout
        let layout = layouts.removeFirst()
        
        // Perform closure
        layout.closure(self)
        
        // Recursively call the method
        scLayout(layouts)
    }
    
    // Single call
    func scLayout(_ layout: SCLayout) {
        // Perform closure
        layout.closure(self)
    }
}
