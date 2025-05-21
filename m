Return-Path: <devicetree+bounces-179264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62558ABF5C8
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FE151BC3B26
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4928266B72;
	Wed, 21 May 2025 13:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3DDII2Jh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB8262FFE
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747833306; cv=none; b=o/hk5MohFg2fOU9/VmsBjlVc1LuMWgiabxDQ1PGWvYvAPvGbNlw2P1lIqKYHRHd+NvHYE6hw2LUksZLlJvQpdoaDTHrzFeYJFwGN++UXJrEcnCufipUxm+SSl4cU9zoY7YFSmw0cwJgT9AWmSEtNvS37d6CbceAYJNAmhiUQ9kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747833306; c=relaxed/simple;
	bh=46yPBjwciFLMMrocvFjPrOjdH2xTypHeoYSJWaK7AEo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wy0m0FDBVPp7TIFzHV2SSJKggxbiqpWi94G70JugJlqTiay6yBO+3U9E/jf23sRZI5cjlxYj3xCEUa7s+7o+H2I+iRfrq/8cor+BYXbWOuNNXsn3yrvkpbIcoOFqktQIf7Hf3XQNVFuIaulxNI4KG37W8wGAvYHW9pGU+psC7NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3DDII2Jh; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7304efb4b3bso4267352a34.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747833302; x=1748438102; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MwkvT86/Zl2sJvdjDReDj53Dg8oPYnn4x0+k4uOFFvU=;
        b=3DDII2JhqXNaHu1nBvD8hlqePN1zYoZCfw8DQgXEGSFPXPAWQ4qnZJ9SGwTLyBbff8
         oXZjuVT4nrN1WPQCHbfukdc7wo+CH5ibioasKoRjeUzRxwhbRT8fselvaadKHIe2s1wa
         Sx2g3BeF3/JPFMOs+rLv2yv3qpCgyZaDWBAfgsq7KLCsPJDZXBv9F6zHPWrPFkSUwhzg
         vY93Rg+p+m7W9lZoZrqZw4QxFOxivMp8334Tz4BmHFY5BIOR1BpYIjpoOt7pJzZFWKCl
         D6rDFxPhV4UZYtbj+hfdnr6ViW2YFBI4YSnGpUD5YlhwZ56JWxjhQPqlmPwt8r5q7fk8
         xgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747833302; x=1748438102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MwkvT86/Zl2sJvdjDReDj53Dg8oPYnn4x0+k4uOFFvU=;
        b=jcV4Nm8ae2EqI94GK2URK5NPQyzajwvA7Z4XDdr4jsNmfdLJ3gu8CM/cDefkGF5mIo
         W5I7wHkdT5+AFAEDlxG7I+j/q6qyX7BPNfWcj4UMdK12knXV6dCgV4yDXambR6t5W4NL
         NTcll+pZMgRgmFRz1gHgKkSi4NwcXsI36OGIUWyHLvmMm896ty9LKLpKKXFW6LXTazrg
         2z6Zar6q4drGfVvRLHyjTRnQZbN7IKncvtk5FCfn7cpPnFQsHN1bpfO+EC58CFEDesof
         dcvCnggm4umrfNqkOH1WYbLnxy0po/usYGB8iHsnbFUjheXoyoPDwqBRsIIFXX85TuE6
         00og==
X-Forwarded-Encrypted: i=1; AJvYcCWy4D9JC/VYiO7QNEHLcJ+/rkgFZSPcQ8ZzAA7KDBa0OUZWR/yxL6w3jMsQ61sapG+fVkQ/q2tz0YoX@vger.kernel.org
X-Gm-Message-State: AOJu0YxOZUWDkEcPuykCU64+LTXYtvjWTerz0zTqMx1lnI0l1jdc+k6S
	VBywOwBPvBFF1BrMi0+JaoE7YSPuL0J4Ff5xt1VTE6nsHYqK6WaaEi+aa3CodVLVdsM=
X-Gm-Gg: ASbGncthg5gne8zmNXYmbzDTIDFnMVBGL6iKayYy1vvD1ihqjostB+tJ9CtcWdz0NFM
	C9a2o9+COUfAfEYMi+ogTHCuSABpuBh2KhSk4xT9PX/FZBv1JjXCyrZvwOkSgGJpV8xZ9mfGuj7
	YbdoYNi88cP4rfgEBxeoQrpTvQzfdV3PBluVynmwIvb6I0ZX42qxp2T0HKFTYddduVY0tk7Ijkd
	poFhIq55C5BPC72Ik4c0Eqrb1c3arYAqDXDwWPgYQhbd9i5cGbjiQCGH3Jsvwz8S+9cVUyWhxUw
	kn7/Qkuo5qOAhGLYyU4wTuUFOz9puFV46dGWytXDpSmPany26DDQJyjMbTLAyykK+KmWcszjLhI
	4h0NeIIbtpComXS8P9NA2LMSgQw==
X-Google-Smtp-Source: AGHT+IHzdgJCdBOe5f51v9BfhJeduP2MKryKFQE+tj3FZojFtyNm/Wv+bOouQTctgWKdWzwI//4zpw==
X-Received: by 2002:a05:6808:1b8e:b0:403:3660:412f with SMTP id 5614622812f47-404d87fe42cmr14605026b6e.25.1747833302026;
        Wed, 21 May 2025 06:15:02 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff? ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-404d98cbbfesm2137735b6e.41.2025.05.21.06.14.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 06:15:01 -0700 (PDT)
Message-ID: <be02b9cd-803c-4aae-9420-ff3bf445efc1@baylibre.com>
Date: Wed, 21 May 2025 08:14:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: pwm: adi,axi-pwmgen: add external clock
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
 <20250520-pwm-axi-pwmgen-add-external-clock-v1-2-6cd63cc001c8@baylibre.com>
 <20250521-tidy-heron-of-genius-4dc9a1@kuoka>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250521-tidy-heron-of-genius-4dc9a1@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/21/25 5:09 AM, Krzysztof Kozlowski wrote:
> On Tue, May 20, 2025 at 04:00:45PM GMT, David Lechner wrote:
>> Add external clock to the schema.
>>
>> The AXI PWMGEN IP block has a compile option ASYNC_CLK_EN that allows
>> the use of an external clock for the PWM output separate from the AXI
>> clock that runs the peripheral.
>>
>> In these cases, we should specify both clocks in the device tree. The
>> intention here is that if you specify both clocks, then you include the
>> clock-names property and if you don't have an external clock, then you
>> omit the clock-names property.
>>
>> There can't be more than one allOf: in the top level of the schema, so
>> it is stolen from $ref since it isn't needed there and used for the
>> more typical case of the if statement (even though technically it isn't
>> needed there either at this time).
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>  .../devicetree/bindings/pwm/adi,axi-pwmgen.yaml    | 26 ++++++++++++++++++----
>>  1 file changed, 22 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
>> index bc44381692054f647a160a6573dae4cff2ee3f31..90f702a5cd80bd7d62e2436b2eed44314ab4fd53 100644
>> --- a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
>> +++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
>> @@ -16,8 +16,7 @@ description:
>>  
>>    https://analogdevicesinc.github.io/hdl/library/axi_pwm_gen/index.html
>>  
>> -allOf:
>> -  - $ref: pwm.yaml#
>> +$ref: pwm.yaml#
>>  
>>  properties:
>>    compatible:
>> @@ -30,7 +29,13 @@ properties:
>>      const: 3
>>  
>>    clocks:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: axi
>> +      - const: ext
>>  
>>  required:
>>    - reg
>> @@ -38,11 +43,24 @@ required:
>>  
>>  unevaluatedProperties: false
>>  
>> +allOf:
>> +  - if:
>> +      required: [clock-names]
> 
> 
> No, don't do that. If you want clock-names, just add them for both
> cases. Otherwise, just describe items in clocks and no need for
> clock-names.

Would it be OK then to make clock-names required and just let the
driver still handle one clocks, no clock-names for backwards compatibility?

> 
> 
> 
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
>> +    else:
>> +      properties:
>> +        clocks:
>> +          maxItems: 1
>> +
>>  examples:
>>    - |
>>      pwm@44b00000 {
>>          compatible = "adi,axi-pwmgen-2.00.a";
>>          reg = <0x44b00000 0x1000>;
>> -        clocks = <&spi_clk>;
>> +        clocks = <&fpga_clk>, <&spi_clk>;
> 
> What was the clock[0] before? Axi, right, so SPI_CLK. Now FPGA is the
> AXI_CLK? This feels like clock order reversed.

The problem being fixed here is that since there was only one clock in
the binding, existing .dts files have either have the spi_clock or
the FPGA/AXI clock. So the one clock could be either and there are
existing .dtbs out in the world with both cases.

But we could consider reversing this so that if someone uses the new
bindings with an old kernel, then it would still work.

> 
> Best regards,
> Krzysztof
> 


