Return-Path: <devicetree+bounces-79188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E89E39144B2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D75D284F73
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F139469953;
	Mon, 24 Jun 2024 08:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="PSjCgbe5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAE94CB2B
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719217498; cv=none; b=MdkMZ+VAPT8ZVE0KsY0RypE/1Y3TTklsokaca3At+1/6ssRMXehx81czBRL8fZd1Xsono4HgUh0hUl6bvdlLtdBokgfrqJS+oiIKYUaVqhCy2IzqRJH5L6LLnnQhmAxbXw3M5zpvvaN6+HZsBHr24GjKsE83XdNmq5Fjjjj+TLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719217498; c=relaxed/simple;
	bh=gDacbADE2SAmVHz0VzwJCGPbVzzt3W6DAEZWHfwk23E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SoNvVQnaHnVzYgF0iDm4q1jMHnZT7upNfO/fy7rbGODDiPMakcCdiAG0ZrZSiUkVPMWQH4Kanw3UFM57kRPFljViZu0o+HZNmVZa7Vi0bKgkGxyBL3/EqdcawNKacs3s6VRmfyY2j4s4cKuwStmLaL94MQeLWO8h2ivcjsHXd1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=PSjCgbe5; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42111cf2706so5115455e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 01:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719217495; x=1719822295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eHo51wuTRWiZIUYTemkhy4Fril3hMcATqvGkIagVwG8=;
        b=PSjCgbe5yjz480PPzbxGmp8Jtyjoac9Pa/KyMQLmgii24PWKgwCMEn7QIc1HPhrhwJ
         EDHXU21TR1mm75uJZ0TXsk/s+gPPZLyIQPrn7WowdOc5A72lnThflt/6ZYvgarP9eyCz
         KDgGLKMD8aEHfIvtFKPCldsPaDQOjHrdsSfjgTyOL4Zhv3obbWRNfwQvpSrDZfqYgL/X
         HN8GlDZmGFo9TsHvXMoonZTkGnOo361RzIWvTElJ98KIVOBEt5QnhgUFfrt/K0VnbHfk
         3T5LiaQNc2WiSigK8oz3wgNRpzaCJQP0n6uKbDsoo5XTRX9iMxrltwDNqQILePIY0IQ3
         vCAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719217495; x=1719822295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHo51wuTRWiZIUYTemkhy4Fril3hMcATqvGkIagVwG8=;
        b=H/1bRE3vycNIdX/hDmS/7oDCRvlYfRdr8TpjBSQPuHYMi2XJisyxiGc4gRhaROEoIt
         KM7qt3BqBiS5aubGMx0kVBZTR2NU2svYUZFyNkXQjn6pVKl2kgESXAga1/gigUZsebeD
         aFcVVbUWYp4ZdbpSeDDm7RRu97cryO4A5ECwxWRZTIe+KgmDMxObn6cagRzwdEbVDZyf
         9+dj7OXHvquekbUST8u2KpN7/eSNTdGRSlXwwtyo/4EapGPASs6YfSjLzOMKNj+3hSGY
         /3IOtjZ6OI8iMdePus74xLM/fmbJnMKPMJRdrzPhvYSb5ycIgExbC9Wo3GPTKYQPlyPU
         XQMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVTjGayv/aMlEhhwZ+/BnOl6gc7PFKqh0cEQ8Do+pm8LFL5/mhC+cP6ctUS5bWxOevJ7Jgjy9oKdISAsZIUwmWco+z4LEc2meffA==
X-Gm-Message-State: AOJu0Yzm+CUibldSh52DnUZSqJABBf19EwPs05b2MSCZeejLcTdsEuP2
	M0JZqeEsGpRtdcww0iqcO0N2VsZoLx1M70gP/tzLiEblSN0RkI/qLLRIugRl4j0=
X-Google-Smtp-Source: AGHT+IHaJqmXxJcpAch8t7UdkOLrlv66b+VvjpHMvaM58a6QzEHIYabq9XOGzMv9in4jtgUGn43mVw==
X-Received: by 2002:a05:600c:3b11:b0:424:8810:78b5 with SMTP id 5b1f17b1804b1-42488107bb0mr40633265e9.0.1719217494632;
        Mon, 24 Jun 2024 01:24:54 -0700 (PDT)
Received: from [192.168.61.172] ([37.166.182.152])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247101a955sm175619005e9.0.2024.06.24.01.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 01:24:54 -0700 (PDT)
Message-ID: <c59a8897-34a1-4dc3-b68b-35dddf55c937@rivosinc.com>
Date: Mon, 24 Jun 2024 10:24:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/16] riscv: add ISA parsing for Zca, Zcf, Zcd and Zcb
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
 Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20240619113529.676940-1-cleger@rivosinc.com>
 <20240619113529.676940-9-cleger@rivosinc.com>
 <20240623-cornbread-preteen-4ec287aa165c@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240623-cornbread-preteen-4ec287aa165c@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 23/06/2024 17:42, Conor Dooley wrote:
> On Wed, Jun 19, 2024 at 01:35:18PM +0200, Clément Léger wrote:
>> The Zc* standard extension for code reduction introduces new extensions.
>> This patch adds support for Zca, Zcf, Zcd and Zcb. Zce, Zcmt and Zcmp
>> are left out of this patch since they are targeting microcontrollers/
>> embedded CPUs instead of application processors.
>>
>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>  arch/riscv/include/asm/hwcap.h |  4 +++
>>  arch/riscv/kernel/cpufeature.c | 55 +++++++++++++++++++++++++++++++++-
>>  2 files changed, 58 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
>> index 18859277843a..b12ae3f2141c 100644
>> --- a/arch/riscv/include/asm/hwcap.h
>> +++ b/arch/riscv/include/asm/hwcap.h
>> @@ -87,6 +87,10 @@
>>  #define RISCV_ISA_EXT_ZVE64F		78
>>  #define RISCV_ISA_EXT_ZVE64D		79
>>  #define RISCV_ISA_EXT_ZIMOP		80
>> +#define RISCV_ISA_EXT_ZCA		81
>> +#define RISCV_ISA_EXT_ZCB		82
>> +#define RISCV_ISA_EXT_ZCD		83
>> +#define RISCV_ISA_EXT_ZCF		84
>>  
>>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
>>  
>> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
>> index a3af976f36c9..aa631fe49b7c 100644
>> --- a/arch/riscv/kernel/cpufeature.c
>> +++ b/arch/riscv/kernel/cpufeature.c
>> @@ -111,6 +111,9 @@ static int riscv_ext_zicboz_validate(const struct riscv_isa_ext_data *data,
>>  
>>  #define __RISCV_ISA_EXT_DATA(_name, _id) _RISCV_ISA_EXT_DATA(_name, _id, NULL, 0, NULL)
>>  
>> +#define __RISCV_ISA_EXT_DATA_VALIDATE(_name, _id, _validate) \
>> +			_RISCV_ISA_EXT_DATA(_name, _id, NULL, 0, _validate)
>> +
>>  /* Used to declare pure "lasso" extension (Zk for instance) */
>>  #define __RISCV_ISA_EXT_BUNDLE(_name, _bundled_exts) \
>>  	_RISCV_ISA_EXT_DATA(_name, RISCV_ISA_EXT_INVALID, _bundled_exts, \
>> @@ -122,6 +125,37 @@ static int riscv_ext_zicboz_validate(const struct riscv_isa_ext_data *data,
>>  #define __RISCV_ISA_EXT_SUPERSET_VALIDATE(_name, _id, _sub_exts, _validate) \
>>  	_RISCV_ISA_EXT_DATA(_name, _id, _sub_exts, ARRAY_SIZE(_sub_exts), _validate)
>>  
>> +static int riscv_ext_zca_depends(const struct riscv_isa_ext_data *data,
> 
> It's super minor, but my OCD doesn't like this being called "depends"
> when the others are all called "validate".

Ok, let's make a deal. You review patch 14/16 and I'll make the machine
part of you happy and call this function validate ;)

Thanks,

Clément

> 
>> +				 const unsigned long *isa_bitmap)
>> +{
>> +	if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZCA))
>> +		return 0;
>> +
>> +	return -EPROBE_DEFER;
>> +}
>> +static int riscv_ext_zcd_validate(const struct riscv_isa_ext_data *data,
>> +				  const unsigned long *isa_bitmap)
>> +{
>> +	if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZCA) &&
>> +	    __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_d))
>> +		return 0;
>> +
>> +	return -EPROBE_DEFER;
>> +}
>> +
>> +static int riscv_ext_zcf_validate(const struct riscv_isa_ext_data *data,
>> +				  const unsigned long *isa_bitmap)
>> +{
>> +	if (IS_ENABLED(CONFIG_64BIT))
>> +		return -EINVAL;
>> +
>> +	if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZCA) &&
>> +	    __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_f))
>> +		return 0;
>> +
>> +	return -EPROBE_DEFER;
>> +}

