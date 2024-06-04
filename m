Return-Path: <devicetree+bounces-72180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE078FB0F4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7326AB21C34
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1ECE1459F7;
	Tue,  4 Jun 2024 11:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hcpQUbpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DAE14535E
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 11:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717500032; cv=none; b=Vc0XI2HEfTLrM5GPERleMu+L+/CRZgw8Jyg6IhayVDh4gkd4rEX0ksQrkWmbb0bjZYA/vu7/LThHKiQJ6KjJcQQJyQiO0x7RPU9afaqs+3DdJO+n9axyeBIHLKEJdNfORjQB6TldE6bcyrO8SEiHCFC68lJQqypT8gpBfrt3I/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717500032; c=relaxed/simple;
	bh=kgXBPSzmmMmK13P3M1JEdZyWb98zX+iVSPBOKqrG4Co=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZIC2lOviKe1Febm+Z6dDV8/uQtkde8eQClPfgYKLhr7PbF1s7HEwL74k/UxhRgSOgV1P5wa9nTiGPFsK4sqkFQrH2zbazQFWbDTO26ZSMfFaDuGRzP4RwgAjragKHtj5TQfiZ9Fvg1jAuke6CU60uIyAWCr+loIPLTboTnDSksY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hcpQUbpS; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-57a68b0fbd0so1886325a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 04:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717500028; x=1718104828; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BJ1ckFD3w4gOD8NgYmAAqn/TLP3ObLjMRmfWUVD0ipo=;
        b=hcpQUbpS/k0OygojHT01SZbRBobW09tO7nXfNCD5cxZSxoisQ/HKGheDMpWod8282w
         Sr2ZbQwogJdl3TqDa4wUU48CsVkHDv5m5CeDgBniFR+y3HxX4orkTv/ZRrzcuwrNhLH7
         uu0b33f1hH0hEprpQ+GdGRpRsdMNTbc232nPUlMmLWZX/ZmtzR0vDTLlZD8gG6PRm9Re
         fj0+3iBAAeJlPW0Z4YpXp9FuzrpNfdFfVRp/kkJX6bFghi/85QvAB1ThWbUqEGhyz+iP
         IeCyLFuwpX+HYGJHdFFFmdt5vuwKSfZp1gb5WwoB0FRYK3Wn4pHfOzpx5mzM54rErL5p
         C+7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717500028; x=1718104828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BJ1ckFD3w4gOD8NgYmAAqn/TLP3ObLjMRmfWUVD0ipo=;
        b=oy8Md9q3qBy9gzv3GxaqQaGkhAat/tb/XO6xET4HBqntgjcIL/UFwxefcAA/xBtJtR
         6iE15QuSSDUxQ9lneZji3xO/cezMh4PUx2PXrmMNLG7lMQkDS7vEQs9lb0tAAYmx453j
         J1/7J1xfoXofZe2PaME449u0B7JWgJbJ3ion29TTu/WCYRtsfgyWP8nUuHss3UJqiDRb
         iholmDEEFe/S9fHvdJc3ExNpkRvW2vQ5y1IE4TE9ry0eT4TB+bN+ksa6FYE6FdqXDP1i
         x8XVXZQvIFNcYYERYQ9eAw5B43DLC7LN8kmWowYUSHbEbBIoSgEHec2rbvdPMpZCcOg/
         e22A==
X-Forwarded-Encrypted: i=1; AJvYcCUmHhudVdx8/VQ3XEwQ2h+CZz2yaVXlxyxXohN2qevQz7cZmvk+frBhN3qRD2v2ayfXd+LxFNxPf4E5MIYpv7hN5dBF2kPiNkn0jA==
X-Gm-Message-State: AOJu0YxfhBehkXhGSecqf3w1IY4cHuvlhV225tROIKFomX2rN9h4QgSs
	UlVHMZQbCtWzM22DsnUx4f2c4EnfRSzgtMA3CxeaoKwhPCOW06XUfu1JIrc4JVY=
X-Google-Smtp-Source: AGHT+IEYWnj0tDb2ZO6X2gAXfQma+G/WB7/NnXNSuxNHMHrKRHh7mU+z8zIyrUAGAiQCusVTtScVdw==
X-Received: by 2002:a05:6402:907:b0:57a:4ee0:814a with SMTP id 4fb4d7f45d1cf-57a4ee0892bmr4775754a12.23.1717500028005;
        Tue, 04 Jun 2024 04:20:28 -0700 (PDT)
Received: from ?IPV6:2a02:8109:aa0d:be00::8090? ([2a02:8109:aa0d:be00::8090])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31be5a15sm7322070a12.57.2024.06.04.04.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 04:20:27 -0700 (PDT)
Message-ID: <580f629d-6fae-4cf7-9137-f98b901ae29d@linaro.org>
Date: Tue, 4 Jun 2024 13:20:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/4] arm64: dts: qcom: qcs8550: introduce qcs8550 dtsi
To: "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>,
 Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240529100926.3166325-1-quic_tengfan@quicinc.com>
 <20240529100926.3166325-3-quic_tengfan@quicinc.com>
 <a95fed63-f48d-42c6-856b-0636a50c9dd4@linaro.org>
 <18ff1bf2-be4d-4d82-a4b3-28242b1d1d59@quicinc.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <18ff1bf2-be4d-4d82-a4b3-28242b1d1d59@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 04/06/2024 12:51, Aiqun Yu (Maria) wrote:
> 
> 
> On 6/3/2024 5:20 PM, Caleb Connolly wrote:
>> Hi Tengfei,
>>
>> On 29/05/2024 12:09, Tengfei Fan wrote:
>>> QCS8550 is derived from SM8550. The difference between SM8550 and
>>> QCS8550 is QCS8550 doesn't have modem RF system. QCS8550 is mainly used
>>> in IoT products.
>>> QCS8550 firmware has different memory map compared to SM8550.
>>> The memory map will be runtime added through bootloader.
>>> There are 3 types of reserved memory regions here:
>>> 1. Firmware related regions which aren't shared with kernel.
>>>       The device tree source in kernel doesn't need to have node to
>>> indicate
>>> the firmware related reserved information. Bootloader converys the
>>> information by updating devicetree at runtime.
>>>       This will be described as: UEFI saves the physical address of the
>>> UEFI System Table to dts file's chosen node. Kernel read this table and
>>> add reserved memory regions to efi config table. Current reserved memory
>>> region may have reserved region which was not yet used, release note of
>>> the firmware have such kind of information.
>>
>> Are you describing some particular quirk of the platform here, or just
>> standard UEFI booting?
> 
> It's standard UEFI booting efi config table.

Ok, thanks for confirming.
>>
>> When booting with UEFI, the memory map is passed via the ESRT, so having
>> memory that the kernel shouldn't use it pretty simple (and typical).

woo! \o/
> 
> yes. It is very simple. And the bootloader firmware config the
> "reserved" region in the efi config table from the uefi firmware.
>>> 2. Firmware related memory regions which are shared with Kernel
>>>       The device tree source in the kernel needs to include nodes that
>>> indicate fimware-related shared information. A label name is suggested
>>> because this type of shared information needs to be referenced by
>>> specific drivers for handling purposes.
>>
>> Again, is there something non-standard here? If not I would suggest
>> dropping these detail comments as they might be misleading.
> 
> Detailed comments is used to describe current device tree reserved
> memory regions.
> 
> Current patch is not creating a new mechanism to have memory map
> described. But it is the first time qcom device trees use this design,
> and have a simplified(also more compatible) device tree reserved memory
> region(memory map). Previously, bootloader(apps bootloader) only pass
> the whole physical memory base and size, and use reserved memory nodes
> only in device tree(which is also a standard choose).
> 
> So that's why it is detailed comments for other qcom platform reference.

Doesn't the rb3gen2 also use this design?
> 
>>
>> Thanks and regards,
>>> 3. Remoteproc regions.
>>>       Remoteproc regions will be reserved and then assigned to subsystem
>>> firmware later.
>>> Here is a reserved memory map for this platform:
>>> 0x100000000 +-------------------+
>>>               |                   |
>>>               | Firmware Related  |
>>>               |                   |
>>>    0xd4d00000 +-------------------+
>>>               |                   |
>>>               | Kernel Available  |
>>>               |                   |
>>>    0xa7000000 +-------------------+
>>>               |                   |
>>>               | Remoteproc Region |
>>>               |                   |
>>>    0x8a800000 +-------------------+
>>>               |                   |
>>>               | Firmware Related  |
>>>               |                   |
>>>    0x80000000 +-------------------+
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>>> ---
>>>    arch/arm64/boot/dts/qcom/qcs8550.dtsi | 167 ++++++++++++++++++++++++++
>>>    1 file changed, 167 insertions(+)
>>>    create mode 100644 arch/arm64/boot/dts/qcom/qcs8550.dtsi
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8550.dtsi
>>> b/arch/arm64/boot/dts/qcom/qcs8550.dtsi
>>> new file mode 100644
>>> index 000000000000..685668c6ad14
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8550.dtsi
>>> @@ -0,0 +1,167 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +/*
>>> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All
>>> rights reserved.
>>> + */
>>> +
>>> +#include "sm8550.dtsi"
>>> +
>>> +/delete-node/ &reserved_memory;
>>> +
>>> +/ {
>>> +    reserved_memory: reserved-memory {
>>> +        #address-cells = <2>;
>>> +        #size-cells = <2>;
>>> +        ranges;
>>> +
>>> +
>>> +        /* These are 3 types of reserved memory regions here:
>>> +         * 1. Firmware related regions which aren't shared with kernel.
>>> +         *     The device tree source in kernel doesn't need to have
>>> node to
>>> +         * indicate the firmware related reserved information.
>>> Bootloader
>>> +         * conveys the information by updating devicetree at runtime.
>>> +         *     This will be described as: UEFI saves the physical
>>> address of
>>> +         * the UEFI System Table to dts file's chosen node. Kernel
>>> read this
>>> +         * table and add reserved memory regions to efi config table.
>>> Current
>>> +         * reserved memory region may have reserved region which was
>>> not yet
>>> +         * used, release note of the firmware have such kind of
>>> information.
>>> +         * 2. Firmware related memory regions which are shared with
>>> Kernel
>>> +         *     The device tree source in the kernel needs to include
>>> nodes
>>> +         * that indicate fimware-related shared information. A label
>>> name
>>> +         * is suggested because this type of shared information needs to
>>> +         * be referenced by specific drivers for handling purposes.
>>> +         * 3. Remoteproc regions.
>>> +         *     Remoteproc regions will be reserved and then assigned to
>>> +         * subsystem firmware later.
>>> +         * Here is a reserved memory map for this platform:
>>> +         * 0x100000000 +-------------------+
>>> +         *             |                   |
>>> +         *             | Firmware Related  |
>>> +         *             |                   |
>>> +         *  0xd4d00000 +-------------------+
>>> +         *             |                   |
>>> +         *             | Kernel Available  |
>>> +         *             |                   |
>>> +         *  0xa7000000 +-------------------+
>>> +         *             |                   |
>>> +         *             | Remoteproc Region |
>>> +         *             |                   |
>>> +         *  0x8a800000 +-------------------+
>>> +         *             |                   |
>>> +         *             | Firmware Related  |
>>> +         *             |                   |
>>> +         *  0x80000000 +-------------------+
>>> +         */
>>> +
>>> +        /*
>>> +         * Firmware related regions, bootloader will possible reserve
>>> parts of
>>> +         * region from 0x80000000..0x8a800000.
>>> +         */
>>> +        aop_image_mem: aop-image-region@81c00000 {
>>> +            reg = <0x0 0x81c00000 0x0 0x60000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        aop_cmd_db_mem: aop-cmd-db-region@81c60000 {
>>> +            compatible = "qcom,cmd-db";
>>> +            reg = <0x0 0x81c60000 0x0 0x20000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        aop_config_mem: aop-config-region@81c80000 {
>>> +            no-map;
>>> +            reg = <0x0 0x81c80000 0x0 0x20000>;
>>> +        };
>>> +
>>> +        smem_mem: smem-region@81d00000 {
>>> +            compatible = "qcom,smem";
>>> +            reg = <0x0 0x81d00000 0x0 0x200000>;
>>> +            hwlocks = <&tcsr_mutex 3>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        adsp_mhi_mem: adsp-mhi-region@81f00000 {
>>> +            reg = <0x0 0x81f00000 0x0 0x20000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        /* PIL region */
>>> +        mpss_mem: mpss-region@8a800000 {
>>> +            reg = <0x0 0x8a800000 0x0 0x10800000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        q6_mpss_dtb_mem: q6-mpss-dtb-region@9b000000 {
>>> +            reg = <0x0 0x9b000000 0x0 0x80000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        ipa_fw_mem: ipa-fw-region@9b080000 {
>>> +            reg = <0x0 0x9b080000 0x0 0x10000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        ipa_gsi_mem: ipa-gsi-region@9b090000 {
>>> +            reg = <0x0 0x9b090000 0x0 0xa000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        gpu_micro_code_mem: gpu-micro-code-region@9b09a000 {
>>> +            reg = <0x0 0x9b09a000 0x0 0x2000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        spss_region_mem: spss-region@9b100000 {
>>> +            reg = <0x0 0x9b100000 0x0 0x180000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        spu_secure_shared_memory_mem:
>>> spu-secure-shared-memory-region@9b280000 {
>>> +            reg = <0x0 0x9b280000 0x0 0x80000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        camera_mem: camera-region@9b300000 {
>>> +            reg = <0x0 0x9b300000 0x0 0x800000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        video_mem: video-region@9bb00000 {
>>> +            reg = <0x0 0x9bb00000 0x0 0x700000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        cvp_mem: cvp-region@9c200000 {
>>> +            reg = <0x0 0x9c200000 0x0 0x700000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        cdsp_mem: cdsp-region@9c900000 {
>>> +            reg = <0x0 0x9c900000 0x0 0x2000000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        q6_cdsp_dtb_mem: q6-cdsp-dtb-region@9e900000 {
>>> +            reg = <0x0 0x9e900000 0x0 0x80000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        q6_adsp_dtb_mem: q6-adsp-dtb-region@9e980000 {
>>> +            reg = <0x0 0x9e980000 0x0 0x80000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        adspslpi_mem: adspslpi-region@9ea00000 {
>>> +            reg = <0x0 0x9ea00000 0x0 0x4080000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        /*
>>> +         * Firmware related regions, bootloader will possible reserve
>>> parts of
>>> +         * region from 0xd8000000..0x100000000.
>>> +         */
>>> +        mpss_dsm_mem: mpss_dsm_region@d4d00000 {
>>> +            reg = <0x0 0xd4d00000 0x0 0x3300000>;
>>> +            no-map;
>>> +        };
>>> +    };
>>> +};
>>
> 

-- 
// Caleb (they/them)

