# DNLazyTableViewDelegate
Simply prevent monkey tapping on cell

# How to use

```swift
public class YourViewController : UIViewController, DNLazyTableViewDelegate {
  //if you want to increase/decrease delayTime, override this method
  //leave it to have default value - 3 seconds
  public func delayTime() -> Int {
    return 3
  }

  public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //put this line anywhere in this method, or any other place 
    self.tableView(tableView, delayTapRowAt: indexPath)
  }
}
```
