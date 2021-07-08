/* vim: set ro : */

/* ******************************************************** */
/* THIS IS A GENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY */
/* ******************************************************** */

        /**
        * The type of file.
         *
         * \see Merger
         * \ingroup g_repository
         */
enum EntryType
{
    et_nothing,  ///< Does not exist
    et_file,  ///< A regular file
    et_dir,  ///< A directory
    et_sym,  ///< A symlink
    et_misc,  ///< Something else
    last_et ///< Number of keys in paludis::EntryType
};

/**
 * Write a EntryType to a stream.
 */
std::ostream &
operator<< (std::ostream &, const EntryType &) PALUDIS_VISIBLE;
