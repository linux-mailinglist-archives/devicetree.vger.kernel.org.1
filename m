Return-Path: <devicetree+bounces-197775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0B6B0A965
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 19:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FEAE5A3213
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804F82E7188;
	Fri, 18 Jul 2025 17:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E/yaTaz0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0C72E6D00
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752859583; cv=none; b=IuNLJ/TPLDFhUl7PNBdKhOtXuyTdwXB4Zeog6nUHtq75zzGkTJ7116hWdd0Li2KugTQ/8ujiE8cCRj4Y9oPf9Hh8ofCO4TyvmmqPrKZOkwKg5SRJijmDmwCkbIualaZU9Te/XokxN6NQoDP/D3bO+XC5EJW4TViGnOdwa6g+Gfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752859583; c=relaxed/simple;
	bh=A0Hft1j6L216tZxWQlcBGOLV5bZ4wJTunGM4c9VS3mw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KeoNvbdUymKvU5hokDfvSMT4ErTCKrSN3iK3AqpgGyk/vRb3ZooN4O9bT7WmWwtYjDsSzZCoAI/fhxuDF9/OTuJrpmjvZFV2xF6PTAd0O3t7wqUy02sF3tgXrG8OfpA3LEZo+utsq9xYm6or1UY1E3zfvNrFDTQpjMAVEMqqFQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E/yaTaz0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IG2uKx021601
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:26:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GduJ5YbGzanNXFF24/hf0EZK6UZ8V5SkZA+qLy9SUOU=; b=E/yaTaz0qmZcflgQ
	ctre4pLpfFrslHbuc7XQoHQTgHl0YNlN+IidqMkkjdpQuguWXzzE/pVa+OzPQJMU
	hYkqsYm/hZFRo15mndzXQsmVc7hdCmPVb4kgIJQFIkE3s3J7mbAyvmb/Y+HS51UY
	HnJNAV0b7q3NUlRljd6AX5NCN+14QnoWKzHHLXqlq0gViykiGAZ0TH+SGl1JUR4A
	bWx7b79CHFfXYWYozKj6PHJMrrCn0ObVKzvA/cGCYxcUwwD2TG98QdfBnlJLpKie
	W7m7f4nRdVIOuhChZGHhpG888hB6PBnc36y/y9ONTpFQyadreH9nj77l50o+iaGf
	/1Y5dA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpqgh8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:26:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-235e1d66fa6so18352305ad.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:26:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752859579; x=1753464379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GduJ5YbGzanNXFF24/hf0EZK6UZ8V5SkZA+qLy9SUOU=;
        b=eIg3s+t3u5ridSo7BvKomDYexVdfGwx/crI93p+fxOkZT3lCdQBXrejPhiKysJu0Yz
         ASTfbGvLQeJHOdzN3bvjKuYsvENklPQ1RZI2bRra+ztdQS1PsUQoWwiuSHiOp/SWJz6N
         KkPEvw5OarQkmdgR+gVrQu/X6JaeRKkMKuj+WX4H0/4MeY8uU2T44xPxttgwKs3JrYeP
         3b1DO3700iHcDGilm9PK91e3y5kYQ1JpOXNijtJaQ457hkUnqppFFo86YAj7omlEsqnH
         C7F91Hs9xypOTw4h7aTZBAzJDcbjqH976NY9ahSkjix7Jwy8mYkgOpwdiOo3NUbbkAlo
         wSMA==
X-Forwarded-Encrypted: i=1; AJvYcCWJzowixDrhMKD1UOizlNBKECmG5olz2OxotpXgxeQ2q+DzmFzXYI21dEEI/8c0ma1N5Z5EFy4+l6fQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2vdAuWiOMBPGi05u/8IRk+2B3HC01saM1DNeGu6ZzKJbD7I0P
	qCkGYO3mp6KmKs0EUWqzPO9SExoKN9pH8dmfQScZOAxIB08gK3n9w5cmqKGwe2+p7Q4pi13xJJy
	Hj45TA7PPYnbLdNWUxegcBLFtBJpISLDnfYTRbc/lCePfmJWMLIkV5r+3y3VCndML
X-Gm-Gg: ASbGncvK7541ma/I495G07iV2CuhBo3i+XL44ZJfQlHKgXWurIwzIQJePfmmcdsAQMq
	u2HbZHuPNyGoiObbLlCp2czOjdlXGHc7QjKDzDLbe7ZxuLyqOSJX0SIsDsLY90oPqJCB30XKkGR
	262RZwUoaV9r1u1WiZC/S11G/HgcCDpxsghtGnIGBBgtruGs1cy9o/sWKdoqlhfB1dWqDsya806
	3XN7YtSWnlRXkkOIYi3nS4eHyAo4PHwYxTTQ4BGul+lmVwFqooWgpqKjw2NhabgUT3OjqXPr6EH
	D/OUAtRVaSZ4b7MpgB0cyqFCaVUfnFBy8LhM1QxZbabEafTthWdmTvZ9xL3VnuS2yq0=
X-Received: by 2002:a17:902:d60b:b0:235:dd54:bce1 with SMTP id d9443c01a7336-23e24f49451mr169690495ad.15.1752859578715;
        Fri, 18 Jul 2025 10:26:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBiuApPui+DrCZGh1uQCxP+63mJXtxF2yZeaEggDdwLKQBX3di0tn4hyxBqo1Jj6zmyDWaeg==
X-Received: by 2002:a17:902:d60b:b0:235:dd54:bce1 with SMTP id d9443c01a7336-23e24f49451mr169690055ad.15.1752859578204;
        Fri, 18 Jul 2025 10:26:18 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.28.43])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6d19acsm16005375ad.144.2025.07.18.10.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 10:26:17 -0700 (PDT)
Message-ID: <e36a9e5b-f6af-4266-98f0-a82489fa5d72@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 22:56:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>, sboyd@kernel.org,
        mturquette@baylibre.com, andersson@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-8-pankaj.patil@oss.qualcomm.com>
 <28ea2b11-a269-4536-8306-185bf272bd60@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <28ea2b11-a269-4536-8306-185bf272bd60@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzOCBTYWx0ZWRfX2y8o5fJud15z
 aMxlzAgDJKyQjuI8qEZX++9aqkAxhWidJA0D9lk2fXv4MvY2QC1nJ9ZHLMZNYbxzrSkoyrwqMVt
 xN8HF0ijJ5jTyH9kSq5hL1f6owiVb4mxw63GSlrHjlCl7pzAfNivYf17BQiyK4pxkyYJxfFeks/
 LuoJIVTuMYow+cp5KIRjLUQuFFRKj6A3Pb18QKSN1Yr6gpEYXw3pMjMTR8rKCodVw5M4wFSFXrM
 Y28iq8lfggfnL6ABf4FmjcIXudvbJFbEZpVpWMgdIORlhzDA5iWwtBszzSlV9jeU/wE/cPvFiCq
 TV1ZYlmnO1+PE13C85KVmboG3lLq2kzVlDhMSvXb4Tg+NpolvsZhG7mvhO7epWT87OQYO8hfZbp
 zYYdmOvmC32GAeTSkyXqqItZBisbboR03JJqBQ7nuk/xu7Bea5fxDAoYODy6QH0Hhhcqu2oj
X-Proofpoint-GUID: oO4BpDikwRWtrkRx9OK9vIDtFgljbHvR
X-Proofpoint-ORIG-GUID: oO4BpDikwRWtrkRx9OK9vIDtFgljbHvR
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=687a83bb cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=tMiizUMu9hGndvLFPAJAbA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=IDfOk1lORozFkaJI5SoA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180138



On 7/16/2025 9:58 PM, Krzysztof Kozlowski wrote:
> On 16/07/2025 17:20, Pankaj Patil wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> Add support for Global clock controller for Glymur platform.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/Kconfig      |   10 +
>>  drivers/clk/qcom/Makefile     |    1 +
>>  drivers/clk/qcom/gcc-glymur.c | 8623 +++++++++++++++++++++++++++++++++
>>  3 files changed, 8634 insertions(+)
>>  create mode 100644 drivers/clk/qcom/gcc-glymur.c
>>
>> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
>> index 051301007aa6..1d9e8c6aeaed 100644
>> --- a/drivers/clk/qcom/Kconfig
>> +++ b/drivers/clk/qcom/Kconfig
>> @@ -645,6 +645,16 @@ config SAR_GPUCC_2130P
>>  	  Say Y if you want to support graphics controller devices and
>>  	  functionality such as 3D graphics.
>>  
>> +config SC_GCC_GLYMUR
> 
> G > 7, please order alphanumerically.
> 

Sure, will update.

>> +	tristate "GLYMUR Global Clock Controller"
>> +	select QCOM_GDSC
>> +	depends on COMMON_CLK_QCOM
>> +	depends on ARM64 || COMPILE_TEST
>> +	help
>> +	  Support for the global clock controller on GLYMUR devices.
>> +	  Say Y if you want to use peripheral devices such as UART, SPI,
>> +	  I2C, USB, UFS, SDCC, etc.
>> +
>>  config SC_GCC_7180
>>  	tristate "SC7180 Global Clock Controller"
>>  	select QCOM_GDSC
>> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
>> index bf95729678f6..cdc3d9ba9024 100644
>> --- a/drivers/clk/qcom/Makefile
>> +++ b/drivers/clk/qcom/Makefile
>> @@ -94,6 +94,7 @@ obj-$(CONFIG_SA_GPUCC_8775P) += gpucc-sa8775p.o
>>  obj-$(CONFIG_SA_VIDEOCC_8775P) += videocc-sa8775p.o
>>  obj-$(CONFIG_SAR_GCC_2130P) += gcc-sar2130p.o
>>  obj-$(CONFIG_SAR_GPUCC_2130P) += gpucc-sar2130p.o
>> +obj-$(CONFIG_SC_GCC_GLYMUR) += gcc-glymur.o
> 
> Same here

Will take care.

> 
>>  obj-$(CONFIG_SC_GCC_7180) += gcc-sc7180.o
>>  obj-$(CONFIG_SC_GCC_7280) += gcc-sc7280.o
>>  obj-$(CONFIG_SC_GCC_8180X) += gcc-sc8180x.o
>> diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
>> new file mode 100644
>> index 000000000000..a1a6da62ed35
>> --- /dev/null
>> +++ b/drivers/clk/qcom/gcc-glymur.c
>> @@ -0,0 +1,8623 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> 
> Missing date.
> 

will add the date.

> 
> Best regards,
> Krzysztof

-- 
Thanks,
Taniya Das


