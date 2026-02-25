Return-Path: <devicetree+bounces-268416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cL4bJB4Tn2nWYwQAu9opvQ
	(envelope-from <devicetree+bounces-268416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:19:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF19B199750
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 234DF3040A94
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06F827CB02;
	Wed, 25 Feb 2026 15:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YIqg/yC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690B71E3DF2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032261; cv=none; b=Ylw2rnDumML0ch4u7MWcCAgGnJMmEUeaJLKsazVAz2WtnwbgngDFH+97ysNP1kUF5o/ftqeAnzHKw7gHfOwwtnAoepG0xgywhpHrrPtCMHGG6FCY3NOnvckpftkjFK3w/j/XXPBHYcaImonI/oj6YWfenZ2gIreVBvSFktS6f6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032261; c=relaxed/simple;
	bh=5Z5mAAOnpt4iYnyr0QtztpijqqUyLX5cfonfWAXfbEg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iMS2JWSDM6wyKLTbyRWu+kn+yWqzGflSkcwBM7lM7F4Fa2HGlnFPLb2IouEUVbFjlwaxe8/rSh5y+6oGbUlgWFIeVOAk1XjbBHREz7MzNmcHpJDZ4aOkFA8NyF+JfTfWLd7802JThQh2I9UXUvwIaAXjRZrbwkjaFVDDQfNg8fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YIqg/yC9; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2adc1d9ec56so9157105ad.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772032260; x=1772637060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zSnbwAQr8QFbf0n85PqQBBa2B0AcsRHkkzFtD84/ibw=;
        b=YIqg/yC9YqpBLjGpgR79ANH51CiVYZpgyB5LiBGIomTgjUl+sIlO5sbzDtlOyLrneQ
         DyL51MAorApj2qf8WwxF2nJ+TvZ/Btyoxi/g4/6z8QwsbpdeHztaMGzuTKooN/Fx8Fhq
         LNC1PNIKmrboTTRIbqEVU1vOrT3e2F0YbQ/uRHFTJ8OKEcsh1nfsd4DvwvXVvEqPN4Yr
         R8MBbPWDv5baw1yPwNCeDslCU818FpNMV4XpNaxcAvK8vG9cC4ZjkqpZoxDElKR1MauE
         77I/2r/cRJEENaHawXi5CP5h9fxmCb4BeXdkLL0GZv/Pzcmr2dPyvGG9iRUi35fvV2Ze
         W2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772032260; x=1772637060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zSnbwAQr8QFbf0n85PqQBBa2B0AcsRHkkzFtD84/ibw=;
        b=Y0JmowfElx61r2kTbkX9fuPIfSR3Whj9VmG54DUpCy/v33F+f7QeWM53a/PRXBhRcu
         u1VWCR/PIUoupCHp2OH844/SxOIuCD8GrNNwpIt1aYHsQHLJxoQLT8cLigZb1Z4rETF0
         CNHemUitowK6sKpUYthR1pz6liwgaLio5MbniSMcV6N4voEwHoLua1+Ttap4/lq2RG7r
         xM92OjQS26v2dp+LCPtDB/R4SWiT3mpS9kWqY6zysmwvUSMjxzcCxpYKDZ5t+huL8NPW
         bsXUFEF2ms/l0IbLO4ANpHxjV5BY7JuFYTr/RfuUvZRp1/j4P97SRZFLozsUniw5oRxe
         B4wA==
X-Forwarded-Encrypted: i=1; AJvYcCWY75PcvFco3y0wH1A9C7Y2rixgDXBlvBs13X9+sIsDDAg/x6lHSsvyGAlzFSh0sAaP9Ox4B0Ad1cGr@vger.kernel.org
X-Gm-Message-State: AOJu0YygBxAt6DPGb6F36T8HcbE/QSI93qrInOPbdLmOpsOxF4d0YAb2
	xDAaQ59TtdHKPA/ITgqgUxEgzmYbxkyMmiDBbhxSe3lBprbBvwgL7qCT
X-Gm-Gg: ATEYQzzfuWixKD8qD2K7zrH9v3Miwayq7LUmxM57KhQiwhxKuobqKlwcpMSgQoVzPt9
	Vs5vlg1nVsXULe5XKPwe9vXr0//l0+wXHW2cZKLiq535YkRcummK+yWBjpMf61eqnEFE2aLr7Mj
	EuDSAs3krF4y91xYagwJk75Lj51GUXnj3n29zJ1hTIWw0K53RIZQLE/ZQ3uzHxiyVL+F9rY2lVa
	C3NoUwneWNVgop7YpEqxmJ6JWmdon4XU5U7Mpb49dJjLhSPMq/629MKFOiQsDDqi0Wxlfek77kv
	U6DLwuL8SrFS0LUUPRroIi6fCtsW7Dc8usnJr0JUd0F3Egfyxz0HTdpcN+MSCNTsPHVOSBexyUY
	FIa5SLn+FHZDhmuoZtjhG+8H5l+NlN583RiPut2fZSvs0xuifvXC1fkU5CO2pu4wb2Wz7Hfhv2P
	ac6YBJ5weMxBao0648IyHMGzAOGrG+SCBYmvSvbu1sINaNs0t3aJ7ZeEpP7PwXJE7FnVaYbTNK5
	lgzsBjOLGgkVDtZBIonKA==
X-Received: by 2002:a17:902:e94e:b0:2ad:9326:3c3d with SMTP id d9443c01a7336-2ad93263e35mr69945275ad.54.1772032259787;
        Wed, 25 Feb 2026 07:10:59 -0800 (PST)
Received: from ?IPV6:2401:4900:892f:f52a:c575:426a:cd40:5f5d? ([2401:4900:892f:f52a:c575:426a:cd40:5f5d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad75321543sm144713925ad.72.2026.02.25.07.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 07:10:59 -0800 (PST)
Message-ID: <d37d3775-c5e6-44d8-92bc-68f465d7cc97@gmail.com>
Date: Wed, 25 Feb 2026 20:40:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] dt-bindings: arm: atmel,at91rm9200-st: convert to
 DT schema
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu@tuxon.dev>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
 <20260224-arm-microchip-v2-4-8bedacd2cdcb@gmail.com>
 <20260224-gout-exquisite-1ee0b67c58cd@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260224-gout-exquisite-1ee0b67c58cd@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268416-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fffffd00:email,microchip.com:email,devicetree.org:url,tuxon.dev:email]
X-Rspamd-Queue-Id: CF19B199750
X-Rspamd-Action: no action


On 24-02-2026 23:18, Conor Dooley wrote:
> On Tue, Feb 24, 2026 at 02:46:49PM +0000, Akhila YS wrote:
>> Convert System Timer binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++++++++
>>  1 file changed, 65 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
>> new file mode 100644
>> index 000000000000..ff485b37cba8
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-st.yaml
>> @@ -0,0 +1,65 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-st.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Atmel System Timer
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Claudiu Beznea <claudiu@tuxon.dev>
>> +
>> +description:
>> +  The System Timer (ST) module in AT91RM9200 provides periodic tick and
>> +  alarm capabilities. It is exposed as a simple multi-function device
>> +  (simple-mfd + syscon) because it shares its register space and interrupt
>> +  with other System Controller blocks.
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: atmel,at91rm9200-st
>> +      - const: syscon
>> +      - const: simple-mfd
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  watchdog:
>> +    type: object
>> +    description: Watchdog timer subnode.
>> +    properties:
>> +      compatible:
>> +        const: atmel,at91rm9200-wdt
>> +    required:
>> +      - compatible
> This should just be a ref to the binding providing the watchdog.
>
> I am guessing you didn't test this against all bindings, only against
> /this/ binding and therefore missed the fact that it doesn't comply with
> the binding for the watchdog itself.


Ok, i will take watchdog properties as a ref from different yaml.

>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    timer@fffffd00 {
>> +        compatible = "atmel,at91rm9200-st", "syscon", "simple-mfd";
>> +        reg = <0xfffffd00 0x100>;
>> +        interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
>> +        clocks = <&slow_xtal>;
>> +
>> +        watchdog {
>> +                compatible = "atmel,at91rm9200-wdt";
>> +        };
>> +    };
>> +...
>>
>> -- 
>> 2.43.0
>>
-- 
Best Regards,
Akhila.


