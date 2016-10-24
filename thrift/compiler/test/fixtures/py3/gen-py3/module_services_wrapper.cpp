/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#include <src/gen-py3/module_services_wrapper.h>
#include <src/gen-py3/module_services.h>
#include <thrift/lib/cpp2/async/AsyncProcessor.h>

namespace py3 {
namespace simple {

SimpleServiceWrapper::SimpleServiceWrapper(PyObject *obj)
  : if_object(obj)
  {
    Py_XINCREF(this->if_object);
  }

SimpleServiceWrapper::~SimpleServiceWrapper() {
    Py_XDECREF(this->if_object);
}

folly::Future<int32_t> SimpleServiceWrapper::future_get_five() {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_get_five(
    this->if_object,
    promise
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_add_five(
  int32_t num
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_add_five(
    this->if_object,
    promise,
    num
  );
  return promise->getFuture();
}

folly::Future<folly::Unit> SimpleServiceWrapper::future_do_nothing() {
  auto promise = std::make_shared<folly::Promise<folly::Unit>>();
  call_cy_SimpleService_do_nothing(
    this->if_object,
    promise
  );
  return promise->getFuture();
}

folly::Future<std::unique_ptr<std::string>> SimpleServiceWrapper::future_concat(
  std::unique_ptr<std::string> first,
  std::unique_ptr<std::string> second
) {
  auto promise = std::make_shared<folly::Promise<std::unique_ptr<std::string>>>();
  call_cy_SimpleService_concat(
    this->if_object,
    promise,
    std::move(first),
    std::move(second)
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_get_value(
  std::unique_ptr<py3::simple::SimpleStruct> simple_struct
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_get_value(
    this->if_object,
    promise,
    std::move(simple_struct)
  );
  return promise->getFuture();
}

folly::Future<bool> SimpleServiceWrapper::future_negate(
  bool input
) {
  auto promise = std::make_shared<folly::Promise<bool>>();
  call_cy_SimpleService_negate(
    this->if_object,
    promise,
    input
  );
  return promise->getFuture();
}

folly::Future<int8_t> SimpleServiceWrapper::future_tiny(
  int8_t input
) {
  auto promise = std::make_shared<folly::Promise<int8_t>>();
  call_cy_SimpleService_tiny(
    this->if_object,
    promise,
    input
  );
  return promise->getFuture();
}

folly::Future<int16_t> SimpleServiceWrapper::future_small(
  int16_t input
) {
  auto promise = std::make_shared<folly::Promise<int16_t>>();
  call_cy_SimpleService_small(
    this->if_object,
    promise,
    input
  );
  return promise->getFuture();
}

folly::Future<int64_t> SimpleServiceWrapper::future_big(
  int64_t input
) {
  auto promise = std::make_shared<folly::Promise<int64_t>>();
  call_cy_SimpleService_big(
    this->if_object,
    promise,
    input
  );
  return promise->getFuture();
}

folly::Future<double> SimpleServiceWrapper::future_two(
  double input
) {
  auto promise = std::make_shared<folly::Promise<double>>();
  call_cy_SimpleService_two(
    this->if_object,
    promise,
    input
  );
  return promise->getFuture();
}

folly::Future<folly::Unit> SimpleServiceWrapper::future_expected_exception() {
  auto promise = std::make_shared<folly::Promise<folly::Unit>>();
  call_cy_SimpleService_expected_exception(
    this->if_object,
    promise
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_unexpected_exception() {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_unexpected_exception(
    this->if_object,
    promise
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_sum_i16_list(
  std::unique_ptr<std::vector<int16_t>> numbers
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_sum_i16_list(
    this->if_object,
    promise,
    std::move(numbers)
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_sum_i32_list(
  std::unique_ptr<std::vector<int32_t>> numbers
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_sum_i32_list(
    this->if_object,
    promise,
    std::move(numbers)
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_sum_i64_list(
  std::unique_ptr<std::vector<int64_t>> numbers
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_sum_i64_list(
    this->if_object,
    promise,
    std::move(numbers)
  );
  return promise->getFuture();
}

folly::Future<std::unique_ptr<std::string>> SimpleServiceWrapper::future_concat_many(
  std::unique_ptr<std::vector<std::string>> words
) {
  auto promise = std::make_shared<folly::Promise<std::unique_ptr<std::string>>>();
  call_cy_SimpleService_concat_many(
    this->if_object,
    promise,
    std::move(words)
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_count_structs(
  std::unique_ptr<std::vector<py3::simple::SimpleStruct>> items
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_count_structs(
    this->if_object,
    promise,
    std::move(items)
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_sum_set(
  std::unique_ptr<std::set<int32_t>> numbers
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_sum_set(
    this->if_object,
    promise,
    std::move(numbers)
  );
  return promise->getFuture();
}

folly::Future<bool> SimpleServiceWrapper::future_contains_word(
  std::unique_ptr<std::set<std::string>> words,
  std::unique_ptr<std::string> word
) {
  auto promise = std::make_shared<folly::Promise<bool>>();
  call_cy_SimpleService_contains_word(
    this->if_object,
    promise,
    std::move(words),
    std::move(word)
  );
  return promise->getFuture();
}

folly::Future<std::unique_ptr<std::string>> SimpleServiceWrapper::future_get_map_value(
  std::unique_ptr<std::map<std::string,std::string>> words,
  std::unique_ptr<std::string> key
) {
  auto promise = std::make_shared<folly::Promise<std::unique_ptr<std::string>>>();
  call_cy_SimpleService_get_map_value(
    this->if_object,
    promise,
    std::move(words),
    std::move(key)
  );
  return promise->getFuture();
}

folly::Future<int16_t> SimpleServiceWrapper::future_map_length(
  std::unique_ptr<std::map<std::string,py3::simple::SimpleStruct>> items
) {
  auto promise = std::make_shared<folly::Promise<int16_t>>();
  call_cy_SimpleService_map_length(
    this->if_object,
    promise,
    std::move(items)
  );
  return promise->getFuture();
}

folly::Future<int16_t> SimpleServiceWrapper::future_sum_map_values(
  std::unique_ptr<std::map<std::string,int16_t>> items
) {
  auto promise = std::make_shared<folly::Promise<int16_t>>();
  call_cy_SimpleService_sum_map_values(
    this->if_object,
    promise,
    std::move(items)
  );
  return promise->getFuture();
}

folly::Future<int32_t> SimpleServiceWrapper::future_complex_sum_i32(
  std::unique_ptr<py3::simple::ComplexStruct> counter
) {
  auto promise = std::make_shared<folly::Promise<int32_t>>();
  call_cy_SimpleService_complex_sum_i32(
    this->if_object,
    promise,
    std::move(counter)
  );
  return promise->getFuture();
}

folly::Future<std::unique_ptr<std::string>> SimpleServiceWrapper::future_repeat_name(
  std::unique_ptr<py3::simple::ComplexStruct> counter
) {
  auto promise = std::make_shared<folly::Promise<std::unique_ptr<std::string>>>();
  call_cy_SimpleService_repeat_name(
    this->if_object,
    promise,
    std::move(counter)
  );
  return promise->getFuture();
}

std::shared_ptr<apache::thrift::ServerInterface> SimpleServiceInterface(PyObject *if_object) {
  return std::make_shared<SimpleServiceWrapper>(if_object);
}
} // namespace py3
} // namespace simple
