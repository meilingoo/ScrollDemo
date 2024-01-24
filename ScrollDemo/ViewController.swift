//
//  ViewController.swift
//  ScrollDemo
//
//  Created by Raymond Cheng on 2024/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    //viewWillLayoutSubviews切换横竖屏图片自适应屏幕
    override func viewWillLayoutSubviews() {
        //scrollView.zoomScale = 1是为了切换横竖屏进行图片缩放正常
        scrollView.zoomScale = 1
        scrollView.frame = view.bounds
        imageView.frame = view.bounds
    }
    
    //viewDidLoad切换横竖屏图片不自适应屏幕
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    ////        视图有两个属性：frame和bounds，这两个的类型都是CGRect(是一个结构体，结构体没有继承）
    ////         frame描述的是当前视图相对于父视图的位置，是在父视图的坐标系下描述
    ////         bounds是当前视图相对于自己的位置，是在自己的坐标系下描述
    //        imageView.frame = view.bounds
    //    }
    
 
    @IBAction func tapImageView(_ sender: UITapGestureRecognizer) {
//默认情况image view不会响应手势，要想UI image view响应在storyboard属性栏里勾选User Interaction Enabled
//实现点击image view弹出系统相册选择其他图片
        let picker = UIImagePickerController()
        //test confilct
    }
    
}




//缩放scroll View的子视图的三个步骤
//1.设置scroll View最大最小系数maxinumZoomScale，在storyboard找到zoom
//  minimunZoomScale
//2. delegate(代理)，在storyboard层级上点击scroll View，按住control键拖到view controller选择delegate
//3. 实现代理函数
extension ViewController: UIScrollViewDelegate{
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        imageView
    }
}
