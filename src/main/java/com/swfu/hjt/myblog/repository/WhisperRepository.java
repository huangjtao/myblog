package com.swfu.hjt.myblog.repository;

import com.swfu.hjt.myblog.entity.Whisper;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WhisperRepository extends JpaRepository<Whisper,Integer> {
}
