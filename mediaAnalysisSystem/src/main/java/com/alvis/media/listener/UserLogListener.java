package com.alvis.media.listener;

import com.alvis.media.event.UserEvent;
import com.alvis.media.service.UserEventLogService;
import lombok.AllArgsConstructor;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class UserLogListener implements ApplicationListener<UserEvent> {

    private UserEventLogService userEventLogService;

    @Override
    public void onApplicationEvent(UserEvent userEvent) {
        userEventLogService.insertByFilter(userEvent.getUserEventLog());
    }

}
