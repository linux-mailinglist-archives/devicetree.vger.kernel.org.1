Return-Path: <devicetree+bounces-244398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D75CA4646
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 17:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E709305F31B
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 16:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC752F5483;
	Thu,  4 Dec 2025 16:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JQQHQvTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2794C2E0920
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764864074; cv=none; b=LP+Vgy6VlWpGq5CNHvfwDyVSwFgtBRnXufFXfpnqgPEPkz8oz+DcPJi38u+d/hViyp5BUIMTvajAILB8mF+xAC6by8PYex5aj5P0QgZMGjjoMC/MWiG8rehT1Zhjsxi29ZyBU1lG/3fgtoqrjZIHgevv29oJFqAdbmOxAyGv6mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764864074; c=relaxed/simple;
	bh=2Bvr3wqtvTF0X8pSuqN0GBBTbwjmx0BXKC073bEllm8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S7xA13PVO1viWHrC+KzXbkktigBnJUwqH+/q06d/sWwMqJJVmQmV7v1pBwiGs4wV97hvAuCOIKdwcn03sgw+JyXC7SL0CKnIj4XAgf0T1xTKJS09KHW+wUzIyu+jo/5yupXot6vP42QkM1fgE5H7MYyJpEVQX+WsptgHU6FO21c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JQQHQvTP; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7c75dd36b1bso816181a34.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 08:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764864070; x=1765468870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I7lmrgZnNGOSMbDpoJyPl+iLmEUkk93lr2vfH3+QGII=;
        b=JQQHQvTPInn6UQ+SoMhHT/u3achP59k85c0m9CFD2B4tVSNFT43Cql7UeYQ55khhFR
         LnEDH81ghhJaaAzsQ2ZkTzTzlCGbzErP5Z+pABW5mq8A/0n5cOJJkYFYWyg8u23ZKQYi
         SEIa9mAvpCx/uxpsZFog7wv55wNtZ/zDJpI4PMqGE9DEfetc7v8IkNdEw6VaOOnsUIZZ
         QPcTpmHbJl6PXgzzuzdU6PSaYyRpRYHgxWnJg1Q8WKB3ix6zT8M+UdNizKekXZdJT47C
         1xNJ7Nu1o3XxuQZEVDnpmew6BVtw4J4e+FXBbia3x8ZD6O/ZmeQfWj8TitXyWKrTMu/s
         xt9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764864070; x=1765468870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I7lmrgZnNGOSMbDpoJyPl+iLmEUkk93lr2vfH3+QGII=;
        b=MG5rJ58CZzePhDxnpDDTGtPbtzBighl2oJ3XWVTErB9tt7E8XJWTexlTj7i2kRE8OV
         MFErniVVyXv50KEAmwZfkDm2ExskBGNUnbiyMeJJalnNlB1NkFhOTv79zZhrzKb0mBeg
         BGjZA6d8nTSWDoHYvQe8jH2SRfgYcmUTlyvGC5eNLWt6yKZ5TEQdysqws8JbGCiF6GyV
         yJblowmk4d3MAdl+69Df01Cndxm0d7X/gmoPjVxMxog16542ZUCDMPUpx6F3df4/pgu8
         1v/eLIGG4izv/mftvdInqTPptfwj9fJ4btGV+EXeH91MGRiTsoTXtkt8xNxsnPY/RddK
         v2xA==
X-Forwarded-Encrypted: i=1; AJvYcCUDz7kiBcTsavt/L98eJiWQTChNu1sO342Mk+bICzLit0Y2JJcsBzYa2HWPLMbFqy/tUEx1ZpXU8bgk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2b17HreqAWO+kNKOPScbTa/P4uvQwZeJg6aOz8hy/JTVhMNG5
	K0SBxVgpwFAWVxkkEdd/mSTLYMTXTiVXpWGX8+pMAUMKj1aVr1gRNOqJxaobEO1T+2D5jm2t+6J
	ELSTD
X-Gm-Gg: ASbGncsTmSJHrnhPQqHFepn0aaMjV3x+URksy+f3U1FUVixoTadiPj3q6GQvS/JWdH4
	5jAOy8eeeO7XnWlGRgdvnHpbHiBjgR6FTDTm545H9ebBcnn2frOZFS5/1gax10qsS0rln/Lq/KA
	oIp9vpc2y2X/evK+pOpMgbVMcE0osH2x3RRnjv5WKCMcNAIpMpJHy0lScW7BoGbTYkAGr/+SNRi
	ed0BH2KzrNxfox577WdtZrfQTpEp6CDUuz5LqdRCkTm5P9gnRKCUV/OLNAuFobAWZRXMdMjO1V2
	DcJpUFudHBGIYn2ZXdG9nkEL8fS/fJqZK3zrF/Tyf09mX7ElZBmwS/5uKc6JUJzZXStYl1XfZkw
	YLuSnSKEH3+mCl6nQMxEiiRMIFg/xfU0oj9DJVXABP6YOQ9ta8X24jujXvAPpSMbuLBtFD9p7jh
	w7HYwbpI688Wc9EMenAd8iXsrvENJx190eNrmsacGVtu2Gk1myZY3L7iExHrYb
X-Google-Smtp-Source: AGHT+IGZZAax15Af5NGLBUepTetUxGjxZFKoAVrOVF3bcdCDJa0fOioWrcYIjFugBCatyd4R4v/QPw==
X-Received: by 2002:a05:6808:4fd2:b0:441:8f74:fc1 with SMTP id 5614622812f47-45379eb7aaamr1847366b6e.62.1764864069654;
        Thu, 04 Dec 2025 08:01:09 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:25f4:78dc:7b9e:e7a4? ([2600:8803:e7e4:500:25f4:78dc:7b9e:e7a4])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4538016e337sm773682b6e.22.2025.12.04.08.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 08:01:09 -0800 (PST)
Message-ID: <9e1ca753-572f-43fe-be54-d2fbc350b3a2@baylibre.com>
Date: Thu, 4 Dec 2025 10:01:07 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] dt-bindings: iio: adc: adi,ad7380: add spi-buses
 property
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com>
 <20251107-spi-add-multi-bus-support-v2-5-8a92693314d9@baylibre.com>
 <20251118155905.GB3236324-robh@kernel.org>
 <97c6b55d-9505-4091-8f0b-317dcbd70838@baylibre.com>
 <CAL_Jsq+ZZE0g424jE75xeCt2KY1ThPLqmbmOs0o_ddaJ8fOf3w@mail.gmail.com>
 <f2ac13fc-8f47-465e-8cef-e2e34bf41818@baylibre.com>
 <20251204142845.GA1303976-robh@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251204142845.GA1303976-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/4/25 8:28 AM, Rob Herring wrote:
> On Wed, Nov 19, 2025 at 08:45:42AM -0600, David Lechner wrote:
>> On 11/19/25 7:18 AM, Rob Herring wrote:
>>> On Tue, Nov 18, 2025 at 11:46 AM David Lechner <dlechner@baylibre.com> wrote:
>>>>
>>>> On 11/18/25 9:59 AM, Rob Herring wrote:
>>>>> On Fri, Nov 07, 2025 at 02:52:51PM -0600, David Lechner wrote:
>>>>>> Add spi-buses property to describe how many SDO lines are wired up on
>>>>>> the ADC. These chips are simultaneous sampling ADCs and have one SDO
>>>>>> line per channel, either 2 or 4 total depending on the part number.
>>>>>>
>>>>>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>>>>>> ---
>>>>>>  .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 22 ++++++++++++++++++++++
>>>>>>  1 file changed, 22 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
>>>>>> index b91bfb16ed6bc6c605880f81050250d1ed9c307a..9ef46cdb047d45d088e0fbc345f58c5b09083385 100644
>>>>>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
>>>>>> @@ -62,6 +62,10 @@ properties:
>>>>>>    spi-cpol: true
>>>>>>    spi-cpha: true
>>>>>>
>>>>>> +  spi-data-buses:
>>>>>> +    minItems: 1
>>>>>> +    maxItems: 4
>>>>>> +
>>>>>
>>>>> As the property is not required, what's the default?
>>>>
>>>> spi-perepheral-props.yaml defines:
>>>>
>>>>         default: [0]
>>>>
>>>> Do I need to repeat that here?
>>>
>>> No. So that means you only use one channel and the others are not connected?
>>
>> Correct.
>>
>>>
>>>>
>>>>>
>>>>>>    vcc-supply:
>>>>>>      description: A 3V to 3.6V supply that powers the chip.
>>>>>>
>>>>>> @@ -245,6 +249,22 @@ allOf:
>>>>>>        patternProperties:
>>>>>>          "^channel@[0-3]$": false
>>>>>>
>>>>>> +  # 2-channel chip can only have up to 2 buses
>>>>>> +  - if:
>>>>>> +      properties:
>>>>>> +        compatible:
>>>>>> +          enum:
>>>>>> +            - adi,ad7380
>>>>>> +            - adi,ad7381
>>>>>> +            - adi,ad7386
>>>>>> +            - adi,ad7387
>>>>>> +            - adi,ad7388
>>>>>> +            - adi,ad7389
>>>>>> +    then:
>>>>>> +      properties:
>>>>>> +        spi-data-buses:
>>>>>> +          maxItems: 2
>>>>>> +
>>>>>>  examples:
>>>>>>    - |
>>>>>>      #include <dt-bindings/interrupt-controller/irq.h>
>>>>>> @@ -260,6 +280,7 @@ examples:
>>>>>>              spi-cpol;
>>>>>>              spi-cpha;
>>>>>>              spi-max-frequency = <80000000>;
>>>>>> +            spi-data-buses = <0>, <1>;
>>>>>>
>>>>>>              interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
>>>>>>              interrupt-parent = <&gpio0>;
>>>>>> @@ -284,6 +305,7 @@ examples:
>>>>>>              spi-cpol;
>>>>>>              spi-cpha;
>>>>>>              spi-max-frequency = <80000000>;
>>>>>> +            spi-data-buses = <0>, <1>, <2>, <3>;
>>>>>
>>>>> An example that doesn't look like a 1 to 1 mapping would be better.
>>>>> Otherwise, it still looks to me like you could just define the bus
>>>>> width.
>>>>
>>>> I'm not sure we could do that on this chip since it doesn't have
>>>> the possibility of more than one line per channel.
>>>
>>> That's a property of the SPI controller though, right?
>>>
>>> If the above controller had 4 lines per channel/serializer, then you could have:
>>>
>>> spi-data-buses = <0>, <4>, <8>, <12>;
>>
>> Ah, I get what you mean now. The intention here though was that the
>> index numbers correspond to the data lane (channel/serializer), not
>> to individual lines. So the example you gave would mean that the chip
>> has at least 13 data lanes (rather than what I think your intention was
>> of saying it has at least 16 data wires). I did it that way because all
>> of the hardware I looked at didn't allow assigning arbitrary data lines
>> to arbitrary lanes/channels so it keeps things simpler and easier to match
>> to the actual hardware docs.
> 
> But what happens if there is such h/w? Better to design things for 
> something we can visualize and not have to revisit this. Of course there 
> will be things we don't anticipate. (Who thought we'd have parallel 
> SPI...)
> 
> I suppose if that's rare enough we can just have another property to map 
> pins to channels.
> 
> Rob

I haven't seen any hardware that can handle arbitrary wiring like this
and most hardware designs tend to wire things up in a logical order
so I'm inclined to go with the "adding a controller-specific property
for this later if we find we really need it" approach.

(BTW I sent a v3 on Monday when you have a chance to take a look)


