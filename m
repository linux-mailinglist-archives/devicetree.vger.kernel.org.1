Return-Path: <devicetree+bounces-179501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AEFAC09B3
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 12:26:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7ADF44A59BD
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 10:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9EE5286410;
	Thu, 22 May 2025 10:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jW3Arjzp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E1423909F
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747909581; cv=none; b=MMyVAdFKqFhAK9GGZmpQVmc/4tKd01dga2ReGxN3TIRb04OLFGlPlO4qJsqTymP6Xs4K9FQKB0K9VhQuGHjSVdX5OUjhSPu1zFbizqCMEi6jUQ9YQ36oDxlRI+3aejljv05HHQVc7/3cyOKOUUR9sL6AGXs+2FURREAVzEamBcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747909581; c=relaxed/simple;
	bh=ZAibypLz7SpD/NECdINBzP034MLktmjX8S/ADPCEy7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O4nkbe/JHlz6B+cUkZV+DgokcCRsTjYI7gPNUQ6aRrfLB5Xi9pm0Z/h7cu/6JBV9rTxQCF0HXYvFo+17W1/vNdC7JPLKkP1qyee9HGe3TyXLj9HKwszW6hM8Vwq1Pq6lc3KevwUooxzx82nQAbrJnQaKZg45Lb63+FHB+vSQY74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jW3Arjzp; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ad51ef2424bso1242463566b.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 03:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747909577; x=1748514377; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4caaPIV8qSqyjNDB+/IzXFji0RZ7hdRuW08/jzohm/U=;
        b=jW3ArjzptrQceNz0L44mb3vjvznbdkUVUvKlJBQ82Eop59XSzFPO+haSlfwYOfUUjs
         gwrB8uYVnjIsqabm8W4iv/KBjC08ej6IPtc2UohCfHaCKk5VLbHfm1brhzmsP1oKLb4V
         dJHoJV4g5l5lWhJh57NzaTEGHa6OX+U68EDz+cFY/W2FhguT2zJKpCFBYA/i2b/+ut1F
         EPH3g+XuJQKz4S0ka3DpaRea1Gx1ZW967sJlr5tEx5pqGvfCru8jjDUS11EMjf+pvoMR
         gdsccM6126An1LzYV22CuPeSq8rfqxWlfv7lRhyikE8ZYiV5f0J8YNs3SLlFsIMWRaxV
         gG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747909577; x=1748514377;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4caaPIV8qSqyjNDB+/IzXFji0RZ7hdRuW08/jzohm/U=;
        b=QjGm1gLkPJ0yy3tHwTumRkr6gUvwsHtgbWarpgPR4aD0NU/0JhHFmjmmaqCcPumztt
         lfbur2v4/1xMFGz1imey9B10EImxDqzskjJSStKozwSn8BmmjlwI8P5AH0yYWSeap/ty
         5Pwghufr5Q4CX/UW/1GXlVGUaynH/hypw3RH2U8hxFGi/yS00lMaTIKVKUEZuqashmx+
         uxIZMdbhOpwY3uVPScwfHVDf7JlTz8TAFiHstBJ15I3WIQzxbOe5N2Mr6fO+54QB3GBp
         ycw4SBRDOeBlujGPJD9fyv7laZT1YTkdBndulaNsYpjCi/sT+Yvxkya5lW1wnIccpJ9R
         3R1A==
X-Forwarded-Encrypted: i=1; AJvYcCXGpIp4sbIA9FbYMPH3iDenyY+II9Ys/sjMmmQohgIfyzQ7djgBxgB0BmFcoIyHikY0mmkS6JEtMqGy@vger.kernel.org
X-Gm-Message-State: AOJu0YwJZSXAV8gQaujuKgOjd30kFVbsVydgYVf1pLUxKMOs42sKjNZX
	M4U2Op6r22e0Mi7ZbFLd/9uoVU2fxWj/DSj6qIg/CTp5rFirkmzsIKc8rVgJszXYTjQ=
X-Gm-Gg: ASbGnctFHnnwxYk6Xk5vN8kNYwU+mVeV7Zny7YpEb8xFxN1z7paKa5b6En+hHca1QuD
	uQco/ag/64ocb6T2d3DWJEWD+jfo1qX5dyIlpUyfDlxAU0yb94tdA5CTrgWhxr/69ZUYgRNTbVs
	7co6lV8Ztc6SKpySuJSrX9i0YFk9nLg3Xcl3aDBFOjwjcNn7/cxm4dbxUnXGH96wQ0dJl2CtPTA
	TUOtM32NeNUorsS+tCTcRbR7YWAD4Yk3FGU8D0BLjSb1WgKEipnCM6NGsnUZu69T9ofuULiNpft
	p2Pfw/ihyX2tRuTZwSnErSojLVgUwthZc4t5qpFWTbA6jPBvNqRZPXFuWTI=
X-Google-Smtp-Source: AGHT+IFNGKRAQxDRw8YM6Df3ufbn3AseFb7JOrrDRAzOp7oR4YS6S6ab1Ixfj0XButiJTgZDbSswiw==
X-Received: by 2002:a17:907:6eaa:b0:ad2:238e:4a1b with SMTP id a640c23a62f3a-ad52d498e5dmr2363750366b.15.1747909577064;
        Thu, 22 May 2025 03:26:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4cadc5sm1046004466b.167.2025.05.22.03.26.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 03:26:16 -0700 (PDT)
Message-ID: <b22e7a46-7e35-4840-aae3-a855c97fbde4@tuxon.dev>
Date: Thu, 22 May 2025 13:26:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] dt-bindings: phy: renesas,usb2-phy: Add
 renesas,sysc-signals
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, kees@kernel.org,
 gustavoars@kernel.org, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
 <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
 <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Krzysztof,

On 22.05.2025 10:03, Krzysztof Kozlowski wrote:
> On Wed, May 21, 2025 at 05:09:36PM GMT, Claudiu wrote:
>>  .../bindings/phy/renesas,usb2-phy.yaml        | 22 +++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
>> index 12f8d5d8af55..e1e773cba847 100644
>> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
>> @@ -86,6 +86,16 @@ properties:
>>  
>>    dr_mode: true
>>  
>> +  renesas,sysc-signals:
>> +    description: System controller phandle, specifying the register
>> +      offset and bitmask associated with a specific system controller signal
> 
> This is 100% redundant information. system controller specifying system
> controller signal.
> 
> Drop.
> 
> 
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: system controller phandle
> 
> What for? Explain the usage. How is ut used by this hardware.

OK, I though I've explained in the renesas,sysc-signals description
section. I'll adjust it and move it here.

> 
>> +          - description: register offset associated with a signal
> 
> What signal? That's a phy.

Would you like me to specify here exactly the signal name? I tried to made
it generic as the system controller provides other signals to other IPs,
the intention was to use the same property for other IPs, if any. And kept
it generic in the idea it could be used in future, if any, for other
signals provided by the system controller to the USB PHY.

As explained in the commit description, on the Renesas RZ/G3S SoC, the USB
PHY receives a signal from the system controller that need to be
de-asserted/asserted when power is turned on/off. This signal, called
PWRRDY, is controlled through a specific register in the system controller
memory space.

With this property the intention is to specify to the USB PHY driver the
phandle to the SYSC, register offset within SYSC address space in charge of
controlling the USB PWRRDY signal and the bitmask within this register.

The PHY driver parse this information and set the signal at proper moments.


> 
>> +          - description: register bitmask associated with a signal
>> +
>>  if:
>>    properties:
>>      compatible:
>> @@ -117,6 +127,18 @@ allOf:
>>        required:
>>          - resets
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: renesas,usb2-phy-r9a08g045
>> +    then:
>> +      required:
>> +        - renesas,sysc-signals
> 
> That's ABI break.

There is no in kernel device tree users of "renesas,usb2-phy-r9a08g045"
compatible. It is introduced in patch 11/12 from this series. With this do
you still consider it ABI break?

Thank you for your review,
Claudiu

