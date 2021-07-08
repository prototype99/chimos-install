/* vim: set ro : */

/* ******************************************************** */
/* THIS IS A GENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY */
/* ******************************************************** */

        /**
         * The reason an OverriddenMask is overridden.
         *
         * \see OverriddenMask
         * \ingroup g_mask
         */
enum MaskOverrideReason
{
    mro_accepted_unstable,  ///< The package is unstable, but the user accepted that (for example, ~keyword)
    mro_overridden_by_user,  ///< The user overrode the mask (for example, package_unmask.conf)
    last_mro ///< Number of keys in paludis::MaskOverrideReason
};

/**
 * Write a MaskOverrideReason to a stream.
 */
std::ostream &
operator<< (std::ostream &, const MaskOverrideReason &) PALUDIS_VISIBLE;

/**
 * Read a MaskOverrideReason from a stream.
 */
std::istream &
operator>> (std::istream &, MaskOverrideReason &) PALUDIS_VISIBLE;

