Return-Path: <devicetree+bounces-262639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFCAKTNGg2nqkgMAu9opvQ
	(envelope-from <devicetree+bounces-262639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B0CE641B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF07A302F384
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7283F0761;
	Wed,  4 Feb 2026 13:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="joviK/Ao"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA64B3D5223
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770210568; cv=none; b=pzfU3ERdxDAKDQD2D73UrayKtBVZz619iEfo6Oxw8eUBAVLTMv7eY2mof2s93EcFYKXZspVXMSuwCk4nLBFVe2D2+DJMpkc8NXGZ5m9DAHxLrnwjqj1+o6q4NSo+vIti90w7NSKu8RbF+2uCZ6MiZcJ0e0XsBYFV4s2baH6tc94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770210568; c=relaxed/simple;
	bh=wr5uxNUWhz4NdT9IdLSYkYkpa7O8iZ3Nd3uwhiPKooc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ut9+KjNz6nLheTqPymudD0U2VvmBlu95NlYv0GylUzQGPwRupwGWpleXcfuXmByEG5/vb6Z/trpyPpChwzCmMyh0pPSVmsj/YKcHGYImlscpbG4e52t/8WObUp3lgGkABvsW/o0EM7zQz4Ahj4QQKghTjHT3Mrj3orjf2gqgUpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=joviK/Ao; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-823f9f81da5so1686024b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770210568; x=1770815368; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ucTLWIPqxA/vCqaGy0l8cS/iqXl1ur9qYq3vOPXkVyY=;
        b=joviK/AoTt/IY/yVOuk2pabnfwyESBsVv9kVM4/LTloWfGEFWFWpDaD0d5tfdKjMph
         gPzRJGRHvaCy5xKXlk/vQTKfa9uWDP1oFhg0TjhlCeU1f2cCzCOVH+Izs5nFg4fthhxH
         2xZXRkX4gMSrqQVVa0CJROAf4KdSJFDrOAEOl3KSUp9NYQfb/L6x12792czAv1OyG04B
         mAEt5RgITeqn1ya/c9+K3lgHqgIp278PQtFTKIc5BIGfdYGU4er3h02/94gr63iUDQ6R
         cSPXxpW/xVwP7MbbxndlsUHraZhapPYzNJowXOE2ex4Jnq2Hj0CGi5EgenvlgNilfQcN
         U35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770210568; x=1770815368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ucTLWIPqxA/vCqaGy0l8cS/iqXl1ur9qYq3vOPXkVyY=;
        b=KXZRQDPu6Ew39TfPzHm9HX5ug+2fY5eGFjJqwLZPomZe3n80/FZBiXXmWxis5JXx3a
         ZhhJuF23r9X01Aiei2Ji3ednveIqVFR0Qwz0vlnL30Oxfmx/Z0rHkvNHC16Xb4Ppw7Dn
         kOwuvPDRLcrqL4QvH3fGf57CYhjXhSR4nLuXHemKzQuR8RiNq6XXgXBeHGCox6JWP/FD
         BdUKYB5FSsM/wvE01S1PADUCWYVU13N9WD0SHHJOsais53jHc5zWtRI/rhFq/jG7LbmC
         iQCUtidbAAYigKmnypRgdWthOslJ26dVSdZQAuMxx7gc99m7AxuiWmCqiwyaK+bvApMo
         OffA==
X-Gm-Message-State: AOJu0YyMaIxu6dyOmUsRuO4O//FSXDCFj20/CSgfHRchIADPzVM9YIin
	MgiGeuPrgU156Spo8xvYRRArb8jvnCTFpZbUXsA9W7iAzUc3kLm9LJTK
X-Gm-Gg: AZuq6aLYCvVjpK1XQjjPCURv8lhdZMolWdOI+aofWMBM0LZBexGlVj5YX72yqaFWyCJ
	qdiP8eL0SdvJ9n9z6vFsLJwsAYeSm+oPP8uyGFKQUv+9CrYuytedESf/vIQU1fr/SMxqM68BETl
	61c6wqMd+rD152gAsnleM9ZljhGnTKYtaasGE5EP/boLXbUjf9MKJTGsAET6ofojJUqg4WiALo2
	UCxcjGcRFvDiQAv5piG+Z+1K/VWo9sBUcdmifcY+4QLAVJAMUHwhh+Gt1JLZXoOfuEUehXYTCnW
	GdvkFZwmti9Toremb9lixXWimx/u6Qa5Fnppye79J0f247GFGm4xazF17sfZi15JNhtJJB4P/ZA
	MbeO4VpKhUhdf32QBcVG2mvBSl5Y9Gqv7kDiXVxai7EiPvthxRK4Wu5h/h+8AQCcHK6+TRnv3T0
	mojqeWfDCGebJafBHyNtehrbQsp64JzGeXmSo=
X-Received: by 2002:a05:6a00:3915:b0:7fc:da5:f85c with SMTP id d2e1a72fcca58-8241c5ee4dcmr2492038b3a.38.1770210568081;
        Wed, 04 Feb 2026 05:09:28 -0800 (PST)
Received: from [192.168.1.7] ([115.99.252.105])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d163865sm2934498b3a.9.2026.02.04.05.09.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 05:09:27 -0800 (PST)
Message-ID: <8397e59d-7501-42ef-891f-3f8b3d7a3af6@gmail.com>
Date: Wed, 4 Feb 2026 18:39:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: usb: atmel,at91sam9g45-ehci: convert to
 DT schema
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Herve Codina
 <herve.codina@bootlin.com>, linux-usb@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
 <20260201-atmel-usb-v1-2-d1a3e93003f1@gmail.com>
 <176994942956.410099.10343293169382130437.robh@kernel.org>
 <c7468b03-9acf-41e9-a441-96ed5d891e96@gmail.com>
 <20260203180832.GA3217395-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260203180832.GA3217395-robh@kernel.org>
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262639-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F3B0CE641B
X-Rspamd-Action: no action



On 03-02-2026 23:38, Rob Herring wrote:
> On Mon, Feb 02, 2026 at 04:32:54PM +0530, Charan Pedumuru wrote:
>>
>>
>> On 01-02-2026 18:07, Rob Herring (Arm) wrote:
>>>
>>> On Sun, 01 Feb 2026 11:34:21 +0000, Charan Pedumuru wrote:
>>>> Convert Atmel AT91SAM9G45 EHCI USB Host Controller
>>>> binding to DT schema.
>>>> Changes during conversion:
>>>> - Include "usb-ehci" as a fallback compatible to allow atmel EHCI
>>>>   driver matching.
>>>>
>>>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>>>> ---
>>>>  .../bindings/usb/atmel,at91sam9g45-ehci.yaml       | 71 ++++++++++++++++++++++
>>>>  1 file changed, 71 insertions(+)
>>>>
>>>
>>> My bot found errors running 'make dt_binding_check' on your patch:
>>>
>>> yamllint warnings/errors:
>>>
>>> dtschema/dtc warnings/errors:
>>> Warning: Duplicate compatible "usb-ehci" found in schemas matching "$id":
>>> 	http://devicetree.org/schemas/usb/atmel,at91sam9g45-ehci.yaml
>>> 	http://devicetree.org/schemas/usb/generic-ehci.yaml#
>>> Warning: Duplicate compatible "atmel,at91sam9g45-ehci" found in schemas matching "$id":
>>> 	http://devicetree.org/schemas/usb/atmel,at91sam9g45-ehci.yaml
>>> 	http://devicetree.org/schemas/usb/generic-ehci.yaml#
>>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/atmel,at91sam9g45-ehci.example.dtb: usb@500000 (atmel,at91sam9g45-ehci): Unevaluated properties are not allowed ('clock-names' was unexpected)
>>> 	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
>>
>> Hi Rob,
>> Isn't it pointing to the other schema ID which was not defined by me? 
> 
> You can't have the same compatible defined in 2 places.

Okay.

> 
>> Can I have your suggestion on changing the compatible name to other 
>> name to resolve this error? 
> 
> Why are you converting this? It's already covered by generic-ehci.yaml. 
> Though I seem to recall there were some warnings for Atmel.

Yes, in that case I will drop this patch in the next revision.

> 
>> I ran dt_check in my machine on the 
>> latest version and I don't see any error there.
> 
> Please read the last paragraph below for why.

Okay, I understood now.

> 
>>
>>>
>>> doc reference errors (make refcheckdocs):
>>>
>>> See https://patchwork.kernel.org/project/devicetree/patch/20260201-atmel-usb-v1-2-d1a3e93003f1@gmail.com
>>>
>>> The base for the series is generally the latest rc1. A different dependency
>>> should be noted in *this* patch.
>>>
>>> If you already ran 'make dt_binding_check' and didn't see the above
>>> error(s), then make sure 'yamllint' is installed and dt-schema is up to
>>> date:
>>>
>>> pip3 install dtschema --upgrade
>>>
>>> Please check and re-submit after running the above command yourself. Note
>>> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
>>> your schema. However, it must be unset to test all examples with your schema.
> 
> ^^^^^^^
> 
> Rob

-- 
Best Regards,
Charan.


