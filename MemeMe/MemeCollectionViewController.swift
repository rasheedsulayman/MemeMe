//
//  MemeCollectionViewController.swift
//  MemeMe
//
//  Created by Rasheed Sulayman on 12/06/2018.
//  Copyright © 2018 r4sh33d. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         collectionView.delegate = self
         collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"MemeCollectionIdentifier" , for: indexPath) as! MemeCollectionViewCell
        let currentMeme = memes[indexPath.row]
        //cell.memImageView = currentMeme.topText
        cell.memImageView.image = currentMeme.originalImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
