Return-Path: <devicetree+bounces-202708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFA1B1E73E
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 13:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25490586B77
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25D7B14F90;
	Fri,  8 Aug 2025 11:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fN9GHOOf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D4F27584C
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 11:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754652289; cv=none; b=WPigHq5gpUOj3TwKWIOjesgzbH3l4+U4ki4ewd+1s5D7GgPvexmTCGiIFKaVWXGkXRrnCwbj1iIHGFbNlSq3kTEcxW26pcklFWWZ2FmlmXLZlTV5wsLXAhJargVLyt0rVXRcBNi2b0YKeNTY+ns9z3MaVsnf4bBCU2lMAzZefeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754652289; c=relaxed/simple;
	bh=tdqmTZskz+yQCU0OtNWJ7hb3SLauZy7LX8Gd3jyLS4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lrVx09QVxY+/Hfa6jBJGoCV/eXQEfS3MiC5Kjy0KVzYhRIDy6H8SGoE13LeKCinxYs8XasHUlG4/HQ0oPCcX+CyNE4C7a+z2o5Tp+XHZw9oUJKoxpANXQoVQdYolH8d0S6Pevqlh4pe4R+eiJRKEcZfQyeCFgmnc//mTS30ZVOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fN9GHOOf; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-459d4d7c745so18961085e9.1
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 04:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754652285; x=1755257085; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WDaDKFrE9tePMwqIpXfK3gAKisGxx+wlPAiFTrZ+JsA=;
        b=fN9GHOOff3ZEYCkEguHUtX8uGA0gAEZF67S3H+eextsE/KrKMpS1HFfVm/Q/Hf8dSd
         EaIz3Bxxa6hXvRNGpAjtqCgcNmT1nIwRJcZcI+Zhy0iO+tJ4HqxL7zo6W2PBxzGANZkv
         NSk6tPHvj1kBAfo5igO9cOejjMtv9LsyVBMMMdeJw5Efe1gCCdNhhBLaDBUYcyZJYmWr
         aIx7qnHovjrVuEm/BbShu2n9m5m2/y6zZdo0diZL3qyym22CfSBQHA77RpswFKDrqpF8
         xxBwLfAm47whs8aXsUmU+mhcPHTlPIieoPS/VmvVQgQy8rYAJxDupii152uNWYHfVTj6
         jKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754652285; x=1755257085;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WDaDKFrE9tePMwqIpXfK3gAKisGxx+wlPAiFTrZ+JsA=;
        b=pqEd4SaJtgu8g1b0Ge9u7+ac9qgWddl4XawNUffLEerFxaX3ptHDOyFih6TtsSGTeP
         9fnslv2TwYeXhJzrlLGHtoDTNvtpG0ZBQv2XYfPu1E5b/dQuSSsdK5VRN/o68ahktv7v
         wYFAFdAGIp6KEZ52UvfORa/PY1EOUbhJkijxq42Rx3KTfgRgxPU4VKLPdxkjTXqTKoG3
         rorgY0Rpde0IBMErGiKBaDDIkAnayYlsoYEX3inLkJgpKBDwffiMUdhkkw6NrRBXRwxS
         IEISEiLtUK3vwuBXv2BJQB1NNiKvEHN08O0VsdzfphCZpVC4nHNTXXbojTWEQ14ypBPo
         CX1g==
X-Forwarded-Encrypted: i=1; AJvYcCUzPU2gBxG76cLf0uEuu3blxMiMrGreCJFw2cpjGChusuMNYUUnc5FLDz+fInvCS+PfZnzaHziqNG7i@vger.kernel.org
X-Gm-Message-State: AOJu0YxTIHUhrWBiOED1H9SuBm1s8+z6D80vTy7pzPSnk0mXHLTTuAWb
	YR4p0Eryb22lGM4VDyiQMOSQOqNXMDOyDFPK5H7Zv7LD0EICtMd2YFXJ86RCEorzsBA=
X-Gm-Gg: ASbGnctL+ds0m0iLqRDl1c/YOZ9YUFzYOPNLvhsIGR4E4hHDcqg2uuIj7ifZZfC5PH8
	v9luQS+32JkV8FvbF/4ZNhiruyb6d0rBUUxwCF1dzcvFH4gQ5i4R7USk+I+MpydKD15AYwMTnlA
	igoVOnNfFBkV2TnJeuRJGoCmOl3kbhEUM57eLkxjFpBLbXh1x6rV0XiMO1Zb16cs+oADlD7a/cb
	5lInsgCnHkkSjxkz71V6WspPEOaXeeHVjCC5Nzzkq9FUEF1gYGs7JqIuxIMCVyDXL2LylMXJjY+
	Aaj5pzl2elwaJNNLcErfciXBrH/KMHot6yhXGxfRboVKpSQvtVgVIW/2+m27LkvcntsHxE3Mlzv
	h+Mr4JlK7ooE0KVywx7rqWdyzVFo+lV4=
X-Google-Smtp-Source: AGHT+IGFc+AaIxGFA2SLKc1CBodgdE5FKKCWRuNF/M1Z18xEptVX+bZf7YDkhLJM8Nb3ewYalAQT8w==
X-Received: by 2002:a05:600c:4f4b:b0:456:f1e:205c with SMTP id 5b1f17b1804b1-459f4e9df86mr24463835e9.4.1754652284753;
        Fri, 08 Aug 2025 04:24:44 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e6867193sm128153435e9.6.2025.08.08.04.24.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 04:24:44 -0700 (PDT)
Message-ID: <efdf5d48-c105-4e1b-8dbe-14706302aa2d@tuxon.dev>
Date: Fri, 8 Aug 2025 14:24:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: rzg3s-smarc-som: Update
 dma-ranges for PCIe
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, lizhi.hou@amd.com, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea
 <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250708165540.GA2148533@bhelgaas>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250708165540.GA2148533@bhelgaas>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Bjorn,

On 08.07.2025 19:55, Bjorn Helgaas wrote:
> On Fri, Jul 04, 2025 at 07:14:07PM +0300, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The first 128MB of memory is reserved on this board for secure area.
>> Update the PCIe dma-ranges property to reflect this.
> 
> Can we include a sentence or two about what the "secure area" means?

I'll update it.

Basically, it is a RAM region that is used by firmware.

Thank you for your review,
Claudiu

> I don't know how to connect this with anything in the driver.
> 
>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v3:
>> - collected tags
>>
>> Changes in v2:
>> - none, this patch is new
>>
>>  arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>> index 39845faec894..1b03820a6f02 100644
>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>> @@ -214,6 +214,11 @@ &sdhi2 {
>>  };
>>  #endif
>>  
>> +&pcie {
>> +	/* First 128MB is reserved for secure area. */
>> +	dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;
>> +};
>> +
>>  &pinctrl {
>>  #if SW_CONFIG3 == SW_ON
>>  	eth0-phy-irq-hog {
>> -- 
>> 2.43.0
>>


