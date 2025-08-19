Return-Path: <devicetree+bounces-206099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 013D1B2B890
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:21:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADA90627F71
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7F1308F3B;
	Tue, 19 Aug 2025 05:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="b3yN+1pW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70096BFCE
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755580880; cv=none; b=Syy/WNIM5YR8ANRuqoMSCzbq3X2/RkHAZzWMVKs8+IRntuQ8N7qqIgP4RkJhJgwTyNx+ETJf8xHyUGX4djp4HEDp4K9P56AtwpBb6tAA51i0nsDh21OYFktPsRntSzY82qfwHS4V5GXqBHxJ0xmmNdnIqDtqfwtQ0jNmSq+StJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755580880; c=relaxed/simple;
	bh=PgvQFu3lh9/SIXVDJ5Lm+vEL+WGlLSbSCW8w78xleqc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XoOR6/oxc9NAnWBMiX76P2U2csLPyheqMKQgKoq2yAGinYSONqyGQF7RGkkXKMbmF6OxczqQ7KA1wJR407E5koeB0sFT8jh4foWtpshDaokqfmeh54mqT1mHPM/JF8FhXUizdQ0w6URljLyr6ZjbrgMeHUxtwrgQPiseN1NhaZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=b3yN+1pW; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-afcb61f6044so815176566b.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755580877; x=1756185677; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dEbBJBOCsv8FoKMcsZux3iuZl2krc57rvNsAxShKVFs=;
        b=b3yN+1pW+O9gP/jkNC2oIlTIhbqGVfeEU0YkdeFX0oMf/d4/sfFIdNfP+orjPm1yzE
         krYH2mgTPCKHVoXIGz7Yh48XTcRsSICmPO5buEc/UWyc1WLbmvyWMPzb3Pxc/d5ENZ6l
         bwzq1QB9yKT6Sq3uJY8NG8ffMxgUIB+aB/WdSJY55qzeN8ZVqpYZQ9V01hmCCrajngRA
         4ZFAc1sZqfkpsFfNYNYQ6i803b01fj4eDY/HfnYoRjiGYlFQ1gj8xHmCefHTucRIvWHb
         to9LLzuPOcuI/egqSVe0+kLWLuBd8MA/HGe68V3qLhjNQc8SQw8CjdzV/VeTXIWG2yVm
         YEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755580877; x=1756185677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dEbBJBOCsv8FoKMcsZux3iuZl2krc57rvNsAxShKVFs=;
        b=wRdzMiXA6mrCgNAAtd3Jq+7s6LcxffSQ5XAf96+PesY5Gi3aVZae9rRZOIBeIC7xJC
         PiQI4XpTLpj6I39Jki2VgO8ww/pPEKVZcNiWBu4fLnxDjJ9PH6WFiPqrbvk+FCESc03F
         AVd6jGqYjF4aJrYJsSoFjAWu62rSXCy2Wy6yoKeJTAoJs50wXcJE5SsBUVDejYk7ti6Q
         tr2ao1mEaYDQzvs4N9w9CFwX5FpmjJ4fVHM2Ksny6c/YIpHcTsCKJVd/Vrs+eeSuNw/S
         W++w+tQG6NeFrmJDA2h2vji8zKH8Pi5EJyMUS6CUCcZVVxYTsd02/Ozlb2BI10jtQXWc
         7x4Q==
X-Forwarded-Encrypted: i=1; AJvYcCV+T/dLTIgMmiwyLoYYaFNNsAk09HBsh3MLBKWQJ+rZhbwmYkdhqQOS9n/7plzOF+FkguVibCLyDqyk@vger.kernel.org
X-Gm-Message-State: AOJu0YxTTAVNyq5SK+NE7VoPnOOzfvTk7ssRzhCQd9TS0+byI1EnT8FT
	YPCllzlH3LQqOcubJK0Nag46+77HrNckl0LuuIyl8kAiIqo7PfGjsJ8QHLagl9yMuqM=
X-Gm-Gg: ASbGncu2AB6Dy9zVtiUgyKzP1kcjx0p8OUj3XVYy9NNC1nWJwktY6YxsA7Jmv7dB1b8
	2pLq4IHv95GXVLOBUSQ138sh2pn+rWQbrHdtkmdVA8yXSzdj91ACdHv3LegGBT6ER5vgSlUq8FJ
	Cxtcmmo+EBC8/ZR3fgxAJuz5TbH/3YlO2QW8tPLHu3Xr52U+NefE1y5pCtPM2j9wXyDpnoeJ6fw
	rqQUH+ci5P0pJYuysckMDmmmR9Ip7yZzp9wUVxnbR6AaB/OaceYMwVlyCDHQ2WpzAAJU4ertkfG
	ZHyd+tGt2wOFIPmWw0oUnuF22gugtxoFO3uOGWPmZUYu1zNhijUHsdsb27MDPl5VSMfJSuyt/3r
	C77bkP9BHkqD+XTZG767a061gsI4/sjbWcoRRASVZUrGR9csWMYCP0XLDAJ9Jjg2EuQCpAjwvEs
	uPsQ==
X-Google-Smtp-Source: AGHT+IEsAxLjtuxFrd5xwHWqn7m4ZVS5u3/PVQsGkPC7Jx1JsTOvbmLGxcEv8DcPfcOnvXJsChzMvA==
X-Received: by 2002:a17:906:6a1d:b0:ae3:ee3a:56ee with SMTP id a640c23a62f3a-afddf019718mr100922166b.3.1755580877167;
        Mon, 18 Aug 2025 22:21:17 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:620a:8b00:4343:2ee6:dba1:7917? ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd0107ecsm915013566b.86.2025.08.18.22.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 22:21:16 -0700 (PDT)
Message-ID: <f71ba698-6c8e-42c7-ac04-3b67cd774784@tuxon.dev>
Date: Tue, 19 Aug 2025 08:21:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
 <20250808061806.2729274-5-claudiu.beznea.uj@bp.renesas.com>
 <20250813232100.GA950521-robh@kernel.org>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20250813232100.GA950521-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, Rob,

On 8/14/25 02:21, Rob Herring wrote:
> On Fri, Aug 08, 2025 at 09:18:02AM +0300, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
>> system controller set before applying any other settings. The PWRRDY bit
>> must be controlled during power-on, power-off, and system suspend/resume
>> sequences as follows:
>> - during power-on/resume, it must be set to zero before enabling clocks and
>>    modules
>> - during power-off/suspend, it must be set to one after disabling clocks
>>    and modules
>>
>> Add the renesas,sysc-pwrrdy device tree property, which allows the
>> reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
>> controller PWRRDY bit at the appropriate time. Along with it add a new
>> compatible for the RZ/G3S SoC.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v4:
>> - dropped blank line from compatible section
>> - s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
>> - dropped description from renesas,sysc-pwrrdy
>> - updated description of renesas,sysc-pwrrdy items
>> - updated patch description
>>
>> Changes in v3:
>> - none; this patch is new
>>
>>   .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 40 ++++++++++++++++---
>>   1 file changed, 34 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
>> index b0b20af15313..c1d5f3228aa9 100644
>> --- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
>> +++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
>> @@ -15,12 +15,14 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    items:
>> -      - enum:
>> -          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
>> -          - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
>> -          - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
>> -      - const: renesas,rzg2l-usbphy-ctrl
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
>> +              - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
>> +              - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
>> +          - const: renesas,rzg2l-usbphy-ctrl
>> +      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
>>   
>>     reg:
>>       maxItems: 1
>> @@ -48,6 +50,19 @@ properties:
>>       $ref: /schemas/regulator/regulator.yaml#
>>       unevaluatedProperties: false
>>   
>> +  renesas,sysc-pwrrdy:
>> +    description: The system controller PWRRDY indicates to the USB PHY if the
>> +                 power supply is ready. PWRRDY needs to be set during power-on
>> +                 before applying any other settings. It also needs to
>> +                 be set before powering off the USB.
> 
> Where did this odd formatting come from?

I formatted it like this by mistake.

> If copied from somewhere else,
> patches reformatting them welcome.
> 
>      description:
>        The system controller PWRRDY indicates to the USB PHY if the power
>        supply is ready. PWRRDY needs to be set during power-on before applying
>        any other settings. It also needs to be set before powering off the USB.

OK

> 
> 
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: System controller phandle required by USB PHY CTRL
>> +                         driver to set PWRRDY
> 
> Indent by 2 more than 'description'

OK


Thank you,
Claudiu

> 
> With that,
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> 
>> +          - description: Register offset associated with PWRRDY
>> +          - description: Register bitmask associated with PWRRDY
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -57,6 +72,19 @@ required:
>>     - '#reset-cells'
>>     - regulator-vbus
>>   
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: renesas,r9a08g045-usbphy-ctrl
>> +    then:
>> +      required:
>> +        - renesas,sysc-pwrrdy
>> +    else:
>> +      properties:
>> +        renesas,sysc-pwrrdy: false
>> +
>>   additionalProperties: false
>>   
>>   examples:
>> -- 
>> 2.43.0
>>


