package com.cds.academy.model;

import java.util.Comparator;

public class MessageComparator implements Comparator<Message> {
    public int compare(Message s1, Message s2) {
        return Integer.compare(s2.getId(), s1.getId());
    }
}