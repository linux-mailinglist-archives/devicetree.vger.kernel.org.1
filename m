Return-Path: <devicetree+bounces-274915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHdpAf60s2l5aAAAu9opvQ
	(envelope-from <devicetree+bounces-274915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:55:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7404A27E64D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7E03300DEC3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BD4B34B68C;
	Fri, 13 Mar 2026 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d2A/6cVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B2433F8B4
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384954; cv=none; b=iDpx0BGNjL+AZR13jDC4D9PoqNzOBbUTtG+FUUCsUDQzIgp80ZldiwmS3tSciYQ3BM8bgFx3yz2u74KFcHCgeyQIqd5C2cDm3ZouRsAvOUcrzoWS8FgkJq2xmCuegTEWCeWzO6zatQvia0vj2k6arGzs4+pBCX59M92IirnF9dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384954; c=relaxed/simple;
	bh=Mvuas3KatxkkAZHpPOupTnzF25JszjgI3sDC3JxkWw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uGZ+wFQcraEkvB9z1681Ax08L77tKOimsZ8m1j5iycIgAvXkcsG6gKzLa9XBikghjB3xwee4qwUJn3FwIOa35nyODI4G6f0+KXvUBEK18b8ReUOgBHLls1MCxDiC/CHDUN6hd1OIYK3lR0LLPMiTKcJaGMz/bw0RA5DQXKlzHg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d2A/6cVk; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-354a18c48b5so1812695a91.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773384952; x=1773989752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bKspgt19BRlk3T3bnDher33Ubx6JY+szccGAPMVxMvU=;
        b=d2A/6cVkR3e2t/h6zZ1/yZBgpDd2GbVyIcZ1r7nxvVVaCEKtib09P2gbEzVGzm7DWG
         oaqn4Bx25n0x1YgYdChqRcZtv7P3RhemLb9QOrhIVp1Yj4+J8D6d3hcXs12ZrHTYpLlq
         kFYUC6tm5axnsURB3drLliMNo1q9texlkKd9M3xeoF4ZnxMrybLcII+IF5gCG2HIxSjE
         3ngN1DeFmQQImPv2EdqX6SF+M6WUBCx0zKaK0c+qAKiv276WGIH4uwcJijx6qWZ6nE2U
         MXXn8h44kbWiuPOaE/2GcNKuSNzKWUIt+68in7kvBWcVqb6J5doquKGhptb88e859YVt
         uceg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773384952; x=1773989752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bKspgt19BRlk3T3bnDher33Ubx6JY+szccGAPMVxMvU=;
        b=gG3iUhQuw27bICsZ7ebctMfBazDkYzd+W/rT1VqocyaFz6qYJNr1IuWGkKJ7FB6AnT
         dQp7ekqRBaQlwvbCVJL8jdKvP3sKifwPwC4iKCz8eQmeyy9VUeTwXSsm+fk5nZ4eO1es
         ySwzduWtFiqLIthZ6H5qZ9Xuvc82BUWWO/d36r5v6o08MGgfaqOd+eea1Ja0bRDquuSq
         jlqyQlVi7/EcCTMOheXGIIZ/KPcSpV5yg059R0iZ0g8m6SYuelLBdwKbo86LgYU4lPkk
         ulR7hHgQes6E/X1ySTE4w29tUt2v4YkNicSJyybCFDxDCtJEGm9k8tvOhAYEbALjZV9k
         Arvw==
X-Forwarded-Encrypted: i=1; AJvYcCV983vQBesd+NyE3pPxliLg8YbUwy69ToRn7mWWFN9TkD6giHBJtCikhWGDsS03HRGcpWcnhy3Z/gzL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5sE53Yeuigvbo0z1z0Yxju+TqcE1nlvUjKi6+OlSx17Crdbji
	fHqiVcR6z1HBVZvOL84TFo68bHNTRjY6TEEoAlamascsWxahRI7bbDin
X-Gm-Gg: ATEYQzwxIDbHMgUMX4Qn5XtjzJ6CCKJxgs00iyycWfnfzU2Px0SBV/jfmkLHJSyvziQ
	hjnNuGwNZg/WC6+6UGphcBX0puXHTGmvy/Zc3kH++FN0YPKl5TA/yuNMU7l4IfI67/OTh6x6mZx
	ZBBEIMbwtcx2YafKH2NpprfmAeaANz6lZiNx7zt9rQP/kxhZUv3D7Zb2FFex9on5oq7FN3nd6JT
	PXFLB3zMMjY6yVqWOVjoPkJ07x+ZCPp53BVqMKCv/kEIoiHS+FFuAUHWBLPDGyMahhmsak6eWs9
	f0KW+muwhYLrAma1QOj5IupBeKqJ330TFrWK5gaAQ1zIsc8DIrhsI72yqoshQdkcZZWnMAQhgYO
	FCaxHZi6nU4WhH2nuEpCQRm7GgWavdH0dfoOuHmuYHLuKFbvzTY7ewmrKSKIeHleq14zt/z59P0
	+ctZpPhJu7wmKHG15iyXyIral7pea8GxNGpC5EVNV3HK1M
X-Received: by 2002:a17:90a:e7d0:b0:359:806c:7a94 with SMTP id 98e67ed59e1d1-35a21e4edfdmr2091970a91.7.1773384952107;
        Thu, 12 Mar 2026 23:55:52 -0700 (PDT)
Received: from [192.168.1.5] ([27.7.215.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359fc97356dsm8699301a91.8.2026.03.12.23.55.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:55:51 -0700 (PDT)
Message-ID: <c60b4ee6-74bc-49b9-b6e7-2f4d535b13a8@gmail.com>
Date: Fri, 13 Mar 2026 12:25:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] dt-bindings: usb: atmel,at91rm9200-udc: convert to
 DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Claudiu Beznea
 <claudiu.beznea@tuxon.dev>, Herve Codina <herve.codina@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
 <20260307-atmel-usb-v3-4-3dc48fe772be@gmail.com>
 <20260308-nifty-honest-buzzard-ccde9b@quoll>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260308-nifty-honest-buzzard-ccde9b@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274915-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7404A27E64D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 08-03-2026 14:57, Krzysztof Kozlowski wrote:
> On Sat, Mar 07, 2026 at 09:16:21AM +0000, Charan Pedumuru wrote:
>> Convert Atmel AT91 USB Device Controller (UDC) binding to DT schema.
>> Changes during conversion:
>> - Include "atmel,pullup-gpio" and "atmel,matrix" in the properties since
>>   they are required by existing in-tree DTS definitions.
>>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/usb/atmel,at91rm9200-udc.yaml         | 77 ++++++++++++++++++++++
> 
> Where is the actual conversion? You are supposed to remove other file
> for this to be a "convert".
> 
>>  1 file changed, 77 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml
>> new file mode 100644
>> index 000000000000..6961cd5d5d89
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml
>> @@ -0,0 +1,77 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/usb/atmel,at91rm9200-udc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Atmel AT91 USB Device Controller (UDC)
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
>> +
>> +description:
>> +  The Atmel AT91 USB Device Controller provides USB gadget (device-mode)
>> +  functionality on AT91 SoCs. It requires a peripheral clock and an AHB
>> +  clock for operation and may optionally control VBUS power through a GPIO.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - atmel,at91rm9200-udc
>> +      - atmel,at91sam9260-udc
>> +      - atmel,at91sam9261-udc
>> +      - atmel,at91sam9263-udc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    minItems: 2
> 
> Drop

Sure.

> 
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: pclk
>> +      - const: hclk
>> +
>> +  atmel,vbus-gpio:
>> +    description: GPIO used to enable or control VBUS power for the USB bus.
>> +    maxItems: 1
>> +
>> +  atmel,matrix:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description: Phandle to the Atmel bus matrix controller.
>> +
>> +  atmel,pullup-gpio:
>> +    description:
>> +      GPIO controlling the USB D+ pull-up resistor used to signal device
>> +      connection to the host.
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +  - clock-names
>> +
>> +unevaluatedProperties: false
> 
> additionalProperties

Okay.

> 
> Best regards,
> Krzysztof
> 

-- 
Best Regards,
Charan.


