using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Task7
{
    public class Dbcon
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-MCA5OE5;Initial Catalog=crud;Integrated Security=True");
        public bool UDI(String qry)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            bool check = cmd.ExecuteNonQuery() > 0;
            con.Close();
            return check;

        }
        public DataTable Search (string qry)
        {
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(qry, con);  
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }

        public void OpenCon()
        {
            con.Open();

        }

        public void  CloseCon()
        {
            con.Close();

        }

        public SqlDataReader ConnectionOrientedSearch(string qry)
        {
            SqlCommand cmd = new SqlCommand(qry, con);
            return cmd.ExecuteReader();
        }
    }
}