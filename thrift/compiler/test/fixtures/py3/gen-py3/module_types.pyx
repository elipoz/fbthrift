#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from cython.operator cimport dereference as deref
from thrift.lib.py3.thrift_server cimport TException

from collections.abc import Sequence, Set, Mapping

from module_types cimport (
    cSimpleException,
    cSimpleStruct,
    cComplexStruct
)

cdef class SimpleException(TException):
    def __init__(
        self,
        int err_code
    ):
        self.c_SimpleException = make_shared[cSimpleException]()
        deref(self.c_SimpleException).err_code = err_code
        
    @staticmethod
    cdef create(shared_ptr[cSimpleException] c_SimpleException):
        inst = <SimpleException>SimpleException.__new__(SimpleException)
        inst.c_SimpleException = c_SimpleException
        return inst

    @property
    def err_code(self):
        return self.c_SimpleException.get().err_code


cdef class SimpleStruct:
    def __init__(
        self,
         is_on,
         tiny_int,
        int small_int,
        int nice_sized_int,
        int big_int,
         real
    ):
        self.c_SimpleStruct = make_shared[cSimpleStruct]()
        deref(self.c_SimpleStruct).is_on = is_on
        deref(self.c_SimpleStruct).tiny_int = tiny_int
        deref(self.c_SimpleStruct).small_int = small_int
        deref(self.c_SimpleStruct).nice_sized_int = nice_sized_int
        deref(self.c_SimpleStruct).big_int = big_int
        
        
    @staticmethod
    cdef create(shared_ptr[cSimpleStruct] c_SimpleStruct):
        inst = <SimpleStruct>SimpleStruct.__new__(SimpleStruct)
        inst.c_SimpleStruct = c_SimpleStruct
        return inst

    @property
    def is_on(self):
        return <pbool> self.c_SimpleStruct.get().is_on

    @property
    def tiny_int(self):
        return self.c_SimpleStruct.get().tiny_int

    @property
    def small_int(self):
        return self.c_SimpleStruct.get().small_int

    @property
    def nice_sized_int(self):
        return self.c_SimpleStruct.get().nice_sized_int

    @property
    def big_int(self):
        return self.c_SimpleStruct.get().big_int

    @property
    def real(self):
        return self.c_SimpleStruct.get().real


cdef class ComplexStruct:
    def __init__(
        self,
        SimpleStruct structOne,
        SimpleStruct structTwo,
        int an_integer,
        str name
    ):
        self.c_ComplexStruct = make_shared[cComplexStruct]()
        deref(self.c_ComplexStruct).structOne = deref(structOne.c_SimpleStruct)
        deref(self.c_ComplexStruct).structTwo = deref(structTwo.c_SimpleStruct)
        deref(self.c_ComplexStruct).an_integer = an_integer
        if name is not None:
            deref(self.c_ComplexStruct).name = name.encode('UTF-8')
        
    @staticmethod
    cdef create(shared_ptr[cComplexStruct] c_ComplexStruct):
        inst = <ComplexStruct>ComplexStruct.__new__(ComplexStruct)
        inst.c_ComplexStruct = c_ComplexStruct
        return inst

    @property
    def structOne(self):
        cdef shared_ptr[cSimpleStruct] item
        if self.__structOne is None:
            item = make_shared[cSimpleStruct](deref(self.c_ComplexStruct).structOne)
            self.__structOne = SimpleStruct.create(item)
        return self.__structOne
        

    @property
    def structTwo(self):
        cdef shared_ptr[cSimpleStruct] item
        if self.__structTwo is None:
            item = make_shared[cSimpleStruct](deref(self.c_ComplexStruct).structTwo)
            self.__structTwo = SimpleStruct.create(item)
        return self.__structTwo
        

    @property
    def an_integer(self):
        return self.c_ComplexStruct.get().an_integer

    @property
    def name(self):
        return self.c_ComplexStruct.get().name.decode()



cdef class List__i16:
    def __init__(self, items=None):
        self._vector = make_shared[vector[int16_t]]()
        if items:
            for item in items:
                deref(self._vector).push_back(item)

    @staticmethod
    cdef create(shared_ptr[vector[int16_t]] c_items):
        inst = <List__i16>List__i16.__new__(List__i16)
        inst._vector = c_items
        return inst

    def __getitem__(self, int index):
        cdef int16_t citem = deref(self._vector).at(index)
        return citem

    def __len__(self):
        return deref(self._vector).size()

Sequence.register(List__i16)

cdef class List__i32:
    def __init__(self, items=None):
        self._vector = make_shared[vector[int32_t]]()
        if items:
            for item in items:
                deref(self._vector).push_back(item)

    @staticmethod
    cdef create(shared_ptr[vector[int32_t]] c_items):
        inst = <List__i32>List__i32.__new__(List__i32)
        inst._vector = c_items
        return inst

    def __getitem__(self, int index):
        cdef int32_t citem = deref(self._vector).at(index)
        return citem

    def __len__(self):
        return deref(self._vector).size()

Sequence.register(List__i32)

cdef class List__i64:
    def __init__(self, items=None):
        self._vector = make_shared[vector[int64_t]]()
        if items:
            for item in items:
                deref(self._vector).push_back(item)

    @staticmethod
    cdef create(shared_ptr[vector[int64_t]] c_items):
        inst = <List__i64>List__i64.__new__(List__i64)
        inst._vector = c_items
        return inst

    def __getitem__(self, int index):
        cdef int64_t citem = deref(self._vector).at(index)
        return citem

    def __len__(self):
        return deref(self._vector).size()

Sequence.register(List__i64)

cdef class List__string:
    def __init__(self, items=None):
        self._vector = make_shared[vector[string]]()
        if items:
            for item in items:
                deref(self._vector).push_back(item.encode())

    @staticmethod
    cdef create(shared_ptr[vector[string]] c_items):
        inst = <List__string>List__string.__new__(List__string)
        inst._vector = c_items
        return inst

    def __getitem__(self, int index):
        cdef string citem = deref(self._vector).at(index)
        return citem.decode()

    def __len__(self):
        return deref(self._vector).size()

Sequence.register(List__string)

cdef class List__SimpleStruct:
    def __init__(self, items=None):
        self._vector = make_shared[vector[cSimpleStruct]]()
        if items:
            for item in items:
                deref(self._vector).push_back(deref((<SimpleStruct> item).c_SimpleStruct))

    @staticmethod
    cdef create(shared_ptr[vector[cSimpleStruct]] c_items):
        inst = <List__SimpleStruct>List__SimpleStruct.__new__(List__SimpleStruct)
        inst._vector = c_items
        return inst

    def __getitem__(self, int index):
        cdef cSimpleStruct citem = deref(self._vector).at(index)
        return SimpleStruct.create(make_shared[cSimpleStruct](citem))

    def __len__(self):
        return deref(self._vector).size()

Sequence.register(List__SimpleStruct)

cdef class Set__i32:
    def __init__(self, items=None):
        self._set = make_shared[cset[int32_t]]()
        if items:
            for item in items:
                deref(self._set).insert(item)

    @staticmethod
    cdef create(shared_ptr[cset[int32_t]] c_items):
        inst = <Set__i32>Set__i32.__new__(Set__i32)
        inst._set = c_items
        return inst

    def __contains__(self, int item):
        return pbool(deref(self._set).count(item))

    def __len__(self):
        return deref(self._set).size()

    def __iter__(self):
        for citem in deref(self._set):
            yield citem

Set.register(Set__i32)

cdef class Set__string:
    def __init__(self, items=None):
        self._set = make_shared[cset[string]]()
        if items:
            for item in items:
                deref(self._set).insert(item.encode())

    @staticmethod
    cdef create(shared_ptr[cset[string]] c_items):
        inst = <Set__string>Set__string.__new__(Set__string)
        inst._set = c_items
        return inst

    def __contains__(self, str item):
        return pbool(deref(self._set).count(item.encode()))

    def __len__(self):
        return deref(self._set).size()

    def __iter__(self):
        for citem in deref(self._set):
            yield citem.decode()

Set.register(Set__string)

cdef class Map__string_string:
    def __init__(self, items=None):

        self._map = make_shared[cmap[string,string]]()
        if items:
            for key, item in items.items():
                deref(self._map).insert(cpair[string,string](key.encode(), item.encode()))

    @staticmethod
    cdef create(shared_ptr[cmap[string,string]] c_items):
        inst = <Map__string_string>Map__string_string.__new__(Map__string_string)
        inst._map = c_items
        return inst

    def __getitem__(self, str key):
        cdef string ckey = key.encode()
        cdef string citem = deref(self._map)[ckey]
        return citem.decode()

    def __len__(self):
        return deref(self._map).size()

    def __iter__(self):
        cdef string citem
        for pair in deref(self._map):
            citem = pair.first
            yield citem.decode()

Mapping.register(Map__string_string)

cdef class Map__string_SimpleStruct:
    def __init__(self, items=None):

        self._map = make_shared[cmap[string,cSimpleStruct]]()
        if items:
            for key, item in items.items():
                deref(self._map).insert(cpair[string,cSimpleStruct](key.encode(), deref((<SimpleStruct> item).c_SimpleStruct)))

    @staticmethod
    cdef create(shared_ptr[cmap[string,cSimpleStruct]] c_items):
        inst = <Map__string_SimpleStruct>Map__string_SimpleStruct.__new__(Map__string_SimpleStruct)
        inst._map = c_items
        return inst

    def __getitem__(self, str key):
        cdef string ckey = key.encode()
        cdef cSimpleStruct citem = deref(self._map)[ckey]
        return SimpleStruct.create(make_shared[cSimpleStruct](citem))

    def __len__(self):
        return deref(self._map).size()

    def __iter__(self):
        cdef string citem
        for pair in deref(self._map):
            citem = pair.first
            yield citem.decode()

Mapping.register(Map__string_SimpleStruct)

cdef class Map__string_i16:
    def __init__(self, items=None):

        self._map = make_shared[cmap[string,int16_t]]()
        if items:
            for key, item in items.items():
                deref(self._map).insert(cpair[string,int16_t](key.encode(), item))

    @staticmethod
    cdef create(shared_ptr[cmap[string,int16_t]] c_items):
        inst = <Map__string_i16>Map__string_i16.__new__(Map__string_i16)
        inst._map = c_items
        return inst

    def __getitem__(self, str key):
        cdef string ckey = key.encode()
        cdef int16_t citem = deref(self._map)[ckey]
        return citem

    def __len__(self):
        return deref(self._map).size()

    def __iter__(self):
        cdef string citem
        for pair in deref(self._map):
            citem = pair.first
            yield citem.decode()

Mapping.register(Map__string_i16)

