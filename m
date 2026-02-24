Return-Path: <devicetree+bounces-267937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJ9jKnm5nWnERQQAu9opvQ
	(envelope-from <devicetree+bounces-267937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:45:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6611889C0
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B2303018AE9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50093A0B07;
	Tue, 24 Feb 2026 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bLEsxpPe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5FE3783B2
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944294; cv=none; b=SYMxkvtolonlk2d9PACov4tXqvqQ2ItU+bC63oymgjOE+2M6d0+/ogRyXSiEhA9b2GYoL2DzSKbfVK3XiFkduNfr98UKFCGkIY9VfSBZFPrhMPqx0zILHO6deaTKOPT5K0qsis6bF63ioqkchJh/kRekjfY3tHuwa8buLHAaj4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944294; c=relaxed/simple;
	bh=4uOCtrp++Rco6aDcDoHvG7Yi2kHQeDl4V9vGoDa1C4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rGvhCa5vC0TPPjr2fSZjaUjhL6jApewOMuyT3ym39u4BWptH8HWuOXojqRk8SpUM0NdVAr2ah95DIEx/gtmZH7SwsaiVgRmXvQGqpiH/SRgJo/SBLPxhTybDea1cff7KhyjMLQuAFhZeLLePAxWBxO3hnYU+cBAs4ejCG6mVHmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bLEsxpPe; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2aae146b604so39107275ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944293; x=1772549093; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XuWOfNLccEzaCXC2ud0KMqNaPtExWrx9+o0WPAXD4Fw=;
        b=bLEsxpPeFGntK1BZ9YJFzZpnI7j0uMKPjxfkDJI+JguyKUiX+oruq+uNS38RVCMuRP
         iNFByjr4fi5aKLupdfzjz9Kxx6S9VWnZ7LwMwc2DnmskYvIeUwEeorYRbFDAM9oGgqZL
         k/fkEwj8QyqAv90Mi3XHr/vZYH5TINkiJDBSZ7KiF771RP6FyF0G0TK2KkzUvRi1aqvD
         Vk9JCxhxks4A7kS9katJhTqSHE7q8LTVmudLUbI0wcYzN4Y8EIaU0Iov11xEcW6CaelN
         8VpzUlArYdt0ulwLGspCEJ1E4vSm+3TYjv4ivir9AATxPViHZMUQP2+kAZmiA3geHu6z
         jy9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944293; x=1772549093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XuWOfNLccEzaCXC2ud0KMqNaPtExWrx9+o0WPAXD4Fw=;
        b=WfGXf0yg85QkV/AAr/7dPRZO2z97dUWdeLnNGvaeaXi7GvjcyNVcnOsLnOGQi2bV89
         682nwENUnL7nPRzfQGBnKvreIqF7cQNMMSIkwG4GVvTh90uB7ABKbCEVVBXSziKxS/Kw
         42kGL58z2oZCMLS+0rqW/8BicpP6PCfCzNI5QlmdFgmgnS5gOmTp0FpasLFZGRJG53nS
         J4cTO2fVvOLDvHCayQdxlY7N3rfzCGlDwKsK54dnj/Dryt54vk8Y/rCao3RSIofVWvAV
         rl47sRmH+EBHgZUDLio6D8Ky9POcn3CaXbSwvzJr+cPr4/kMnwaSRX8gEwhZkMpL4f2V
         X6Zg==
X-Forwarded-Encrypted: i=1; AJvYcCW7S1N7AklKFBxFD/56PaewMQn/xBIBkKVt5K3rCPZNv6qz/0DaSA289Gm1R4cbOAROdxr3lL3M4o/X@vger.kernel.org
X-Gm-Message-State: AOJu0YxQxap3dJ31vdtQWvb02BtfviaW5YIrawioSYeEuxxNcvR2V6x6
	ok88JV0kmAjteA6VJYPCJBEIQv/fD7mzTHuceD7PdgHwia7LkYtiZalC
X-Gm-Gg: ATEYQzwddHuVh35mG/kWNQrWrozrUgz+xfsLRSDPS7Cutf951r8ZmGNw9lZ4cjiFRYW
	WgNfRPfIiABiOOb3wy6X0qhveVN7/t3fSV5RUgF5ZOn8XFsVqaTxKcRA4050HcR+C5/ry0pDzIv
	HXuQ7D3W7nsNf/rgbOLRjkApMaSfzCJ/NzEtewT2CfhIFWI81hCKw21Ssi9UD9+X+nXg7OUTr3z
	+ctfNvDmLP5BUlkV9tPrI/pHfrXRPB0uf3jC4zW2/qGCvWb89K0HovRVTViEEP0OBEgLj0AMO3t
	oS0UuohIN0o5u+XpxAjMTZCkqZB4A+WaDdWqWlUDH9vHcTirdPCBadvSXMra8qo3aMr2P/a4QjS
	6zruUTEmVeNFE1oScmshOXHKljVbmYdEI1qgDjw7ICy5W6c4p55lpSKFrMT0Am5tTmqdHWVHe8Z
	+WMnm+wC7t4ktV+31gd3VhpCyI9nnEV2OgG0bXej1/rM4NNEgocDO43ZYRzQxz4QmzqNI4DeVTN
	6k8LpFf
X-Received: by 2002:a17:902:cece:b0:2aa:f0ec:3701 with SMTP id d9443c01a7336-2ad743e22cfmr128236535ad.2.1771944292984;
        Tue, 24 Feb 2026 06:44:52 -0800 (PST)
Received: from ?IPV6:2401:4900:8f4d:6bb:6d92:919c:951b:7d96? ([2401:4900:8f4d:6bb:6d92:919c:951b:7d96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e1d6sm111918585ad.58.2026.02.24.06.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 06:44:52 -0800 (PST)
Message-ID: <4b16c937-6195-4307-88d2-874052203543@gmail.com>
Date: Tue, 24 Feb 2026 20:14:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: arm: microchip,sam9x60-pit64b : convert
 to DT schema
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
 <20260217-arm-microchip-v1-3-ae5d907e10e3@gmail.com>
 <20260217-surgical-gently-7f58e6fb5e5e@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260217-surgical-gently-7f58e6fb5e5e@spud>
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
	TAGGED_FROM(0.00)[bounces-267937-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,f0028000:email]
X-Rspamd-Queue-Id: 0E6611889C0
X-Rspamd-Action: no action


On 17-02-2026 23:23, Conor Dooley wrote:
> On Tue, Feb 17, 2026 at 05:24:21PM +0000, Akhila YS wrote:
>> Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
>> format.
>> Changes during conversion:
>> - Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
>> compatible "microchip,sam9x60-pit64b".
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 ++++++++++++++++++++++
>>  1 file changed, 71 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
>> new file mode 100644
>> index 000000000000..6bf8e81d4c72
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
>> @@ -0,0 +1,71 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip PIT64B 64-bit Periodic Interval Timer
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Claudiu Beznea <claudiu.beznea@microchip.com>
>> +
>> +description:
>> +  The Microchip PIT64B is a 64-bit periodic interval timer used in
>> +  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
>> +  SAMA7D65 families. It provides extended timing range, flexible
>> +  clock selection and supports both periodic and one-shot interrupt
>> +  generation modes.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: microchip,sam9x60-pit64b
>> +      - items:
>> +          - const: microchip,sama7d65-pit64b
>> +          - const: microchip,sam9x60-pit64b
>> +      - items:
>> +          - const: microchip,sama7g5-pit64b
>> +          - const: microchip,sam9x60-pit64b
>> +      - items:
>> +          - const: microchip,sam9x7-pit64b
>> +          - const: microchip,sam9x60-pit64b
> These three can be merged into one enum + const items list.


Okay.

>
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    oneOf:
>> +      - const: pclk
>> +      - items:
>> +          - const: pclk
>> +          - const: gclk
> This can be an items list with minItems: 1, but there should be some
> conditional logic used to permit gclk only where it is valid. The text
> binding removal is missing so I cannot say exactly what that logic
> should be.


Okay.

>
> pw-bot: changes-requested
>
> Cheers,
> Conor.
>
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
>> +    #include <dt-bindings/clock/at91.h>
>> +    timer@f0028000 {
>> +        compatible = "microchip,sama7g5-pit64b", "microchip,sam9x60-pit64b";
>> +        reg = <0xf0028000 0x100>;
>> +        interrupts = <37 IRQ_TYPE_LEVEL_HIGH 7>;
>> +        clocks = <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_GCK 37>;
>> +        clock-names = "pclk", "gclk";
>> +    };
>> +...
>>
>> -- 
>> 2.43.0
>>
-- 
Best Regards,
Akhila.


