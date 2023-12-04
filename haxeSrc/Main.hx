package haxeSrc;

import sys.FileSystem;

class Main {

    public static function main(){
        var rustInt:Int = -1;
        var rustFloat:Float = -1.28;
        var rustStr:String = 'null';

        trace("Hello from Haxe");

        #if cpp
        rustInt = Native.doFunc(FileSystem.absolutePath("rustSrc.dll"), "getInt", rustInt);
        trace('Int from Rust: ' + rustInt);

        rustFloat = Native.doFunc(FileSystem.absolutePath("rustSrc.dll"), "getFloat",  rustFloat);
        trace('Float from Rust: ' + rustFloat);

        rustStr = Native.doFunc(FileSystem.absolutePath("rustSrc.dll"), "getStr", rustStr);
        trace(rustStr);
        #end

        Sys.stdin();
        Sys.sleep(999999999999999);
    }
}