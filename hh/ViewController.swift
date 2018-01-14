//
//  ViewController.swift
//  hh
//
//  Created by Niharika Srivastav on 9/14/16.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
    {
    
    
    @IBOutlet var Gallery: UIButton!
    
    @IBOutlet var Camera: UIButton!
    
    @IBOutlet var ImageDisplay: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GalleryAction(sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        
        presentViewController(picker, animated: true, completion: nil)
        
        
        
    }
    @IBAction func CameraAction(sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        
        presentViewController(picker, animated: true, completion: nil)
        
        
        }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: [String : AnyObject]!) {
        
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as! UIImage
            dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    
    

}

