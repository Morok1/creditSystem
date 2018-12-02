import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@SuppressWarnings("PMD")
@Entity
@ToString
public class NaturalPerson {
    @Id
    @Getter
    @Setter
    @GeneratedValue
    @Column(name = "id", nullable=false, updatable = false)
    private Long id;


    @Getter
    @Setter
    @Column(nullable = false, updatable = false)
    private String lastName;


    @Getter
    @Setter
    @Column(nullable = false, updatable = false)
    private String firstName;

    @Getter
    @Setter
    @Column(nullable = false, updatable = false)
    private String middleName;
}
