package data

import (
	"errors"
	"fmt"
	"strconv"
	"strings"
)

var ErrInvalidMovieRuntimeFormat = errors.New("invalid runtime format")

type MovieRuntime int32

func (mr MovieRuntime) MarshalJSON() ([]byte, error) {
	jsonValue := fmt.Sprintf("%d mins", mr)
	quotedJSONValue := strconv.Quote(jsonValue)
	return []byte(quotedJSONValue), nil
}

func (r *MovieRuntime) UnmarshalJSON(jsonValue []byte) error {
	unquotedJSONValue, err := strconv.Unquote(string(jsonValue))
	if err != nil {
		return ErrInvalidMovieRuntimeFormat
	}

	parts := strings.Split(unquotedJSONValue, " ")

	if len(parts) != 2 || parts[1] != "mins" {
		return ErrInvalidMovieRuntimeFormat
	}

	i, err := strconv.ParseInt(parts[0], 10, 32)
	if err != nil {
		return ErrInvalidMovieRuntimeFormat
	}

	*r = MovieRuntime(i)

	return nil
}
