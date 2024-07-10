Return-Path: <devicetree+bounces-84640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6965892CFAB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 12:49:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 204E52897AF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A3BA18FA1B;
	Wed, 10 Jul 2024 10:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hB9nWKhR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902F117BB20
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720607973; cv=none; b=qnSdksH+DvSv2VQ5GNyMQkG4OujAdFntHOrLYeXR7HF6DuPkStOQ5l8zcTrO2iu76bZ9RjJzB4Enabce+odY/KWCHArkBI+SkLsgxW/5BLknWRIG75Rura+BlGRYd62v1a47x7AR7DII8SaWxc2S/Eq9M+IOWyz0guWMp3OahXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720607973; c=relaxed/simple;
	bh=gwXJSZMI76F6pJRYS+Sxo4wWhMxt/71rrq2SDfhGb0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lYffdAV/Ehz/tOOnsVu0Fk3OziTYvsLNe1vBzlfYbEHXT3NCUtfBt2a4WGAe306tm1p6MdU+x6bsxKjX9EGM5ymAXos+u3UzlI6abernTzOSqqeEpZ0QqOW0pYa+hT8fp3toZlUPh0EgTKoSc9k0zXkAbYHOua5Ww5wFrffJLzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hB9nWKhR; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5956fbe6d0dso2009213a12.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 03:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720607970; x=1721212770; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tNjSkQwizLNbQa5se+hi01VHwZjYhY67+rGFTrRRUkQ=;
        b=hB9nWKhR5pIC4pviR3D+U30FQYuRN1fdPoyp3cwiJHfAYPMwWSAC+ZamrXzFhM8nc1
         vtrSoik10D42Mty2t3q9pEikNdZ5OmDBZMray8lQK5McPlm1ikR8XiKNjhmRDRh6BoiW
         XdCp4z2/LDHxufb+gwhI/r+Gxf9nlbt5iGDbXnKiG2TApby3pfDod5dchQ/Olik4bPKF
         JL3yLHmyWqB7lKYpshW84PA9RqVtHEVAwVCFJq0PbT8M33IBXdTwdWJxtAJRaL3D81Ds
         xMwgBLB0HRrDqgoGRuA067EpjLh9tmUrL0tFo1ilmg41876t08FDuOOTh+fGk4pSbtR1
         FZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720607970; x=1721212770;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNjSkQwizLNbQa5se+hi01VHwZjYhY67+rGFTrRRUkQ=;
        b=sIMmof8JliX+0dGM9cC88DyGmpALcr+P2TqZMyI8WOdaUeIfRcYydSuwAVSGcJ+P+5
         5aqs+C1OzgtG+JXwJl6T6QROc7/N6dpEiSNEnmqerTHSydVYc5VXZrgFqR0ZSRh41MUd
         Zak17eFUa8bxi+UTMBqwfT2T0xQFGadEDm+T7CGmLnQTRdaOfAzBAfbRGbDmlCHguHVB
         37TBL/vZaCXzEqnmDwx5bY99mRmNx4PHF+HBFyHfeL++9JvNKY2Hw7CG4D/bssTNQx58
         obVLuegEcfUBpaWrJ7bBaf3gwa8MIOjBsoMU1ro67+Yg/e/mELUaLZgtyYkE9gUaUN05
         UhWw==
X-Forwarded-Encrypted: i=1; AJvYcCVSEGnxMkcbQpal3/eylW6FsICPfh3ZtS7qCPdNHmdI2zfvTTkHcqDhK0mGIay5zEcgoqSgsmW3Fk7ySlp1F/rdqhG2IegkmE6/kg==
X-Gm-Message-State: AOJu0Yz7ZD6+1OWras8chehwEvP5hqbM27NmSsh+0+KG90DxURGRwlo8
	vdoQFPsniRRHPwk4H7UYxa2N7uUol0HnAk/Af5yNG0nIzu2dKbDOFbHSezB9VZ4=
X-Google-Smtp-Source: AGHT+IF1y9iDPWiYEM6tYZdmRHCVfRdbkv3CjvdtnEdn+QEvGUarG3cgVTM8QFUjJmxfLPir+zCYAg==
X-Received: by 2002:a17:906:35d5:b0:a6f:52db:7e5e with SMTP id a640c23a62f3a-a780b6b1d06mr352407566b.19.1720607969687;
        Wed, 10 Jul 2024 03:39:29 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a7fef9dsm149865966b.99.2024.07.10.03.39.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 03:39:29 -0700 (PDT)
Message-ID: <f5ed3285-82da-4ba8-9b4d-a0cc7323fde4@linaro.org>
Date: Wed, 10 Jul 2024 12:39:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: sa8775p: Add UART node
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Viken Dadhaniya <quic_vdadhani@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20240710094149.13299-1-quic_vdadhani@quicinc.com>
 <2e309d52-8180-4922-9a5a-022fc8bf8ef5@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <2e309d52-8180-4922-9a5a-022fc8bf8ef5@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10.07.2024 11:47 AM, Krzysztof Kozlowski wrote:
> On 10/07/2024 11:41, Viken Dadhaniya wrote:
>> Add missing UART configuration for sa8775.
>>
>> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 231 ++++++++++++++++++++++++++
>>  1 file changed, 231 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> index 23f1b2e5e624..c107ee40341d 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -1,6 +1,7 @@
>>  // SPDX-License-Identifier: BSD-3-Clause
>>  /*
>>   * Copyright (c) 2023, Linaro Limited
>> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>>   */
>>  
>>  #include <dt-bindings/interconnect/qcom,icc.h>
>> @@ -657,6 +658,21 @@
>>  				status = "disabled";
>>  			};
>>  
>> +			uart14: serial@880000 {
>> +				compatible = "qcom,geni-uart";
>> +				reg = <0x0 0x00880000 0x0 0x4000>;
>> +				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
>> +				clocks = <&gcc GCC_QUPV3_WRAP2_S0_CLK>;
>> +				clock-names = "se";
>> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
>> +						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
>> +						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
>> +				interconnect-names = "qup-core", "qup-config";
>> +				power-domains = <&rpmhpd SA8775P_CX>;
> 
> All the clocks, interconenct and power domains look to me questionable.
> AFAIK, most of it (if not all) is going to be removed.

Yeah.. I'm lukewarm on accepting any sa8775p changes until that qcs9100(?)
situation is squared out first

Konrad

