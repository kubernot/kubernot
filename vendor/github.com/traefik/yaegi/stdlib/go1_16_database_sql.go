// Code generated by 'yaegi extract database/sql'. DO NOT EDIT.

// +build go1.16,!go1.17

package stdlib

import (
	"database/sql"
	"reflect"
)

func init() {
	Symbols["database/sql/sql"] = map[string]reflect.Value{
		// function, constant and variable definitions
		"Drivers":              reflect.ValueOf(sql.Drivers),
		"ErrConnDone":          reflect.ValueOf(&sql.ErrConnDone).Elem(),
		"ErrNoRows":            reflect.ValueOf(&sql.ErrNoRows).Elem(),
		"ErrTxDone":            reflect.ValueOf(&sql.ErrTxDone).Elem(),
		"LevelDefault":         reflect.ValueOf(sql.LevelDefault),
		"LevelLinearizable":    reflect.ValueOf(sql.LevelLinearizable),
		"LevelReadCommitted":   reflect.ValueOf(sql.LevelReadCommitted),
		"LevelReadUncommitted": reflect.ValueOf(sql.LevelReadUncommitted),
		"LevelRepeatableRead":  reflect.ValueOf(sql.LevelRepeatableRead),
		"LevelSerializable":    reflect.ValueOf(sql.LevelSerializable),
		"LevelSnapshot":        reflect.ValueOf(sql.LevelSnapshot),
		"LevelWriteCommitted":  reflect.ValueOf(sql.LevelWriteCommitted),
		"Named":                reflect.ValueOf(sql.Named),
		"Open":                 reflect.ValueOf(sql.Open),
		"OpenDB":               reflect.ValueOf(sql.OpenDB),
		"Register":             reflect.ValueOf(sql.Register),

		// type definitions
		"ColumnType":     reflect.ValueOf((*sql.ColumnType)(nil)),
		"Conn":           reflect.ValueOf((*sql.Conn)(nil)),
		"DB":             reflect.ValueOf((*sql.DB)(nil)),
		"DBStats":        reflect.ValueOf((*sql.DBStats)(nil)),
		"IsolationLevel": reflect.ValueOf((*sql.IsolationLevel)(nil)),
		"NamedArg":       reflect.ValueOf((*sql.NamedArg)(nil)),
		"NullBool":       reflect.ValueOf((*sql.NullBool)(nil)),
		"NullFloat64":    reflect.ValueOf((*sql.NullFloat64)(nil)),
		"NullInt32":      reflect.ValueOf((*sql.NullInt32)(nil)),
		"NullInt64":      reflect.ValueOf((*sql.NullInt64)(nil)),
		"NullString":     reflect.ValueOf((*sql.NullString)(nil)),
		"NullTime":       reflect.ValueOf((*sql.NullTime)(nil)),
		"Out":            reflect.ValueOf((*sql.Out)(nil)),
		"RawBytes":       reflect.ValueOf((*sql.RawBytes)(nil)),
		"Result":         reflect.ValueOf((*sql.Result)(nil)),
		"Row":            reflect.ValueOf((*sql.Row)(nil)),
		"Rows":           reflect.ValueOf((*sql.Rows)(nil)),
		"Scanner":        reflect.ValueOf((*sql.Scanner)(nil)),
		"Stmt":           reflect.ValueOf((*sql.Stmt)(nil)),
		"Tx":             reflect.ValueOf((*sql.Tx)(nil)),
		"TxOptions":      reflect.ValueOf((*sql.TxOptions)(nil)),

		// interface wrapper definitions
		"_Result":  reflect.ValueOf((*_database_sql_Result)(nil)),
		"_Scanner": reflect.ValueOf((*_database_sql_Scanner)(nil)),
	}
}

// _database_sql_Result is an interface wrapper for Result type
type _database_sql_Result struct {
	IValue        interface{}
	WLastInsertId func() (int64, error)
	WRowsAffected func() (int64, error)
}

func (W _database_sql_Result) LastInsertId() (int64, error) {
	return W.WLastInsertId()
}
func (W _database_sql_Result) RowsAffected() (int64, error) {
	return W.WRowsAffected()
}

// _database_sql_Scanner is an interface wrapper for Scanner type
type _database_sql_Scanner struct {
	IValue interface{}
	WScan  func(src interface{}) error
}

func (W _database_sql_Scanner) Scan(src interface{}) error {
	return W.WScan(src)
}
