/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#ifndef _STUDENT_H_RPCGEN
#define _STUDENT_H_RPCGEN

#include <rpc/rpc.h>


#ifdef __cplusplus
extern "C" {
#endif


struct student {
	int enrollment_no;
	char *name;
	int age;
	char *address;
};
typedef struct student student;

/* the xdr functions */

#if defined(__STDC__) || defined(__cplusplus)
extern  bool_t xdr_student (XDR *, student*);

#else /* K&R C */
extern bool_t xdr_student ();

#endif /* K&R C */

#ifdef __cplusplus
}
#endif

#endif /* !_STUDENT_H_RPCGEN */