mod tests {
    use dojo_starter::models::tournament::Tournament;

    #[test]
    fn test_tournament_initialization() {
        let tournament = Tournament {
            id: 1_u64,
            name: 12345,
            description: 67890,
            entry_fee: 1000_u256,
            start_timestamp: 1717777777_u64,
            end_timestamp: 1717778888_u64,
            status: 1_u8, // 1-upcoming, 2-active, 3-finished
            max_teams_per_user: 5_u8,
            max_players_per_team: 11_u8,
            budget_limit: 100_000_u32,
        };
        assert(tournament.id == 1_u64, 'id mismatch');
        assert(tournament.name == 12345, 'name mismatch');
        assert(tournament.description == 67890, 'description mismatch');
        assert(tournament.entry_fee == 1000_u256, 'entry_fee mismatch');
        assert(tournament.start_timestamp == 1717777777_u64, 'start_timestamp mismatch');
        assert(tournament.end_timestamp == 1717778888_u64, 'end_timestamp mismatch');
        assert(tournament.status == 1_u8, 'status mismatch');
        assert(tournament.max_teams_per_user == 5_u8, 'max_teams_per_user mismatch');
        assert(tournament.max_players_per_team == 11_u8, 'max_players_per_team mismatch');
        assert(tournament.budget_limit == 100_000_u32, 'budget_limit mismatch');
    }
}