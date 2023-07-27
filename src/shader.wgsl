@group(0)
@binding(0)
var<storage, read_write> v_indices: array<u32>; // this is used as both input and output for convenience

@compute
@workgroup_size(29)
fn main(@builtin(global_invocation_id) global_id: vec3<u32>, @builtin(local_invocation_id) local_id: vec3<u32>) {
    v_indices[global_id.x] = ascii_to_ark_char(v_indices[global_id.x]) * (1u + local_id.x);

    if local_id.x == 28u {
        var counter = 0u;

        for (var i = 0u; i < 29u; i++) {
            if v_indices[global_id.x - 28u + i] == 0u {
                break;
            } else {
                counter += v_indices[global_id.x - 28u + i];
            }
        }
        
        v_indices[global_id.x - 28u] = ark_char_to_ascii(counter % 29u);
    }
}

fn ascii_to_ark_char(char: u32) -> u32 {
    if char == 48u {
        return 0u;
    }
    if char == 49u {
        return 1u;
    }
    if char == 50u {
        return 2u;
    }
    if char == 51u {
        return 3u;
    }
    if char == 52u {
        return 4u;
    }
    if char == 53u {
        return 5u;
    }
    if char == 54u {
        return 6u;
    }
    if char == 55u {
        return 7u;
    }
    if char == 56u {
        return 8u;
    }
    if char == 57u {
        return 9u;
    }
    if char == 98u {
        return 10u;
    }
    if char == 99u {
        return 11u;
    }
    if char == 100u {
        return 12u;
    }
    if char == 102u {
        return 13u;
    }
    if char == 103u {
        return 14u;
    }
    if char == 104u {
        return 15u;
    }
    if char == 106u {
        return 16u;
    }
    if char == 107u {
        return 17u;
    }
    if char == 109u {
        return 18u;
    }
    if char == 110u {
        return 19u;
    }
    if char == 112u {
        return 20u;
    }
    if char == 113u {
        return 21u;
    }
    if char == 114u {
        return 22u;
    }
    if char == 115u {
        return 23u;
    }
    if char == 116u {
        return 24u;
    }
    if char == 118u {
        return 25u;
    }
    if char == 119u {
        return 26u;
    }
    if char == 120u {
        return 27u;
    }
    if char == 122u {
        return 28u;
    }
    
    return 0u;
}

fn ark_char_to_ascii(char: u32) -> u32 {
    if char == 0u {
        return 48u;
    }
    if char == 1u {
        return 49u;
    }
    if char == 2u {
        return 50u;
    }
    if char == 3u {
        return 51u;
    }
    if char == 4u {
        return 52u;
    }
    if char == 5u {
        return 53u;
    }
    if char == 6u {
        return 54u;
    }
    if char == 7u {
        return 55u;
    }
    if char == 8u {
        return 56u;
    }
    if char == 9u {
        return 57u;
    }
    if char == 10u {
        return 98u;
    }
    if char == 11u {
        return 99u;
    }
    if char == 12u {
        return 100u;
    }
    if char == 13u {
        return 102u;
    }
    if char == 14u {
        return 103u;
    }
    if char == 15u {
        return 104u;
    }
    if char == 16u {
        return 106u;
    }
    if char == 17u {
        return 107u;
    }
    if char == 18u {
        return 109u;
    }
    if char == 19u {
        return 110u;
    }
    if char == 20u {
        return 112u;
    }
    if char == 21u {
        return 113u;
    }
    if char == 22u {
        return 114u;
    }
    if char == 23u {
        return 115u;
    }
    if char == 24u {
        return 116u;
    }
    if char == 25u {
        return 118u;
    }
    if char == 26u {
        return 119u;
    }
    if char == 27u {
        return 120u;
    }
    if char == 28u {
        return 122u;
    }
    
    return 0u;
}