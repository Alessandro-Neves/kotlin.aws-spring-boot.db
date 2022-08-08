package com.ale.awsspringdocker.models.v1

import jakarta.persistence.*
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.UserDetails

@Entity
@Table(name = "users")
class User: UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long = 0

    @Column(name = "user_name" ,length = 255, unique = true)
    var userName: String? = null

    @Column(name = "full_name", length = 255)
    var fullName: String? = null

    @Column(length = 255)
    private var password: String? = null

    @Column(name = "account_non_expired")
    var accountNonExpired: Boolean? = null

    @Column(name = "account_non_locked")
    var accountNonLocked: Boolean? = null

    @Column(name = "credentials_non_expired")
    var credentialsNonExpired: Boolean? = null

    @Column
    var enabled: Boolean? = null

    @ManyToMany(fetch = FetchType.EAGER)

    // Mapeia a tabela user_permission
    @JoinTable(
        name = "user_permission",
        joinColumns = [JoinColumn(name = "id_user")],
        inverseJoinColumns = [JoinColumn(name = "id_permission")]
    )
    var permissions: List<Permission>? = null

    val role: List<String?>
        get(){
            val roles: MutableList<String?> = ArrayList()
            for (permission in permissions!!){
                roles.add(permission.description)
            }
            return roles
        }

    // Implentações da interface UserDetails
    override fun getAuthorities(): Collection<GrantedAuthority> = permissions!!
    override fun getPassword(): String = password!!
    override fun getUsername(): String = userName!!
    override fun isAccountNonExpired(): Boolean = accountNonExpired!!
    override fun isAccountNonLocked(): Boolean = accountNonLocked!!
    override fun isCredentialsNonExpired(): Boolean = credentialsNonExpired!!
    override fun isEnabled(): Boolean = enabled!!

}