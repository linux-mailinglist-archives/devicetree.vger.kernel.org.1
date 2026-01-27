Return-Path: <devicetree+bounces-260004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJZAKzHeeGnytgEAu9opvQ
	(envelope-from <devicetree+bounces-260004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:48:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E17970C0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7592F30574C7
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C9E3644C6;
	Tue, 27 Jan 2026 15:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QGP4ffXF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727E3624C5
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769527601; cv=none; b=A5eD1BGDY+ikGRZwCrtrhjc1cWELaF8QEaJ7TNKaYIMvZTe8Fnn53qRjOflKWAnNY4Plcalo4UeyVBeXsMj1rAxRivJqEMobTV3WTYR5qwzYXI0DEZ/jhLF6jJXCF38wLSnOv2u2L0aRnOuIygND9CI0l9nthKiWvlsGuaaxs5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769527601; c=relaxed/simple;
	bh=vx3jLTsBw4rxu7hoSeZBPfSAXJs751JIn0jAWWF5Xbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Db0N3tKoM1jj6JO+uysZhmuhXar2wp3V1Wgn/z6uXRynu4OrkxGTynd4EPkryyxsqUIH9o6EmQWjIjtXvaz8t8K3QN1Koljm0zK71JOCnyHAUrscPijDkS7ZPLZ32O/A8ClQRO2r929BdtBSW+UUBqbvuS9MMg8oI5EFlxmr59w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QGP4ffXF; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c2a9a9b43b1so3303409a12.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769527599; x=1770132399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M/fsCYTkIXDItTcE/n6muZz7y6GpmWCERYqeftONhwg=;
        b=QGP4ffXFHYsQg3cvB0lFgrynOjqO413hWZG7svBN6ys0WSKS5O9r1+eOhhxNc6eYVT
         vI+x1rHcenB6SMnKYfePU2+mVHaA88dAHf5tpIKpAoGpVq6joM0sDVeeL3l36983x+sF
         FQp7mDPHg1b3NU4jhQNl1zKBy0izeeanmPhEl0qdroxWyTsORsOq69xmXa8Yjq6koIxV
         Z0WCZbkvUHjQ4qz8xvc0KUh24fwlZ1YK/2UW/Og1wso0U70DWxmQs9uSbTBvc/UjJLs2
         CNcN6GPNbCA+OCtiAf4E4CbfZ3hPDqkh1BUBM6126zZcgrtSYWeV7bwhushMLKPRfTCI
         RiUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769527599; x=1770132399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M/fsCYTkIXDItTcE/n6muZz7y6GpmWCERYqeftONhwg=;
        b=Zy0khrT0cNLV7SMwD9WLGxQLGiWgz/uuL0PJU4eGaKbwSDCk27Dk6w3VkCRTAf4mxr
         CscqRkDsvgIC/jpKn8nQapaZD/PR/qgUluttz3tAk5kfB0AHJUNmc4q0o4HCi5t7wVVW
         n3J9P96jXvtp2sl0fdK9VWy3HPNzmg/ZpjTmXoTogRTjhgqARITz2ImUqmfNzpyDpHpw
         nU3j+Zd8C+PmvNh0lxS5J1bL97mmeQ2/avssCSFvUBexKw9cbs7dkdwYdNtNYrrEcxm9
         QnRcSCHC+hvcV1B0QzNJSkfPgYVPk3gYx/7J3HDoCG+wCW809ImZmtY7Xm9FnoklHtpp
         Uurg==
X-Forwarded-Encrypted: i=1; AJvYcCXritZvKmBVtYgZ8FUABNgcgd4gyKVjznRCq+bfsu4SzH1IimN8Mwb2NBxSTZAv+7PwtcNeBSRfifG2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9bzVYtd+5VyIWIvz/6tjd8K+YIVry/GFC2Qaz4Y7sAsLl8Y/7
	QTF8A2lPRQ0BaUv5mzfSES5Avv/T1sYJppiNVB/ZnQimAIclHP1Rjyxw
X-Gm-Gg: AZuq6aJlQkmOdwMeEjxb59rv88Df7t5nm6bgNYRgdCLz4HH2Kh6cnyK0n4bvFKBUgkc
	bn63VY01UXEjxtCWxDYddXvJcgnoFAku4nCbAqYIjd4vSdS6UQsr8sEKmJjCaPRbdzOxli81oCd
	OM4uGHp/G30jQe7IUbmgGAvXxF53zyr69D/XrfrYdTtICfNxbYos67Gj3ot7kKlU30CqnHXRvIC
	aO7BHGs3g/IvbAQWqEwXbeZCdARUiHodHcL7DMnWZD9IEp2GUnwc3WDs/YJz68Y+OzbZYGhzUN/
	x7W+S/4HCPRqfv6Cg0m0l3rvAWfmJFWQ5zCBrbFcT8jIahDXMTeIoFZGCh7y+eawqf5uwzGt90P
	Sp3lb/UjotErA2rrzVRx1rtcL8zO/P3Ae3xcbg06wE0575U1t5BROLIpF34uE7vcmgLMzrEfRVa
	mKs/jwasbwlVwekY1H8QWRE3mHLU+8FRXMtUM=
X-Received: by 2002:a17:903:2cf:b0:295:1e50:e7cb with SMTP id d9443c01a7336-2a870d7446cmr22169425ad.23.1769527599292;
        Tue, 27 Jan 2026 07:26:39 -0800 (PST)
Received: from [192.168.1.5] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fdd70asm123437515ad.92.2026.01.27.07.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 07:26:38 -0800 (PST)
Message-ID: <e1b2b86f-6762-4b6b-bcb9-f8c7349e8077@gmail.com>
Date: Tue, 27 Jan 2026 20:56:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: usb: ti,omap4-musb: convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Felipe Balbi <balbi@ti.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260126-ti-usb-v1-0-2855c129eb6d@gmail.com>
 <20260126-ti-usb-v1-1-2855c129eb6d@gmail.com>
 <20260126160610.GA2471873-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260126160610.GA2471873-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260004-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 45E17970C0
X-Rspamd-Action: no action



On 26-01-2026 21:36, Rob Herring wrote:
> On Mon, Jan 26, 2026 at 01:22:04PM +0000, Charan Pedumuru wrote:
>> Convert OMAP MUSB USB OTG Controller binding to DT schema.
>> Changes during conversion:
>> - Introduce new compatible string patterns "am35x_otg_hs" and "usb_otg_hs"
>>   to properly match existing nodes already defined in the DT sources.
>> - Include "interrupts" and "interrupt-names" properties in the YAML, as
>>   they are used by many in-tree DTS files.
>> - Extend the "power" property to allow the value 150 (in addition to
>>   existing values), since this is present in several in-tree DTS examples.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/usb/ti,omap4-musb.yaml     | 133 +++++++++++++++++++++
>>  1 file changed, 133 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml b/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml
>> new file mode 100644
>> index 000000000000..16e95fe4c38d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/usb/ti,omap4-musb.yaml
>> @@ -0,0 +1,133 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/usb/ti,omap4-musb.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Texas Instruments OMAP MUSB USB OTG Controller
>> +
>> +maintainers:
>> +  - Felipe Balbi <balbi@ti.com
> 
> Missing '>'

Yeah, I missed it, will add in the next rev.

> 
>> +
>> +description:
>> +  Texas Instruments glue layer for the Mentor Graphics MUSB OTG controller.
>> +  Handles SoC-specific integration including PHY interface bridging(ULPI/
>> +  UTMI), interrupt aggregation, DMA engine coordination (internal/
>> +  external), VBUS/session control via control module mailbox, and
>> +  clock/reset management. Provides fixed hardware configuration parameters
>> +  to the generic MUSB core driver.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^(am35x_otg_hs|usb_otg_hs|usb)@[0-9a-f]+$"
> 
> Again, do not document non-standard names. That's anything not in the DT 
> spec.

Sure, I will remove pattern entirely.

> 
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,omap3-musb
>> +      - ti,omap4-musb
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  ti,hwmods:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description:
>> +      Specifies the name of the TI PRCM (Power, Reset and Clock Management)
>> +      hardware module that must be enabled (powered and clocked) for this
>> +      device node to operate. The value "usb_otg_hs" refers to the USB
>> +      On-The-Go High-Speed controller IP block.
>> +    const: usb_otg_hs
> 
> deprecated: true
> 
> (I think we want that everywhere?)
> 
> Actually, looks like only omap2430 sets this, but that's not covered by 
> this schema. Unless you need to add "ti,omap2-musb"?

Okay, in that case I will drop the property.

> 
>> +
>> +  interrupts:
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  interrupt-names:
>> +    minItems: 1
>> +    maxItems: 2
>> +    items:
>> +      enum: [mc, dma]
> 
> I would assume only 'dma' is optional? Does this work?:
> 
> items:
>   - const: mc
>   - const: dma

Yes, this works.

> 
>> +
>> +  multipoint:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Indicates the MUSB controller supports multipoint. This is a MUSB
>> +      configuration-specific setting.
>> +    const: 1
>> +
>> +  num-eps:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Specifies the number of endpoints. This is a MUSB configuration
>> +      specific setting.
>> +    const: 16
>> +
>> +  ram-bits:
>> +    description:
>> +      Specifies the RAM address size.
>> +    const: 12
>> +
>> +  interface-type:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Describes the type of interface between the controller and the PHY.
>> +      0 for ULPI, 1 for UTMI.
>> +    enum: [0, 1]
>> +
>> +  mode:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: 1 for HOST, 2 for PERIPHERAL, 3 for OTG.
>> +    enum: [1, 2, 3]
>> +
>> +  power:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Signifies the controller can supply up to 100mA when operating
>> +      in host mode.
>> +    enum: [50, 150]
> 
> Which value corresponds to 100mA?

50 corresponds to 100mA, I will add it to the description.

> 
>> +
>> +  phys:
>> +    maxItems: 1
>> +
>> +  phy-names:
>> +    const: usb2-phy
>> +
>> +  usb-phy:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description: Phandle for the PHY device.
>> +    deprecated: true
>> +
>> +  ctrl-module:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle of the control module this glue uses to write to mailbox.
>> +
>> +required:
>> +  - reg
>> +  - compatible
>> +  - interrupts
>> +  - interrupt-names
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    usb_otg_hs@4a0ab000 {
> 
> usb@...

Okay.

> 
>> +        compatible = "ti,omap4-musb";
>> +        reg = <0x4a0ab000 0x1000>;
>> +        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
>> +                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
>> +        interrupt-names = "mc", "dma";
>> +        ti,hwmods = "usb_otg_hs";
>> +        multipoint = <1>;
>> +        num-eps = <16>;
>> +        ram-bits = <12>;
>> +        ctrl-module = <&omap_control_usb>;
>> +        phys = <&usb2_phy>;
>> +        phy-names = "usb2-phy";
>> +        interface-type = <1>;
>> +        mode = <3>;
>> +        power = <50>;
>> +    };
>> +...
>>
>> -- 
>> 2.52.0
>>

-- 
Best Regards,
Charan.


