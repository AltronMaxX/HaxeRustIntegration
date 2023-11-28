package haxeSrc;

import sys.FileSystem;

class Main {

    public static function main(){
        var rustInt:Int = -1;

        trace("Hello from Haxe");

        #if cpp
        rustInt = Ext.doFunc(FileSystem.absolutePath("rustSrc.dll"), "hello", rustInt);
        trace('Int from Rust: ' + rustInt);
        #end

        Sys.sleep(999999999999999);
    }
    
}