

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SchedulerFactory sf = new StdSchedulerFactory();
		Scheduler scheduler = sf.getScheduler();
		JobDetail job = JobBuilder.class()
								.withIdentity("myjob", "group1")
								.build();
		Trigger trigger = TriggerBuilder.newTrigger()
								.withIdentity("mytrigger", "group1")
								.startNow()
								.withSchedule(SimpleScheduleBuilder.simpleSchedule()
												.withIntervalInSeconds(3)
												.repeatForever())
								.build();
		scheduler.scheduleJob(job, trigger);
		scheduler.start();
		Thread.sleep(20_000);    // main-thread가 20초를 기다림.
		scheduler.shutdown();
	
	}

	

}
