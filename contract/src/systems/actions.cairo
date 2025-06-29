// define the interface
#[starknet::interface]
pub trait IActions<T> {
    fn spawn(ref self: T);
    fn move(ref self: T);
}

// dojo decorator
#[dojo::contract]
pub mod actions {
    use super::IActions;
    use starknet::get_caller_address;

    #[abi(embed_v0)]
    impl ActionsImpl of IActions<ContractState> {
        fn spawn(ref self: ContractState) {
            let mut world = self.world_default();
            let player = get_caller_address();
            // TODO
        }

        // Implementation of the move function for the ContractState struct.
        fn move(ref self: ContractState) {
            let mut world = self.world_default();
            let player = get_caller_address();
            // TODO
        }
    }

    #[generate_trait]
    impl InternalImpl of InternalTrait {
        /// Use the default namespace "dojo_starter". This function is handy since the ByteArray
        /// can't be const.
        fn world_default(self: @ContractState) -> dojo::world::WorldStorage {
            self.world(@"dojo_starter")
        }
    }
}
