package kz.bitlab.db;

import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Tasks> tasks=new ArrayList<>();
    private static Long id=6L;

    static {
        tasks.add(new Tasks(1L, "Task 1", "Description for task 1", "2023-05-01","Yes"));
        tasks.add(new Tasks(2L, "Task 2", "Description for task 2", "2023-05-05","No"));
        tasks.add(new Tasks(3L, "Task 3", "Description for task 3", "2023-05-10","No"));
        tasks.add(new Tasks(4L, "Task 4", "Description for task 4", "2023-05-15","Yes"));
        tasks.add(new Tasks(5L, "Task 5", "Description for task 5", "2023-05-20","Yes"));
    }

    public static void addTask(Tasks task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Tasks getTask(Long id){
        if(tasks != null) {
            for (Tasks task : tasks) {
                if (task.getId() == id) {
                    return task;
                }
            }
        }
        return null;
    }

    public static ArrayList<Tasks> getAllTasks(){
        return tasks;
    }

    public static void updateTask(Tasks task){
        for(int i=0;i<tasks.size();i++){
            if(tasks.get(i).getId()==task.getId()){
                tasks.set(i,task);
                break;
            }
        }
    }
    public static void deleteTask(Long id){
        for(int i=0;i< tasks.size();i++){
            if(tasks.get(i).getId()==id){
                tasks.remove(i);
                break;
            }
        }
    }
}
