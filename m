Return-Path: <devicetree+bounces-253315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F42CD0A8DB
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE80D301AFF9
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEFE735CBCD;
	Fri,  9 Jan 2026 14:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PK90metz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FA533C191
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767967692; cv=none; b=H68MFJJEKGhhynO4q6hf4HI3T9SGpS0HNxeCTFunr9yt6QM/ZDMF45dQeAN7IRraRMg7vtFx9AJZUUwx86w79kqitIOuqg5uMMsjB4lHmo7/X+45dpiEMfwvDq9QV/B+EVeSo0iQUieH3vP/qPepYcZApScVDnmL5XRLAfinc20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767967692; c=relaxed/simple;
	bh=qM4OzjmvdOSaKgv3mmsNcBVzz2Wq5zOBOAGMLzUa3hM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aY0D1Lgt1r0N6OyJuGx5DW7Uk7cj1n7mui1ViOM+IavejNMSySdIEcYmBOVEPbE6XMU6JQYlZGDOF/AqLFdjRQXBIAtHgCI1iKWq0RF4wCLnIAjskK0fSYoRK8clewq7nEsNgIxdyDzeJAS+PvnrWpiny9hvNkGBtyyxb9Ip7ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PK90metz; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47d3ffa6720so44177655e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767967690; x=1768572490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qMdtktVPYLQdp20i3sGMyB8hcMRTbHonc8uUiEXE1Ps=;
        b=PK90metzIaFqXFBmFQU0RDVGAm1K5o04smnpr8ikxSAk/7pqrpN8vkkgW3TGwwoXNl
         yA6HUx1vH7huw1uRsRHqnl6rhWskI4r9jVCX0masj6ie1Yob7oilHIz0M0py9X3Eyrv5
         35E6HjO5bde1YjVU7ZUlfLaNIj2cKKmUXFydSFmGA1Hs+D8+Wsg6cGGmDOa96tDZ4hoM
         DmxEqCy4ovrATJuE9pTvOdD9bepTrgUXQ8sss/HO+NRl1vVMy5IETC3RJ3ziaUg/xn/S
         5o7tyR1dz2oU78FnyoN0uwUIpmnmlM0LeLW4HsYEXVPEnwgGOZC2H85F0HYIZ/5U+d8R
         5D5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767967690; x=1768572490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qMdtktVPYLQdp20i3sGMyB8hcMRTbHonc8uUiEXE1Ps=;
        b=xOSkkSNwuqY7SfwAFVBUEbQJWB66fqJ89RUn99OSrEmMon1fjenTiT8iPOfZSfBlYf
         VtpHiAe3H9daxh6M5rQTtyaQAazZmSz9H1HiuPcuTQR9hmSL9dpbIKVsUJ8YHHcjc6CP
         RwA5Dm10mk+9L9Zj1DVlUMb4uQM3+7T7eaq5F71bicvCKePMZfOrrK1TPLZnyaGcSRNg
         gJbVIrdsKVPmaiWLjTz6O9E7dSdi8DhUGrRwShmtukv6bcNpqv4bD6BtiRvHtoAGHd9Z
         AEdUiLpLKFpYf6Qls4550qzN/O78Ux1+7Qz8tr4B0ZA0IPIR+pVyC2FXKorNhVHuQ2iG
         EAWw==
X-Forwarded-Encrypted: i=1; AJvYcCWtGYHVVxFFhwAt/nWQiNBazSyMs8UJcoESGOMsy7QBgeyKyzWdkqdIsUl4wSZpOmGXBLVZhOz+tt8W@vger.kernel.org
X-Gm-Message-State: AOJu0YzQL8fzGKJ6Y/EqRrrmqpnL1U7yoHkXqi4dTeaAnro8uJFKnAzN
	Ms+okMnHalBCvHe/Ra+AvtwZY7mi5JXkysE1TS1N2OJh+ALV+hla978k
X-Gm-Gg: AY/fxX4BUf7werbF7ixIbIgdKPtanJNr56UhNUWFt5bqlVDwgVVjqrkyiX6z7FKSKDG
	yBjTGcnfitUyi4YX4HtLcPK99lOY2ZGQznxLjDcvf7ErxkeAtI6Pb09DGxTueUjlyTMBUr/vA6g
	eksITk0lCOt7miNGJKUhMEYJH4b0BTBJrw86YV35QbfAYO11sYs3oYY6+xPLcdfpQ/WJOciiwv3
	OzeSSZtA7aclF5oeKNeW0I1pdoEzPttJBIqiopGraI1pWj5ze9L0WfxGlwkLV0JeBuaP4pdwxbD
	EhI6RrPmbHwjKasWdnxju3axVMwJt48i3Bc2hPrhRolPQGYBlWMoW65kmBZ9bs3Mop3NRd6X5YP
	N6vOdiI5BRgNUf+jqwhr1+crG3Ne8eN6zd4eE7F1Au+T32kPcB7AFRCjOf1dkpCAr0H0I3P49VQ
	6cakYBscPtymhS9d4=
X-Google-Smtp-Source: AGHT+IEW1P2FdJb52OHGZMAf1KlZ/qNCYOV/Vkk/nXNZ0uETDqC9KRFPngmTvu01WHkiH0xdVBiioA==
X-Received: by 2002:a05:600c:83c9:b0:45d:5c71:769a with SMTP id 5b1f17b1804b1-47d84b3b650mr111945045e9.26.1767967689454;
        Fri, 09 Jan 2026 06:08:09 -0800 (PST)
Received: from [172.24.138.145] ([137.71.226.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f653c61sm212023925e9.10.2026.01.09.06.08.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 06:08:09 -0800 (PST)
Message-ID: <cd918f27-3939-4987-ab5c-3d88572e6e0e@gmail.com>
Date: Fri, 9 Jan 2026 15:08:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: dac: Add max22007
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Janani Sunil <janani.sunil@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, jan.sun97@gmail.com
References: <20260108-max22007-dev-v2-0-2506c738784f@analog.com>
 <20260108-max22007-dev-v2-1-2506c738784f@analog.com>
 <aWD4LA7Y1fl3yvh-@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
From: Janani Sunil <jan.sun97@gmail.com>
In-Reply-To: <aWD4LA7Y1fl3yvh-@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Marcelo,

Thank you for the suggestion.
However, reusing the output-range-microamp and output-range-microvolt properties might mislead the users into thinking that they can configure the DAC output range, which the device does not support. The adi,ch-func fits better here.

On 1/9/26 13:44, Marcelo Schmitt wrote:
> Hi Janani,
>
> One extra comment in addition to Krzysztof's.
>
> On 01/08, Janani Sunil wrote:
>> Devicetree bindings for MAX22007 4-channel 12-bit DAC that drives a
>> voltage or current output on each channel
>>
>> Signed-off-by: Janani Sunil <janani.sunil@analog.com>
>> ---
> ...
>> +
>> +patternProperties:
>> +  "^channel@[0-3]$":
>> +    $ref: /schemas/iio/dac/dac.yaml#
>> +    type: object
>> +    description:
>> +      Represents the external channels which are connected to the DAC.
>> +
>> +    properties:
>> +      reg:
>> +        description: Channel number
>> +        items:
>> +          minimum: 0
>> +          maximum: 3
>> +
>> +      adi,ch-func:
>> +        description:
>> +          Channel output type. Use CH_FUNC_VOLTAGE_OUTPUT for voltage
>> +          output or CH_FUNC_CURRENT_OUTPUT for current output.
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        enum: [1, 2]
> adi,ad74413r.yaml has many possibilities for the channel output type.
> max22007 is only either voltage or current.
> Can't we do this with output-range-microamp and output-range-microvolt from dac.yaml?
> Figure out the channel type from the output-range- property?
>
>> +
>> +    required:
>> +      - reg
>> +      - adi,ch-func
>> +
>> +    unevaluatedProperties: false
> With best regards,
> Marcelo

Best Regards,
Janani Sunil


