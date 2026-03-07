Return-Path: <devicetree+bounces-272448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNaEIus2rGkbnAEAu9opvQ
	(envelope-from <devicetree+bounces-272448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:32:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AA622C2E0
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7568930428A8
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 14:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3004F39E178;
	Sat,  7 Mar 2026 14:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LKjKvKyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD0A8248B
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 14:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772893898; cv=none; b=O4vgBNC6AF/3MqF+GKd4LygZ5ct8KkFIdfuU0RknkO7gF7EYNPtyRTtDqSCG0eBmi60JhMT/NY6bElwIfcxv/FcAWpsZLfGgoWzPnlnUwjJSmmrz8sSoqN+DxYBSKy0vnydB5wzSZ5fhjwWYaNEAC+bCf6vZpbEO/WgYC7o2Tfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772893898; c=relaxed/simple;
	bh=g/L4P+Lx8U99RzdAYQ77eCkCadKZuQHzA3Q3uMi/iTM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LtLG9VRH6g15YZS9mbRW10SI8TUc9I2VsVCY6qLyZ3v3AF3Qd764GBs07qgCF1RFs4OwYVz+99PGdIW6g3ZRKWwPl0eLSLNTMU2Q88jYep0cIjWUP7PMIbrs6DM58Zu/IuLg79GJpw104TVMB67byLfwnioNxL0QVS6Gx8am090=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LKjKvKyv; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso7322205e9.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 06:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772893894; x=1773498694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DVhycCAQhjB5+p0XAMFhZeGMfvAqhDk5umDLeanGzsA=;
        b=LKjKvKyvGvFP+vkQmTN1Y26ELvw5J0KDSuJ8OCIn1N8MuvMylSf7y340OaJB+v2Xl4
         MuHfNv5SAzDYFe51EJGplNvMoY/Be1vWia+kFjfw2itt/FXFITDeNhhm2QpQXnMX4A9W
         Zlz55sAmN+X1b3DZDFA54eb8+VhMZtsp9Fhp6Z+vHXjOnP15393styogNdxb1VRSPU5R
         LiKQs3NEpwkc8g4VRkkdrbAHnHL0L//F22HLXwFGdjKMXBGPitgVPx/trkpLTpVwSokv
         ZCF5yzSlsV7FrfdM0rBLokYLmx8qiS2vw3JcbRSflNJv2tJ4zC1LkNrzrPcetowpNqvl
         r+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772893894; x=1773498694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVhycCAQhjB5+p0XAMFhZeGMfvAqhDk5umDLeanGzsA=;
        b=bFJw4oHNb78s9CAHjwlvv0nmgk0tm7+0b5tSUSmN9U+Y8MuEYRnTewGnMSx71vP92V
         VEBKki8tkbJ+CC7HTKpkvw+LbOag80FWt+qeIZqWJQvYEJ+zQMbBMUr5JvZmx6lG+RkR
         M6WiaPf2LamxUYtvMc3rslYZSoXiGZq4Ypy9UZGtqEmcTVNnPaVh0N6YRNdEkAV7ZBaY
         RywRk73CfKM+859dE5SSKgfC52GROMHQwv4u+Fn5z/27+ZBWNH6Zhs7WHpu+f3SvNC5L
         ZqFG4i9ztU4HUc7Mhqs6l8uQtB3O+mJ3bikdGRygOoS+ekNassE5KiaQ42o5mndCJeTY
         vQbQ==
X-Gm-Message-State: AOJu0Yxgrs6+h6pforpFvcqnYCWLNCpXoSFuEC3igxxAm3tUDwAVgjIA
	NM4vMje2ROPJOPUH+OQP0/L4RBWYnAVU7WTMH30RitZ/2KyfzDhvzh+83qe51wl0mrAvTaMH/NY
	TUH85
X-Gm-Gg: ATEYQzwuECM/aFCqUF5dmaD71iU6/73UJqhwm9wrG3Vo++uzqYTYYE0kCxrxFGOuoxq
	h6WSQVNEZS9w2ZY4MLDYp8Hfa0hTsxUhjAV+Z0bGPnTkmp5cncH2lK+pSB31/ppOiJALRgeMOYh
	ncSwCgRoczMfCcxpyvsmJQsoTo1CfAaaorEGEV0ai0FLZLW+uX6zY+/kqlJfQvWFcIifWSgCHb+
	fNYSInC/s6saiGgLIpq3xIkm+d+hQcZITTrf9RilIgqBXBLlc25+BITy2Ym0eMwcdK8vmGpAPt4
	9d3n0Ito1fuMriqLxUCr5hiaQ4Z03R/e7JtGh/WiQ0KdjpJApGM6IauFmc9Yon3cvKsyW+cRmom
	knAuXo1CtWD+eLnIDAazJYezESOqViQ68RTxGNpHX9WYzMG7wz5Dc5lcYuWOjGgVpj7MVMb55bf
	XeQ6xsrlcm4RERTiy3Q5WfLX7MYs0M+A==
X-Received: by 2002:a05:600c:8b0d:b0:482:dbd7:a1c1 with SMTP id 5b1f17b1804b1-48526984289mr91782915e9.34.1772893893631;
        Sat, 07 Mar 2026 06:31:33 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246fd237sm77122865e9.7.2026.03.07.06.31.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 06:31:33 -0800 (PST)
Message-ID: <aacb74f1-5d4a-4ed1-92fe-0c5536691274@tuxon.dev>
Date: Sat, 7 Mar 2026 16:31:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] dt-bindings: arm: microchip,sam9x60-pit64b :
 convert to DT schema
To: Akhila YS <akhilayalmati@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-3-7e2ae1c5b5d6@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227-arm-microchip-v4-3-7e2ae1c5b5d6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E4AA622C2E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272448-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,microchip.com,bootlin.com];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.974];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:dkim,tuxon.dev:email,tuxon.dev:mid,microchip.com:email,devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action



On 2/27/26 17:14, Akhila YS wrote:
> Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
> format.
> Changes during conversion:
> - Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
> compatible "microchip,sam9x60-pit64b".
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>   .../devicetree/bindings/arm/atmel-sysregs.txt      |  8 ---
>   .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 ++++++++++++++++++++++
>   2 files changed, 68 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
> index 70059f66f2b4..d0561f7f465c 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
> +++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
> @@ -1,13 +1,5 @@
>   Atmel system registers
>   
> -PIT64B Timer required properties:
> -- compatible: Should be "microchip,sam9x60-pit64b" or
> -			"microchip,sam9x7-pit64b", "microchip,sam9x60-pit64b"
> -			"microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b"
> -- reg: Should contain registers location and length
> -- interrupts: Should contain interrupt for PIT64B timer
> -- clocks: Should contain the available clock sources for PIT64B timer.
> -
>   System Timer (ST) required properties:
>   - compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
>   - reg: Should contain registers location and length
> diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
> new file mode 100644
> index 000000000000..f00ac7e858d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip PIT64B 64-bit Periodic Interval Timer
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
> +
> +description:
> +  The Microchip PIT64B is a 64-bit periodic interval timer used in
> +  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
> +  SAMA7D65 families. It provides extended timing range, flexible
> +  clock selection and supports both periodic and one-shot interrupt
> +  generation modes.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: microchip,sam9x60-pit64b
> +      - items:
> +          - enum:
> +              - microchip,sama7d65-pit64b
> +              - microchip,sama7g5-pit64b
> +              - microchip,sam9x7-pit64b

Same here, I'll adjust this list to be alphanumerically sorted, thus, 
microchip,sam9x7-pit64b first. Other than that:

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


