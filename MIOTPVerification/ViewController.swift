//
//  ViewController.swift
//  OTPViewMaster
//
//  Created by mac-00015 on 24/01/20.
//  Copyright © 2020 mac-00015. All rights reserved.
//

import UIKit
import MIOTPVerificationSPM

class ViewController: UIViewController {
    
    @IBOutlet weak var viewOTP: OTPView!
    @IBOutlet weak var viewOTP1: OTPView!
    @IBOutlet weak var viewOTP2: OTPView!
    var str = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOTP.fieldsCount = 6
        viewOTP.borderWidth = 1
        viewOTP.emptyFieldBorderColor = .green
        viewOTP.isSecureEntry = true
        viewOTP.secureEntrySymbol = .star
        viewOTP.errorBorderColor = .red
        viewOTP.textColor = .red
        viewOTP.delegate = self
        viewOTP.cursorColor = .red
        viewOTP.otpFieldDisplayType = .box
        viewOTP.txtPlaceholder = .none
        viewOTP.initializeOTPUI()
        
        viewOTP1.fieldsCount = 4
        viewOTP1.borderWidth = 1
        viewOTP1.emptyFieldBorderColor = .purple
        viewOTP1.isSecureEntry = true
        viewOTP1.secureEntrySymbol = .dot
        viewOTP1.errorBorderColor = .red
        viewOTP1.txtPlaceholder = .dot
        viewOTP1.textColor = .red
        viewOTP1.delegate = self
        viewOTP1.cursorColor = .black
        viewOTP1.otpFieldDisplayType = .underlined
        viewOTP1.initializeOTPUI()
        
        viewOTP2.fieldsCount = 6
        viewOTP2.borderWidth = 1
        viewOTP2.emptyFieldBorderColor = .yellow
        viewOTP2.isSecureEntry = true
        viewOTP2.secureEntrySymbol = .dot
        viewOTP2.errorBorderColor = .red
        viewOTP2.textColor = .red
        viewOTP2.delegate = self
        viewOTP2.cursorColor = .black
        viewOTP2.otpFieldDisplayType = .round
        viewOTP2.initializeOTPUI()
    }
}

// MARK:- OTPView Delegate methods
// MARK:-
extension ViewController: OTPViewDelegate {
    
    func hasEnteredAllOTP(hasEntered: Bool) -> Bool {
        
        return str == "123456" ? hasEntered : false
    }
    
    func shouldBecomeFirstResponderForOTP(otpFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otpString: String) {
        str = otpString
        print(otpString)
    }
}
