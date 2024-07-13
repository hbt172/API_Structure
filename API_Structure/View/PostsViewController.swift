//
//  PostsViewController.swift
//  API_Structure
//
//  Created by Jay Khodiyar on 12/07/24.
//

import UIKit

class PostsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var posts: [Post] = []
    
    let postController = PostController()
    @IBOutlet weak var tblViewPost: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerTableViewCells()
        
        postController.fetchPosts { [weak self] posts in
            DispatchQueue.main.async {
                self?.posts = posts ?? []
                self?.tblViewPost.reloadData()
            }
        }
    }
    
    func registerTableViewCells() {
        tblViewPost.dataSource = self
        tblViewPost.delegate = self
        tblViewPost.register(PostTableViewCell.nib, forCellReuseIdentifier: PostTableViewCell.nibName)
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.nibName, for: indexPath) as! PostTableViewCell
        let post = posts[indexPath.row]
        cell.lblTitle?.text = post.title
        cell.lblBody?.text = post.body
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // Handle cell selection
    }
}
