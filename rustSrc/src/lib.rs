#[allow(non_snake_case)]
mod Haxe {

    #[no_mangle]
    pub unsafe extern "C" fn getStr() -> *const u8{
        "Hello from Rust!".as_ptr()
    }

    #[no_mangle]
    pub unsafe extern "C" fn getInt() -> i32{
        128
    }

    #[no_mangle]
    pub unsafe extern "C" fn getFloat() -> f32{
        1.28
    }
}