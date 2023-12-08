import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    
    var images = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        "image8",
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        "image8"
    ]
    
    var click = 1
    
    var buttons = [UIButton]()
    
    var click1 = 0
    var click2 = 0
    //var winSteps = 0
    
    // Запуск окна для старта игры
    override func viewDidLoad() {
        super.viewDidLoad()

        // Перетасовка картинок
        images.shuffle()
        
        buttons.append(button1)
        buttons.append(button2)
        buttons.append(button3)
        buttons.append(button4)
        buttons.append(button5)
        buttons.append(button6)
        buttons.append(button7)
        buttons.append(button8)
        buttons.append(button9)
        buttons.append(button10)
        buttons.append(button11)
        buttons.append(button12)
        buttons.append(button13)
        buttons.append(button14)
        buttons.append(button15)
        buttons.append(button16)
    }
    
    
    @IBAction func game(_ sender: UIButton) {
        if click == 1 {
            sender.setImage(UIImage(named: images[sender.tag-1]), for: .normal)
            click += 1
            click1 = sender.tag
        } else if click == 2 {
            sender.setImage(UIImage(named: images[sender.tag-1]), for: .normal)
            click2 = sender.tag
            click -= 1
            compare()
        }
    }
   
    
    func compare() {
        if images[click1-1] == images[click2-1] {
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.6) {
                
                self.buttons[self.click1-1].alpha = 0
                self.buttons[self.click2-1].alpha = 0
//                self.winSteps += 1
//                print(self.winSteps)
//                if self.winSteps == 8 {
//                    let alert = UIAlertController(title: "O win!", message: "", preferredStyle: .alert)
//                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self]
//                        UIAlertAction in
//                        viewDidLoad()
//                    }))
//                    return
//                }
             }
            
        } else {
            // другой
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.6) {
                // скрыть картинки
                self.buttons[self.click1-1].setImage(UIImage(named: "image"), for: .normal)
                self.buttons[self.click2-1].setImage(UIImage(named: "image"), for: .normal)
            }
        }
    }
    
}


