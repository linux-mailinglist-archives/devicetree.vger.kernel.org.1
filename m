Return-Path: <devicetree+bounces-234016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AA0C27CDA
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 12:39:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FD7A3AC6AE
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 11:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1A72F5A03;
	Sat,  1 Nov 2025 11:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kmWx0x2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E1126ED21
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 11:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761997066; cv=none; b=D7BHQ2Q+iuS1S2TEI64BrzVZqAa/dPn4ZaeEP4ANCj/NrG26s6/uBCeIbTKuK90GfjJuNvsVAjoScjfE/Z07bgKyHKjpvLyjGxwdor5Iuqq5HsKtT1xLCJm7lSsaoeB1nVNdI6kLKbTInXX16TQJZ2X12e1WlM7H5ehphjGS6aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761997066; c=relaxed/simple;
	bh=7IfCe1yJZ8OATH2vDaCumIpLU4/MgZjeWWPo4JOsHeI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=omaBal2r7p7P46TpCb6rJ9Z1dirgW3OCk1RENEJl3IKcpLc7a/r6Xub8wKT4n7v762/xCF3LZ18bBMxM8jCM+oMFeusBxAanHoKxQIYL/8F1uaAToO5VcA/T8A7zknhPxtrQb6YGM0SMY2zlEKI9aPXElVk/69fYzOkVqzy4e4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kmWx0x2Q; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2953b321f99so10757665ad.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 04:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761997064; x=1762601864; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l7p4U/aotayqb+o6BTayF37konWJWlNpUHWv7lMsZ+s=;
        b=kmWx0x2QJm2h7NYgilHXZjUnELxxao2Pn4NalMWDEtRS/GPrf6n0ogY01KiOuo6BXR
         kTpi4XFwIWtsqmkAJuGudfkY42Ro0eFGRyq39YfFvBfMiDonqXPm5dD/Tf+rzDGT1r9m
         L2RYAdlMcIDCAckLPN3jVjUq7EMhJ6np3YveBaoHkWfH8Cf7hdWNjpl8dlDGmB4aq4Pv
         nwmZZNnardmgtwv5gmWH6/1uCsqnZOTw4xpFa8N/Q23wOlKPsWYjz6/DKmb3oEif/rNn
         rQGyZ1WDY0N4EPQ6Vho6z4lV3/42e4ZY38vlUmmxjFCE1UXgXuJ322HE42vXasccKb33
         jgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761997064; x=1762601864;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l7p4U/aotayqb+o6BTayF37konWJWlNpUHWv7lMsZ+s=;
        b=NTD77Ae2AWBzGMNZrQhXLrS6LeJzbkXYh6YQvA3tv5iF+iBWCrjA5ZP6Z4fxMTnyjU
         /U8zf6jMIn8TJ4ZPPQf+wSYMMWUUrzeKRufWa1v24m06aHy5qqlzpfwG+7BeFi/UURds
         zesRLqAKr2GN/UYpAm03p1lWW0tmfAcmImKfbuuSYmV4Fa7RQIFS5UVQHBC7ZLeK2xoq
         57H8puY1p8Qfl9lPExcP85xbHA9Wxyanaui9trs2Ph5heFIb26dZAEQwS8o3Pzo8a24n
         97MAdk10GOtqZ3jXyW/ILx5uqOYpHm+S7RYpApuVybvP8RJNIm2xoLVuTtpozBs/TAPQ
         23hw==
X-Forwarded-Encrypted: i=1; AJvYcCUUa9ErxyRTcQKP/TXYK5QzlzMzKM0r8aIOoXagz3TEBNmPkU9IAs+P3vHUsLfZnfRB5xpdGLOkTDyI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx5OEjXd4fsTCBsIKPhA/Wu+XAZ09ARDh+8S9yeCLGgkvw5KmY
	wipzqAv7/EjkM7ulDbZbEvegLZ78yU/voTPrmEIBykrkGoj+Xxq17iq/
X-Gm-Gg: ASbGnctzR+1sKSGp+IKNQs/ywtBm9mAC88wUl1B7SYHuPWKbT69mLhEf/wVbo60FGb3
	nTEWqUHgO2kNIbBTwIeqrURmf4nM59UZMLBmXbSaCjtIGPul5N1dYrrsLSdSHoc0m4ZiA8NfK45
	E8NOe9kRpoeEZE1M9f+kmmlKngr90olbWK38SgbpWRvCy6vAUeZDd3O6e2nHE3LJBbPF0awlA4z
	2PaqCB1xHDLwzN7KFky5R7dcyaHd+vNCiRdG27oo+zNmrNgWwmG/n5iMbZBnMO7qktvKVdl52t5
	in9riHZp4owZAyYefORSS8DAijf7lSmARxyQXPmc6EjOPRKAgAehSKbE1Kb3/1oaDBBE72NRaRu
	Z0Lw0X+4pPnUWk0W7dpjihzwwjWZ7TvgSw6UTb4fmzEaH4n0+mmzwjcx3it1nWn/4N/LHEQoHCL
	4tuiMqENFId0RGdHirru8kD7cl9L1wwYtG2gGPdd25cGS40QE0kEaB2A179r6fEo+yZ/cnXlrct
	RVlNmhOYmi+SHgB0J0fiJgE4BkaYLZEUeAYtG7Y+w8UqNztMNm1jehxrciUpJ6GQDldr/RtV7PL
	OV2WpnoF
X-Google-Smtp-Source: AGHT+IElqgpdi0hmBlhoWaDzwCMRVG9l19J7bo2p6s9Q8XOq2cgtoU26ySYjwTwYUrWC/KeNqbFRWQ==
X-Received: by 2002:a17:903:18b:b0:295:5dbe:f629 with SMTP id d9443c01a7336-2955dbef73cmr10992835ad.8.1761997063284;
        Sat, 01 Nov 2025 04:37:43 -0700 (PDT)
Received: from ?IPV6:2402:e280:21d3:2:61a9:cfa6:c139:b812? ([2402:e280:21d3:2:61a9:cfa6:c139:b812])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2955967f329sm16919845ad.108.2025.11.01.04.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 04:37:43 -0700 (PDT)
Message-ID: <406fbb02-5a2b-4097-a645-b97d3d74287c@gmail.com>
Date: Sat, 1 Nov 2025 17:07:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] iio: adc: Add support for TI ADS1120 ADC
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
 <aQR1N__AwvPm21tm@smile.fi.intel.com>
Content-Language: en-US
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
In-Reply-To: <aQR1N__AwvPm21tm@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/31/25 2:07 PM, Andy Shevchenko wrote:
> On Thu, Oct 30, 2025 at 10:04:08PM +0530, Ajith Anandhan wrote:
>> This RFC patch series adds support for the Texas Instruments ADS1120,
>> a precision 16-bit delta-sigma ADC with SPI interface.
>>
>> The driver provides:
>> - 4 single-ended voltage input channels
>> - Programmable gain amplifier (1 to 128)
>> - Configurable data rates (20 to 1000 SPS)
>> - Single-shot conversion mode
>>
>> I'm looking for feedback on:
>> 1. The implementation approach for single-shot conversions
>> 2. Any other suggestions for improvement
>>
>> Datasheet: https://www.ti.com/lit/gpn/ads1120
> The cover letter missed to answer the Q: Why a new driver? Have you checked the
> existing drivers? Do we have a similar enough one that may be extended to
> support this chip?
>
Hi Andy,

Thank you for the feedback.

I evaluated the following existing driver before creating a new one:

ads124s08.c - TI ADS124S08

- This is the closest match (both are delta-sigma, SPI-based)

- However, significant differences exist:

     * Different register layout (ADS124S08 has more registers)

     * Different command set ADS124S08 has built-in MUX for differential 
inputs

     * Different register addressing and bit fields and conversion 
timing and data retrieval.

would require extensive conditional code paths that might reduce 
maintainability for both devices. A separate, focused driver seemed cleaner.

BR,
Ajith Anandhan.


