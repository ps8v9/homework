-- p. 93: see print1.hs
-- p. 94: see print2.hs
-- p. 95: see print3.hs
-- p. 96: see globalLocal.hs

-- Exercises, pp. 96-97
-- 1. Is y in scope for z?
--    Prelude> let x = 5
--    Prelude> let y = 7
--    Prelude> let z = x * y
--    Answer: yes
-- 2. Is h in scope for function g?
--    Prelude> let f = 3
--    Prelude> let g = 6 * f + h
--    Answer: no
-- 3. In the following source file code, is everything needed to execute area in scope?
--    area d = pi * (r * r)
--    r = d / 2
--    Answer: no
-- 4. In the following source file code, are r and d in scope for area?
area d = pi * (r * r)
  where r = d / 2

-- Continue at section 3.4 on p. 97
