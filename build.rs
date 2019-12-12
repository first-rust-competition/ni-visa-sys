use std::env;

fn main() {
    println!("cargo:rustc-link-lib=dylib=visa");

    let path = env::current_dir().unwrap();
    println!("cargo:rustc-link-search=native={}/lib", path.display());
    println!("cargo:include={}/include", path.display());
}
