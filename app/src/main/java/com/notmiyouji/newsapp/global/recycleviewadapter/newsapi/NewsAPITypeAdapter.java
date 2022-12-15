package com.notmiyouji.newsapp.global.recycleviewadapter.newsapi;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;

import com.notmiyouji.newsapp.R;

import java.util.ArrayList;

public class NewsAPITypeAdapter extends RecyclerView.Adapter<NewsAPITypeAdapter.NewsTypeHolder>{

    ArrayList<String> data = newstype();
    AppCompatActivity activity;

    public NewsAPITypeAdapter(AppCompatActivity activity) {
        this.activity = activity;
    }


    @NonNull
    @Override
    public NewsAPITypeAdapter.NewsTypeHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(activity).inflate(R.layout.news_type, parent, false);
        return new NewsTypeHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull NewsAPITypeAdapter.NewsTypeHolder holder, int position) {
        holder.news_type.setText(data.get(position));
    }

    @Override
    public int getItemCount() {
        return data.size();
    }

    public ArrayList<String> newstype() {
        ArrayList<String> data = new ArrayList<>();
        data.add("General");
        data.add("Business");
        data.add("Entertainment");
        data.add("Health");
        data.add("Science");
        data.add("Sports");
        data.add("Technology");
        return data;
    }

    public static class NewsTypeHolder extends RecyclerView.ViewHolder {
        TextView news_type;
        public NewsTypeHolder(@NonNull View itemView) {
            super(itemView);
            news_type = itemView.findViewById(R.id.news_type_text);
        }
    }
}
