package service;

import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class ScrapingScheduler {
    @Scheduled(fixedDelay=300000) //5분에 한번 수행
	public void scheduleRun() {
		Calendar calendar=Calendar.getInstance();
		SimpleDateFormat dateFormat=new SimpleDateFormat(
				                                       "yyyy-MM-dd");
		try {
			RConnection rc = new RConnection();
			FileWriter fw = new FileWriter("C:/hardy/daumnews_schedule.csv",true); //true 일때 이어 쓰기
			REXP x = rc.eval("imsi<-source('C:/hardy/Rstudy/JavaConnectNews.R'); imsi$value");
							
			RList list = x.asList();
			System.out.println(list);
			for (int row = 0; row <= 4; row++ ) {
			String newstitle = list.at("newstitle").asStrings()[row];
			System.out.println(newstitle);
			String newspapername = list.at("newspapername").asStrings()[row];
			System.out.println(newspapername);
		
			System.out.println(newstitle +","+ newspapername +"," +dateFormat.format(calendar.getTime()));
			fw.write(newstitle +","+ newspapername +"," +dateFormat.format(calendar.getTime())+"\n");
			}
			rc.close();
			fw.close();
		}catch(Exception e) {
			System.out.println("오류 발생");
			e.printStackTrace();
		}
	}
}
