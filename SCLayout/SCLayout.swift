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
            let centerX = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            let centerY = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            centerX.identifier = $0.centerXConstraintIdentifier
            centerY.identifier = $0.centerYConstraintIdentifier
            NSLayoutConstraint.activate([centerX, centerY])
        })
    }
    
    public static func centerX(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let centerX = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            centerX.identifier = $0.centerXConstraintIdentifier
            NSLayoutConstraint.activate([centerX])
        })
    }
    
    public static func centerY(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let centerY = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            centerY.identifier = $0.centerYConstraintIdentifier
            NSLayoutConstraint.activate([centerY])
        })
    }
    
    public static func top(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let top = NSLayoutConstraint(item: $0, attribute: .top, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: constant)
            top.identifier = $0.topConstraintIdentifier
            NSLayoutConstraint.activate([top])
        })
    }
    
    public static func bottom(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let bottom = NSLayoutConstraint(item: $0, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: constant)
            bottom.identifier = $0.bottomConstraintIdentifier
            NSLayoutConstraint.activate([bottom])
        })
    }
    
    public static func left(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let left = NSLayoutConstraint(item: $0, attribute: .left, relatedBy: .equal, toItem: to, attribute: .left, multiplier: multiplier, constant: constant)
            left.identifier = $0.leftConstraintIdentifier
            NSLayoutConstraint.activate([left])
        })
    }
    
    public static func right(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let right = NSLayoutConstraint(item: $0, attribute: .right, relatedBy: .equal, toItem: to, attribute: .right, multiplier: multiplier, constant: constant)
            right.identifier = $0.rightConstraintIdentifier
            NSLayoutConstraint.activate([right])
        })
    }
    
    public static func height(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let height = NSLayoutConstraint(item: $0, attribute: .height, relatedBy: .equal, toItem: to, attribute: .height, multiplier: multiplier, constant: constant)
            height.identifier = $0.heightConstraintIdentifier
            NSLayoutConstraint.activate([height])
        })
    }
    
    public static func width(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let width = NSLayoutConstraint(item: $0, attribute: .width, relatedBy: .equal, toItem: to, attribute: .width, multiplier: multiplier, constant: constant)
            width.identifier = $0.widthConstraintIdentifier
            NSLayoutConstraint.activate([width])
        })
    }
    
    public static func leftFromCenterX(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let left = NSLayoutConstraint(item: $0, attribute: .left, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            left.identifier = $0.leftConstraintIdentifier
            NSLayoutConstraint.activate([left])
        })
    }
    
    public static func rightFromCenterX(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let right = NSLayoutConstraint(item: $0, attribute: .right, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: constant)
            right.identifier = $0.rightConstraintIdentifier
            NSLayoutConstraint.activate([right])
        })
    }
    
    public static func centerXFromLeft(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let centerX = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .left, multiplier: multiplier, constant: constant)
            centerX.identifier = $0.centerXConstraintIdentifier
            NSLayoutConstraint.activate([centerX])
        })
    }
    
    public static func centerXFromRight(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let centerX = NSLayoutConstraint(item: $0, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .right, multiplier: multiplier, constant: constant)
            centerX.identifier = $0.centerXConstraintIdentifier
            NSLayoutConstraint.activate([centerX])
        })
    }
    
    public static func centerYFromTop(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let centerY = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: constant)
            centerY.identifier = $0.centerYConstraintIdentifier
            NSLayoutConstraint.activate([centerY])
        })
    }
    
    public static func centerYFromBottom(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let centerY = NSLayoutConstraint(item: $0, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: constant)
            centerY.identifier = $0.centerYConstraintIdentifier
            NSLayoutConstraint.activate([centerY])
        })
    }
    
    public static func bottomFromCenterY(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let bottom = NSLayoutConstraint(item: $0, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            bottom.identifier = $0.bottomConstraintIdentifier
            NSLayoutConstraint.activate([bottom])
        })
    }
    
    public static func topFromCenterY(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let top = NSLayoutConstraint(item: $0, attribute: .top, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: constant)
            top.identifier = $0.topConstraintIdentifier
            NSLayoutConstraint.activate([top])
        })
    }
    
    public static func bottomFromTop(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let bottom = NSLayoutConstraint(item: $0, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: constant)
            bottom.identifier = $0.bottomConstraintIdentifier
            NSLayoutConstraint.activate([bottom])
        })
    }
    
    public static func topFromBottom(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let top = NSLayoutConstraint(item: $0, attribute: .top, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: constant)
            top.identifier = $0.topConstraintIdentifier
            NSLayoutConstraint.activate([top])
        })
    }
    
    public static func leftFromRight(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let left = NSLayoutConstraint(item: $0, attribute: .left, relatedBy: .equal, toItem: to, attribute: .right, multiplier: multiplier, constant: constant)
            left.identifier = $0.leftConstraintIdentifier
            NSLayoutConstraint.activate([left])
        })
    }
    
    public static func rightFromLeft(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let right = NSLayoutConstraint(item: $0, attribute: .right, relatedBy: .equal, toItem: to, attribute: .left, multiplier: multiplier, constant: constant)
            right.identifier = $0.rightConstraintIdentifier
            NSLayoutConstraint.activate([right])
        })
    }
    
    public static func widthFromHeight(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let width = NSLayoutConstraint(item: $0, attribute: .width, relatedBy: .equal, toItem: to, attribute: .height, multiplier: multiplier, constant: constant)
            width.identifier = $0.widthConstraintIdentifier
            NSLayoutConstraint.activate([width])
        })
    }
    
    public static func heightFromWidth(to: Any, _ multiplier: CGFloat = 1, _ constant: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: {
            let height = NSLayoutConstraint(item: $0, attribute: .height, relatedBy: .equal, toItem: to, attribute: .width, multiplier: multiplier, constant: constant)
            height.identifier = $0.heightConstraintIdentifier
            NSLayoutConstraint.activate([height])
        })
    }
    
    // Vertical or horizontal constraints using the visual format
    public static func format(format: String, _ views: [String : AnyObject], _ metrics: [String : AnyObject]? = nil) -> SCLayout {
        return SCLayout(closure: { v in
            if format.contains("H:") {
                let horizontalFormat = NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: metrics, views: views)
                _ = horizontalFormat.map { $0.identifier = v.horizontalFormatConstraintsIdentifier }
                NSLayoutConstraint.activate(horizontalFormat)
            }
            else {
                let verticalFormat = NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: metrics, views: views)
                _ = verticalFormat.map { $0.identifier = v.verticalFormatConstraintsIdentifier }
                NSLayoutConstraint.activate(verticalFormat)
            }
        })
    }
    
    // Horizontal connection to the parent view using the visual format with the spacing between their left/right leading edges
    public static func stretchWidth(_ left: CGFloat = 0, _ right: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: { v in
            let widthStretch = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(left)-[view]-(right)-|", options: [], metrics: ["left": left, "right": right], views: ["view": v])
            _ = widthStretch.map { $0.identifier = v.widthStretchConstraintsIdentifier}
            NSLayoutConstraint.activate(widthStretch)
        })
    }
    
    // Vertical connection to the parent view using the visual format with the spacing between their top/bottom leading edges
    public static func stretchHeight(_ top: CGFloat = 0, _ bottom: CGFloat = 0) -> SCLayout {
        return SCLayout(closure: { v in
            let heightStretch = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(top)-[view]-(bottom)-|", options: [], metrics: ["top": top, "bottom": bottom], views: ["view": v])
            _ = heightStretch.map { $0.identifier = v.heightStretchConstraintsIdentifier}
            NSLayoutConstraint.activate(heightStretch)
        })
    }
    
    // Vertical & horizontal connection to the parent view using the visual format with the spacing between their left/top/right/bottom leading edges
    public static func stretch(_ top: CGFloat = 0, _ right: CGFloat = 0, _ bottom: CGFloat = 0, _ left: CGFloat = 0) -> SCLayout {
        
        return SCLayout(closure: { v in
            let widthStretch = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(left)-[view]-(right)-|", options: [], metrics: ["left": left, "right": right], views: ["view": v])
            _ = widthStretch.map { $0.identifier = v.widthStretchConstraintsIdentifier}
            NSLayoutConstraint.activate(widthStretch)
            
            let heightStretch = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(top)-[view]-(bottom)-|", options: [], metrics: ["top": top, "bottom": bottom], views: ["view": v])
            _ = heightStretch.map { $0.identifier = v.heightStretchConstraintsIdentifier}
            NSLayoutConstraint.activate(heightStretch)
        })
    }
    
    public static func constant(width: CGFloat? = nil, height: CGFloat? = nil, _ relation: NSLayoutConstraint.Relation? = .equal) -> SCLayout {
        return SCLayout(closure: {
            
            // Layout anchor constraint that defines the anchor’s width attribute with relations of 'equal', 'greater than or equal', 'less than or equal' to a constant
            if let `width` = width {
                var widthConstraint: NSLayoutConstraint
                switch relation! {
                case .equal:
                    widthConstraint = $0.widthAnchor.constraint(equalToConstant: width)
                case .greaterThanOrEqual:
                    widthConstraint = $0.widthAnchor.constraint(greaterThanOrEqualToConstant: width)
                case .lessThanOrEqual:
                    widthConstraint = $0.widthAnchor.constraint(lessThanOrEqualToConstant: width)
                }
                widthConstraint.identifier = $0.widthConstraintIdentifier
                widthConstraint.isActive = true
            }
            
            // Layout anchor constraint that defines the anchor’s height attribute with relations of 'equal', 'greater than or equal', 'less than or equal' to a constant
            if let `height` = height {
                var heightConstraint: NSLayoutConstraint
                switch relation! {
                case .equal:
                    heightConstraint = $0.heightAnchor.constraint(equalToConstant: height)
                case .greaterThanOrEqual:
                    heightConstraint = $0.heightAnchor.constraint(greaterThanOrEqualToConstant: height)
                case .lessThanOrEqual:
                    heightConstraint = $0.heightAnchor.constraint(lessThanOrEqualToConstant: height)
                }
                heightConstraint.identifier = $0.heightConstraintIdentifier
                heightConstraint.isActive = true
            }
        })
    }
}

// MARK: Properties
public extension UIView {
    
    /**
     - sc_widthConstraint: Width constraint.
     - sc_heightConstraint: Height constraint.
     - sc_centerXConstraint: Center along the x-axis constraint.
     - sc_centerYConstraint: Center along the y-axis constraint.
     - sc_topConstraint: Top constraint.
     - sc_bottomConstraint: Bottom constraint.
     - sc_leftConstraint: Left constraint.
     - sc_rightConstraint: Right constraint.
     - sc_horizontalFormatConstraints: Horizontal constraints from visual format string.
     - sc_verticalFormatConstraints: Vertical constraints from visual format string.
     - sc_widthStretchConstraints: Width constraints from visual format string.
     - sc_heightStretchConstraints: Height constraints from visual format string.
     */
    
    fileprivate var widthConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_width"  }
    }
    
    fileprivate var heightConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_height"  }
    }
    
    fileprivate var centerXConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_center_x"  }
    }
    
    fileprivate var centerYConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_center_y"  }
    }
    
    fileprivate var topConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_top"  }
    }
    
    fileprivate var bottomConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_bottom"  }
    }
    
    fileprivate var leftConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_left"  }
    }
    
    fileprivate var rightConstraintIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_right"  }
    }
    
    fileprivate var horizontalFormatConstraintsIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_horizontal_format"  }
    }
    
    fileprivate var verticalFormatConstraintsIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_vertical_format"  }
    }
    
    fileprivate var widthStretchConstraintsIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_stretch_width"  }
    }
    
    fileprivate var heightStretchConstraintsIdentifier: String {
        get { return "\(UIView.propertyIdentifier(self))_sc_stretch_height"  }
    }
    
    var sc_widthConstraint: NSLayoutConstraint? {
        get {
            return self.superview?.constraints.filter({ $0.identifier == self.widthConstraintIdentifier }).first ??
                self.constraints.filter({ $0.identifier == self.widthConstraintIdentifier }).first
        }
    }
    
    var sc_heightConstraint: NSLayoutConstraint? {
        get {
            return self.superview?.constraints.filter({ $0.identifier == self.heightConstraintIdentifier }).first ??
                self.constraints.filter({ $0.identifier == self.heightConstraintIdentifier }).first
        }
    }
    
    var sc_centerXConstraint: NSLayoutConstraint? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.centerXConstraintIdentifier }).first }
    }
    
    var sc_centerYConstraint: NSLayoutConstraint? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.centerYConstraintIdentifier }).first }
    }
    
    var sc_topConstraint: NSLayoutConstraint? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.topConstraintIdentifier }).first }
    }
    
    var sc_bottomConstraint: NSLayoutConstraint? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.bottomConstraintIdentifier }).first }
    }
    
    var sc_leftConstraint: NSLayoutConstraint? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.leftConstraintIdentifier }).first }
    }
    
    var sc_rightConstraint: NSLayoutConstraint? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.rightConstraintIdentifier }).first }
    }
    
    var sc_horizontalFormatConstraints: [NSLayoutConstraint]? {
        get {
            return self.constraints.filter({ $0.identifier == self.horizontalFormatConstraintsIdentifier })
        }
    }
    
    var sc_verticalFormatConstraints: [NSLayoutConstraint]? {
        get {
            return self.constraints.filter({ $0.identifier == self.verticalFormatConstraintsIdentifier })
        }
    }
    
    var sc_widthStretchConstraints: [NSLayoutConstraint]? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.widthStretchConstraintsIdentifier }) }
    }
    
    var sc_heightStretchConstraints: [NSLayoutConstraint]? {
        get { return self.superview?.constraints.filter({ $0.identifier == self.heightStretchConstraintsIdentifier }) }
    }
    
    private static func propertyIdentifier(_ key: AnyObject) -> String {
        return "\(unsafeBitCast(key, to: Int.self))"
    }
}

//MARK: Handlers
public extension UIView {
    
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
