
import UIKit

class daniaVC: UIViewController{
    
    var dania: [String]=[]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func daniaCategoriesButton(_ sender: Any) {
        performSegue(withIdentifier: "toDaniaCategories", sender: nil)
    }
    
    @IBAction func newDanieButton(_ sender: Any) {
        performSegue(withIdentifier: "toNoweDanie", sender: nil)
    }
}

extension daniaVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
      //return dania.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //guard let cell = tableView.dequeueReusableCell(withIdentifier: "danieCell")else{
          //  return UITableViewCell()
        //}
        //cell.textLabel!.text = dania[indexPath.row]
        //return cell
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDanieVC", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
