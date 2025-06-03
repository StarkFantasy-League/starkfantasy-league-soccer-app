#[cfg(test)]
mod tests {
    use super::{Vec2, Vec2Trait, Player};

    #[test]
    fn test_vec_is_zero() {
        assert(Vec2Trait::is_zero(Vec2 { x: 0, y: 0 }), 'not zero');
    }

    #[test]
    fn test_vec_is_equal() {
        let position = Vec2 { x: 420, y: 0 };
        assert(position.is_equal(Vec2 { x: 420, y: 0 }), 'not equal');
    }

    #[test]
    fn test_player_initialization() {
        let player = Player {
            id: 1_u64,
            external_id: 12345,
            name: 67890,
            position: 3_u8,
            real_team: 11111,
            image_url: 22222,
            country: 33333,
            price: 1000_u32,
            status: 1_u8,
            total_points: 0_u32,
        };
        assert(player.id == 1_u64, 'id mismatch');
        assert(player.position == 3_u8, 'position mismatch');
        assert(player.status == 1_u8, 'status mismatch');
        assert(player.total_points == 0_u32, 'points mismatch');
    }
}