# KGLineLoading

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift3 Compatible](https://img.shields.io/badge/KGLineLoading-Swift3-brightgreen.svg)](https://img.shields.io/badge/KGLineLoading-Swift3-brightgreen.svg)
[![license](https://img.shields.io/github/license/Gypsyan/KGLineLoading.svg)]()

`KGLineLoading` is a Custom loading animation.


# Demo
![alt tag](https://github.com/Gypsyan/KGLineLoading/master/output_I11Pum.gif)

# Installation

## Cocoapods

Install Cocoapods if need be.

```bash
$ gem install cocoapods
```

Add `KGLineLoading` in your `Podfile`.

```ruby
use_frameworks!

pod 'KGLineLoading'
```

Then, run the following command.

```bash
$ pod install
```
## Carthage

Install Carthage if need be.

```bash
$ brew update
$ brew install carthage
```

Add `KGLineLoading` in your `Cartfile`.

```ruby
github "Gypsyan/KGLineLoading"
```

Run `carthage` to build the framework and drag the built `KGLineLoading.framework` into your Xcode project.

# Usage

## Using Story board
Add a button to your Interface builder and set the class name as `KGLineLoading` in the `identity inspector`. Provide the module name as `KGLineLoading`.

Come to the `attribute inspector` and add the feature,

  * Background Line Color
  * Background Loader Color


  To start animation call this,

  ```

  @IBOutlet var loadingview: KGLineLoading!
  loadingview.startAnimation()
  ```

  To stop animation,

  ```
  loadingview.startAnimation()
  ```

## Add it programmatically

Add the Radio button using the following ,

  ```
  let loadingview = KGLineLoading( frame: CGRect(origin: CGPoint(x: 0, y: 150), size: CGSize(width: self.view.frame.size.width, height: 8)))
  loadingview.backgroundLineColor = UIColor.yellow
  loadingview.backgroundLoaderColor = UIColor.brown
  self.view.addSubview(loadingview)
  loadingview.startAnimation()
  ```

# License

Copyright 2016 Ananth.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
