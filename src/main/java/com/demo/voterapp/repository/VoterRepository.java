package com.demo.voterapp.repository;

import com.demo.voterapp.entity.Voter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VoterRepository extends JpaRepository<Voter, Long> {}
