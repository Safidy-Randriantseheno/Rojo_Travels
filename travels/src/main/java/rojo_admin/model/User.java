package rojo_admin.model;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.Hibernate;
import org.hibernate.annotations.Type;
import java.time.Instant;
import java.time.LocalDate;
import java.util.Objects;

import static jakarta.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "\"user\"")
@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private String id;

    private String firstName;

    private String lastName;

    private String email;

    private String ref;

    @Enumerated(EnumType.STRING)
    private Status status;

    private String phone;

    private LocalDate birthDate;

    private Instant entranceDatetime;

    @Enumerated(EnumType.STRING)
    private Sex sex;

    private String address;

    @Column(name = "\"role\"")
    @Enumerated(EnumType.STRING)
    private Role role;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) {
            return false;
        }
        User user = (User) o;
        return id != null && Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }

    public enum Sex {
        M, F
    }

    public enum Status {
        ENABLED, DISABLED
    }

    public enum Role {
        ClIENT, CHAUFFEUR, MANAGER
    }
}
