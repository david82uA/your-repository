// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jegyek.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetjegyekCollection on Isar {
  IsarCollection<jegyek> get jegyeks => this.collection();
}

const JegyekSchema = CollectionSchema(
  name: r'jegyek',
  id: -8693168583137283925,
  properties: {
    r'datum': PropertySchema(
      id: 0,
      name: r'datum',
      type: IsarType.dateTime,
    ),
    r'jegy': PropertySchema(
      id: 1,
      name: r'jegy',
      type: IsarType.long,
    ),
    r'tantargyid': PropertySchema(
      id: 2,
      name: r'tantargyid',
      type: IsarType.long,
    )
  },
  estimateSize: _jegyekEstimateSize,
  serialize: _jegyekSerialize,
  deserialize: _jegyekDeserialize,
  deserializeProp: _jegyekDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _jegyekGetId,
  getLinks: _jegyekGetLinks,
  attach: _jegyekAttach,
  version: '3.1.0+1',
);

int _jegyekEstimateSize(
  jegyek object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _jegyekSerialize(
  jegyek object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.datum);
  writer.writeLong(offsets[1], object.jegy);
  writer.writeLong(offsets[2], object.tantargyid);
}

jegyek _jegyekDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = jegyek();
  object.datum = reader.readDateTime(offsets[0]);
  object.id = id;
  object.jegy = reader.readLong(offsets[1]);
  object.tantargyid = reader.readLong(offsets[2]);
  return object;
}

P _jegyekDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jegyekGetId(jegyek object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jegyekGetLinks(jegyek object) {
  return [];
}

void _jegyekAttach(IsarCollection<dynamic> col, Id id, jegyek object) {
  object.id = id;
}

extension jegyekQueryWhereSort on QueryBuilder<jegyek, jegyek, QWhere> {
  QueryBuilder<jegyek, jegyek, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension jegyekQueryWhere on QueryBuilder<jegyek, jegyek, QWhereClause> {
  QueryBuilder<jegyek, jegyek, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<jegyek, jegyek, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterWhereClause> idBetween(
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

extension jegyekQueryFilter on QueryBuilder<jegyek, jegyek, QFilterCondition> {
  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> datumEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datum',
        value: value,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> datumGreaterThan(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> datumLessThan(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> datumBetween(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> idBetween(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> jegyEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jegy',
        value: value,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> jegyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jegy',
        value: value,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> jegyLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jegy',
        value: value,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> jegyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jegy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> tantargyidEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tantargyid',
        value: value,
      ));
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> tantargyidGreaterThan(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> tantargyidLessThan(
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

  QueryBuilder<jegyek, jegyek, QAfterFilterCondition> tantargyidBetween(
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

extension jegyekQueryObject on QueryBuilder<jegyek, jegyek, QFilterCondition> {}

extension jegyekQueryLinks on QueryBuilder<jegyek, jegyek, QFilterCondition> {}

extension jegyekQuerySortBy on QueryBuilder<jegyek, jegyek, QSortBy> {
  QueryBuilder<jegyek, jegyek, QAfterSortBy> sortByDatum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> sortByDatumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.desc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> sortByJegy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jegy', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> sortByJegyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jegy', Sort.desc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> sortByTantargyid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> sortByTantargyidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.desc);
    });
  }
}

extension jegyekQuerySortThenBy on QueryBuilder<jegyek, jegyek, QSortThenBy> {
  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByDatum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByDatumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datum', Sort.desc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByJegy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jegy', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByJegyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jegy', Sort.desc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByTantargyid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.asc);
    });
  }

  QueryBuilder<jegyek, jegyek, QAfterSortBy> thenByTantargyidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargyid', Sort.desc);
    });
  }
}

extension jegyekQueryWhereDistinct on QueryBuilder<jegyek, jegyek, QDistinct> {
  QueryBuilder<jegyek, jegyek, QDistinct> distinctByDatum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'datum');
    });
  }

  QueryBuilder<jegyek, jegyek, QDistinct> distinctByJegy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jegy');
    });
  }

  QueryBuilder<jegyek, jegyek, QDistinct> distinctByTantargyid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tantargyid');
    });
  }
}

extension jegyekQueryProperty on QueryBuilder<jegyek, jegyek, QQueryProperty> {
  QueryBuilder<jegyek, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<jegyek, DateTime, QQueryOperations> datumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'datum');
    });
  }

  QueryBuilder<jegyek, int, QQueryOperations> jegyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jegy');
    });
  }

  QueryBuilder<jegyek, int, QQueryOperations> tantargyidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tantargyid');
    });
  }
}
