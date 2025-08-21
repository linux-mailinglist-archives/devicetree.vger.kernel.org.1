Return-Path: <devicetree+bounces-207302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B751B2F0C7
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B95B216F754
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9842EA15B;
	Thu, 21 Aug 2025 08:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="Lcgb10Eu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13925272E43
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755763938; cv=none; b=IOry8+v0/eRV0SDoACtI5wS1/6VYwp1zqKtsvuXmD7vnaRjeDTZH9akXFEE82SGUA4kj9ST/8slhHHO8U0WOKxakgxGbcnjUXSiVqGUe4Tocj4qWxL8XsckfNy2u8nEw9MEM0AG0uANhIUioSsvFyRn9PbC8dqKDkt3p2/jmIgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755763938; c=relaxed/simple;
	bh=Ib5rwP8vabBmjTB2gHFRufvV/brLouRfcpTeVRXGdAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YywrgVS/P/FI7lSXvqlxmogvVBCXjQfoQ/bNH6am/Bk3fz+Rf0fx/N8OcnqAL7fqS8DySsXsl7cwBRX8fTknuDSkbH3eDvuzLnxeQXwP004G7tER0dN8OofbyuazFHcPaxadq0nDITngEEtJqyU54o/PaXjrrnF+vjgh/IkKhI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=Lcgb10Eu; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c51f015a1cso97548f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1755763933; x=1756368733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RnPqNwnRdJMIc37XxiVZSImeUH9HHnzjQda0KVcM9Yc=;
        b=Lcgb10EuZgGW7I8uqEwCl8dIpd6Z4YPnetNqsqTFatCSeCY/qyWcnQWCLLuENB+ieY
         1WRzWDKc+XrV7HaY5NsADM0kHuNWhnUL6pF5Akq3rldTEHchLMTsD3QjFpflZZQTok39
         kgYn+IDTyovJiS+s27E4qh4F6Bj+hJy6kGVeVSCg78ijYxCFOMxpb+2C9zIQDiE8jHDw
         Ic7muvar+UEGvMaXqqTjAFdbQFbHg/y1fHWGwqcSk0Eo9Wq3FAnTLPMAJsVRWnE1XP1z
         bV50S0nW+qNXyhFIo6GnXbhjL+MUjzFk1S1Cpyy90TXdcXP/0aTIlmznjhyppmVUnnTE
         HNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755763933; x=1756368733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RnPqNwnRdJMIc37XxiVZSImeUH9HHnzjQda0KVcM9Yc=;
        b=eTnN5527U5sFPTBAJm6qR/pca4eGW3BnFteYDlvkh53NvCYf7w3ZIyj3BTLK64aaVB
         56bdx4hzt3xCXztvqPYBsrEb8yOT5emsbORVCO3p9HeWJ/h6Rq347be0pkYdV5YialX4
         zbY/3fH4w9I7Hq9DVd9CBQdIdvT12S/ds9SxQUUfF/LhJuFTSrb/Y0lrrGp6/53c3nce
         ZhmkArra8I1CzOFtV42QA5uNHEskyEJJz10Q/RJdGYaTbxvhE52XmHqmg0ChgheoA8Py
         dUqrJDM4a/xEfK2Zj4YsHLhhdHnv0/8G6LaZ4Lv1EA977HI6UnK8mgwMCcTqUdXvzUcp
         yDaQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+KAn3oOW8voal6vkeBTF5Ysaduwqyribral4e//c/Cq1iiexhGUw+FzLjMC8IHTN6LPZIOjoOoO7Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxcXknwipRQxijeaQZCbNsKo4DH/uc0QScGAAkSiZF8NFpUIC+4
	EheN8jQDGBoolmTQZnltQjr8g9wLYva1Y9JKgCgRwZr5nXPMf0i6+eSYsN6bkuhfHvY=
X-Gm-Gg: ASbGncvAzLVo10Uad3mglJsQrwq9Tljflt+g9+3kV3xNLqFDN+kn0asgA0MNl7O0lad
	PgarNLcTW5BwuLFA+A/+N0T5yfiobgoqWf/mz8TacQQy+DwpH690hQDm4O6j4/CXRbIM/AYBmRw
	hAk7f4IceDh0pCCBD5hvZrI1YkJO5Ak0p2oSMp2uFAXuEz/Un8Tm1wld6zBsxN1TmNkqYKGi7xX
	oYv+w6oGUqTyVmSzgnkGc1qGOBkxIapx0OExi2e6q52lWKtrlXHEui71sr/u2GuoBDUgvVTPCyV
	6CwLszKReOW7/Nv6+Fap8JFAWpnxmuUNdwBXtoVUjkLO0bFOmpfPncpAQHA2YDEhw0JuWEwet6U
	GpsnJWfGS292MT4zrITHxajZVi6dqnrhflSJzlpgT6j6PrM93hT+Um15TiWNIVE41QBQSBwYPEl
	ZrJB0B9gcWphrs
X-Google-Smtp-Source: AGHT+IHdhYS0MRSPzzW3UprEmG6p659Pq++hTQXcf3C6FUIxInpMAwyfL1/KDCaz5DbATd0JncFKyA==
X-Received: by 2002:a05:6000:4283:b0:3c3:8e05:f72d with SMTP id ffacd0b85a97d-3c496da8a46mr1312520f8f.33.1755763932852;
        Thu, 21 Aug 2025 01:12:12 -0700 (PDT)
Received: from ?IPV6:2a02:1807:2a00:3400:b63f:533e:fab7:5343? ([2a02:1807:2a00:3400:b63f:533e:fab7:5343])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c074879fe5sm10591690f8f.2.2025.08.21.01.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 01:12:12 -0700 (PDT)
Message-ID: <b98cfa73-c6ec-4006-bf84-febbbdea8804@hammernet.be>
Date: Thu, 21 Aug 2025 10:12:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: spacemit: add UART resets for Soc K1
To: Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linux.dev, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250807191817.157494-1-hendrik.hamerlinck@hammernet.be>
 <20250820231917-GYB1065530@gentoo>
Content-Language: en-US
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
In-Reply-To: <20250820231917-GYB1065530@gentoo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Yixun,

On 8/21/25 01:19, Yixun Lan wrote:
> Hi Hendrik, 
>
> On 21:18 Thu 07 Aug     , Hendrik Hamerlinck wrote:
>> Add reset control entries for all UARTs in the SpaceMIT K1 SoC Device Tree.
>> UART0 was functional as it did not need a reset. But the other UARTs were
>> unable to access their registers without the reset being applied.
>>
> ..
>> Although perhaps not needed I did add the reset for UART0 as well,
>> to ensure consistency across all UARTs. With the current-speed set to
>> 112500 baud rate, it matches the factory U-Boot settings.
>> This should not give issues with early console usage. But perhaps it could
>> be a good idea to let somebody else confirm this as well.
>>
> Adding reset to UART0 is just fine, so we don't need to presume it will
> rely on bootloader to de-assert the controller
>
> please write changelogs in imperative mood, you can follow
> https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#changelog
Ok, I’ll update the changelog accordingly in v2.
>
>> Tested this locally on both Orange Pi RV2 and Banana Pi BPI-F3 boards. 
>> I enabled the UART9 and was able to use it successfully.
>>
>> Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
>> ---
>>  arch/riscv/boot/dts/spacemit/k1.dtsi | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> index abde8bb07c95..7a5196a98085 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> @@ -667,6 +667,8 @@ uart0: serial@d4017000 {
>>  				clocks = <&syscon_apbc CLK_UART0>,
>>  					 <&syscon_apbc CLK_UART0_BUS>;
>>  				clock-names = "core", "bus";
> ..
>> +				current-speed = <115200>;
> please drop this property, dtsi file should contain generic info for SoC,
> even in real cases, all boards use UART0 as serial output and configured
> at baudrate 115200, it still be able to alter to different frequency..
>
> besides, if you really want to set baudrate, then I'd suggest to configure
> it at board specific dts file, 
>   stdout-path = "serial0:115200n8";
Understood, I’ll drop the `current-speed` property. It works without it.

Thanks for the review.

Kind regards,
Hendrik


