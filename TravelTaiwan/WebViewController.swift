//
//  WebViewController.swift
//  TravelTaiwan
//
//  Created by 翁燮羽 on 2021/4/28.
//
import WebKit
import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var webData:WebData!
    
    init(coder:NSCoder,webData:WebData) {
        self.webData = webData
        super .init(coder: coder)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        if let url = URL(string: webData.url){
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
