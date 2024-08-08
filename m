Return-Path: <devicetree+bounces-92145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B6694C086
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 17:04:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A81581F27A08
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 15:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E49218EFE8;
	Thu,  8 Aug 2024 15:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=utexas.edu header.i=@utexas.edu header.b="PagpHjMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68A518C91F
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 15:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723129445; cv=none; b=joNL/RlDnbYMuG+v+KYRLydvbzBb9ixA6t4rjCsDK/+mYHzw10qfupgUtoq352L6uZRjyFZ0ngjeYYbOz1CFOV7kkTYyvfvFRqgVH5LXJeCbzCVzOOG8g13W1CKQYrQ/GMYj7B40O9hUqdOeELGd4/mNPrsG1M9dfkuI7sdy7W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723129445; c=relaxed/simple;
	bh=X0w7ftyQc+6qyHmX1Ecc6rKTdr6itFQ3rEnsjHcn60k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=khKsvUEGhHFOhm0ef7fTLKpPcvq2cj8p3Wabo631nl0+fpLOpAIZncD3l0Uu4oyVXgiZvH0cYUfmsK6sF2F5P2rbzdtCVkBRxrNf8szeaTyQmapVWOsHD7i3LvsRg095KP8bsC9oyrxY+QHUgNX0qBRPR2d9zkB7W0OmP9SZc8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=utexas.edu; spf=pass smtp.mailfrom=utexas.edu; dkim=pass (2048-bit key) header.d=utexas.edu header.i=@utexas.edu header.b=PagpHjMw; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=utexas.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=utexas.edu
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-26119999171so708279fac.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 08:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=utexas.edu; s=google; t=1723129442; x=1723734242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uUVvIKt9lStrPhuuxKKkB/munqAE0y3RmG8Y1FkLQDw=;
        b=PagpHjMwst+NfozC8ttdTDbRkrl0sQlqRXRifTd1cXRaHBXam/hg1ZbRv353yhDQ02
         09ioCTAhcSjYV5vLEjo1efGov1uX6uTmsMXy6YW9c0pvE5BpJHM6ONDRTBHiEz155Ylm
         i/El1i/dYCh0RZDuRPwiJrDhjrnrOZW1FARZnHp6Is4uz5y9WGtqu0W3fOI3JmssvqsO
         u5Hpo8eY8mhtbfJSZvmSCPbOGtwuIQyPI3nxGScdBfiv7NqsIIoSDy7eTVksu0xNVVbO
         lkCmFDFOECZHdQuilLmZ6nqJobagJIOTzZP36ZIPHv9/6yY8i27TjBivfjcstcbRTQPh
         DPiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723129442; x=1723734242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uUVvIKt9lStrPhuuxKKkB/munqAE0y3RmG8Y1FkLQDw=;
        b=W4qRkfxL3OKG2tZXNCHhasiQJelUnybzl5PO2zZ5RClpnY1xVDhbEHp2KIQPImArFm
         45aj+Ulg80z6vlMwi1yZsYLMffr8xSHx+ATf6TAhrw4TJBIR/0YPx/BU87qGKQO9E4+h
         HNGFJDyjdeCQgWoGVvr1gC2qVN9U5QCXSxQcO+QOCjHGhngGqqujS4tA1a8B9Aicccnp
         21PIWlJlDRNLq/H/iUJ1H6pJvj0ZoER61YM4jpXKbcKvaW9VJXXkZSD5zQFJvAbcFDW9
         JFbYRjpsC1wK7X8Vb7oW8jr0pLqNRpxTP07YKUN/DmRKZ70wSEwcXyGcd+sZOtxEL2W6
         ylRQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7EK7BWVibu7LGAiZUqEUewLqdI7Dq8jfBq1LrHdHL21tf4ub0A2ztcqquousm6m8apasUfNcpxUi0OwVkgG2bmCsyN6LGqUQjQg==
X-Gm-Message-State: AOJu0Yw5wb6LBbJ7EfMzH07J0LV0QXMfoULytH5EA2tHX06xkep4+kcI
	8pJ6POiG6JCni6BsQMiwf/9suLozgQVV//anmNaGugx0MVeJGUA2Ns515XTH7vSlVk/B6n2d52n
	aVGQ=
X-Google-Smtp-Source: AGHT+IFfgXzb4Y94s1UFzuiwGRCGQcRSwvKUD/rQGsez9c3NXCg4LsjFbNW91pXAVFSlPo1TovYZZw==
X-Received: by 2002:a05:6870:3308:b0:268:bb3a:cfc0 with SMTP id 586e51a60fabf-2692b625cc4mr2405593fac.1.1723129441748;
        Thu, 08 Aug 2024 08:04:01 -0700 (PDT)
Received: from ?IPV6:2600:382:3510:aaaa:9d6d:2c10:12a:4165? ([2600:382:3510:aaaa:9d6d:2c10:12a:4165])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70a31d9dff9sm5485763a34.2.2024.08.08.08.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 08:04:01 -0700 (PDT)
Message-ID: <0b8a35c0-66f1-44c9-8a4a-4af5072da59b@utexas.edu>
Date: Thu, 8 Aug 2024 10:05:34 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am64* Disable ethernet by default at
 SoC level
To: Josua Mayer <josua@solid-run.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nishanth Menon <nm@ti.com>
Cc: Matt McKee <mmckee@phytec.com>, Wadim Egorov <w.egorov@phytec.de>,
 "linux@ew.tq-group.com" <linux@ew.tq-group.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240807211342.1660-1-logan.bristol@utexas.edu>
 <16f9ab4a-62ce-4406-94d4-1441e459469b@solid-run.com>
Content-Language: en-US
From: Logan Bristol <logan.bristol@utexas.edu>
In-Reply-To: <16f9ab4a-62ce-4406-94d4-1441e459469b@solid-run.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/8/2024 1:50 AM, Josua Mayer wrote:
> Am 08.08.24 um 00:13 schrieb Logan Bristol:
>> External interfaces should be disabled at the SoC DTSI level, since
>> the node is incomplete. The node should then be enabled in the board DTS.
>> Disable ethernet switch and ports in SoC DTSI and enable them in the board
>> DTS.
>>
>> Reflect this change in SoM DTSIs by removing ethernet port disable.
>>
>> Signed-off-by: Logan Bristol <logan.bristol@utexas.edu>
>> ---
>>    arch/arm64/boot/dts/ti/k3-am64-main.dtsi                 | 3 +++
>>    arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi          | 4 ----
>>    arch/arm64/boot/dts/ti/k3-am642-evm.dts                  | 3 +++
>>    arch/arm64/boot/dts/ti/k3-am642-hummingboard-t.dts       | 8 ++++++++
>>    arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts | 8 ++++++++
>>    arch/arm64/boot/dts/ti/k3-am642-sk.dts                   | 3 +++
>>    arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi              | 4 ----
>>    arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts   | 6 ++----
>>    8 files changed, 27 insertions(+), 12 deletions(-)
> cut
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642-hummingboard-t.dts b/arch/arm64/boot/dts/ti/k3-am642-hummingboard-t.dts
>> index 5b5e9eeec5ac..90ffc426cae1 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am642-hummingboard-t.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am642-hummingboard-t.dts
>> @@ -89,6 +89,14 @@ serdes_mux: mux-controller {
>>    	};
>>    };
>>    
>> +&cpsw3g {
>> +	status = "okay";
>> +};
>> +
>> +&cpsw_port1 {
>> +	status ="okay";
>> +};
>> +
> SolidRun AM642 SoM has ethernet phys on the SoM itself,
> carrier only provides physical connector.
> 
> Therefore the ports status should be set in som dtsi,
> where we also set pinctrl and phy-handle.
> 
>>    &main_gpio0 {
>>    	m2-reset-hog {
>>    		gpio-hog;
> cut
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi b/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi
>> index c19d0b8bbf0f..995e2703030b 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi
>> @@ -212,10 +212,6 @@ &cpsw_port1 {
>>    	phy-handle = <&ethernet_phy0>;
>>    };
>>    
> Please enable cpsw3g and cpsw_port1 status here.

I will make this change.

Thank you,
Logan Bristol



