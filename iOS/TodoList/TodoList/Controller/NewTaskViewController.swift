//  Created by 김지선 on 2021/04/07.


import UIKit

class NewTaskViewController: UIViewController {

    @IBOutlet weak var NewTaskView: UIView!
    
    @IBOutlet weak var RegisterNewTaskButton: UIButton!
    @IBOutlet weak var CancelButton: UIButton!

    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNewTaskView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func configureNewTaskView() {
        NewTaskView.layer.cornerRadius = 5
        RegisterNewTaskButton.layer.cornerRadius = 5
        CancelButton.layer.cornerRadius = 5
    }
    
   
}

//MARK: -@IBAction

extension NewTaskViewController {
    
    @IBAction func RegisterNewTaskActionButton(_ sender: Any) {
        NotificationCenter.default.post(name: .addTextFieldText, object: nil, userInfo: ["title": titleTextField.text ?? "", "content": contentTextField.text ?? ""])
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTouched(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}