package service;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service //얘를 Service 객체로 만들어 줘~
public class SpringSchedulerTest {
   @Scheduled(cron="10 * * * * 5")//초,분,시,일,월,요일(1:일요일) *는 ALL(전부)의 의미이다. 즉, 무슨값이든 상관없다. 
  //@Scheduled(fixedDelay=10000)//끝나고나서부터 10초간격으로 적용 // fixedRate는 무조건 10초마다 수행시키게 한다.(메서드가 길어져 그게 여의치 않을경우는 어쩔 수 없다.)
	public void scheduleRun() {
		Calendar calendar=Calendar.getInstance();
		SimpleDateFormat dateFormat=new SimpleDateFormat(
				                                       "yyyy-MM-dd HH:mm:ss");
		try {
			Thread.sleep(2000); // 슬립이 2초를 먹는다. fixedDelay의 경우 이 시간을 합치게 된다.
		}catch(Exception e) {
			
		}
		System.out.println(new java.util.Date()+"스케줄 실행:"+dateFormat.format(calendar.getTime()));
		
	}
}
