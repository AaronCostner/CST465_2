using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CST465_AC_Lab_2
{
    public class UserProfileRepo
    {
        public static UserProfileBO getUserProfile(Guid id_passed)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UserProfile_Get";
            UserProfileBO ret_user = new UserProfileBO();

            command.Parameters.Add(new SqlParameter("@UserId", id_passed));
            try
            {
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    ret_user.UserID = (Guid)reader[0];
                    ret_user.firstName = (string)reader[1];
                    ret_user.lastName = (string)reader[2];
                    ret_user.age = reader[3].ToString();
                    ret_user.phoneNumber = (string)reader[4];
                    ret_user.emailAddress = (string)reader[5];
                    ret_user.streetAddress = (string)reader[6];
                    ret_user.city = (string)reader[7];
                    ret_user.state = (string)reader[8];
                    ret_user.zipCode = (string)reader[9];

                    if (reader[10] != System.DBNull.Value)
                    {
                        ret_user.profileImage = (byte[])reader[10];
                    }
                    else
                    {
                        ret_user.profileImage = null;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }



            return ret_user;
        }

        public static void saveUserProfile(UserProfileBO user)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UserProfile_InsertUpdate";

            command.Parameters.Add(new SqlParameter("@UserId", user.UserID));
            command.Parameters.Add(new SqlParameter("@FirstName", user.firstName));
            command.Parameters.Add(new SqlParameter("@LastName", user.lastName));
            command.Parameters.Add(new SqlParameter("@Age", user.age));
            command.Parameters.Add(new SqlParameter("@PhoneNumber", user.phoneNumber));
            command.Parameters.Add(new SqlParameter("@EmailAddress", user.emailAddress));
            command.Parameters.Add(new SqlParameter("@StreetAddress", user.streetAddress));
            command.Parameters.Add(new SqlParameter("@City", user.city));
            command.Parameters.Add(new SqlParameter("@State", user.state));
            command.Parameters.Add(new SqlParameter("@ZipCode", user.zipCode));
            command.Parameters.Add(new SqlParameter("@ProfileImage", user.profileImage));

            try
            {
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }

        }
    }
}