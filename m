Return-Path: <devicetree+bounces-205429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A532B29020
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 20:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA023AC766F
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 18:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7230E2066CF;
	Sat, 16 Aug 2025 18:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xxGf0Zo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B888F1C3BFC
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 18:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755369834; cv=none; b=rW5YK0CwU/LK7okLubqDzsq7WgSp+wevKszzyEz+pknwEZtLJfXjgm21opiYP6llDAh2IBhLZNzYId99DEhLxXpTRuFSeyhJ4Jcn73OlVp2nhrYn5d74pSCXJz78nnijbcilT5lxOHw6wH0tCE0QkdVpnJVEOsFJOYLyyT5vhOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755369834; c=relaxed/simple;
	bh=K8MMx+BgUTjelkpi5h0lubeR2iZfAo8T07Wso3PSfe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=aEDtnsy+hg+3sQF9YXlYk5Islr8wVkzNbv6S5cI2jWwIm69J/fEnuJPZGRPd6q+LnlyGO3CwzOkopn5+qOHyeArblAMRqxBz9UIqTobrJJDPNk768+d/Ruho7XwN1JBH7oQPoAfQMMeSxg5hRdFWodTQDC12pp7ISCa9/FsGk98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xxGf0Zo+; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-30cce5cb708so1963113fac.0
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 11:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755369831; x=1755974631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S1jsNiINDg+jou+qZJDnS2+osG4c6UiQjY6RKX9f5D4=;
        b=xxGf0Zo+yiejmMKJbwWScO6yq+wN2TLozAIyHh30rdmRoSUysNpked6os91zG0T1kd
         QxrStajuQvN5/uK9PWrMoMGGJsrLhimZrAwAKDR6h1oHuQK5b3Vwe/MxzKGGbbdOdkik
         ckis1zgiPe6xnoru2VcadeMrv8cDAgoEjDyRMXGFi1ou54t8v1AvhcZ/uOW8yFyDmVaa
         bYzTOfjYYoS6pKAun9dayLbL4ieiHMk/Zx4n2txyZNm7NthuiXv20C7E3jrwhR2Cqv8k
         wrZFr99R8wMiyXsvA7d/fpf33CsbYP1yQp+VgEZ6VymP8+v/0GtCsRzvuZeRaK7Jfkee
         y2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755369831; x=1755974631;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S1jsNiINDg+jou+qZJDnS2+osG4c6UiQjY6RKX9f5D4=;
        b=LQ/gWoan3JrVxSJFIc+LekliRBRL2p1C5u9KVrufq/etL3H/M8T4RSwMK/a4t+M+Qa
         4OV7/wsPUYdFgdYZwWlXZgXABXOhsIs1fRotkXEgVfVaXsbfeUMPvT++RSoLBWgpZg04
         9dhWxIOjqIy99+P8LoKjVv4kqzuaOdNfCZtm4G52EC7OOP86z3vthyDVlTZOGvqcseqM
         FWMcUDkGUfm9eW3WIVB7vdcg+HtG+ddZ/AQIKf0d+SUPxXUu1K1DIV7aT1wvIynSj7wd
         J7+wKBRRd+MWF++vnHex1AUChkpC53B2mlCWUaO3yJXm0eXZxGmZgpbsB6lbCmd0lZ5Z
         QUyA==
X-Forwarded-Encrypted: i=1; AJvYcCXDGMBE0k83PJqG9ylyzRVQ7B3EzfhVgktkDesRzLYTZ/u0EVXSdJvV8oxqaELQueZD59KRh+E85g6I@vger.kernel.org
X-Gm-Message-State: AOJu0YydDZTv/eoR1n/A/VUjN5KxnMnMRneiaVaEzk1JW3ZJUJoa75Jt
	T6FRzOlZmK+O/Rl0688uq0Ihwo8WcZ5nGTbuflxrSy8GaK4+UMJ7iHSVyt5Bxf1VWaE=
X-Gm-Gg: ASbGncuNVL9QG8+wLlFooL9plBnjgjogxtTbteSUYnQ8c+8t3w+SWeub6sOuFbD8Wht
	WLvBjGlz+qEGqSwhNNzr0IhuiRKobnq1/Dk6YeUKGnhen6dodQ6054+cc/0jvtJkijxTYTr5FC9
	sdx6Q6SMu5lSF/liKDDkyMfdQ3eYvxoE0SjjLKbBIMPC6ftWEIEpE78q9O+b4Vs3EvZ3KBVT0cJ
	CtA0L4X9ZXoiGSNS4d8ySYk7pCpo2qRo1vOFouFUV6dm00/9XIgzULTFKo53lc09cJe88ascnHS
	VNZs3vwvtWn4xDN3ej4L8pm6NEg0y940nJoF/RspqGon1XmkzGot1XGw51E00koCd0k+NEAmBgl
	EEYKAUR+Scner5o86S5XN+OHXKxvsMgnTriGTj2uCNf3uYVQPvYVNMkQgC9nxEOoD0QNM6RTS
X-Google-Smtp-Source: AGHT+IGBoWnvKFnrL59tcdrwycUM3/742dFlpnhv7GOYA9WCbLlFcoq+rdKa3z0jczLqd4y3TNBh0Q==
X-Received: by 2002:a05:6871:409b:b0:308:fc2b:b7a with SMTP id 586e51a60fabf-310aaf3c403mr3608587fac.43.1755369830805;
        Sat, 16 Aug 2025 11:43:50 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:fcf8:116:11db:fbac? ([2600:8803:e7e4:1d00:fcf8:116:11db:fbac])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-310abbb405asm1383455fac.30.2025.08.16.11.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Aug 2025 11:43:50 -0700 (PDT)
Message-ID: <4fd47b7c-84e0-4a7c-8e5d-5bb6f0982f59@baylibre.com>
Date: Sat, 16 Aug 2025 13:43:49 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: iio: mcp9600: Add compatible for
 microchip,mcp9601
To: Ben Collins <bcollins@kernel.org>, Ben Collins <bcollins@watter.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20250813151614.12098-1-bcollins@watter.com>
 <20250813151614.12098-2-bcollins@watter.com>
 <623c0ef4-98c0-410c-abf3-fa9563f52688@baylibre.com>
 <2025081319-abiding-muskox-c434f3@boujee-and-buff>
Content-Language: en-US
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2025081319-abiding-muskox-c434f3@boujee-and-buff>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/13/25 7:04 PM, Ben Collins wrote:
> On Wed, Aug 13, 2025 at 04:11:59PM -0500, David Lechner wrote:
>> On 8/13/25 10:15 AM, Ben Collins wrote:
>>> MCP9601 is a superset of MCP9600 and is supported by the driver.
>>>
>>> Signed-off-by: Ben Collins <bcollins@watter.com>
>>> ---


Looks like reply-all was missed on this one and it ended up in my spam,
so I'm just now seeing the reply for the first time. Adding back the
others since I don't think that was intentional.

>>
>>
>> Please include a cover letter with a changelog in v3.
> 
> I had one, but I'm not sure why it didn't get Cc'd around. I'll check on
> that in the v3.
> 
>>>  .../bindings/iio/temperature/microchip,mcp9600.yaml         | 6 ++++--
>>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
>>> index d2cafa38a5442..d8af0912ce886 100644
>>> --- a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
>>> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
>>> @@ -4,7 +4,7 @@
>>>  $id: http://devicetree.org/schemas/iio/temperature/microchip,mcp9600.yaml#
>>>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>>>  
>>> -title: Microchip MCP9600 thermocouple EMF converter
>>> +title: Microchip MCP9600 and similar thermocouple EMF converters
>>>  
>>>  maintainers:
>>>    - Andrew Hepp <andrew.hepp@ahepp.dev>
>>> @@ -14,7 +14,9 @@ description:
>>>  
>>>  properties:
>>>    compatible:
>>> -    const: microchip,mcp9600
>>> +    enum:
>>> +      - microchip,mcp9600
>>> +      - microchip,mcp9601
>>>  
>>
>> It sounds like it would be useful to have a fallback in this case:
>>
>> properties:
>>   compatible:
>>     oneOf:
>>       - const: microchip,mcp9600
>>       - items:
>>           - - microchip,mcp9600
>>           - microchip,mcp9600
>>
>>>    reg:
>>>      maxItems: 1
>>
>> Usage would then be:
>>
>> 	compatible = "microchip,mcp9601", "microchip,mcp9600";
> 
> The main reason for the compatible is so I can designate the difference
> between 9600 and 9601 for the next patch I am working on which supports
> open-circuit and short-circuit detection. This is a feature in the 9601
> variant.
> 
> The feature depends on the chip being wired to support it, which means
> there will need to be a way to let the driver know that reading
> the OC and SC register bits will produce useful information. I'm leaning
> toward device-tree props to enable this and limiting that for only when
> the driver is told it should assume a 9601.
> 
> Given this info, what seems like the best approach here?
> 
> Thanks
> 


The devicetree already has open-circuit and short-circuit interrupts
for the corresponding pins. So it looks like the binding was written
for both chips already.

If those aren't wired up, falling back to reading registers to get
the status is fine.

I also see there is a V_SENSE pin. So I think it would make sense
to add a microchip,vsense boolean property ($ref: /schemas/types.yaml#/definitions/flag)
that indicates that the V_SENSE pin is wired up.

The driver could then use that to know if it can actually provide
events short/open circuit events or not.




