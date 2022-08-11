
#ifndef HAZELCAST_API_H
#define HAZELCAST_API_H

#ifdef HAZELCAST_STATIC_DEFINE
#  define HAZELCAST_API
#  define HAZELCAST_PRIVATE
#else
#  ifndef HAZELCAST_API
#    ifdef hazelcast_cpp_client_EXPORTS
        /* We are building this library */
#      define HAZELCAST_API __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define HAZELCAST_API __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef HAZELCAST_PRIVATE
#    define HAZELCAST_PRIVATE __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef HAZELCAST_DEPRECATED
#  define HAZELCAST_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef HAZELCAST_DEPRECATED_EXPORT
#  define HAZELCAST_DEPRECATED_EXPORT HAZELCAST_API HAZELCAST_DEPRECATED
#endif

#ifndef HAZELCAST_DEPRECATED_NO_EXPORT
#  define HAZELCAST_DEPRECATED_NO_EXPORT HAZELCAST_PRIVATE HAZELCAST_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef HAZELCAST_NO_DEPRECATED
#    define HAZELCAST_NO_DEPRECATED
#  endif
#endif

#endif /* HAZELCAST_API_H */
