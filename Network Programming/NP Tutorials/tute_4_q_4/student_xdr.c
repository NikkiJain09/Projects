/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#include "student.h"

bool_t
xdr_student (XDR *xdrs, student *objp)
{
	register int32_t *buf;

	 if (!xdr_int (xdrs, &objp->enrollment_no))
		 return FALSE;
	 if (!xdr_string (xdrs, &objp->name, 10))
		 return FALSE;
	 if (!xdr_int (xdrs, &objp->age))
		 return FALSE;
	 if (!xdr_string (xdrs, &objp->address, 100))
		 return FALSE;
	 if (!xdr_pointer (xdrs, (char **)&objp->next, sizeof (student), (xdrproc_t) xdr_student))
		 return FALSE;
	return TRUE;
}
