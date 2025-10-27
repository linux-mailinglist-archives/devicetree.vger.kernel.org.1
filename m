Return-Path: <devicetree+bounces-231567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7C8C0E5E8
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C272F5073F6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C66330ACE1;
	Mon, 27 Oct 2025 14:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CcQXI3Tf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E93D25CC79
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761574325; cv=none; b=XMaAndcr3T86uXb7TwBWh8VAFxe98wQtWOlkVSDju+Bw8ZIuJd2+jfLHRmgqX0ygiLvMNTiALnH6RZCg1cgH2fRZgdwSlasUrebXnRfpBUehuPjxI3ZF63+t0cuOXgodnixpj/lxN5/Ceid5eQG8mA68VKte3sAt7Nte275uGPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761574325; c=relaxed/simple;
	bh=s5fi0aix74dhXeUfiX707igJJq83gWDg5mUZws693ro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eyEiTCLmWaEUOrh+dasNHYVNP1cU9wbe8XE6vX2fwfI+Sfo4QfeALObxYUykuXCGVTaQzV2/H7HcmkV8q+lXT/6bP1lr+J8Vka3uZRm77E62Jhq5CeaeBlUU8Vm2H+CwSC3xHyZXEJDvJtlCq6cpHVBXuFC6l6MbczN8K9L2m9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CcQXI3Tf; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-33bc2178d6aso3545132a91.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761574323; x=1762179123; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/bIMvual/DCfbHFKLhMc6KNvRa8c9RJirQTWe6ek/vw=;
        b=CcQXI3Tfgt7ipYZ+0nPYI9mFjQl1CH1rbS7bGXPmFt5GFvQLR+oj7SSHdSJoDIo+we
         cTccAfFNZpEOvRJYloD4+2WHfssBJawdXio/5IdWpaRGmodqn12bOjfOoKiPoIjcno/J
         Rx2sl/Je5YVZoSySe1ZwAlDm3UiCV3r9lqbAYv6Dit5E8Gf8CZcch/GiMYf6pFv7ihsH
         XJZWbtXHSOXtE4XBmtIG+ZSOGziEVFQg7pfcImntTQPd2fH2FSrKYyGuZ10oJcxtWOtJ
         F4glpfx5ps155vyZ9VV3c3uHcl+MMGn9JfM12JQCQM2CctcMuUwj5LmV3rX4rgLAFMPW
         qcOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761574323; x=1762179123;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/bIMvual/DCfbHFKLhMc6KNvRa8c9RJirQTWe6ek/vw=;
        b=M0EtDl7THfP7lSyxYzrrZSxfQN4BZhC/G4554bqQO3Dp1iQDtMMtjmKbvnTwfPuy0B
         Brp4Wfw1FEw9Yzy0MycLu/SLk7fMz2O1Fhao4EOeN9a0ij6/J6uS25JHgmnOL2sMcChI
         3COiIZLgDrGXmVdOcq9MOtoXHJAeX30//shBCj3Asebh6VCha8E3UXx3Vr9CfHmMIuzj
         Nd9mf7hfpch1eGceB2Wj4UlwbwKkFJPXBglKhSaIgBtinUul06vLQC1PUanpA1TyIbQC
         VFQ0WZ3P63HIT+6ooyXK2QVn8TKY2Zd0tf7vK8sIt4U9iipCbwf+1FBGg/BMMj94nSpC
         k2SA==
X-Forwarded-Encrypted: i=1; AJvYcCWJaV6uxpFn/EmVDmgqLZyBd34gV/mJWxJNzeCVUVSPMwAXEnfj2qY+Z3YoI3W6MVFuygOc2XysxICj@vger.kernel.org
X-Gm-Message-State: AOJu0YwkI+no3v5KNetj2ndYdGE3unWwShfoZx95Rxb8lRrBYqQH24Ff
	pZq9km4suqzxX6BiY9NTQf7eGVLRLlK787h3XulCrb0+KZtF+OYC9qVw
X-Gm-Gg: ASbGnct8xYXJSOf99OpdQnWWr18xrGNgu0ZL0Ae5FQWXN2xZbgqijWo826XAtEP545O
	+bWZCgGhpyUVvckX76pRmlIMmrr/2NLxb8H5R8Ha7qATSP4/tOJ1PsyKIlnX/I/tHD3/sCYs7fw
	gmcmZ10n9V1K1oFSeYdWvKaGBffWFcnqht6wbTbXi8GZJNQ8TArEHBxearjr/hs9bSJNnpmb2Mt
	RYNvsywIzhTlW3OUTq4khpMgttDev5bDzoNmnX16MXtg6FUFhynwzz+WTkBQOtqXU6lYnk6ec70
	rVGM1WVkOkjDsr52rmBMllioNIjk+3lDHqsFjXPbRE9Nxda6BtJhjT0bvfcaJmtsOPi/3n/ije9
	Ze/8T+W0HacY0h6oRngbfRnEf28ym6ncZC8dveWa8hf9dN8XzFWONnIMTbmKGozj6qgJf5u2s1Y
	FoN9VH7dUj2Thz/r5fohQlvM9QXLzSJvnR
X-Google-Smtp-Source: AGHT+IH5yXGx+LupzIOPczjiiLlR5YgFAp1+QvWwv8ZLoofxPfnSc2zQ+LY35y3vpNkMMUH1Hauifg==
X-Received: by 2002:a17:90b:1dc3:b0:338:2c90:1540 with SMTP id 98e67ed59e1d1-33fd66b4230mr14770603a91.20.1761574321988;
        Mon, 27 Oct 2025 07:12:01 -0700 (PDT)
Received: from [192.168.1.5] ([27.7.191.116])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7f604dsm8788404a91.15.2025.10.27.07.11.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 07:12:01 -0700 (PDT)
Message-ID: <b6486799-9e46-4b6b-bf95-001e11e958e4@gmail.com>
Date: Mon, 27 Oct 2025 19:41:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mmc: socionext,milbeaut-m10v-sdhci-3.0:
 convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Taichi Sugaya <sugaya.taichi@socionext.com>,
 Takao Orito <orito.takao@socionext.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251023-milbeaut-v1-1-3e4ff67110ad@gmail.com>
 <20251027135752.GA316916-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20251027135752.GA316916-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 27-10-2025 19:27, Rob Herring wrote:
> On Thu, Oct 23, 2025 at 05:37:36PM +0000, Charan Pedumuru wrote:
>> Convert SOCIONEXT Milbeaut SDHCI controller binding to YAML format.
>> Add a new property "voltage-ranges" to resolve dt_check errors.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/mmc/sdhci-milbeaut.txt     | 30 ---------
>>  .../mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml     | 78 ++++++++++++++++++++++
>>  2 files changed, 78 insertions(+), 30 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt b/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt
>> deleted file mode 100644
>> index 627ee89c125b..000000000000
>> --- a/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt
>> +++ /dev/null
>> @@ -1,30 +0,0 @@
>> -* SOCIONEXT Milbeaut SDHCI controller
>> -
>> -This file documents differences between the core properties in mmc.txt
>> -and the properties used by the sdhci_milbeaut driver.
>> -
>> -Required properties:
>> -- compatible: "socionext,milbeaut-m10v-sdhci-3.0"
>> -- clocks: Must contain an entry for each entry in clock-names. It is a
>> -  list of phandles and clock-specifier pairs.
>> -  See ../clocks/clock-bindings.txt for details.
>> -- clock-names: Should contain the following two entries:
>> -	"iface" - clock used for sdhci interface
>> -	"core"  - core clock for sdhci controller
>> -
>> -Optional properties:
>> -- fujitsu,cmd-dat-delay-select: boolean property indicating that this host
>> -  requires the CMD_DAT_DELAY control to be enabled.
>> -
>> -Example:
>> -	sdhci3: mmc@1b010000 {
>> -		compatible = "socionext,milbeaut-m10v-sdhci-3.0";
>> -		reg = <0x1b010000 0x10000>;
>> -		interrupts = <0 265 0x4>;
>> -		voltage-ranges = <3300 3300>;
>> -		bus-width = <4>;
>> -		clocks = <&clk 7>, <&ahb_clk>;
>> -		clock-names = "core", "iface";
>> -		cap-sdio-irq;
>> -		fujitsu,cmd-dat-delay-select;
>> -	};
>> diff --git a/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
>> new file mode 100644
>> index 000000000000..6b67bef30347
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
>> @@ -0,0 +1,78 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: SOCIONEXT Milbeaut SDHCI controller
>> +
>> +maintainers:
>> +  - Taichi Sugaya <sugaya.taichi@socionext.com>
>> +  - Takao Orito <orito.takao@socionext.com>
>> +
>> +description:
>> +  The SOCIONEXT Milbeaut SDHCI controller is a specialized SD Host
>> +  Controller found in some of Socionext's Milbeaut image processing SoCs.
>> +  It features a dedicated "bridge controller." This bridge controller
>> +  implements special functions like reset control, clock management for
>> +  various SDR modes (SDR12, SDR25, SDR50) and physical pin property settings.
>> +
>> +allOf:
>> +  - $ref: sdhci-common.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: socionext,milbeaut-m10v-sdhci-3.0
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
>> +      - const: core
>> +      - const: iface
>> +
>> +  fujitsu,cmd-dat-delay-select:
>> +    description:
>> +      Its presence indicates that the controller requires a specific command
>> +      and data line delay selection mechanism for proper operation, particularly
>> +      when dealing with high-speed SD/eMMC modes.
>> +    type: boolean
>> +
>> +  voltage-ranges:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> 
> Sounds more like a uint32-array.

Okay, I will change that.

> 
>> +    description:
>> +      Two cells are required, first cell specifies minimum slot voltage (mV),
>> +      second cell specifies maximum slot voltage (mV).
>> +    maxItems: 1
> 
> You can better describe it like this:
> 
> items:
>   - description: minimum slot voltage (mV)
>   - description: maximum slot voltage (mV)

Sure.

-- 
Best Regards,
Charan.


