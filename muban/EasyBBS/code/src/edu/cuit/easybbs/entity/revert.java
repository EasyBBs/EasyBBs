/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cuit.easybbs.entity;

/**
 *
 * @author 19310_000
 * 存储回复帖子的信息表
 */
public class revert {

    String name;//回帖人的昵称
    String content;//回帖的内容
    String time;//回复的时间
    String reply;//回复的主贴的标识符

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }
}
