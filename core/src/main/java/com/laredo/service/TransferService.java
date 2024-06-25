package com.laredo.service;

import com.laredo.dto.request.TransferRequestDto;
import com.laredo.dto.response.TransferResponseDto;

public interface TransferService {
    TransferResponseDto transfer(TransferRequestDto dto) throws Exception;
    TransferResponseDto verifi(String idTransaccion);
}