package haxeSrc;


@:cppFileCode("#include <windows.h> \n #include <iostream> \n #include <string> \n typedef int (__stdcall *f_funci)();")
class Ext {

    @:functionCode("
        HINSTANCE libInst = LoadLibrary(lib);

        if (!libInst){
            std::cout << \"[ERROR] Ext.doFunc: Failed to load lib\";
            res = NULL;
        }

        f_funci funci = (f_funci)GetProcAddress(libInst, func);

        if (!funci){
            std::cout << \"[ERROR] Ext.doFunc: Failed to load function\";
            res = NULL; 
        }
        res = funci();
    ")
    public static function doFunc(lib:String, func:String, res:Null<Int>){
        return res;
    }
    
}