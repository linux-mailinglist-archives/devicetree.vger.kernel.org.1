Return-Path: <devicetree+bounces-115231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8318F9AE934
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:43:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 087661F215DA
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 14:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23B21E1A1D;
	Thu, 24 Oct 2024 14:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U77BXn4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61CC1E7674
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 14:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729780989; cv=none; b=ZgvfRA7iiB6Fxl41kBx9Qj2XmLWbyahSN1FnO0dX43oJAG+21MlAhhFB+vudXzsw99QswEbxA8FliZ+TVYWLG07d4EHQmRfSZBjAI6T1uQ5lvh5X1K1jsQmuNCuYZxWgYn6LJEUyyQfjEknt9zL6Ykf+iNqoHt3IkPDOeYxl7Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729780989; c=relaxed/simple;
	bh=QO10kBcLdz2GvpSQmt4G3Wj74CUl7XcqucDlRuJbcQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lk2MrD4wPpebzFXdvhjrodtkijV6ZaZZTgRUlHe7c5XCxRotwaH3p2/wAS2y3HmY/aQ6AZIYXkcuNTFPlqdH+uIYURW5O+wKkyHHFNzTUO0q3uBZEQ1Vtmty19Uq8bB8jFyvD9V8fqLfAC6bpWf8ow7TuK27k/6peBJTtOtIDzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U77BXn4M; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-288d4da7221so574909fac.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 07:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729780986; x=1730385786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4EkMHq44XNfJmVROifiYQs+6m7vakjajuhR2xFCgYR4=;
        b=U77BXn4M1GDoyQTExzd5rKRB2kb6LzFQNi0o9ymFwYNnLkDpuChYoyPeuwpNDi6ZBt
         TbBWeQtiNft71mKvpwSG5mEjMC7OmURVikycOmMd9XMJ3huDDI2W9ZPnNtP8ctOeS75e
         eH2if7wd2dybzOEzODkB1tiZYJQ8UD8xDHQIbsxdu4+o4MqjWLDdnwPyXMsZs9Uy8GAz
         WUQhdlqsU7RxTYQYZOJS3kbCyu+girxFYtwZ51L9VNdNwTbg0bfVQFqhpKafu2ZStXxn
         WADUOZYbBcIQrPoJXOFKKOOMq673G2ZFcI2Kz0drebBl9jFNhbRBwco8NG4h/uQfL3Yl
         MNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729780986; x=1730385786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4EkMHq44XNfJmVROifiYQs+6m7vakjajuhR2xFCgYR4=;
        b=U/nIfhaL4DhWee3AyrZTXQEnQZdfWEWw1o/9Dz4Ra1r0NT4vPIj1FhmbOeMnaNPQen
         tgWJtN/K7iOMJNQcAYioFKPXIchnCyTWmO3ujaccVRePTkOgqwXi73O7ix9CzvFvHbB6
         hbdVcx+7D8R0m5TLCs6pdRlqYYb/LEE94mDvnZdUk2zf6u76aMtjxYd354VpTDGD51Je
         00PaxTRafdqzxilGuClNOKrqMv6FldExWpo2SN9wOvMIzI5aopP0NJLp5EbRIY03bAEt
         THDlojQ6E0dZuajvfCXK6zoJmq+2SPVx2gVB1VKQNrIGDG3yGkuTk0uE8opSPlBt/NYv
         TokQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcBc4vnyauoQGFQGYQIKsGRgB+52RP+HnPC8WrHVOpjoi7IAuGQy9iM2wWEqmXwFtDaIYojc82CVST@vger.kernel.org
X-Gm-Message-State: AOJu0YwU1t2xUQpe229GPA7tGzjOtUyn3KmKdyFpa+QkqzNBt6DAm0Gg
	zTIe4j5MlcfmaR/GkWiWybFgqvNsC8jAAol6JCN8S52Z3sJtL0d+JetdzqRaiL8=
X-Google-Smtp-Source: AGHT+IHqKwQypKG0ndA4p0M3kPUF5h4tW+CaN8Be6Tw7fzAswiv1FN1tOVBQy4nsjO2aLaM7U9XU0Q==
X-Received: by 2002:a05:6870:a710:b0:287:b133:8aca with SMTP id 586e51a60fabf-28ced2df260mr2122876fac.25.1729780985662;
        Thu, 24 Oct 2024 07:43:05 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-28c7925cf54sm3075640fac.18.2024.10.24.07.43.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2024 07:43:04 -0700 (PDT)
Message-ID: <6162ea7d-40d6-4a21-96e5-7f851bc587dc@baylibre.com>
Date: Thu, 24 Oct 2024 09:43:02 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/8] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Angelo Dureghello <adureghello@baylibre.com>, Conor Dooley <conor@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20241021-wip-bl-ad3552r-axi-v0-iio-testing-v7-0-969694f53c5d@baylibre.com>
 <20241021-wip-bl-ad3552r-axi-v0-iio-testing-v7-2-969694f53c5d@baylibre.com>
 <20241022-flagpole-subject-51e68e81e948@spud>
 <zfggfhasl3njyux5n44j2au4dlyjlngbtt4fps2xqzpngbwn42@72icpspkogtz>
 <6c2f188fc04ea957c842fe595951039244c43b7e.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <6c2f188fc04ea957c842fe595951039244c43b7e.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/24/24 7:37 AM, Nuno Sá wrote:
> On Thu, 2024-10-24 at 11:28 +0200, Angelo Dureghello wrote:
>> Hi Conor,
>>
>> On 22.10.2024 18:22, Conor Dooley wrote:
>>> On Mon, Oct 21, 2024 at 02:40:12PM +0200, Angelo Dureghello wrote:
>>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>>
>>>> Add a new compatible and related bindigns for the fpga-based
>>>> "ad3552r" AXI IP core, a variant of the generic AXI DAC IP.
>>>>
>>>> The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
>>>> generic AXI "DAC" IP, intended to control ad3552r and similar chips,
>>>> mainly to reach high speed transfer rates using a QSPI DDR
>>>> (dobule-data-rate) interface.
>>>>
>>>> The ad3552r device is defined as a child of the AXI DAC, that in
>>>> this case is acting as an SPI controller.
>>>>
>>>> Note, #io-backend is present because it is possible (in theory anyway)
>>>> to use a separate controller for the control path than that used
>>>> for the datapath.
>>>>
>>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>>> ---
>>>>  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 69 +++++++++++++++++++++-
>>>>  1 file changed, 66 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>>>> b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>>>> index a55e9bfc66d7..0aabb210f26d 100644
>>>> --- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>>>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>>>> @@ -19,11 +19,13 @@ description: |
>>>>    memory via DMA into the DAC.
>>>>  
>>>>    https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
>>>> +  https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
>>>>  
>>>>  properties:
>>>>    compatible:
>>>>      enum:
>>>>        - adi,axi-dac-9.1.b
>>>> +      - adi,axi-ad3552r
>>>>  
>>>>    reg:
>>>>      maxItems: 1
>>>> @@ -36,7 +38,12 @@ properties:
>>>>        - const: tx
>>>>  
>>>>    clocks:
>>>> -    maxItems: 1
>>>> +    minItems: 1
>>>> +    maxItems: 2
>>>> +
>>>> +  clock-names:
>>>> +    minItems: 1
>>>> +    maxItems: 2
>>>>  
>>>>    '#io-backend-cells':
>>>>      const: 0
>>>> @@ -47,7 +54,31 @@ required:
>>>>    - reg
>>>>    - clocks
>>>>  
>>>> -additionalProperties: false
>>>> +allOf:
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            const: adi,axi-ad3552r
>>>> +    then:
>>>> +      $ref: /schemas/spi/spi-controller.yaml#
>>>> +      properties:
>>>> +        clocks:
>>>> +          minItems: 2
>>>> +          maxItems: 2
>>>
>>> Is this maxItems required? It matches the outer maximum.
>>>
>>>> +        clock-names:
>>>> +          items:
>>>> +            - const: s_axi_aclk
>>>> +            - const: dac_clk
>>>
>>> The names are the same in both cases, you can move the definitions
>>> outside of the if/then/else stuff and only constrain it here.
>>>
>> thanks, could you maybe have a look if it's ok now ?
>> (maxItems not needed for a const list)
>>
>>   clocks:
>>     minItems: 1
>>     maxItems: 2
>>
>>   clock-names:
>>     items:
>>       - const: s_axi_aclk
>>       - const: dac_clk
>>     minItems: 1
>>
>>   '#io-backend-cells':
>>     const: 0
>>
>> required:
>>   - compatible
>>   - dmas
>>   - reg
>>   - clocks
>>
>> allOf:
>>   - if:
>>       properties:
>>         compatible:
>>           contains:
>>             const: adi,axi-ad3552r
>>     then:
>>       $ref: /schemas/spi/spi-controller.yaml#
>>       properties:
>>         clocks:
>>           minItems: 2
>>         clock-names:
>>           minItems: 2


For this one, I think we also need:

         required:
           - clock-names

>>     else:
>>       properties:
>>         clocks:
>>           maxItems: 1
>>         clock-names:
>>           maxItems: 1
> 
> I guess in this case it could even be clock-names: false. One does not make much
> sense.
> 
> - Nuno Sá
> 
> 


