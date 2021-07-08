/* vim: set ro : */

/* ******************************************************** */
/* THIS IS A GENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY */
/* ******************************************************** */

        /**
         * Type of message for OutputManager.
         *
         * \see OutputManager
         */
enum MessageType
{
    mt_debug,  ///< A message only to be kept when debugging
    mt_info,  ///< An informational message
    mt_warn,  ///< A warning message
    mt_error,  ///< An error message
    mt_log,  ///< A message explicitly marked for logging
    mt_status,  ///< A status message, such as starting a new build phase
    last_mt ///< Number of keys in paludis::MessageType
};

/**
 * Write a MessageType to a stream.
 */
std::ostream &
operator<< (std::ostream &, const MessageType &) PALUDIS_VISIBLE;

/**
 * Read a MessageType from a stream.
 */
std::istream &
operator>> (std::istream &, MessageType &) PALUDIS_VISIBLE;
