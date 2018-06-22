#A function that takes the previous block and normally some data (in our case the data is a string indicating which block in the chain it is)
gen_new_block <- function(previous_block){
  
  #Proof-of-Work
  new_proof <- proof_of_work(previous_block$proof)
  
  #Create new Block
  new_block <- list(index = previous_block$index + 1,
                    timestamp = Sys.time(),
                    data = paste0("this is block ", previous_block$index +1),
                    previous_hash = previous_block$new_hash,
                    proof = new_proof)
  
  #Hash the new Block
  new_block_hashed <- hash_block(new_block)
  
  return(new_block_hashed)
}