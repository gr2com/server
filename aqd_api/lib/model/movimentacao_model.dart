import 'package:aqd_api/aqd_api.dart';
import 'package:aqd_api/model/categoria_model.dart';
import 'package:aqd_api/model/usuario_model.dart';

class MovimentacaoModel extends ManagedObject<_MovimentacaoModel> implements _MovimentacaoModel {}

@Table(name: 'movimentacao')
class _MovimentacaoModel {

  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column()
  DateTime dataMovimentacao;

  @Relate(#movimentacoes)
  UsuarioModel usuario;

  @Relate(#movimentacoes)
  CategoriaModel categoria;

}