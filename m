Return-Path: <devicetree+bounces-225324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 05800BCC7F8
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7434E4F9A8C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25E4283C82;
	Fri, 10 Oct 2025 10:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AA+qF05a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7718B1EF09B
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760091390; cv=none; b=YOTjykEfY4DX6eqtYOHegbC6ivKFOC13nz3B2xclvA38A20JWSZD3Z+TVh8YK89JVutANejTGAIARVBzGRRnkvZpVyf1JMwsQld3qBi7dSP2xlZiiQNP/oj5mMBOH6+YppE3pjS0lta5Y4iYNpLgTkFre/XyO/IPFytb1w9SWRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760091390; c=relaxed/simple;
	bh=5wd9tQUREC1eEyCsnMEodU1pS2RoWFi1973rUIhTsdE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=toBK/8NGtfm9vwbREJZaO3NkXv4QbiWc2E57mIQZ5kiz9A8UbHbHautLdo97EnLroj9C8H0enjpsAQI2tjYsJn42ODDCqaltC5P4BWIq086NmoKM0hp3Cw37jsUJ+15nun+eOWjwSYN/XRK0z3FPU/ovRZ6GCvLrB8+xaE8Y/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AA+qF05a; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id BC1EB1A127A;
	Fri, 10 Oct 2025 10:16:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8BD1360667;
	Fri, 10 Oct 2025 10:16:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 154DD102F220B;
	Fri, 10 Oct 2025 12:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1760091383; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=n6HazN1sAWLIGVuPB5Q33kUmi4chDMBKIuv8XrJPLYE=;
	b=AA+qF05a9hf8XgayaG9t7T6DbV/WtbQkquFY9zFxQEJ/DdGBMziJQNqBRxPG5qTeOVSpvN
	uwzClc0Ux+cYTSI+IDMaAGevIWNlkkYOyDFH/CEnmBrAT1YW2OWmBceZlOu4MQAa+JOkUn
	u7Tw0fVKzGgHj3FQ96Ug3/TB6NJIkI5cMRN8pBNYi50mWGvk5RpbFpOIZispudvlRzSMnY
	JwoJMfpbikfmJrTEf8HhVzW3d3uc6uzk5hNLYAQbnvRqFAvm01uxxRA50uonqAeTKCkXn1
	LBqZsuSFzTrlLYLDlP5AhW5q1V96m4SjMuduf9sJ/J0KA1UAKq1WL+4J61gwYA==
Message-ID: <76033f73-4a8f-45c1-90a3-63a4eae2adaa@bootlin.com>
Date: Fri, 10 Oct 2025 12:16:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/15] dt-bindings: mtd: sunxi: Add new compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20251010084042.341224-1-richard.genoud@bootlin.com>
 <20251010084042.341224-3-richard.genoud@bootlin.com>
 <414c16db-cdd1-433d-b0ae-915e11d964f0@kernel.org>
From: Richard GENOUD <richard.genoud@bootlin.com>
Content-Language: en-US, fr
Organization: Bootlin
In-Reply-To: <414c16db-cdd1-433d-b0ae-915e11d964f0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Hi Krzysztof,

Le 10/10/2025 à 10:45, Krzysztof Kozlowski a écrit :
> On 10/10/2025 10:40, Richard Genoud wrote:
>> The H616 NAND controller is quite different from the A10 and A23 ones,
>> some registers offset changed, and some new one are introduced.
>> Also, the DMA handling is different (it uses chained descriptors)
>>
> 
> 
> Subject: not new compatible, but "H616" or whatever device is called.
> Otherwise every commit would be called like that making git log
> --oneline useless.
Indeed.

> 
>> So, introduce a new compatible to represent this version of the IP.
>>
>> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
>> ---
>>   .../mtd/allwinner,sun4i-a10-nand.yaml         | 56 ++++++++++++++-----
>>   1 file changed, 43 insertions(+), 13 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
>> index 054b6b8bf9b9..cc63091fe936 100644
>> --- a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
>> +++ b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
>> @@ -6,34 +6,64 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>>   
>>   title: Allwinner A10 NAND Controller
>>   
>> -allOf:
>> -  - $ref: nand-controller.yaml
>> -
>>   maintainers:
>>     - Chen-Yu Tsai <wens@csie.org>
>>     - Maxime Ripard <mripard@kernel.org>
>>   
>> +allOf:
>> +  - $ref: nand-controller.yaml
> 
> 
> If moving it, can you place it like in example-schema, so at the bottom,
> above unevaluatedProps?
Yes, absolutely.

> 
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - allwinner,sun4i-a10-nand
>> +              - allwinner,sun8i-a23-nand-controller
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: Bus Clock
>> +            - description: Module Clock
>> +        clock-names:
>> +          items:
>> +            - const: ahb
>> +            - const: mod
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - allwinner,sun50i-h616-nand-controller
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: Bus Clock
>> +            - description: Module Clock
>> +            - description: ECC Clock
>> +            - description: MBus Clock
>> +        clock-names:
>> +          items:
>> +            - const: ahb
>> +            - const: mod
>> +            - const: ecc
>> +            - const: mbus
>> +
>>   properties:
>>     compatible:
>>       enum:
>>         - allwinner,sun4i-a10-nand
>>         - allwinner,sun8i-a23-nand-controller
>> +      - allwinner,sun50i-h616-nand-controller
>>     reg:
>>       maxItems: 1
>>   
>>     interrupts:
>>       maxItems: 1
>>   
>> -  clocks:
>> -    items:
>> -      - description: Bus Clock
>> -      - description: Module Clock
>> -
>> -  clock-names:
>> -    items:
>> -      - const: ahb
>> -      - const: mod
> 
> 
> You cannot remove it. Broadest constraints, see writing schema.
> 
> or my standard reference example:
> https://elixir.bootlin.com/linux/v6.11-rc6/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml#L127
Ok

Thanks!

> 
> 
> Best regards,
> Krzysztof


-- 
Richard Genoud, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

