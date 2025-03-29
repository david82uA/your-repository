// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GettantargyakCollection on Isar {
  IsarCollection<tantargyak> get tantargyaks => this.collection();
}

const TantargyakSchema = CollectionSchema(
  name: r'tantargyak',
  id: 4021569036979464943,
  properties: {
    r'tantargynev': PropertySchema(
      id: 0,
      name: r'tantargynev',
      type: IsarType.string,
    )
  },
  estimateSize: _tantargyakEstimateSize,
  serialize: _tantargyakSerialize,
  deserialize: _tantargyakDeserialize,
  deserializeProp: _tantargyakDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tantargyakGetId,
  getLinks: _tantargyakGetLinks,
  attach: _tantargyakAttach,
  version: '3.1.0+1',
);

int _tantargyakEstimateSize(
  tantargyak object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.tantargynev.length * 3;
  return bytesCount;
}

void _tantargyakSerialize(
  tantargyak object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.tantargynev);
}

tantargyak _tantargyakDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = tantargyak();
  object.id = id;
  object.tantargynev = reader.readString(offsets[0]);
  return object;
}

P _tantargyakDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tantargyakGetId(tantargyak object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tantargyakGetLinks(tantargyak object) {
  return [];
}

void _tantargyakAttach(IsarCollection<dynamic> col, Id id, tantargyak object) {
  object.id = id;
}

extension tantargyakQueryWhereSort
    on QueryBuilder<tantargyak, tantargyak, QWhere> {
  QueryBuilder<tantargyak, tantargyak, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension tantargyakQueryWhere
    on QueryBuilder<tantargyak, tantargyak, QWhereClause> {
  QueryBuilder<tantargyak, tantargyak, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<tantargyak, tantargyak, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterWhereClause> idBetween(
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

extension tantargyakQueryFilter
    on QueryBuilder<tantargyak, tantargyak, QFilterCondition> {
  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition> idBetween(
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

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tantargynev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tantargynev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tantargynev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tantargynev',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tantargynev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tantargynev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tantargynev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tantargynev',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tantargynev',
        value: '',
      ));
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterFilterCondition>
      tantargynevIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tantargynev',
        value: '',
      ));
    });
  }
}

extension tantargyakQueryObject
    on QueryBuilder<tantargyak, tantargyak, QFilterCondition> {}

extension tantargyakQueryLinks
    on QueryBuilder<tantargyak, tantargyak, QFilterCondition> {}

extension tantargyakQuerySortBy
    on QueryBuilder<tantargyak, tantargyak, QSortBy> {
  QueryBuilder<tantargyak, tantargyak, QAfterSortBy> sortByTantargynev() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargynev', Sort.asc);
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterSortBy> sortByTantargynevDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargynev', Sort.desc);
    });
  }
}

extension tantargyakQuerySortThenBy
    on QueryBuilder<tantargyak, tantargyak, QSortThenBy> {
  QueryBuilder<tantargyak, tantargyak, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterSortBy> thenByTantargynev() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargynev', Sort.asc);
    });
  }

  QueryBuilder<tantargyak, tantargyak, QAfterSortBy> thenByTantargynevDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tantargynev', Sort.desc);
    });
  }
}

extension tantargyakQueryWhereDistinct
    on QueryBuilder<tantargyak, tantargyak, QDistinct> {
  QueryBuilder<tantargyak, tantargyak, QDistinct> distinctByTantargynev(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tantargynev', caseSensitive: caseSensitive);
    });
  }
}

extension tantargyakQueryProperty
    on QueryBuilder<tantargyak, tantargyak, QQueryProperty> {
  QueryBuilder<tantargyak, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<tantargyak, String, QQueryOperations> tantargynevProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tantargynev');
    });
  }
}
