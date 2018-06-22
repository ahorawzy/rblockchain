# Define Genesis Block (index 1 and arbitrary previous hash)
block_genesis <-  list(index = 1,
                       timestamp = Sys.time(),
                       data = "Genesis Block",
                       previous_hash = "0",
                       proof = 1)