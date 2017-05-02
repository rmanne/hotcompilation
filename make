\begin{mathpar}
  % This is not the right thing to do, we would rather search Basis for the
  % Match exn, but we just wanna get through it right now, so we ignore it
  \inferrule{
    \Gammaec \rtri \exp \tto e \of \tau \\
    %\Gammaec \rtri \texttt{General.Match}@\VAL{} \tto M \of \sigma \\
    \Gamma, x \of \tau, y \of \exn \vd M_\ec \of \sigma_\ec \rtri
      \matchwith~x \of \tau~\ow~y \tto e' \of t'
  }{
    \Gammaec \rtri \casen{\exp}{\matchn} \tto
      \letbind{x}{e}{\letbind{y}{\tagn{\newtag{\times[]}}{\pair{}}}{e' \of \t'}}
  }

  \inferrule{
    \Gammaec \rtri \exp \tto e \of \tau \\
    \Gamma, x \of \exn \vd M_\ec \of \sigma_\ec \rtri
      \matchwith~x \of \exn~\ow~x \tto e' \of \tau' \\
    \Gamma \vd \tau \equiv \tau' \of \type
  }{
    \Gammaec \rtri \expn~\handle~\matchn \tto \handle(e, \bind{x}{e'}) \of \tau
  }

  \inferrule{
  }{
    \Gammaec \rtri \pat \Rightarrow \exp | \matchwith~e \of \tau \ow e_\fail \tto
  }
\end{mathpar}
