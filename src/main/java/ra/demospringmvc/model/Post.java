package ra.demospringmvc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Post {
    private Integer id;
    private String author,title,content,imageUrl;
    private Date createdDate;
}
