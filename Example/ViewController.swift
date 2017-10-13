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
import SCLayout

class ViewController: UIViewController {
    
    
    let view1: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.green
        return v
    }()
    
    let view2: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.red
        return v
    }()
    
    let view3: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.orange
        return v
    }()
    
    let view4: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.blue
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view1Layout()
        
        view.addSubview(view2)
        view2Layout()
        
        view.addSubview(view3)
        view.addSubview(view4)
        formatLayout()
    }
    
    /**
        - Stretch the view1 to fit it's superview with the X origin point to be 50 points away from the left and the right side of the parent view.
        - Set the view1 height to 100 points.
        - Set the view1 top position to be 50 points away from the top value of it's parent view.
     */
    func view1Layout() {
        
        view1.addSCConstraints { sc in
            sc.constraintsStretchWidth(50, 50)
            sc.constraintHeightConstant(c: 100)
            sc.constraintWithAttribute(to: view, attribute: .top, 50)
        }
    }
    
    /**
        - Center the view2 horizontally.
        - Set the height of view2 to be the same as the view1 height.
        - Set the view2 width to 80 points.
        - Set the view2 top position to be 30 points away from view1 bottom position.
     */
    func view2Layout() {
        
        view2.addSCConstraints { sc in
            sc.constraintWithAttribute(to: view, attribute: .centerX)
            sc.constraintWithAttribute(to: view1, attribute: .height)
            sc.constraintWidthConstant(c: 80)
            sc.constraintWithAttribute(to: view1, attribute: .topFromBottom, 30)
        }
    }
    
    /**
        - Set the view3, view4 height to 30 points.
        - Set the view3, view4 bottom position to be 10 points away from the bottom value of their parent view.
        - Set the view3 left position to be 20 points away from the left side of the parent view. Set the view4 left position to be 20 points away from the right side of the view3.
        - Set the view3, view4 width to 40 points.
     */
    func formatLayout() {
        view3.constraintHeightConstant(c: 30)
        view4.constraintWithAttribute(to: view3, attribute: .height)
        
        view3.constraintWithAttribute(to: view, attribute: .bottom, -10)
        view4.constraintWithAttribute(to: view3, attribute: .bottom)
        
        view.constraintFormat(format: "H:|-20-[view3(40)]-20-[view4(40)]", [
            "view3": view3,
            "view4": view4
            ])
    }

}

