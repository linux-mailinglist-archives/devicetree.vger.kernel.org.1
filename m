Return-Path: <devicetree+bounces-263159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLs8JMQEhWlW7gMAu9opvQ
	(envelope-from <devicetree+bounces-263159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:59:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC48F74EC
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:59:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8E05F30022E2
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCD632ED2A;
	Thu,  5 Feb 2026 20:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Csf/RvO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70152FE592
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 20:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770325184; cv=none; b=QlzWpbJW+iSIGcGe2t684ynvolSC3xwN6kH+nz/OWr4jwl1gAqrA4FS2jXZo3aKUmB+bSpV3EZTBC3ndp/EKr/wYTzZfjzRPMBxyInJxzIEiXGdQPUQjJsrvwPPzNkcSDyFEAepYirJNKeM05TNGD6aZeN9CUoUd5CrBsKmj0/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770325184; c=relaxed/simple;
	bh=eXwQ9SgcUhDKN59vyhZtqEkgpqtPjys6BZik72szYvI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QLT9ww02fL5Uxz4i9s3RPEKlXgF6CPSLvHV1vm+55aizZgUDzcKvtPDgTdp06sGrUE4Eb+kEk33n6P0m4fwCe0ayeDeReHNykrJAdPS1PIofWIjTVVid5wPrf4nr37n0qgmeaRAhqAqK4nXgOGxeUlV2u8a5thc8QKu+Mecw1BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Csf/RvO1; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8c70b5594f4so163468085a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 12:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770325182; x=1770929982; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iiWXSjYD8iWQZkhbOZvxGQgWjvd+mTWIbvYj/f3atxo=;
        b=Csf/RvO1pYBWzzZkBFZSd/TmmAgjDKGIng8vHDbEyRyqHmRxHX/xWgDna87LScju9w
         6Sb6+22aNKIMgTOPKI2T3XXZcFwCatt/UJskGfcklU6crrAK4X8DM8xop7K6Vx3DuGV7
         I1U3xp+1MThNDQz/NN+KpBWPMIhlbfAU81p78Ve0SJyP4zQpmEoP+rtMv1CZoGG6WNO+
         84rZCtYKD4YNN1DGtTWvmVv8OOw7vKjluAHWlmcNwc5idgSDo/SBC1LtVWJ1MDWNww66
         RE725L2O+i2zyBxH0hZszMG+8lkUnUlrEVkHYr9g9OsM+NvFbPqbz6j6O12P0xGV3dKy
         /b1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770325182; x=1770929982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iiWXSjYD8iWQZkhbOZvxGQgWjvd+mTWIbvYj/f3atxo=;
        b=rKu1p/zD7xBMj9TrErjthp4zD/mq/9izberr0GmFMM2FHn1B5zM1gDaxdGsTnE75N2
         NOh4oqE4MoPRlYycbSw4Qfw18/5zbjG0vWpZVWC4hXMFnRTgU/bmBbCGoRU1LPE22AMi
         Yc2SboXsQ6kKF13PNgZz6RXXwwGK/2Fw2sCB0L6DWm11sYbewT9nvE/oByjpIHm6Nw5i
         pA3psZICV0/XDy76+t4GEqUIlTa+qmdpH+ZRspBMFYk6+TiaXeWdUM5rWiYV/Ak/uNlu
         gdJrT8X0WL2A6rNFXZDOE1Z08ZfF/ckAnFtI0fsbK4VmGp6WJ5kL8N9xK6dY20W38SCv
         shAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVV6a+m4FY9LAaA7PoLwTqBdJv2+kU3nF1r8fOHGq5muRIEr8gFEp9Zzs7fZMCwVY8J1O2jnLpleua1@vger.kernel.org
X-Gm-Message-State: AOJu0YyJCXOxyAdZr7htQB7i835LGyI/9TbZEVuuCZM9WHC3paI1+uz6
	2uyI49bDHp7MBWGJ4/WqHXIKuEt/3jK7/ba3XnjMiRD0/HKcL99a/tAUaCbsd6Pl
X-Gm-Gg: AZuq6aJkjAbLCJ39u2MW1KFit97TZIIdJog6TEVVJMJnbwq9SVDlkAFNerPCSJB3M0h
	dTT8MnWyez7FxmytYnIGfzuFxGr17sSVJQE9CKJmnuNWRIh69Fd9fw8mjGr1zB4g47T2WIFG57K
	wzX9VnPtdwogNV/wcrwlGSa552jFEScyJL7yxzqFh5K1p4AuFpGScaCPZFREUTVXlM2lVio3b/4
	Z2uR+4V1nfWzjmuOabjLJNenoMjjzuzwEWOPTS/rUmdV536V3mZmlSBVKuhplnWpwEOssJtEKtp
	5sWAvu4ICveCI10pER0EwRFTvDcN0Fj+kqWftTes9e/8ZbLzmh1xaLKU28OWEA4N6K0g7dISVPp
	I8lCiBbE6XpdPWG2PuV7mQ62QrNNLuSYbkh3M5s3CsEkf25mkqAQukinDadwBoZAVacf4Q9LhVm
	zcWAFZd3OuMYmaT7IE+iGd1AJY
X-Received: by 2002:a05:693c:3111:b0:2b7:a6fa:3f87 with SMTP id 5a478bee46e88-2b855d341cfmr131450eec.19.1770319108298;
        Thu, 05 Feb 2026 11:18:28 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c88cb4sm165396eec.30.2026.02.05.11.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 11:18:27 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Feb 2026 11:18:25 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Marius Cristea <marius.cristea@microchip.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: hwmon: temperature: add support for
 EMC1812
Message-ID: <a83b48a4-76ba-48df-9aba-adb018949914@roeck-us.net>
References: <20260205-hw_mon-emc1812-v5-0-232835aefe8f@microchip.com>
 <20260205-hw_mon-emc1812-v5-1-232835aefe8f@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-hw_mon-emc1812-v5-1-232835aefe8f@microchip.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[bounces-263159-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.4:email,0.0.0.2:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:url,microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 2AC48F74EC
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 09:09:03AM +0200, Marius Cristea wrote:
> This is the devicetree schema for Microchip EMC1812/13/14/15/33
> Multichannel Low-Voltage Remote Diode Sensor Family.
> 
> EMC1812 has one external remote temperature monitoring channel.
> EMC1813 has two external remote temperature monitoring channels.
> EMC1814 has three external remote temperature monitoring channels and
> channels 2 and 3 supports anti parallel diode.
> EMC1815 has four external remote temperature monitoring channels and
> channels 1/2  and 3/4 supports anti parallel diode.
> EMC1833 has two external remote temperature monitoring channels and
> channels 1 and 2 supports anti parallel diode.
> 
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/hwmon/microchip,emc1812.yaml          | 182 +++++++++++++++++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 188 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/microchip,emc1812.yaml b/Documentation/devicetree/bindings/hwmon/microchip,emc1812.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..759e004eafdfc0772e110fe484767eb66a623294
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/microchip,emc1812.yaml
> @@ -0,0 +1,182 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/microchip,emc1812.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip EMC1812/13/14/15/33 multichannel temperature sensor
> +
> +maintainers:
> +  - Marius Cristea <marius.cristea@microchip.com>
> +
> +description: |
> +  The Microchip EMC1812/13/14/15/33 is a high-accuracy 2-wire multichannel
> +  low-voltage remote diode temperature monitor.
> +
> +  The datasheet can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/EMC1812-3-4-5-33-Data-Sheet-DS20005751.pdf
> +
> +  EMC1812 has one external remote temperature monitoring channel
> +  EMC1813 has two external remote temperature monitoring channels
> +  EMC1814 has three external remote temperature monitoring channels and
> +    channels 2 and 3 supports anti parallel diode
> +  EMC1815 has four external remote temperature monitoring channels and
> +    channels 1/2  and 3/4 supports anti parallel diode
> +  EMC1833 has two external remote temperature monitoring channels and
> +    channels 1 and 2 supports anti parallel diode
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,emc1812
> +      - microchip,emc1813
> +      - microchip,emc1814
> +      - microchip,emc1815
> +      - microchip,emc1833
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: alert-therm2 asserts when the ALERT limit is exceeded.
> +      - description: therm-addr asserts when the THERM limit is exceeded.
> +    minItems: 1
> +
> +  interrupt-names:
> +    items:
> +      - enum: [alert-therm2, therm-addr]

AI feedback:

If interrupt names are being used to identify the interrupts, should
the interrupts property be less restrictive?

Currently, the items list in interrupts enforces a strict order:
the first interrupt must match the first description (alert-therm2),
and the second must match the second description (therm-addr).

However, the interrupt-names definition for the first item allows it
to be "therm-addr".

If the intention is to support providing only the second interrupt (therm-addr)
as the first item in the list, then the interrupts property definition
prevents that by enforcing the first item to be alert-therm2.

2nd feedback:

The interrupts property description lists two possible interrupts ("alert-therm2"
and "therm-addr"), but this definition restricts interrupt-names to a single
item.

Should this be updated to allow providing names for both interrupts if the
device is configured with both?

[ I don't know how this is supposed to work, so the feedback needs to be taken
  with two grains of salt. ]

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  microchip,parasitic-res-on-channel1-2:
> +    description:
> +      Indicates that the chip and the diodes/transistors are sufficiently
> +      far apart that a parasitic resistance is added to the wires, which can
> +      affect the measurements. Due to the anti-parallel diode connections,
> +      channels 1 and 2 are affected together.
> +    type: boolean
> +
> +  microchip,parasitic-res-on-channel3-4:
> +    description:
> +      Indicates that the chip and the diodes/transistors are sufficiently far
> +      apart that a parasitic resistance is added to the wires, which can affect
> +      the measurements. Due to the anti-parallel diode connections, channels
> +      3 and 4 are affected together.
> +    type: boolean
> +
> +  vdd-supply: true
> +
> +patternProperties:
> +  "^channel@[1-4]$":
> +    description:
> +      Represents the external temperature channels to which
> +      a remote diode is connected.
> +    type: object
> +
> +    properties:
> +      reg:
> +        items:
> +          minimum: 1
> +          maximum: 4

I (or, rather, AI review) asked this before:

Does this reg property need maxItems: 1?

Without it, the schema might allow reg properties with multiple items,
provided the first item is within the minimum/maximum range.

[ Presumably the _values_ should be 1..4, not the number of items ]

> +
> +      label:
> +        description: Unique name to identify which channel this is.
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,emc1812
> +              - microchip,emc1813
> +              - microchip,emc1833
> +    then:
> +      properties:
> +        microchip,parasitic-res-on-channel3-4: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,emc1812
> +    then:
> +      properties:
> +        channel@1:
> +          properties:
> +            reg:
> +              items:
> +                const: 1
> +      patternProperties:
> +        "^channel@[2-4]$": false
> +  - if:
> +      properties:
> +        compatible:
> +          pattern: "^microchip,emc18[13]3"
> +    then:
> +      patternProperties:
> +        "^channel@[12]$":
> +          properties:
> +            reg:
> +              items:
> +                maximum: 2
> +        "^channel@[34]$": false
> +  - if:
> +      properties:
> +        compatible:
> +          pattern: "^microchip,emc1814"
> +    then:
> +      patternProperties:
> +        "^channel@[1-3]$":
> +          properties:
> +            reg:
> +              items:
> +                maximum: 3
> +      properties:
> +        channel@4: false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        temperature-sensor@4c {
> +            compatible = "microchip,emc1813";
> +            reg = <0x4c>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            microchip,parasitic-res-on-channel1-2;
> +
> +            vdd-supply = <&vdd>;
> +
> +            channel@1 {
> +                reg = <1>;
> +                label = "External CH1 Temperature";
> +            };
> +
> +            channel@2 {
> +                reg = <2>;
> +                label = "External CH2 Temperature";
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6d7b697bfdba16e4f0ee5f4f0195b9d7da06dae5..85c236df781e47c78deeb7ef4d80bc94bba604c4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16646,6 +16646,12 @@ S:	Supported
>  F:	Documentation/devicetree/bindings/interrupt-controller/microchip,sama7g5-eic.yaml
>  F:	drivers/irqchip/irq-mchp-eic.c
>  
> +MICROCHIP EMC1812 DRIVER
> +M:	Marius Cristea <marius.cristea@microchip.com>
> +L:	linux-hwmon@vger.kernel.org
> +S:	Supported
> +F:	Documentation/devicetree/bindings/hwmon/microchip,emc1812.yaml
> +
>  MICROCHIP I2C DRIVER
>  M:	Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
>  L:	linux-i2c@vger.kernel.org
> 
> -- 
> 2.51.0
> 

