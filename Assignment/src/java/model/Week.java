
package model;

import java.time.LocalDate;
import java.util.Calendar;

/**
 *
 * @author Giang Dong PC
 */
public class Week {
    int weekNum;
    LocalDate start;
    LocalDate end;

    public int getWeekNum() {
        return weekNum;
    }

    public void setWeekNum(int weekNum) {
        this.weekNum = weekNum;
    }

    public LocalDate getStart() {
        return start;
    }

    public void setStart(LocalDate start) {
        this.start = start;
    }

    public LocalDate getEnd() {
        return end;
    }

    public void setEnd(LocalDate end) {
        this.end = end;
    }

    
}
