// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hianyzasok.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GethianyzasokCollection on Isar {
  IsarCollection<hianyzasok> get hianyzasoks => this.collection();
}

const HianyzasokSchema = CollectionSchema(
  name: r'hianyzasok',
  id: 5542758639352987519,
  properties: {
    r'datum': PropertySchema(
      id: 0,
      name: r'datum',
      type: IsarType.dateTime,
    ),
    r'igazolte': PropertySchema(
      id: 1,
      name: r'igazolte',
      type: IsarType.bool,
    ),
    r'tantargyid': PropertySchema(
      id: 2,
      name: r'tantargyid',
      type: IsarType.long,
    )
  },
  estimateSize: _hianyzasokEstimateSize,
  serialize: _hianyzasokSerialize,
  deserialize: _hianyzasokDeserialize,
  deserializeProp: _hianyzasokDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _hianyzasokGetId,
  getLinks: _hianyzasokGetLinks,
  attach: _hianyzasokAttach,
  version: '3.1.0+1',
);

int _hianyzasokEstimateSize(
  hianyzasok object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _hianyzasokSerialize(
  hianyzasok object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.datum);
  writer.writeBool(offsets[1], object.igazolte);
  writer.writeLong(offsets[2], object.tantargyid);
}

hianyzasok _hianyzasokDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = hianyzasok();
  object.datum = reader.readDateTime(offsets[0]);
  object.id = id;
  object.igazolte = reader.readBool(offsets[1]);
  object.tantargyid = reader.readLong(offsets[2]);
  return object;
}

P _hianyzasokDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _hianyzasokGetId(hianyzasok object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _hianyzasokGetLinks(hianyzasok object) {
  return [];
}

void _hianyzasokAttach(IsarCollection<dynamic> col, Id id, hianyzasok object) {
  object.id = id;
}

extension hianyzasokQueryWhereSort
    on QueryBuilder<hianyzasok, hianyzasok, QWhere> {
  QueryBuilder<hianyzasok, hianyzasok, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension hianyzasokQueryWhere
    on QueryBuilder<hianyzasok, hianyzasok, QWhereClause> {
  QueryBuilder<hianyzasok, hianyzasok, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension hianyzasokQueryFilter
    on QueryBuilder<hianyzasok, hianyzasok, QFilterCondition> {
  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> datumEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datum',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> datumGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'datum',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> datumLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'datum',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> datumBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'datum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> igazolteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'igazolte',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> tantargyidEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tantargyid',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition>
      tantargyidGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tantargyid',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition>
      tantargyidLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tantargyid',
        value: value,
      ));
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterFilterCondition> tantargyidBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tantargyid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension hianyzasokQueryObject
    on QueryBuilder<hianyzasok, hianyzasok, QFilterCondition> {}

extension hianyzasokQueryLinks
    on QueryBuilder<hianyzasok, hianyzasok, QFilterCondition> {}

extension hianyzasokQuerySortBy
    on QueryBuilder<hianyzasok, hianyzasok, QSortBy> {
  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> sortByDatum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> sortByDatumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.desc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> sortByIgazolte() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igazolte', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> sortByIgazolteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igazolte', Sort.desc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> sortByTantargyid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> sortByTantargyidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.desc);
    });
  }
}

extension hianyzasokQuerySortThenBy
    on QueryBuilder<hianyzasok, hianyzasok, QSortThenBy> {
  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByDatum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByDatumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.desc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByIgazolte() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igazolte', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByIgazolteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igazolte', Sort.desc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByTantargyid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.asc);
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QAfterSortBy> thenByTantargyidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.desc);
    });
  }
}

extension hianyzasokQueryWhereDistinct
    on QueryBuilder<hianyzasok, hianyzasok, QDistinct> {
  QueryBuilder<hianyzasok, hianyzasok, QDistinct> distinctByDatum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'datum');
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QDistinct> distinctByIgazolte() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'igazolte');
    });
  }

  QueryBuilder<hianyzasok, hianyzasok, QDistinct> distinctByTantargyid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tantargyid');
    });
  }
}

extension hianyzasokQueryProperty
    on QueryBuilder<hianyzasok, hianyzasok, QQueryProperty> {
  QueryBuilder<hianyzasok, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<hianyzasok, DateTime, QQueryOperations> datumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'datum');
    });
  }

  QueryBuilder<hianyzasok, bool, QQueryOperations> igazolteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'igazolte');
    });
  }

  QueryBuilder<hianyzasok, int, QQueryOperations> tantargyidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tantargyid');
    });
  }
}
