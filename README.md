# NotSwiftUI

UIKit based layout framework with SwiftUI-like API using frame layout

# Experimental

** I don't recommend using it **

# Principles
- Parent doesn't affect children size
- Parent is responsible for children positions
- Children must know their size using parent's available size, but might exceed it
- When children changes it must notify its parent about that

