import mynat.definition -- hide
import mynat.add -- definition of addition
namespace mynat -- hide

/-
## Tutorial world, level 5: addition

We have a new import -- the definition of addition.

Peano defined addition `a + b` by induction on `b`, or,
more preisely, by *recursion* on `b`. The base case is this:

* `add_zero : ∀ a : mynat, a + 0 = a`

We will call this theorem `add_zero`. **Remember the name of this theorem**.
Mathematicians sometimes call it "Lemma 2.1" or "Hypothesis P6" or something. But
computer scientists call it `add_zero` because it tells you
what the answer to "a add zero" is. It's a *much* better name than "Lemma 2.1".
If you ever see `x + 0` in your goal, `rw add_zero,` should simplify it to `x`.

The inductive step is this:

* `add_succ : ∀ a d : mynat, a + succ(d) = succ (a + d)`

What's going on here is that we assume `a + d` is already
defined, and we define `a + succ(d)` to be the number after it.
Remember the name of this theorem too -- `add_succ` tells you
how to add a successor to something. If you ever see `... + succ ...`
in your goal, you should be able to use `rw add_succ,` to make
progress. Here is a simple example where we shall see both.

Delete `sorry`. Observe that the goal mentions `... + succ ...`. So type

`rw add_succ,`

and hit enter; see the goal change. **Don't forget the commma**.
Do you see that the goal now mentions ` ... + 0 ...`? So type

`rw add_zero,`. Now close the goal with

`refl,`

and you're done. You might want to review this proof now; at
three lines long it is our current record. Move your cursor
around the various lines of the proof, and you can see what
Lean is thinking on each line of the proof. The goal changes
just before each comma. That's why commas are important.

FAQ. Question: why has the top left hand box gone blank?
Answer: Lean thinks you're in the middle of writing a tactic.
Did you perhaps forget a comma?

When you're happy, let's step into world 2, addition world, and
learn about proof by induction.
-/

/- Theorem
For all natural numbers `a`, we have `a + succ(0) = succ(a)`.
-/
theorem example4 (a : mynat) : a + succ(0) = succ(a) :=
begin [less_leaky]
  rw add_succ,
  rw add_zero,
  refl,




  
end

end mynat