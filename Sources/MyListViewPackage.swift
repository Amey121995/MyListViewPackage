// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit


public class MyListViewPackage{
    //public static let shared = ApiManger()
    public static func showListView(from presentingVC: UIViewController, completion: @escaping (_ name: String?,_ dict: [String:Any]?) -> Void) {
        let listViewController = ListVC(completion: completion)
        presentingVC.present(listViewController, animated: true, completion: nil)
    }
    

}
