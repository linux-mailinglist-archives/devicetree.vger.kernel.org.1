Return-Path: <devicetree+bounces-262641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDcWON9Gg2nqkgMAu9opvQ
	(envelope-from <devicetree+bounces-262641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:17:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D935E64DB
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:17:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4601F3023DB4
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367D522173D;
	Wed,  4 Feb 2026 13:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j1NWjxcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0593F156C6A
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770210908; cv=none; b=BoSKjkFfEvtMjtADMmniiCmS3jNJblRJd/wThXBnMphf6WrQ46UH+oxvrKm7NCbs/duJX9XLZOMs1ylX1XbhReqGki2unr6XdYDUHnJJkBwT4lQwB0+ul3ZA0dNe4DmXA/sSoQe3cfe3uL91I/ccGNbw1r8ZIEc+S7WNExxjQqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770210908; c=relaxed/simple;
	bh=rHVS6ioRH8ur1X090wZA+nUvR3Xl16eP3aJdGzDLmMo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ehfI93NyE33hZINYgxMzgR0TMv/3xZpWef7Vs1M6a7+vBdUWgHfIiU7H/01+lpO5GyxXKEEazAW2VdbXIuiiU+wCWjBQ07Ym/g2oniQNaB6VXeg7Q7X/SoXhe9t6/w0NWVgtow2e8YpWIhgMNjO+87ELTbtzRVxaYU8QlSGV3X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j1NWjxcH; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b4755f37c3eso4405419a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770210907; x=1770815707; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ftubfnbHJMifavaHfusKulTde0Z2b2i2QG/AKOLuw4=;
        b=j1NWjxcHhUSEc+qf3+Y4eVOu2LpG2uEOXMoqoPYWjgSQrm18M8v568h+1HAKCo0Yt5
         JjmGC2TAORy6cp0LCTUA07jPxxATVo9GYaiM1zM4RwXPkdDNcyyGQ8Qd2hbtOpXgeg/F
         c9+MaE0TZQ1NxnwFR5RRLyeARR0eFszVpdUl8amZr2FQDWoblu43iWQqPdPWYcFUpiFb
         Z66Z9l1s0vavIMLCAmAzvBWv6VaiwpZPIq8NuOC90jQg8G2rnLUByXiExcnHjCTBfMXa
         jZL2DD0u1A1xMdH1FbvULNajhUMc3TQPzaqm4qBe25p8H/sFh3gjXw8x7Sp8PP0uM5vY
         ee0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770210907; x=1770815707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ftubfnbHJMifavaHfusKulTde0Z2b2i2QG/AKOLuw4=;
        b=TljHrxMgc4nZWqABjPNjsQ7Nl9FuBhqVbOwK61Zlwgc3rbS/OWIZn0zFhFRQ1DK0PA
         N/UU6y+/poH0NDj1QFwfNhiz9t+I/DaNcvVsOhdZouqVqsWBDwWVaHYd628M93vM5hpl
         sGWOCV3vfgU0INW6LT/sYkAkxeIkyyzLKYA6nIcaN1/AniKaHh2w6kly1bL3DCiVEPs1
         WjoR2Yfg4xELY4QLp/8H6WyY4splJgMCCl/+IyaGi8mXRlvLuA7oPt5FzzVTZ+e2hkuO
         pSnvuc59+akJC2gx3TVyjBTf027M/3gfFdPhNgdhJr6UiFpXqijp53u/qt7EncHwutOL
         eeHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpKB8MDzhctSS8TLOmq2bNPZxbdkWtSp0X69Q44zvmzAcRNf56uPgAiuY+gJBVqzxkhgKziw7cKv7Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxXGeF8677CucNje+dG+PoD2QJL+c0uumJ8iWA/71GZZRgjDn6r
	fMRje/AHflH/7UpLgNc+Tg/ugaNDWms1hT9SfJD49QNQFJ3cUGrW1Od/
X-Gm-Gg: AZuq6aLfx62VwHrzsY/5W3zFQaTXqSq/4DdB+Kik5DGMYC7SIRaNS2ZQKiQaHRqrB9g
	ZW1Q0Fj781PUy3P2IGg1mjBhjqB8jJMZsEGM0lKq9aCXCLX2GEJlFMbTZl0HOohIMLdq6b5IlaF
	CTCZoox+TAQMszBk5LZjs6NYhB7KO0i5sMoRhojVglo02llLZctbBCPA7La+sU6RKP8QcEFF0/x
	1eEV/3zRGbJQPGcxlZJA5dFbHq6bndlEAthsIVSv+0COczITr6UzL4KgqTuX/Fws/wVUGNC/61e
	R/YnPJju2l+4wmY2kGu4xT3sqTT5YWhRBxsjH/2S8yHgVNTAJk/ekMkrx45IEP5cbh3TmGgVUWS
	NYh1/ihtWCuMTlAnOI0vXYvkKdnIJU+IbIb8f3wlZeZpPXjKzXpmMC2TOCGklhDjaHha7m/beld
	CNm4JwjSKEgOTqiJnE+pNMimE1O+XMTHVThio=
X-Received: by 2002:a05:6a20:9396:b0:38b:dec8:9d9a with SMTP id adf61e73a8af0-393724c1cc1mr2968310637.55.1770210906967;
        Wed, 04 Feb 2026 05:15:06 -0800 (PST)
Received: from [192.168.1.7] ([115.99.252.105])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c8553e888sm2101202a12.31.2026.02.04.05.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 05:15:06 -0800 (PST)
Message-ID: <7bb66a07-51c5-4e9a-b484-e96a8f12c783@gmail.com>
Date: Wed, 4 Feb 2026 18:45:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: usb: atmel,at91rm9200-ohci: convert to
 DT schema
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Claudiu Beznea
 <claudiu.beznea@tuxon.dev>, Herve Codina <herve.codina@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
 <20260201-atmel-usb-v1-1-d1a3e93003f1@gmail.com>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260201-atmel-usb-v1-1-d1a3e93003f1@gmail.com>
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262641-lists,devicetree=lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6D935E64DB
X-Rspamd-Action: no action



On 01-02-2026 17:04, Charan Pedumuru wrote:
> Convert Atmel AT91RM9200 / AT91SAM9 style OHCI USB Host
> Controller binding to DT schema.
> Changes during conversion:
> - Include "usb-ohci" as a fallback compatible to allow at91 OHCI
>   driver matching.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../bindings/usb/atmel,at91rm9200-ohci.yaml        | 85 ++++++++++++++++++++++
>  1 file changed, 85 insertions(+)

Hi Rob,

For this patch, can I modify the existing generic-ohci.yaml file to include the compatible "atmel,at91rm9200-ohci" to it and define missing properties, as the fall back compatible "usb-ohci" is already defined for other vendors there, can I drop this patch and make changes for generic-ohci.yaml file and include it in the patch series for the next revision?

> 
> diff --git a/Documentation/devicetree/bindings/usb/atmel,at91rm9200-ohci.yaml b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-ohci.yaml
> new file mode 100644
> index 000000000000..f04de6d553d2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-ohci.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/atmel,at91rm9200-ohci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel AT91RM9200 / AT91SAM9 style OHCI USB Host Controller
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +description:
> +  The Atmel AT91RM9200 / AT91SAM9 OHCI USB Host Controller implements a
> +  USB 1.1 Open Host Controller Interface (OHCI) compliant host interface.
> +  It provides low-speed and full-speed USB host functionality and is
> +  integrated into Atmel AT91RM9200 and AT91SAM9 family SoCs.
> +
> +allOf:
> +  - $ref: /schemas/usb/usb.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: atmel,at91rm9200-ohci
> +          - const: usb-ohci
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: ohci_clk
> +      - const: hclk
> +      - const: uhpck
> +
> +  num-ports:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Number of downstream ports supported by this OHCI controller
> +    minimum: 1
> +    maximum: 15
> +
> +  atmel,vbus-gpio:
> +    description: GPIO used to control or sense the USB VBUS power.
> +    minItems: 1
> +    maxItems: 3
> +
> +  atmel,oc-gpio:
> +    description: GPIO used to signal USB overcurrent condition.
> +    minItems: 1
> +    maxItems: 3
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/at91.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    usb@500000 {
> +        compatible = "atmel,at91rm9200-ohci", "usb-ohci";
> +        reg = <0x500000 0x100000>;
> +        interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&uhphs_clk>, <&uhphs_clk>, <&uhpck>;
> +        clock-names = "ohci_clk", "hclk", "uhpck";
> +        atmel,vbus-gpio = <&pioA 18 GPIO_ACTIVE_HIGH>;
> +        atmel,oc-gpio   = <&pioB 10 GPIO_ACTIVE_LOW>;
> +        num-ports = <2>;
> +    };
> +...
> 

-- 
Best Regards,
Charan.


