Return-Path: <devicetree+bounces-228455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD46BEE158
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 10:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7065234AB67
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 08:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A87A2D3EF6;
	Sun, 19 Oct 2025 08:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="js304GW5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBA32D29A9
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760864283; cv=none; b=akxbFyvWujkpT0f2OOUtmDgObcawYsyfWUZmIsU/Abj0XvhXLhelNhdzs6KHBOAXYPHFPLp4q5TLLvXOkRQaWOLJQTCsxfzn4Re6bBdh2tvTzuN66EvjVwalL7Uz4b+q5zV0N2IVOEFu5gPKxVEyDPn4bsuBA6bP5Cn7mtAMmNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760864283; c=relaxed/simple;
	bh=Q8g0uYuPJ0HvJDfTBcCJanzK7KYy3ghXHYdZyaJCIOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gmBKSs/zCcW0zsZHr/9bWbz/puHH7QCKHy6IRTJEjY5HCcLV7hLa0kvQ9pCjAcJzT48s6d9cxhywZTQ0ZalU5TSyf5bBDcLpKwT1rEZZSu9olhvCy+ct5ZwdyD9tBgMTZCdoYU3EwB1KkxAJ1EYpWTVte1dg0XiYn0ESAsGSnp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=js304GW5; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-290dc630a07so14272805ad.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 01:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760864279; x=1761469079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9rLkUjfmUpuuFgqyXa/IslTGeP3g1HLNLFzp4a7VvL0=;
        b=js304GW56cfhbXipc+xMvjpGkF3S9mxWU7S3gfPwYA3GlNtJ1iaw332lXJazsm7cV0
         lOlwffJ+XK9uZdwh6r3MizosfgSXmSakgDdYFuv0K7fHBxaoiAdHiwjzjcVzNg3InvOw
         dwFEqPWLOnoUApTtTgXZ8tHXlgCoJS54ZyAAzzFZQxc202308icZjqm3XAM1GaRxOEB0
         QWfPcTj1I9zX1LtYZKbsI0Zp+KA3khUnqoK4Qed/uBOw/cQNZljDjfBvS20StU46Jel9
         8BPdfJw7GbkyDzZ9VmZQ+XpAmgjJUuM/Orsb1NmPkRF7RUDD3D9dECyd2y2zg15LVMeQ
         CvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760864279; x=1761469079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rLkUjfmUpuuFgqyXa/IslTGeP3g1HLNLFzp4a7VvL0=;
        b=Ns+BB5UpA3ai6bqjqOTMNqtAdq9OH8XP+tftktAQ6nVEH5FjFV1SHQAtjJwnX4cZpa
         5LIbePmUOOZMSc1C7i4PfCIQvL/1ELZHwlW16pJ741NNxRMrI+p+Ctmi1zm2YOSVIlA5
         0csU+9786+z1Xq2S0zlHVgec9xCBIzftLpEknj1VuQ/EWrnjbNOuiSo1wtt1YGFh9rLU
         T1iFrUDxbXThnCfppZTpMWJjheaedmd4zKI/nog+QjH9TSv+cQzJVGQM3nUHMMqHSQ1K
         YOsUDjEBzQTWfqQQ/y+RjZA3sJLr8FppUzJQINqlTdNPlKcIL5F+aoHsWNNnq933Jsra
         K32w==
X-Forwarded-Encrypted: i=1; AJvYcCUmC4sQ5IvnDiA0IbNALQ1guxQ1JmGxQitk0lltJUbwBKOO4ivLpqtWUr02U8y2TSBci6msZvlC83Co@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfdejdt7ZtZHzt2ZCdso2c7NyuE7FjukZSjItNuvC7LSfIbuiV
	4ROa+7rynbXnIwxVLPJh9tA/E59QjH5UVXHgeX7RNm21FK3BGfm2PUTl
X-Gm-Gg: ASbGncvP6HlQN7RSgTHj3+JPGjTXlk+mNE2SWF2W41FmXmwhSuLkq2zxDxiTzSYxjP3
	seA1QEzNuit0rvuzgv7qEJHP4H0YGy0J70Z1FeUXn1fl+65xOXr3jIHj7XUpXRLXzaYDVAB+U9X
	AI8H5XTAB8POPgKJA7YIAnBMXaXTYQ/6VDOADWV68DuY0MQkuPi6hBnlnEcsmKKbeTLSU59ziiE
	B/LtYwcEwOgvxc77mpkA+4295nh9raVoVu0O047f2FLHbHQJtAStEb9qz3bmeSJEaFNzdBB9WVc
	ssF3Eocqlen/22m+igQ4Wvr56ceD8spO+avUl4OAkXP72zNe1jFUW9wEiJ3kMjiPlTAoIJmsG6r
	VvYAJg1ABzCXq0EtH8pWjHkyM1NZbhlMc54g0k7JKm1Gu5fb6rcQyH9HHKOtCOLyRJw94FT4rPC
	v5zwx+QAYtGtQamjqnXi+jooqUHA==
X-Google-Smtp-Source: AGHT+IGniGBehwgTrgHbJNS41elvKChJOOZoogGwCpqJJzL/0rB3g2ONAI0A7h0Py6t3LZ21L1nT4g==
X-Received: by 2002:a17:903:244f:b0:261:e1c0:1c44 with SMTP id d9443c01a7336-290cc2f83a5mr120441135ad.40.1760864279337;
        Sun, 19 Oct 2025 01:57:59 -0700 (PDT)
Received: from [192.168.1.4] ([223.181.116.113])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2924721980bsm47078665ad.110.2025.10.19.01.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Oct 2025 01:57:58 -0700 (PDT)
Message-ID: <454763e4-8965-4f95-b6ee-e6dd4d62c320@gmail.com>
Date: Sun, 19 Oct 2025 14:27:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: mmc: ti,omap2430-sdhci: convert to DT
 schema
To: Rob Herring <robh@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>,
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20251011-ti-sdhci-omap-v3-0-9487ef2de559@gmail.com>
 <20251011-ti-sdhci-omap-v3-2-9487ef2de559@gmail.com>
 <20251015131145.GA3232873-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20251015131145.GA3232873-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 15-10-2025 18:41, Rob Herring wrote:
> On Sat, Oct 11, 2025 at 08:40:24AM +0000, Charan Pedumuru wrote:
>> Convert TI OMAP SDHCI Controller binding to YAML format.
>> Changes during Conversion:
>> - Define new properties like "clocks", "clock-names",
>>   "ti,needs-special-reset", "ti,needs-special-hs-handling",
>>   "pbias-supply", "cap-mmc-dual-data-rate" and "power-domains" to
>>   resolve dtb_check errors.
>> - Remove "pinctrl-names" and "pinctrl-<n>"
>>   from required as they are not necessary for all DTS files.
>> - Remove "ti,hwmods" property entirely from the YAML as the
>>   DTS doesn't contain this property for the given compatibles and the
>>   text binding is misleading.
>> - Add "clocks", "clock-names", "max-frequency" and "ti,needs-special-reset"
>>   to the required properties based on the compatible and the text binding
>>   doesn't mention these properties as required.
>> - Add missing strings like "default-rev11", "sdr12-rev11", "sdr25-rev11",
>>   "hs-rev11", "sdr25-rev11" and "sleep" to pinctrl-names string array
>>   to resolve errors detected by dtb_check.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/mmc/sdhci-omap.txt         |  43 -----
>>  .../devicetree/bindings/mmc/ti,omap2430-sdhci.yaml | 202 +++++++++++++++++++++
>>  2 files changed, 202 insertions(+), 43 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-omap.txt b/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
>> deleted file mode 100644
>> index f91e341e6b36c410275e6f993dd08400be3fc1f8..0000000000000000000000000000000000000000
>> --- a/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
>> +++ /dev/null
>> @@ -1,43 +0,0 @@
>> -* TI OMAP SDHCI Controller
>> -
>> -Refer to mmc.txt for standard MMC bindings.
>> -
>> -For UHS devices which require tuning, the device tree should have a "cpu_thermal" node which maps to the appropriate thermal zone. This is used to get the temperature of the zone during tuning.
>> -
>> -Required properties:
>> -- compatible: Should be "ti,omap2430-sdhci" for omap2430 controllers
>> -	      Should be "ti,omap3-sdhci" for omap3 controllers
>> -	      Should be "ti,omap4-sdhci" for omap4 and ti81 controllers
>> -	      Should be "ti,omap5-sdhci" for omap5 controllers
>> -	      Should be "ti,dra7-sdhci" for DRA7 and DRA72 controllers
>> -	      Should be "ti,k2g-sdhci" for K2G
>> -	      Should be "ti,am335-sdhci" for am335x controllers
>> -	      Should be "ti,am437-sdhci" for am437x controllers
>> -- ti,hwmods: Must be "mmc<n>", <n> is controller instance starting 1
>> -	     (Not required for K2G).
>> -- pinctrl-names: Should be subset of "default", "hs", "sdr12", "sdr25", "sdr50",
>> -		 "ddr50-rev11", "sdr104-rev11", "ddr50", "sdr104",
>> -		 "ddr_1_8v-rev11", "ddr_1_8v" or "ddr_3_3v", "hs200_1_8v-rev11",
>> -		 "hs200_1_8v",
>> -- pinctrl-<n> : Pinctrl states as described in bindings/pinctrl/pinctrl-bindings.txt
>> -
>> -Optional properties:
>> -- dmas:		List of DMA specifiers with the controller specific format as described
>> -		in the generic DMA client binding. A tx and rx specifier is required.
>> -- dma-names:	List of DMA request names. These strings correspond 1:1 with the
>> -		DMA specifiers listed in dmas. The string naming is to be "tx"
>> -		and "rx" for TX and RX DMA requests, respectively.
>> -
>> -Deprecated properties:
>> -- ti,non-removable: Compatible with the generic non-removable property
>> -
>> -Example:
>> -	mmc1: mmc@4809c000 {
>> -		compatible = "ti,dra7-sdhci";
>> -		reg = <0x4809c000 0x400>;
>> -		ti,hwmods = "mmc1";
>> -		bus-width = <4>;
>> -		vmmc-supply = <&vmmc>; /* phandle to regulator node */
>> -		dmas = <&sdma 61 &sdma 62>;
>> -		dma-names = "tx", "rx";
>> -	};
>> diff --git a/Documentation/devicetree/bindings/mmc/ti,omap2430-sdhci.yaml b/Documentation/devicetree/bindings/mmc/ti,omap2430-sdhci.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..7683481204b2e222847244b67f9ae2684db93028
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mmc/ti,omap2430-sdhci.yaml
>> @@ -0,0 +1,202 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mmc/ti,omap2430-sdhci.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI OMAP SDHCI Controller
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +description:
>> +  For UHS devices which require tuning, the device tree should have a
>> +  cpu_thermal node which maps to the appropriate thermal zone. This
>> +  is used to get the temperature of the zone during tuning.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ti,omap2430-sdhci
>> +      - ti,omap3-sdhci
>> +      - ti,omap4-sdhci
>> +      - ti,omap5-sdhci
>> +      - ti,dra7-sdhci
>> +      - ti,k2g-sdhci
>> +      - ti,am335-sdhci
>> +      - ti,am437-sdhci
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: fck
>> +      - const: mmchsdb_fck
>> +
>> +  dmas:
>> +    maxItems: 2
>> +
>> +  dma-names:
>> +    items:
>> +      - const: tx
>> +      - const: rx
>> +
>> +  pinctrl-names:
>> +    $ref: /schemas/types.yaml#/definitions/string-array
> 
> Drop. Already has a type.

Sure, I will remove the type.

> 
>> +    minItems: 1
>> +    maxItems: 14
>> +    items:
>> +      enum:
>> +        - default
>> +        - default-rev11
>> +        - hs
>> +        - sdr12
>> +        - sdr12-rev11
>> +        - sdr25
>> +        - sdr25-rev11
>> +        - sdr50
>> +        - ddr50-rev11
>> +        - sdr104-rev11
>> +        - ddr50
>> +        - sdr104
>> +        - ddr_1_8v-rev11
>> +        - ddr_1_8v
>> +        - ddr_3_3v
>> +        - hs-rev11
>> +        - hs200_1_8v-rev11
>> +        - hs200_1_8v
>> +        - sleep

-- 
Best Regards,
Charan.


