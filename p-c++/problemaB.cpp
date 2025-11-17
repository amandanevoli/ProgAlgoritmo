#include <iostream>
#include <vector>
#include <queue>
#include <unordered_map>
#include <algorithm>

using namespace std;

struct Disciplina{
    string nome;
    int prioridade;
    vector<string>pre_requisitos;
};

class SistemaDeDisciplinas{
private:
    unordered_map<string, Disciplina> disciplinas;
    int maxDisciplinasPorSemestre;

public:
    SistemaDeDisciplinas(int maxDisciplinas):maxDisciplinasPorSemestre(maxDisciplinas){}

    void adicionarDisciplina(const string& nome, int prioridade, const vector<string>& pre_requisitos){
        disciplinas[nome]={nome, prioridade, pre_requisitos};
    }

    vector<string> sugerirDisciplinas(){
        vector<string> disciplinasDisponiveis;
        unordered_map<string, bool> cursadas;
        queue<string> fila;

        for (const auto& [nome, disciplina] : disciplinas){
            if (disciplina.pre_requisitos.empty()){
                fila.push(nome);
            }
        }

        while (!fila.empty()){
            string nome = fila.front();
            fila.pop();
            disciplinasDisponiveis.push_back(nome);
            cursadas[nome] = true;

            for (auto& [nomeDisciplina, disciplina] : disciplinas){
                if (!cursadas[nomeDisciplina]){
                    bool podeCursar = true;
                    for (const string& pre : disciplina.pre_requisitos){
                        if (!cursadas[pre]){
                            podeCursar = false;
                            break;
                        }
                    }
                    if (podeCursar){
                        fila.push(nomeDisciplina);
                    }
                }
            }
        }

        sort(disciplinasDisponiveis.begin(), disciplinasDisponiveis.end(), 
             [this](const string& a, const string& b){
                 return disciplinas[a].prioridade > disciplinas[b].prioridade;
             });

        if (disciplinasDisponiveis.size() > maxDisciplinasPorSemestre){
            disciplinasDisponiveis.resize(maxDisciplinasPorSemestre);
        }

        return disciplinasDisponiveis;
    }

    int calcularSemestres(){
        int semestres = 0;
        while (!disciplinas.empty()){
            vector<string> disciplinasSugeridas = sugerirDisciplinas();
            if (disciplinasSugeridas.empty()){
                break;
            }
            cout << "Semestre " << ++semestres << ": ";
            for (const string& d : disciplinasSugeridas){
                cout << d << " ";
                disciplinas.erase(d);
            }
            cout << endl;
        }
        return semestres;
    }
};

int main(){
    SistemaDeDisciplinas sistema(5);

    sistema.adicionarDisciplina("Matematica", 10, {});
    sistema.adicionarDisciplina("Fisica", 9, {"Matematica"});
    sistema.adicionarDisciplina("Quimica", 8, {"Matematica"});
    sistema.adicionarDisciplina("Programacao", 7, {});
    sistema.adicionarDisciplina("Estruturas de Dados", 6, {"Programacao"});
    sistema.adicionarDisciplina("Algoritmos", 5, {"Estruturas de Dados"});
    sistema.adicionarDisciplina("Banco de Dados", 4, {"Programacao"});
    sistema.adicionarDisciplina("Redes", 3, {"Banco de Dados"});
    sistema.adicionarDisciplina("Sistemas Operacionais", 2, {"Programacao"});
    sistema.adicionarDisciplina("Inteligencia Artificial", 1, {"Algoritmos"});

    int totalSemestres = sistema.calcularSemestres();
    cout << "Total de semestres necessários: " << totalSemestres << endl;

    return 0;
}

