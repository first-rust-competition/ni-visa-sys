pub mod consts;

pub type ViUInt64 = u64;
pub type ViUInt32 = u32;
pub type ViUInt16 = u16;
pub type ViUInt8 = u8;
pub type ViInt64 = i64;
pub type ViInt32 = i32;
pub type ViInt16 = i16;
pub type ViInt8 = i8;
pub type ViByte = u8;

include!("bindings.rs");
