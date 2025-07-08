#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Tournament {
    id: u64,
    name: felt252,
    description: felt252,
    entry_fee: u256,
    start_timestamp: u64,
    end_timestamp: u64,
    status: u8,
    max_teams_per_user: u8,
    max_players_per_team: u8,
    budget_limit: u32,
}
