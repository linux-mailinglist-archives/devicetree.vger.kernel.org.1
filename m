Return-Path: <devicetree+bounces-238129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 345A3C57802
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:58:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D6233A6BB6
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B732034FF7F;
	Thu, 13 Nov 2025 12:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hsUdmOXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15AE3502B7
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763038355; cv=none; b=fO6TxNf1jm4Op1N93y+mg55lC8ilhAnO204Dun0B1ZUGWoM1GeXPfN1XEf4q4/RRTKi2Bt1d39drPKuVj7iqcyqXEsLoE5G/vTmLJsq8YE76fvDzCH5QK4JM7wUnmkiHlDfcPaPoVViwvzn1mPlkAsx2qssOvkM7obJvi5wC5/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763038355; c=relaxed/simple;
	bh=6rf5XICqyYYUFtlvVo+knUPiKpsZJ2UtI9BoM7WxNHQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qWEBAYsBff/ol9ik3XfwkmmBGxrucQ9pzY2Qw+xRdRkX0G90aiAIfNSh12ydj+CbBVuPfXw9G92VJeS/c7NwXG10B7xC4dv61jl32jahhn0x1bt2fSiTg5tke2NQB8fMeuLT8Oo/jyDMpsjzBYKBLny1S0QlRGjBxhCQ03tj07M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hsUdmOXc; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4777a9aeedaso6866315e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763038348; x=1763643148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FXYoTtDd3fqHx8jiPhi5RZA+APMZjV0IIjDW2SgiBMo=;
        b=hsUdmOXcxVfusS8JDOe8Ch+o1ahwXn8wpQ1i7zxYY+frevQwvxJtdKheol/ASrS2fG
         S/gi2Mn2QKY7T45RtXol7ETORcSCHeEM+mqLrt2WhexmM8rdrpidAwhL77+1P+y+o+FC
         OPK4f1FvJFuZ4Dd8a/YgUN74GgxWa+crLvDqmftpHQp2kFb8+c5VUCPKeKvuA4FdP+8X
         K+Eql/6bnYcLkYuuvqIlgtBSVRyZSLso3/VUBVEUz+AXZS5pTsI7dtFPCS7kYKSleWMM
         c4PVgWSnPdzOQ8PrM5hMRw6eARRxOysh5owNHW/9Zc8f3qaWfX2n2Mhff0DRcGXSaY4y
         dfeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763038348; x=1763643148;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FXYoTtDd3fqHx8jiPhi5RZA+APMZjV0IIjDW2SgiBMo=;
        b=t1MTTNQHtiFLVF4GIloyn3ZD1eYKCnA1HtUYLHmDi0UUvYTK2X+6m7WrPLeOq+EjDW
         kqJLa6BttlpTnx9MZil2s7VdVKu7mUg42Xu7vL8hrRT8dsQ+AlOtRkwHw+hvjQXAln+j
         Fy2K7zkNRv1AKpxFSPO4gpcV9k0fwC1z1M7Mi+MHUABhniSqjsS/2uxnVcpaJ3AXzdO8
         CCHAbMiaN7gxQlFtkBRqxdpNbAdkRcuXcsVAP+hINLazzkCfSxODis1+WaFIVN9pqlj4
         dh9oA+ToJiIS8Rl/kK3gGoxApN4c9ZBa3juOuF2QO/jjFNYP0aDZWwcryFGXXw/a0KvR
         IroQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbkaLGsJZuCx8peNxew4vziTGm/KZhAtJd/wu+QCdMt30NGFjpLA+9hr73vh1jhrtsNYKfKadYKUD/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+i2kqLquLYMdPe2YCLp5eL+VZKaSsULhDGJv+AZHMBVdS7NiT
	S/pkLH4w4CNNVNyBXG+GcNiFGrJo6tHEL2CQIahklXI2BlLD3bQD30eS/3ZJQ4ZrEGA=
X-Gm-Gg: ASbGncuJC/64D5qcd+V+Y7A3CvPeKKjJdk5AfuquF8mPhUqF/bOWzaRSt9pg4cjZWi0
	yYtid9YeZ8R7Y9GXpt0MOO36ODyUfAc1bLzwr1O0MffTwAB6lxedK9WgKGFAClkeV6EqdTRCXbN
	dJmlXDKnSKCnNEXDn8hKb1/BKO4fIptyUY9p52Bp6ymW1jnqFgG3a8ZSfiT/C4dBGiZVYd2HRcc
	WqMSfBxnCACUtHW5KEUpTs3AuxegSb0T4H57yaqrtq7/8p//DLprDL8caq6scmL8NcT+2Xc0XpV
	yRZxzeOKqLq+DNIz+Jndut4bnyxAwQ7plBVciCjoGAE59iOrM19V16CIhc4bdQSNps2tMgLNNok
	dt6ge567qHj0L9gdYIhnqUiP34Tj0eEg/jPqyQ+Q7zMUtns1x1Ro0NEJXUBW+ZacJSaeVC7K3Wr
	jFHVayMw==
X-Google-Smtp-Source: AGHT+IHpr3MsueMipe4IlddXi4/Vzl0f21raKHfRPZH2whdQqJt5/ks7Bz8Gchg8IDQDCn7p4XbSfQ==
X-Received: by 2002:a05:600c:c4a3:b0:477:5ad9:6df1 with SMTP id 5b1f17b1804b1-4778704513amr69672855e9.3.1763038347935;
        Thu, 13 Nov 2025 04:52:27 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4778bb30e3asm21086955e9.1.2025.11.13.04.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 04:52:27 -0800 (PST)
Message-ID: <8cb0b7eb-d958-48a6-8940-6672d01b7e49@linaro.org>
Date: Thu, 13 Nov 2025 14:52:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] nvmem: add Samsung Exynos OTP support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
 <20251112-gs101-otp-v2-2-bff2eb020c95@linaro.org>
 <20251113-benign-macaw-of-development-dbd1f8@kuoka>
 <9d77461c-4487-4719-98db-1c5c5025c87e@linaro.org>
 <725ea727-d488-40aa-b36d-04d6d44a8ec5@kernel.org>
 <1af37451-1f66-4b6b-8b36-846cbd2ca1e8@linaro.org>
 <62bb6c08-a1d0-4dba-a431-0d6ce49d66b2@linaro.org>
 <8eea72ea-c106-4dff-979f-c1acd6b0d617@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <8eea72ea-c106-4dff-979f-c1acd6b0d617@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/13/25 12:44 PM, Krzysztof Kozlowski wrote:
> On 13/11/2025 11:26, Tudor Ambarus wrote:
>>>
>>>>>> this can easily be just customized chipid driver - with different
>>>>>> implementation of exynos_chipid_get_chipid_info().
>>>>>
>>>>> If the answer is no to my question above, how shall I model the device
>>>>> that binds to the existing exynos-chipid driver?
>>>> Just extend the existing driver.
>>>>
>>> So you mean I shall have something like that in DT:
>>>
>>> +		chipid@10000000 {
>>> +			compatible = "google,gs101-chipid";
>>> +			reg = <0x10000000 0xf084>;
>>> +			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
>>> +			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		};
>>>
>>> Maybe remove the interrupts because I don't need them for reading OTP regs.
>>>
>>> What happens in the maybe unlikely case we do want to add support for OTP
>>> for GS101? How will we describe that in DT?
>>>
>>
>> Ah, I guess you meant to keep the node as I described it in patch 3/5,
>> an efuse node with a google,gs101-otp compatible, that will bind to the
>> existing exynos-chipid driver. Then if/when we add OTP support, move
>> everything to a new OTP driver. That can work, yes. Unless I add some
>> OTP support now, to justify the new driver. Both shall be okay, right?
> 
> Yes.
> 

I'm going to extend the existing chipid driver. I looked downstream again,
and couldn't see any other consumer of OTP, even for newer SoCs than gs101.

Thanks!
ta

