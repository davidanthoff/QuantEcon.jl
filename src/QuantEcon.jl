__precompile__()

module QuantEcon

import Base: mean, std, var, show, isapprox

# 3rd party
using Distributions
import Distributions: pdf, skewness, BetaBinomial
using DSP: TFFilter, freqz

# useful types
typealias ScalarOrArray{T} Union{T, Array{T}}


export
# arma
    ARMA,
    spectral_density, autocovariance, impulse_response, simulation,

# ecdf
    ECDF,
    ecdf,

# lqcontrol
    LQ,
    update_values!,
    stationary_values!, stationary_values,
    compute_sequence,

# compute_fp
    compute_fixed_point,

# matrix_eqn
    solve_discrete_lyapunov,
    solve_discrete_riccati,

# discrete_rv
    DiscreteRV,
    draw,

# mc_tools
    MarkovChain,
    stationary_distributions,
    simulate, simulate!, simulate_values, simulate_values!,
    simulation, value_simulation,
    period, is_irreducible, is_aperiodic, recurrent_classes,
    communication_classes, n_states,

# gth_solve
    gth_solve,

# markov_approx
    tauchen,
    rouwenhorst,

# lae
    LAE,
    lae_est,

# lqnash
    nnash,

# lss
    LSS,
    simulate,
    replicate,
    moment_sequence,
    stationary_distributions,

# kalman
    Kalman,
    set_state!,
    prior_to_filtered!,
    filtered_to_forecast!,
    update!,
    stationary_values,

# distributions
    BetaBinomial,
    pdf, mean, std, var, skewness,

# estspec
    smooth, periodogram, ar_periodogram,

# util
    meshgrid, gridmake, gridmake!, ckron,

# robustlq
    RBLQ,
    d_operator, b_operator,
    robust_rule, robust_rule_simple,
    F_to_K, K_to_F,
    compute_deterministic_entropy,
    evaluate_F,

# quad
    qnwlege, qnwcheb, qnwsimp, qnwtrap, qnwbeta, qnwgamma, qnwequi, qnwnorm,
    qnwunif, qnwlogn,
    quadrect,
    do_quad,

# quadsums
    var_quadratic_sum,
    m_quadratic_sum,

# random_mc
    random_markov_chain, random_stochastic_matrix, random_discrete_dp,

# ddp
    DiscreteDP, VFI, PFI, MPFI, solve, RQ_sigma,
    evaluate_policy, bellman_operator, compute_greedy,
    bellman_operator!, compute_greedy!, num_states

include("util.jl")
##### includes
include("arma.jl")
include("compute_fp.jl")
include("markov/markov_approx.jl")
include("markov/mc_tools.jl")
include("markov/ddp.jl")
include("markov/random_mc.jl")
include("discrete_rv.jl")
include("ecdf.jl")
include("estspec.jl")
include("kalman.jl")
include("lae.jl")
include("lqcontrol.jl")
include("lqnash.jl")
include("lss.jl")
include("matrix_eqn.jl")
include("robustlq.jl")
include("quad.jl")
include("quadsums.jl")

end # module
