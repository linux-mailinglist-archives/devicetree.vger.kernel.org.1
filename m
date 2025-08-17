Return-Path: <devicetree+bounces-205527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 896B9B294AA
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 20:00:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F058188E190
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 18:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 112932FFDD5;
	Sun, 17 Aug 2025 17:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="D+kcBZcF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E311C8606
	for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 17:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755453595; cv=none; b=BrluMK9WzwSeigMOOPB2iCqzzO+5LhWewrPY81/DNIla4r7gskRO56ITmoR8RuTflKKgEGjAFvw7H+IXL+hQnQx/Hpra2KmszKApF4oAlMGN6DUpNgKhidowzjGmvnsQPAJfNgcv7qX2JrmHo2EHioA1GFTN/cuwr7XmXLqu1+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755453595; c=relaxed/simple;
	bh=XKBhrK5uK48jVOSvPBUvlhI9aPEXRfRfj89rA/BcTZM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=TFmSOH+7//ZAvh3ODU0e3mm9gyPe8E/xNVoXXfYXLxzm5UAvMOnFEZwsz1njiTOXx00k+5jKnF9a/trPXrON/bHsi/6mqFUGA5ITgjIeIPnxuJo1ML+a0i6xxGlVYeuffBVscoDcyvn8BSpLBup07iWfX7max2KishLGSWruVyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=D+kcBZcF; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-61bd4d14bc4so1746133eaf.1
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 10:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755453592; x=1756058392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OEazibTv/dumJADggU0/7DTkSNU0F7MYPx46/hjPpqM=;
        b=D+kcBZcFUEzNIge3ROLuHTX6o1X/QDkDpS4TZsXJySBvnRr6Tn0tWQtlaanW8mtTZU
         bW7ftLpZ4RsgAkWYjjsqU1cfiuKZgISOvNrZstdA+qy8RgIMR1Ff0oCAzh3WanAKC9+n
         AjfXHI4XpgOZ7rK2QQh3Pdb9OACIPrlSBh9ELQVcyAPrxkL0OviASGOtizWBGfrbRZxX
         QV9bY3/g+6bGiRCdtHKOtBrjFC6rso3YHvWTKqeF2k9iBl8NsKuhxfGkN7vXYSPJ+6QN
         uKorwlyvwrx7rjO1I3n7gjFTv2d7LDjKC1pZMjMAeLkmGWEyyOhOVLBiiIvSv+TLhK32
         r6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755453592; x=1756058392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OEazibTv/dumJADggU0/7DTkSNU0F7MYPx46/hjPpqM=;
        b=dCNJw1HIHRab6p/bF3Kiuqzs02R9p1H3MXoVCF9swB8Nb62Ny0NQpe7e553I4auHwe
         znocjfOkTLNyDmdz62skLa6826h4erV9VckaJxV5ua6QmlJa9IiL56xJ+c2t5YMtVImq
         FLZm+dsHg1DwBEHpewBZn8QBjRMw/2PeYfN2fvqMNcRc9dbDm6NW18ROVW00P/AiJjXU
         xHf9uJsWh+5j4XE4TGoy8fg21zDcfC86wvZs/aGVRKZcDKuo5mT9+60hVAysK+azxQif
         rnyM4p+UWGz8b6wzL944V/B6QG3L0hQeCSH39jY0X3sov/lhRcpIo4kvRTcyszP7cEOv
         iPQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUgru4VdlkeFnDQABqjjI+nElh59ssAdyvCofF9JYXMKgQZmiCXP6kSEJAl623yNhFrmu6L9WZ6pz9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5G3TSodg50TVGGUIDMmZERJEqFcSDuL648kCrU/VaFqCrqnoJ
	HbvPWlq5jp1ivJ+ydn/HVgeNgzL92ZtQaSbSVXgzI2G6fZ7SjcWcMoW8vub7cfE6mm8=
X-Gm-Gg: ASbGncvcuuBI1/q49DqXJ9xDLMPGnN3mX1HUCoQQy0PQTobMvtXfysDYfvPVKtKl2Et
	f1WoGfZc+FPqFc0Jcxt3ZafBvOY49R+7voSKcxt1D4njnsh0wEr5HvVfOV4bLZEsTr1OWVzmuXI
	G4V9S+KpCCYrCRnU0FBbb1dcfneJIFx29zTmhM496TLGdGad4iZdvZ1LZpMxftIxWfC19YXZni4
	S5+xBKkBpyw6FFixu7Y+K3FDEp+VQJuqkF5DHQdwrbevDEL2ObBxhVSGyoBrnOQaVcZhiNRcuor
	9n/lBPMo/I4+T13VU4NaGihxZsqZMgapS8fAOGwEJAeWQm1X8Rngm8X5S0YlcHxoQBylxGbXM+V
	i2XT+87LFWF/rASYOe4foAg4qQIYpfjd71GIF0eWv0ahLytVy1+506C4MH+uMebnI7bKm3YnWDy
	M=
X-Google-Smtp-Source: AGHT+IEiaa6l8aeyyaDiEdkuyBIkbmKAFQO8iY3lL25MRcObEtZ1acfzxgqkOXo/nQtnP2bdKaEaIg==
X-Received: by 2002:a05:6820:220a:b0:61b:fe06:3335 with SMTP id 006d021491bc7-61bfe063825mr3325655eaf.4.1755453591988;
        Sun, 17 Aug 2025 10:59:51 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:7648:43db:38fd:de4a? ([2600:8803:e7e4:1d00:7648:43db:38fd:de4a])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61bec1490c5sm662070eaf.26.2025.08.17.10.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Aug 2025 10:59:51 -0700 (PDT)
Message-ID: <65ca6431-56e1-4798-9ecc-6e6adf664f96@baylibre.com>
Date: Sun, 17 Aug 2025 12:59:48 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: iio: mcp9600: Add compatible for
 microchip,mcp9601
To: Jonathan Cameron <jic23@kernel.org>, Ben Collins <bcollins@watter.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrew Hepp <andrew.hepp@ahepp.dev>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250815164627.22002-1-bcollins@watter.com>
 <20250815164627.22002-2-bcollins@watter.com>
 <20250816105825.35e69652@jic23-huawei>
 <66063382-78c6-4d93-be25-46e972e390f4@baylibre.com>
 <2025081711-coral-aardwark-9f061b@boujee-and-buff>
 <8e228d2d-d22f-4092-8c6d-94ce989b4a84@baylibre.com>
 <2025081713-wooden-clam-aee35a@boujee-and-buff>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2025081713-wooden-clam-aee35a@boujee-and-buff>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/17/25 12:34 PM, Ben Collins wrote:
> On Sun, Aug 17, 2025 at 11:51:22AM -0500, David Lechner wrote:
>> On 8/17/25 11:37 AM, Ben Collins wrote:
>>> On Sat, Aug 16, 2025 at 01:55:31PM -0500, David Lechner wrote:
>>>> On 8/16/25 4:58 AM, Jonathan Cameron wrote:
>>>>> On Fri, 15 Aug 2025 16:46:03 +0000
>>>>> Ben Collins <bcollins@watter.com> wrote:
>>>>>
>>>>>> The mcp9600 driver supports the mcp9601 chip, but complains about not
>>>>>> recognizing the device id on probe. A separate patch...
>>>>>>
>>>>>> 	iio: mcp9600: Recognize chip id for mcp9601
>>>>>>
>>>>>> ...addresses this. This patch updates the dt-bindings for this chip to
>>>>>> reflect the change to allow explicitly setting microchip,mcp9601 as
>>>>>> the expected chip type.
>>>>>>
>>>>>> The mcp9601 also supports features not found on the mcp9600, so this
>>>>>> will also allow the driver to differentiate the support of these
>>>>>> features.
>>>>>
>>>>> If it's additional features only then you can still use a fallback
>>>>> compatible.  Intent being that a new DT vs old kernel still 'works'.
>>>>>
>>>>> Then for the driver on new kernels we match on the new compatible and
>>>>> support those new features.  Old kernel users get to keep the ID
>>>>> mismatch warning - they can upgrade if they want that to go away ;)
>>>>>
>>>>> Krzysztof raised the same point on v2 but I'm not seeing it addressed
>>>>> in that discussion.
>>>>
>>>> One could make the argument that these are not entirely fallback
>>>> compatible since bit 4 of the STATUS register has a different
>>>> meaning depending on if the chip is MCP9601/L01/RL01 or not.
>>>
>>> There are some nuances to this register between the two, but it can be
>>> used generically as "not in range" for both.
>>>
>>> My understanding from the docs is if VSENSE is connected on mcp9601,
>>> then it is explicitly open-circuit detection vs. short-circuit, which
>>> is bit 5.
>>>
>>>> Interestingly, the existing bindings include interrupts for
>>>> open circuit and short circuit alert pins. But these pins
>>>> also only exist on MCP9601/L01/RL01. If we decide these aren't
>>>> fallback compatible, then those properties should have the
>>>> proper constraints added as well.
>>>
>>> In my v4 patch, I'm going to remove the short/open circuit interrupts
>>> since they are not implemented, yet.
>>
>> Don't remove them from the devicetree bindings. Even if the Linux driver
>> doesn't use it, the bindings should be as complete as possible.
>>
>> https://docs.kernel.org/devicetree/bindings/writing-bindings.html
>>
> 
> I couldn't find anything that would easily describe this type of layout:
> 
> properties:
> ...
>   interrupts:
>     minItems: 1
>     maxItems: 4
>   interrupt-names:
>     minItems: 1
>     items:
>       - const: alert1
>       - const: alert2
>       - const: alert3
>       - const: alert4
> 
> allOf:
>   - if:
>       properties:
>         compatible:
>           contains:
>             const: microchip,mcp9601
>     then:
>       # Override maxItems
>       interrupts:
>         maxItems: 6
>       # XXX Add items to existing list???
>       interrupt-names:
>         items:
>           - const: open-circuit
>           - const: short-circuit
> 

We usually do this the other way around. The base binding lists
all of the possibilities then an -if: constraint limits them
if needed.


So don't change what is there already and then add:


allOf:
  - if:
      properties:
        compatible:
          not:
            contains:
              const: microchip,mcp9601
    then:
      properties:
        interrupts:
          maxItems: 4
        interrupt-names:
          maxItems: 4
          enum:
            - alert1
            - alert2
            - alert3
            - alert4


