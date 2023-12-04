package haxeSrc;


@:cppFileCode("#include <windows.h> \n #include <iostream>\n typedef ::Dynamic (__stdcall *f_funcd)();")
class Native {

    @:functionCode("
        HINSTANCE libInst = LoadLibrary(lib);

        if (!libInst){
            std::cout << \"[ERROR] Native.doFunc: Failed to load lib\" << std::endl;
            std::cout << \"[ERROR] Native.doFunc: \" << std::endl << GetLastError() << std::endl;
            return NULL;
        }

        f_funcd funcd = (f_funcd)GetProcAddress(libInst, func);

        if (!funcd){
            std::cout << \"[ERROR] Native.doFunc: Failed to load function\" << std::endl;
            std::cout << \"[ERROR] Native.doFunc: \" << std::endl << GetLastError() << std::endl;
            return NULL;
        }
        res = funcd();
    ")
    public static function doFunc(lib:String, func:String, res:Null<Dynamic>)
    {
        return res;
    }
    
}