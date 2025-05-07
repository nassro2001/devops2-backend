package com.demo.voterapp.controller;

import com.demo.voterapp.entity.Voter;
import com.demo.voterapp.repository.VoterRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/voters")
public class VoterController {
    private final VoterRepository voterRepository;

    public VoterController(VoterRepository voterRepository) {
        this.voterRepository = voterRepository;
    }

    @GetMapping
    public List<Voter> getAllVoters() {
        return voterRepository.findAll();
    }

    @PostMapping
    public ResponseEntity<Voter> createVoter(@RequestBody Voter voter) {
        Voter savedVoter = voterRepository.save(voter);
        return ResponseEntity.ok(savedVoter);
    }


    @PutMapping("/{id}/vote")
    public ResponseEntity<Voter> flagVoterAsVoted(@PathVariable Long id) {
        return voterRepository.findById(id).map(voter -> {
            voter.setHasVoted(true);
            voterRepository.save(voter);
            return ResponseEntity.ok(voter);
        }).orElse(ResponseEntity.notFound().build());
    }
}
