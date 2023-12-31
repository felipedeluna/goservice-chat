package com.soulcode.goserviceapp.repository;

import com.soulcode.goserviceapp.domain.Agendamento;
import com.soulcode.goserviceapp.domain.Prestador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface AgendamentoRepository extends JpaRepository<Agendamento, Long> {

    @Query(value="SELECT a.* FROM agendamentos a JOIN usuarios u ON a.cliente_id = u.id WHERE u.email = ? ORDER BY data", nativeQuery = true)
    List<Agendamento> findByClienteEmail(String email);

    @Query(value = "SELECT a.* FROM agendamentos a JOIN usuarios u ON a.prestador_id = u.id WHERE u.email = ? ORDER BY data", nativeQuery = true)
    List<Agendamento> findByPrestadorEmail(String email);

    @Query(value = "SELECT a.* FROM agendamentos a JOIN usuarios u ON a.prestador_id = u.id WHERE u.email = ? and data BETWEEN ? AND ? ORDER BY data", nativeQuery = true)
    List<Agendamento> findAgendamentoByData(String email, String dataInicial, String dataFinal);

    @Query(value = "SELECT a.* FROM agendamentos a JOIN usuarios u ON a.cliente_id = u.id WHERE u.email = ? and data BETWEEN ? AND ? ORDER BY data", nativeQuery = true)
    List<Agendamento> findAgendamentoClienteByData(String email, String dataInicial, String dataFinal);


    @Query(value = "SELECT a.* FROM agendamentos a JOIN prestador u ON a.cliente_id = u.id WHERE u.email = ? and data BETWEEN ? AND ? ORDER BY data", nativeQuery = true)
    List<Agendamento> findByPrestadorAndData(Prestador prestador, LocalDate data);

    @Query(value = "SELECT status_agendamento, COUNT(*) FROM agendamentos GROUP BY status_agendamento", nativeQuery = true)
    List<Agendamento> contarServicosPorStatus();

}
