# OTPViewMaster

A custom verification code view with inbuild validations, which can be used for OTP(One time password), verification codes.

![video](/Media/OTPView.gif)

# Requirement

- iOS 12 or later
- XCode 10.2 or later
- Swift 5.0

# Usage

Add a view in storyboard same as nomal view and assign it to OTPView. After that you can customize the OTPView from storyboard or from code as well. For example let's take a view named as viewOTP and we can customize it as follows.

        viewOTP.fieldsCount = 6
        viewOTP.borderWidth = 1
        viewOTP.emptyFieldBorderColor = .green
        viewOTP.isSecureEntry = true
        viewOTP.secureEntrySymbol = .star
        viewOTP.errorBorderColor = .red
        viewOTP.textColor = .red
        viewOTP.cursorColor = .red
        viewOTP.otpFieldDisplayType = .box
        viewOTP.initializeOTPUI()

You can check write OTP is correct or not using delegate methods.

# LICENSE!

OTPViewMaster is [MIT-licensed](/LICENSE).