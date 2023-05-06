use rand::{Rng, thread_rng};

fn main() {
    let rand_data: [u8; 12] = thread_rng().gen();
    println!("rand_data: {:?}", rand_data);
}

