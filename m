Return-Path: <devicetree+bounces-263429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KL3wLv0chmmTJwQAu9opvQ
	(envelope-from <devicetree+bounces-263429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:55:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFC51009A2
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:55:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D643D300CC3F
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 16:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7676D2DBF47;
	Fri,  6 Feb 2026 16:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CceE/r28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431582D0618
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 16:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770396921; cv=none; b=qtDHXfo/fgymazLABToIrCMndJtamLwbIA/xLBI6h28I7JrlVhS/SbzdXrT4rkQkFfg5PSl76PfhNdHeZYJFrSqlgqf8c9TNr0iuygSKNnWNA1ABKhif5YdmA1hJpPp5gpildZ83rwPMSAaO4tRvDsn44PTMNQYHPe0pC2yNt/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770396921; c=relaxed/simple;
	bh=u3JZCGZkS4ubKADSOHJKnRAjXWPm6L/lPysh2ZKqY10=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aFi7ABXYu884zzJWc9Pd8luq3hEjr1tYeBsGNA3LpNHqr8QVKzr/GhxzYGFBazMxAS4y++XcWpMVlI7YMHz46pvPIYWB6NFUL2wQGroRVPs6nxrZixqtIoEztd0sXJjkwXGXAmQgaim/7ZS2Yn8lMoX1ROyUZXp4+I5v//sV7Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CceE/r28; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-8243ecfbef4so640692b3a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 08:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770396921; x=1771001721; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4nJpWkgPQgaFaljY19OOCl7oe6OROvO6vvoquQPaZ/0=;
        b=CceE/r282puLrAacMn37d2RkIrZBRrmUGZqllly2koWHjzTdhfIU88AMjIy9djnQ8A
         rGxB4FOw4+t2Cn2V9PE32itjJqLYdgyTBlA3U7n4GmpnHDcuHk1iLybngK1+tc6Kp13Z
         9kBxy4lVSgjhutqz1pKhRSEhZGrbxVuq2s7lfGyG1CnQo34l++0LGmofjCfGn/CQi3UQ
         802CAqDoRFySI0icLMgAPF40D1R2HSNEfUkjMENERMhVh6I4G7E1Zq8Ny6u61hJXMpMC
         RirYuAiddNwCeR8htLkd+bwjNAA5YIlIcD/cHNrND1Uqq928kR6koJ0Ja/sxVPeAODIv
         8zyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770396921; x=1771001721;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4nJpWkgPQgaFaljY19OOCl7oe6OROvO6vvoquQPaZ/0=;
        b=eAi40ELKMFED3+IL7iZ5No7yX0/65XSEwhY71oqTyhZe/10vPvirWHZNTUEteg9RGb
         VTDWWZ82V6+vyhZxtCLn+dNP7o8I22g8RahTl14JF2cjg0bGHFaHx4GsbfSRLgRu57AN
         Mn90SF/HDjSBTzU0HyiVpd7sJRw34npGc9cUUP2gio3HuU+Q7o8uAwSPD5r0b6SZ4u68
         o/1NZwYeTY8jqT/UgCF2HmufKwYCB6MoCHQLuBROoBIfa7JnTOiIzbiAWfh5YFeCL8SU
         te2wgZCHHlnv0VMxzpn/GCqkvF6RGWe7gY3tJCRWwsjjsdNBwydtHFNt36qtU4y3gg2E
         K8XA==
X-Forwarded-Encrypted: i=1; AJvYcCUeKsELq4khm86cVnlpKj7RrMnZlfGXyyznbScmgP8nN94Ys87nUyiRiFvYXBRgHQFFVI5+snXcMZ+m@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4vg04Mi3f7RQu1hdFTqMEvku9Snv4sseeoIILfBOrlnY77/fi
	X7gIgyyiB1SqyWUcNv0UwfQenjyvJSEozJl0toQWsiqoAorDW7Nthewa
X-Gm-Gg: AZuq6aLlqlQym3kc3rahO0mB9q2s5ueffVajot/k/jihjIVzV21vp9xqftdpW+vxiYG
	mDKX7Ba9WLkQVb74wc2b5rjcvIGQXcd8x+mJo/9pF9EXi3cEOBXhN7QhFV+LLVIxVOkgswPQe/h
	xTK/2D6LMHAGP27kuZrIjw/WJMlfXMz8r1lVAt5Aqub3VNxkhgXIDr7FdgA8a4tbXG4EiHIXpZs
	IL7oyjSMtwXboKEa0f4yMwVOuzn2prdPf5woezK0rCvgoLecGogmFQPEUoyuQGJiRE9q/jXtbxE
	JHIws1iOPIyPuyfijQ8E4AYhTbZcPk1wH66mFDTcj53xAFPb72lp8EpyKUQJwAngCTheiEU+ydH
	zRWhoxr4ssjPf31NqcRUsBUBoampcP8d4J3r6NfOZA4QS63AyldX9MaLCuDw9dt2/ilyoGd7b7h
	hwfTChsJtXbTJcm2WJlMBspqI1szHeJRxYwq4U2QsTywHwWQPUbnppaAIkPuGNlOO4ACn7
X-Received: by 2002:a05:6a21:6e92:b0:376:2816:9ac4 with SMTP id adf61e73a8af0-3938fc21e27mr6703461637.29.1770396920581;
        Fri, 06 Feb 2026 08:55:20 -0800 (PST)
Received: from ?IPV6:2401:4900:88c8:67ce:acf9:59bf:f469:c25? ([2401:4900:88c8:67ce:acf9:59bf:f469:c25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb61e68dsm2736203a12.28.2026.02.06.08.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 08:55:20 -0800 (PST)
Message-ID: <9dac3cb8-a2ec-475f-a698-cf91c932369c@gmail.com>
Date: Fri, 6 Feb 2026 22:25:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: power: ti,omap3-smartreflex-core: convert to
 DT schema
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-smartreflex-v1-1-2ab7a35169ed@gmail.com>
 <20260206151001.GA229184-robh@kernel.org>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260206151001.GA229184-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263429-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4a0d9000:email]
X-Rspamd-Queue-Id: 1FFC51009A2
X-Rspamd-Action: no action


On 06-02-2026 20:40, Rob Herring wrote:
> On Wed, Jan 28, 2026 at 08:11:55AM +0000, Akhila YS wrote:
>> Convert Texas Instruments SmartReflex module binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../bindings/power/ti,omap3-smartreflex-core.yaml  | 75 ++++++++++++++++++++++
>>  .../devicetree/bindings/power/ti-smartreflex.txt   | 47 --------------
>>  2 files changed, 75 insertions(+), 47 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
>> new file mode 100644
>> index 000000000000..ad4094f15a63
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
>> @@ -0,0 +1,75 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/power/ti,omap3-smartreflex-core.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Texas Instruments SmartReflex module
>> +
>> +maintainers:
>> +  - Tony Lindgren <tony@atomide.com>
>> +
>> +description:
>> +  Texas Instruments SmartReflex is an on-chip adaptive power management
>> +  technology integrated into TI's OMAP and other SoCs. It dynamically
>> +  adjusts voltage and frequency for different chip domains in real time
>> +  to compensate for process, voltage, and temperature (PVT) variations.
>> +  Dedicated hardware sensors and control logic continuously monitor
>> +  conditions and apply the lowest safe voltage for the required performance
>> +  level.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ti,omap3-smartreflex-core
>> +      - ti,omap3-smartreflex-mpu-iva
>> +      - ti,omap4-smartreflex-core
>> +      - ti,omap4-smartreflex-mpu
>> +      - ti,omap4-smartreflex-iva
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  ti,hwmods:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    deprecated: true
>> +    description:
>> +      It was required by the OMAP interconnect/PRCM code to automatically
>> +      initialize hardware modules using TI's internal database.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    smartreflex@4a0db000 {
>> +        compatible = "ti,omap4-smartreflex-iva";
>> +        reg = <0x4a0db000 0x80>;
>> +        interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
>> +        ti,hwmods = "smartreflex_iva";
> IIRC, ti,hwmods has been removed on omap4.


Sure, I will remove it from the example.


>
>> +    };
>> +
>> +  - |
>> +    smartreflex@4a0dd000 {
>> +        compatible = "ti,omap4-smartreflex-core";
>> +        reg = <0x4a0dd000 0x80>;
>> +        interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
>> +        ti,hwmods = "smartreflex_core";
>> +    };
>> +
>> +  - |
>> +    smartreflex@4a0d9000 {
>> +        compatible = "ti,omap4-smartreflex-mpu";
>> +        reg = <0x4a0d9000 0x80>;
>> +        interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
>> +        ti,hwmods = "smartreflex_mpu";
>> +    };
> Just one example is enough.


Okay.

>
> Rob

-- 
Best Regards,
Akhila.


