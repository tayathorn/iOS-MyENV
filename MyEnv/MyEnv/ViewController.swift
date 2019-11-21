import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greetingMessageLabel: UILabel!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var bundleIdLabel: UILabel!
    @IBOutlet weak var endpointLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configFile = Bundle.main.infoDictionary!
        greetingMessageLabel.text = Environment.greetingMessage.value()
        appNameLabel.text = configFile["CFBundleName"] as? String
        bundleIdLabel.text = configFile["CFBundleIdentifier"] as? String
        endpointLabel.text = Environment.api.value()
    }
}

