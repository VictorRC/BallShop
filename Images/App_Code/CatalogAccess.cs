/// <summary>
/// Descripción breve de CatalogAccess
/// </summary>
using System;
using System.Data;
using System.Data.Common;
public class CatalogAccess
{
    public CatalogAccess()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static DataTable GetDepartments()
    {    // get a configured DbCommand object    
        DbCommand comm = GenericDataAccess.CreateCommand();    // set the stored procedure name    
        comm.CommandText = "GetDepartments";    // execute the stored procedure and return the results    
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    }