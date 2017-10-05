package com.healthesystems.gateway.security;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
public class CustomUserDetailsService extends JdbcDaoImpl {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomUserDetailsService.class);
	
	
	public CustomUserDetailsService(DataSource dataSource) {
        this.setDataSource(dataSource);
	}

	@Override
	@Value("select * from users where user_name = ?")
	public void setUsersByUsernameQuery(String usersByUsernameQueryString) {
		super.setUsersByUsernameQuery(usersByUsernameQueryString);
	}

	@Override
	@Value(" "
			+ " DECLARE @username varchar(100) = ? "
			+ " SELECT u.user_name as user_name,  r.Role_name role_name"
            + "    FROM Role r "
            + "    INNER JOIN User_Role ur ON ur.Role_ID = r.Role_ID "
            + "    INNER JOIN [Customer].[dbo].[Users] u ON u.User_ID = ur.User_ID "
            + "    WHERE u.user_name = @username " 
            + "    UNION "
            + " SELECT u.user_name AS user_name, uc.User_Category_Code AS role_name "
            + "    FROM [Customer].[dbo].[User_Category] uc "
            + "    INNER JOIN [Customer].[dbo].[Users_By_User_Category] ubuc ON ubuc.User_Category_ID = uc.User_Category_ID "
            + "    INNER JOIN [Customer].[dbo].[Users] u ON u.User_ID = ubuc.User_ID "
            + "    WHERE u.user_name = @username "  
    )
	public void setAuthoritiesByUsernameQuery(String queryString) {
		super.setAuthoritiesByUsernameQuery(queryString);
	}

	@Override
	public List<UserDetails> loadUsersByUsername(String username) {
	  return getJdbcTemplate().query(super.getUsersByUsernameQuery(), new String[] { username },
		new RowMapper<UserDetails>() {
		  public UserDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
			String username = rs.getString("user_name");
			String password = rs.getString("user_pass");
			boolean enabled = true; //rs.getBoolean("enabled");
			boolean accountNonExpired = true; // rs.getBoolean("accountNonExpired");
			boolean credentialsNonExpired = true; // rs.getBoolean("credentialsNonExpired");
			boolean accountNonLocked = true; //rs.getBoolean("accountNonLocked");

			return new User(username, password, enabled, accountNonExpired, credentialsNonExpired,
				accountNonLocked, AuthorityUtils.NO_AUTHORITIES);
		  }

	  });
	}
	

	//override to pass accountNonLocked
		@Override
		public UserDetails createUserDetails(String username, UserDetails userFromUserQuery,
				List<GrantedAuthority> combinedAuthorities) {
			String returnUsername = userFromUserQuery.getUsername();

	
			
			if (super.isUsernameBasedPrimaryKey()) {
			  returnUsername = username;
			}

			
			return new User(returnUsername, userFromUserQuery.getPassword(),
	                       userFromUserQuery.isEnabled(),
			       userFromUserQuery.isAccountNonExpired(),
	                       userFromUserQuery.isCredentialsNonExpired(),
				userFromUserQuery.isAccountNonLocked(), combinedAuthorities);
		}
}
