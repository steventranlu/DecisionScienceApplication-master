//
//  HelpViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 7/19/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit
import MessageUI

class HelpViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var emailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailButton.layer.cornerRadius = 25.0

    }

    @IBAction func emailButtonPressed(_ sender: UIButton) {
        let mailComposeViewController = configuredMailComposeViewController()
        
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true)
        } else {
            self.showSendMailErrorAlert()
        }
        
    }
    func configuredMailComposeViewController() -> MFMailComposeViewController{
        let mailComposeVC = MFMailComposeViewController()
        mailComposeVC.mailComposeDelegate = self
        
        mailComposeVC.setToRecipients(["stevenlurocks@yahoo.com"])
        mailComposeVC.setSubject("Subject")
        mailComposeVC.setMessageBody("Begin:", isHTML: false)
        
        return mailComposeVC
    }
    
    func showSendMailErrorAlert(){
        let alert = UIAlertController(title: "Could not send mail", message: "Unable to send mail. Please check your email configuration, and try again.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?){
        switch result {
        case MFMailComposeResult.cancelled:
            self.dismiss(animated: true, completion: nil)
        case MFMailComposeResult.failed:
            self.showSendMailErrorAlert()
            self.dismiss(animated: true, completion: nil)
        case MFMailComposeResult.sent:
            self.dismiss(animated: true, completion: nil)
        default:
            break
        }
        
        
        
    }
    
    
    
    
    
}
