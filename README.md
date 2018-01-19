# DNLazyTableViewDelegate
Simply prevent monkey tapping on cell

# How to use

```swift
public class YourViewController : UIViewController, DNLazyTableViewDelegate {
public var delayTime: Int {
return 3
}

public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//put this line anywhere in this method, or any other place 
self.tableView(tableView, delayTapRowAt: indexPath)
}
}
```
