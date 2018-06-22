### Simple Proof of Work Alogrithm
proof_of_work <- function(last_proof){
  proof <- last_proof + 1
  
  # Increment the proof number until a number is found that is divisable by 99 and by the proof of the previous block
  while (!(proof %% 99 == 0 & proof %% last_proof == 0 )){
    proof <- proof + 1
  }
  
  return(proof)
}
