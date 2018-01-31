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

## Installation

- **For iOS 8+ projects** with [CocoaPods](https://cocoapods.org):

    ```ruby
    pod 'DNLazyTableViewDelegate'
    ```
    OR 
    
     ```ruby
    pod 'DNLazyTableViewDelegate', :git => 'https://github.com/duynb92/DNLazyTableViewDelegate.git'
    ```

- **For iOS 8+ projects** with [Carthage](https://github.com/Carthage/Carthage):

    ```
    github "duynb92/DNLazyTableViewDelegate"
    ```

- **Using [Swift Package Manager](https://swift.org/package-manager)**:

    Coming soon
    
## License

**DNLazyTableViewDelegate** is under MIT license. See the [LICENSE](LICENSE) file for more info.

## Buy me a coffee

If this snippet really, i mean really, save your time.


 <a href="https://www.paypal.me/duynb" target="_blank">
<img src="http://androiduiux.files.wordpress.com/2013/10/support-button.png" width="200px">
</a>
