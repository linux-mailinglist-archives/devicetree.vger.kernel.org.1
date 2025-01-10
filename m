Return-Path: <devicetree+bounces-137343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5853EA08A90
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 09:41:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A5E6166F60
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 08:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4639720896B;
	Fri, 10 Jan 2025 08:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="MZVG++2k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DBE1FF7DA
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 08:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736498495; cv=none; b=AhYVB9zX+9t39Nh7h0+65EixQL/DsvJhQcdch3MZOGokf1YvKcxxa78EPcTZ9jm89X7kIsAzZNzuAfVMQgqwLq5YkEJ9flt+zpmipLbT63+e/RDXfsYCZT55++RUZxMqGz3DwYViOiVA2dkr3zkCuvXQWqhkfkxUE5cGsKEZ0gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736498495; c=relaxed/simple;
	bh=0IqeVllaUh7ThBSBQLFk9YO6SPPXXAdKGTa3syPvMHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=otaotB8uBOhb6H4TDWomL21jljJ6C3OVK5YT4A9PDKLGV21AT4YlpxQEhJx3NH6WNTJ89foIWMwybeap/fbWhCa2Kz6Ll/JQRRqIurBrSDrdBazHD8NppF0TRs9aDaNRymPs6aPMpCATBeg8OOmoJcPx/JiLzfvUtoI8E7n769g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=MZVG++2k; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385d7f19f20so909691f8f.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736498490; x=1737103290; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LTAxuGuX2HjIb+J0nINSN6pIxAxGSTuzZRb6v1F8YcU=;
        b=MZVG++2kcVZw6PqaSGKmpWxj5lzj0ussqxNwUV/fdBRmz4uyhV/i5PZThUSNnpyh4Y
         gw0l1nNLSoDjaFi4sG1EDHpp95sFtmPqpZbXEibmkiLxxGKWSjR+p+nlshVxAWqZOul/
         KhRhDmSqSZKMxvIyzUHHygE8L6P+f8GmFTYQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736498490; x=1737103290;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LTAxuGuX2HjIb+J0nINSN6pIxAxGSTuzZRb6v1F8YcU=;
        b=pSExhWGjT5v4h2XvyhVQpIqjq63HG9RpyDsQ8oEOY99eZknQi9EJU+HieT522NZ0xP
         8t+lJkabyhtgfEUfqGkZ3f8xnX2pHYawByzjnpp7PfucJzWgpiGqdlS3ucnV/BERtZlH
         d/90xwph7uMT7IZv7+HsIui1C+NyjEPr+GeEYCrPaiZcqY8A31JbP3TrzSuO9BeVkVSh
         cKTs2PDgnciKJzJXTaR9GKONC+urM1tD1UJPmSrnDxBa/UzbL6O2lLJFK1q65tsaQ2YZ
         /CszZuc0G3LSpthIoQf7UNJJ+jMhBqk0ap5954ZklhPgb07qXmaxqAlTOfSM3IrrhO/5
         s95w==
X-Forwarded-Encrypted: i=1; AJvYcCUiTbHZhxgAaRqO1jU5Gi1/yr0qevhWQ3yPVr3qoxyloIO9jCBMDSk+Qdi2A2TF7K7Na4s/jW5tmafw@vger.kernel.org
X-Gm-Message-State: AOJu0YyJlJrPD3adFr4nVQ2z0EDDbbTQsDYdAHnaCRUHpwTdOC0roXEG
	Z3+4eRQDU8J5H+0Qpt8WxCwC+HyP4YBXoweJv9hJPejCPKjPipoDIYuN3v0nLjPAaVB3EwBBz0y
	H
X-Gm-Gg: ASbGncsFWEPtbCYNbb+rV+kFYflIdWvo7rjI1PYgzOvX9ymp/UpPmQBiVC2fnBqCtPe
	fZOCSQtlkYQOyIQ1wEYwSeBIgE9k9JNAQxa8eMwjYyfY017EoJPz16xH9t+3DEAOK4nEwMGriOf
	GCMXS/Pl8aGOEVVTbBhm0G3i5cxi9HjVCfeq5zOC4KY7exxbelyHbwwGQbUVEfuNoS1RD0T6M+o
	LdM+5Oxap3293bVnfTsx/gGUnslV3WrsJjSBplFCIFhRNo4OzCmy17/TUpZgFRdVu10RFdQsHIC
	OMiKkUCJgg6GRm7e8jmHqOiQDwbm7+2inS/L2S15pxPB34eTxgC00zvE6XQ65ZLVcqXO0cDkepT
	Gm/wXhYlUdKZOGCDY
X-Google-Smtp-Source: AGHT+IHdAZINf3kifHqwtZwu3U7P3daEmJ6BNIfnwadkS9VZOq9RloQ0s4HchXw0ErbNx4rkN2q6NA==
X-Received: by 2002:a5d:64eb:0:b0:385:ec89:2f07 with SMTP id ffacd0b85a97d-38a87312d2emr8481678f8f.32.1736498490553;
        Fri, 10 Jan 2025 00:41:30 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436dd11ddfdsm68561515e9.1.2025.01.10.00.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 00:41:30 -0800 (PST)
Message-ID: <d788bec1-f0e1-4fbd-8d4b-480d811de990@smile.fr>
Date: Fri, 10 Jan 2025 09:41:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable
 ACSPCIE output for PCIe1
To: Andrew Davis <afd@ti.com>, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kristo@kernel.org,
 vigneshr@ti.com, nm@ti.com, Romain Naour <romain.naour@skf.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
References: <20250109102627.1366753-1-romain.naour@smile.fr>
 <20250109102627.1366753-2-romain.naour@smile.fr>
 <90f47fae-a493-471d-8fe6-e7df741161be@ti.com>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <90f47fae-a493-471d-8fe6-e7df741161be@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Andrew, All,

Le 09/01/2025 à 16:58, Andrew Davis a écrit :
> On 1/9/25 4:26 AM, Romain Naour wrote:
>> From: Romain Naour <romain.naour@skf.com>
>>
>> Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
>> (CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
>> provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
>> provide refclk through PCIe_REFCLK pins.
>>
>> Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
>> module's PAD IO Buffers.
>>
>> Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
>> Signed-off-by: Romain Naour <romain.naour@skf.com>
>> ---

[...]

>> ---
>>   arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts |  5 +++++
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 10 ++++++++--
>>   2 files changed, 13 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/
>> boot/dts/ti/k3-j721e-beagleboneai64.dts
>> index fb899c99753e..741ad2ba6fdb 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
>> @@ -859,6 +859,11 @@ &pcie1_rc {
>>       num-lanes = <2>;
>>       max-link-speed = <3>;
>>       reset-gpios = <&main_gpio0 22 GPIO_ACTIVE_HIGH>;
>> +    /*
>> +     * There is no on-board or external reference clock generators,
>> +     * use refclk from the ACSPCIE module's PAD IO Buffers.
>> +     */
>> +    ti,syscon-acspcie-proxy-ctrl = <&acspcie0_proxy_ctrl 0x3>;
>>   };
>>     &ufs_wrapper {
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/
>> ti/k3-j721e-main.dtsi
>> index af3d730154ac..32a232a90100 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -5,6 +5,7 @@
>>    * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
>>    */
>>   #include <dt-bindings/phy/phy.h>
>> +#include <dt-bindings/phy/phy-cadence.h>
>>   #include <dt-bindings/phy/phy-ti.h>
>>   #include <dt-bindings/mux/mux.h>
>>   @@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
>>               reg = <0x4140 0x18>;
>>               #clock-cells = <1>;
>>           };
>> +
>> +        acspcie0_proxy_ctrl: syscon@18090 {
>> +            compatible = "ti,j721e-acspcie-proxy-ctrl", "syscon";
>> +            reg = <0x18090 0x4>;
>> +        };
> 
> You'll still need to add to the J721e system controller binding or this
> will throw a DT check warning, something like this:
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-
> controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-
> controller.yaml
> index 378e9cc5fac2a..3323f3bc976e0 100644
> --- a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
> +++ b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
> @@ -68,6 +68,12 @@ patternProperties:
>      description:
>        The node corresponding to SoC chip identification.
>  
> +  "^acspcie-ctrl@[0-9a-f]+$":
> +    type: object
> +    $ref: /schemas/mfd/syscon.yaml#
> +    description:
> +      This is the ASPCIe control region.
> +
>  required:
>    - compatible
>    - reg

Thanks!

To fix the warning I had to use "^syscon@[0-9a-f]+$" instead.
During the review, "syscon@" was recommended instead of "acspcie-ctrl@" [1]

  acspcie0_proxy_ctrl: syscon@18090 {

[1]
https://lore.kernel.org/linux-devicetree/5e2d2174-44a7-4143-8562-4dcdb5ad6c94@kernel.org/

Best regards,
Romain


> 
>>       };
>>         main_ehrpwm0: pwm@3000000 {
>> @@ -979,8 +985,8 @@ pcie1_rc: pcie@2910000 {
>>           max-link-speed = <3>;
>>           num-lanes = <2>;
>>           power-domains = <&k3_pds 240 TI_SCI_PD_EXCLUSIVE>;
>> -        clocks = <&k3_clks 240 1>;
>> -        clock-names = "fck";
>> +        clocks = <&k3_clks 240 1>, <&serdes1 CDNS_SIERRA_DERIVED_REFCLK>;
>> +        clock-names = "fck", "pcie_refclk";
>>           #address-cells = <3>;
>>           #size-cells = <2>;
>>           bus-range = <0x0 0xff>;


