/* Copyright (c) 2012 Research In Motion Limited.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
import bb.cascades 1.0
import "Common"

// Here we are importing a file with JavaScripts in the,.
import "mypowfile.js" as MathFunctions

Page {
    content: RecipeContainer {
        Container {
            layout: StackLayout {
            }
            layoutProperties: DockLayoutProperties {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
            }
            Container {
                Label {
                    // This time we're calling the local function
                    text: "Local function :" + myPow (10, 2)
                    textStyle {
                        base: SystemDefaults.TextStyles.BigText
                    }
                }
                Label {
                    // And here we call the javascript function that resides in a file
                    text: "From file :" + MathFunctions.myPow (10, 3)
                    textStyle {
                        base: SystemDefaults.TextStyles.BigText
                    }
                }
            }
        }
    }
 
 // This is a local function that does a little POW calculation
    function myPow (a, b) {
        a = parseInt (a);
        b = parseInt (b);
        var result = a;
        for (var i = 1; i < b; i++) {
            result *= a;
        }
        return result;
    }
}
