using System;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for GenericDataAccess
/// </summary>
public static class GenericDataAccess
{
	static GenericDataAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    /// <summary>execute a select command against the database</summary>
    /// <param name="command">a DbCommand object</param>
    /// <returns>returns a data table of results</returns>
    public static DataTable ExecuteSelectCommand(DbCommand command)
    { 
        //the DataTable to be returned
        DataTable table = null;

        //execute the command, making sure the connection gets closed in the end
        try
        {
            //open the data connection
            if(command.Connection.State != ConnectionState.Open)
                command.Connection.Open();

            //execute the command and save the results to in the DataTable
            DbDataReader reader = command.ExecuteReader();
            table = new DataTable();
            table.Load(reader);

            //close the reader
            reader.Close();
        }
        catch (Exception ex)
        {
            //Utilities.LogError(ex);
            //throw;
        }
        finally
        { 
            //close connection
            command.Connection.Close();
        }

        return (table);
    }

    /// <summary></summary>
    /// <param name="command">a DbCommand object</param>
    /// <returns>returns an integer representing the value of the leftmost column of the row affected</returns>
    public static int ExecuteScalarCommand_Int(DbCommand command)
    {
        //the value of the leftmost column of the result set on SELECT or the number of rows affected otherwise
        int value = 0; 

        //execute the command, making sure the connection gets closed in the end
        try
        {
            //open the data connection
            if(command.Connection.State != ConnectionState.Open)
                command.Connection.Open();
            value = Convert.ToInt32(command.ExecuteScalar());
            
        }
        catch (Exception ex)
        {
            //Utilities.LogError(ex);
            //throw;
        }
        finally
        {
            //close connection
            command.Connection.Close();
        }
      
        return (value);
    }

    /// <summary></summary>
    /// <param name="command">a DbCommand object</param>
    /// <returns>returns an string representing the value of the leftmost column of the row affected</returns>
    public static DateTime ExecuteScalarCommand_Date(DbCommand command)
    {
        //the value of the leftmost column of the result set on SELECT or the number of rows affected otherwise
        DateTime value = DateTime.Now;

        //execute the command, making sure the connection gets closed in the end
        try
        {
            //open the data connection
            if (command.Connection.State != ConnectionState.Open)
                command.Connection.Open();
            value = (DateTime)(command.ExecuteScalar());

        }
        catch (Exception ex)
        {
            //Utilities.LogError(ex);
            //throw;
        }
        finally
        {
            //close connection
            command.Connection.Close();
        }

        return (value);
    }

    /// <summary></summary>
    /// <param name="command">a DbCommand object</param>
    /// <returns>returns an string representing the value of the leftmost column of the row affected</returns>
    public static string ExecuteScalarCommand_String(DbCommand command)
    {
        //the value of the leftmost column of the result set on SELECT or the number of rows affected otherwise
        string value = "";

        //execute the command, making sure the connection gets closed in the end
        try
        {
            //open the data connection
            if(command.Connection.State != ConnectionState.Open)
                command.Connection.Open();
            value = command.ExecuteScalar().ToString();

        }
        catch (Exception ex)
        {
            //Utilities.LogError(ex);
            //throw;
        }
        finally
        {
            //close connection
            command.Connection.Close();
        }

        return (value);
    }

    /// <summary>execute an insert, update, or delete command</summary>
    /// <param name="command">a DbCommand object</param>
    /// <returns>returns an Int64 representing the number of rows affected</returns>
    public static Int64 ExecuteNonQuery_Int64(DbCommand command, bool ReuseConnection)
    { 
        //the number of rows affected
        Int64 affectedRows = -1;

        //execute the command making sure the connection gets closed in the end
        try
        { 
            //open the connection of the command
            if(command.Connection.State != ConnectionState.Open)
                command.Connection.Open();

            //execute the command and get the number of rows affected
            affectedRows = Convert.ToInt64(command.ExecuteNonQuery());
        }
        catch(Exception ex)
        { 
            //code goes here for error handling
            //Utilities.LogError(ex);
           //throw;
        }
        finally
        {
            if (!ReuseConnection)
            {
                command.Connection.Close();
            }
        }

        return (affectedRows);
    }

    /// <summary>execute an insert, update, or delete command</summary>
    /// <param name="command">a DbCommand object</param>
    /// <returns>returns an Int32 representing the number of rows affected</returns>
    public static Int32 ExecuteNonQuery_Int32(DbCommand command, bool ReuseConnection)
    {
        //the number of rows affected
        int affectedRows = -1;

        //execute the command making sure the connection gets closed in the end
        try
        {
            //open the connection of the command
            if(command.Connection.State != ConnectionState.Open)
                command.Connection.Open();
            //execute the command and get the number of rows affected
            affectedRows = command.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            //code goes here for error handling
            //Utilities.LogError(ex);
            //throw;
        }
        finally
        {
            if (!ReuseConnection)
            {
                command.Connection.Close();
            }
        }

        return (affectedRows);
    }

    public static DbCommand CreateCommand()
    { 
        //obtain the database provider name
        string dataProviderName = WebConfig.DbProviderName;

        //obtain the database connection string
        string connectionString = WebConfig.DbConnString;

        //create a new data provider factory
        DbProviderFactory factory = DbProviderFactories.GetFactory(dataProviderName);

        //obtain database-specific connection object
        DbConnection conn = factory.CreateConnection();

        //set the connection string
        conn.ConnectionString = connectionString;

        //create a database-specific command
        DbCommand cmd = factory.CreateCommand();

        //set the command type to stored procedure
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        
        //return initialized command object
        return (cmd);
    }
}
