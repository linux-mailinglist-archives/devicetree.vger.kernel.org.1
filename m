Return-Path: <devicetree+bounces-234307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB87FC2B2A5
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 11:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06ED03B8FD6
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 10:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982093002A3;
	Mon,  3 Nov 2025 10:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Db1WiWvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516FF2FFDE2
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 10:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762167059; cv=none; b=qVoHF4LCSxo4IERG6Z8DUlyD3s5T/UokB/zKxRJsDdj6sAjK4o5gac1CJqrWgIrX93p6P93vmnksQ3FrBwOg0OCZALMmSE8edK4MHlxvtfkLGWEKp3W3ezecQfMEaMg/evjePUGrtCPVG7KMcUhJpa2qG5kqmGWc8Q+7J6GpL/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762167059; c=relaxed/simple;
	bh=K/DZtMl6bTbXSyX1kAX6cDkUuBNHfLB6DitBcsu4woE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ly8LPPNox+SR0gQi+yksqFy1iZ9dtrZRg1uKVXse1jQ8//DgrFS63jqJ2bCk5F+x2o2FaDXRo/8gOvYbQ0v6N2lfBxHQsnmQZaANjVOxyIacct0luzsO5hXzvWriIryPLr+9D3sWJKYIM00CUB2ngePT6s7E3Dd4fdamuaYq8J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Db1WiWvp; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-640b0639dabso2302375a12.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 02:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762167054; x=1762771854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6aAPWr6sG6plHcRAb74AERMut+3PIj3xR4C7ijLuCgY=;
        b=Db1WiWvpl+hkZBbwI9ag7Df6MHc9U8E5LwVFjmJ/JhNqOQd7gRgMfQjvZoqDMRUDbV
         NzHLozZgrQKBoHYjxkjELN0DT9U2YrEXGgIEEnydTXFXxdSBO2SIraTh/QTrkfVfuhT9
         kMZKgqtQyrKCG4R8oDFNNq+00wpTJpT3vAP52eldtqBcxCTQqUT3Eez6TK0T4GaD3KN0
         9CviyO2M9SLHS+XqOeqK6HL9Bgm26fLu9nNr4e3TLLbxBM4QOkx1qAqp0eib9J193P8K
         Lb1/RCTjXk+M6My2QctUV9i1PeG/5lUu3+azOW0vxz+RAp8e8zpPoYBVESf/ayoRrYMp
         BMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762167054; x=1762771854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6aAPWr6sG6plHcRAb74AERMut+3PIj3xR4C7ijLuCgY=;
        b=edVuVpOFY22UPZeRDd3S18s/GICeWdHaUBh5I4tz5rB3tyzYV4oQIdSOrQvsULCa7L
         VPALXH6bTMX3N7EDq6YeZAYSfEkyqZUvrkiUb5EKvBkXkiEvw0T0JgFtVt8CMJw0S8om
         7BfTwX5541SNLdHVY2vkxswhnlv/JYqkqgnKrTgZIUBGkaPsDZQgzoFi3WlAuFVgKZ28
         grsmbceCengtCKHugyLQXfR6SFXXef8PJUdCTMFUmKE8/cZaukPzPZNogK5oaPRjuTGv
         FPB1q+EhrF9dP4mqPeYpuPIulGGiU/MtLk3lDJFVOBxqGwS0k6si7MiHPKmtAaBvF6NW
         Mp5A==
X-Forwarded-Encrypted: i=1; AJvYcCX+8SCOt1LoYuk9FcA80AmOZBttqnJRVqMzavRb7f/iLswp99fhGd3Tesus/UZZVth/vTdujOqiWedo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr6p7mQj8G6j1ILcvzbhNTXImnnXoL3EzWrBZGOkGQiMYCqWX2
	FT5JHB+pz70HpsAygK9Hn1wKk5GLWsY3V0ZihlBIB2qoU4G0H7eIuLjNHKv7yYRkQjA=
X-Gm-Gg: ASbGncv3FMhIHw7B4NdxK2SiNsZxxhBy/ORg3XfVj/E/AxzvniIw/+fEdLHgt8PE729
	2+378LfwA/2BOC2+80ClAej7TgzvUvAQ1N5kUO3CBlrvZSxnUf56HrdWxym+HpOeAyQbvi7kTHF
	t8R/aDluJcm8IWzndbbnD+kx5DM7VU2uYgR8v99eoVPpcRcqXt+AsTI1TaWjit88csTGU1hJfhj
	E0AgdWYpACBNXnEZ2iRq1gbR22l8FUDkTishrpMknJ3O7fcwy7+3pSx2dOZ+TfkEe1MEO4Hq+UG
	rW3hQW2coBJ1DhC4nkXSKvI256Smycd1CLpIsWxWWpjaQzpxErzWkOFUagm0dMm1ONFCIFZEMrB
	fYV/Q/Ucpx8Kc4M8MIbO0ZpGu6IDThF9GXw5PafZCUJ1Dp9+VSwCiNUNyMxx6AYccHw5rvRMA9c
	FlYZjHvZg/MrRS
X-Google-Smtp-Source: AGHT+IGAsmHIJSxBw8Ivjg8wV5c1LPLNuyYfSnhOFaJTNn0jDUJaTnBR+1poGrO0LFeXhX5G5jmT/Q==
X-Received: by 2002:a17:907:e98b:b0:b6d:8d8d:3010 with SMTP id a640c23a62f3a-b7070840e1bmr1281242166b.56.1762167053554;
        Mon, 03 Nov 2025 02:50:53 -0800 (PST)
Received: from [172.20.10.10] ([213.233.110.172])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b374067esm411112266b.64.2025.11.03.02.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 02:50:52 -0800 (PST)
Message-ID: <b82af744-ebbd-4dc8-8ccb-c7e4f2a6b04d@linaro.org>
Date: Mon, 3 Nov 2025 12:50:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] arm64: dts: exynos: gs101: add the chipid node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
 <20251031-gs101-chipid-v1-10-d78d1076b210@linaro.org>
 <20251103-pompous-lean-jerboa-c7b8ee@kuoka>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20251103-pompous-lean-jerboa-c7b8ee@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/3/25 12:18 PM, Krzysztof Kozlowski wrote:
> On Fri, Oct 31, 2025 at 12:56:09PM +0000, Tudor Ambarus wrote:
>> Add the chipid node.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> index d06d1d05f36408137a8acd98e43d48ea7d4f4292..11622da2d46ff257b447a3dfdc98abdf29a45b9a 100644
>> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> @@ -467,6 +467,12 @@ opp-2802000000 {
>>  		};
>>  	};
>>  
>> +	chipid {
>> +		compatible = "google,gs101-chipid";
> 
> That's not a real device, sorry.
> 
> I had some doubts when reading the bindings, then more when reading
> driver - like chipid probe() was basically empty, no single device
> access, except calling other kernel subsystem - and now here no single
> actual hardware resource, except reference to other node.
> 
> Are you REALLY REALLY sure you have in your datasheet such device as
> chipid?
> 
> It is damn basic question, which you should start with.

Documentation says that  GS101 "includes a CHIPID block for the software
that sends and receives APB interface signals to and from the bus system.
The first address of the SFR region (0x1000_0000) contains the product ID."

0x1000_0000 is the base address of the OTP controller (OTP_CON_TOP).

"CHIPID block" tells it's a device, no? But now I think it was just an
unfortunate datasheet description. Do you have an advice on how I shall
treat this next please? Maybe register to the soc interface directly from
the OTP controller driver?

Thanks!
ta

