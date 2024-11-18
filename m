Return-Path: <devicetree+bounces-122615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 561419D149A
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 16:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEE3D1F22FBE
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 15:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E06A1BB6A0;
	Mon, 18 Nov 2024 15:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dbasgpvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B16F1B6D0A
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 15:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731944351; cv=none; b=r5oBm6/eZgWHteXF0qiYwCz2TUlietvPCgpist/8+TrboZlir4O10ooVyQ2abXlRyRsDNTOtTF4B8qom+E6PXhclXSMZO5EB351S1hFU2Jx64ddOr+s3uCUlg1Dkpe6E5AE8tNg+Cm0DMyawKg6aF+ladjIm6SfFylmuBCmY4V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731944351; c=relaxed/simple;
	bh=E/AOOMvgSRjv68wjM/CkDTUJ00Q97K2I8EQ4shdp8SM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N+kTrmICTKNWjcze3esUeDtsq4UjR/JSFuHt8pBIijjfr5FJTYtPFpGR8Y0mVH7Xdd5ZzaP2fFqNsnQDmQRjT07k1TUP5KQqJmzMG+0Mj5qi1HXfUOgAAmLNRbo2O/aO9nO00qwIKQHflRuUqBzN5TaZ5DxiFiXLbykjbXahCYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dbasgpvs; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-295eb32566dso2736897fac.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 07:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731944347; x=1732549147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XNuNrxBqUyURPkdBXHGeLgBU5iN5EdsIDoVSlUzMdmk=;
        b=dbasgpvsZ07Uy4ezgCYriomk7/28IH1X+icBwVR/N7PrnyDZtvm3q63JLAh6IotlrD
         AhE5+IyOLVQLGuVmNGQ6JGArKwol16rpa7OuSWM1P43fpTzUWRJI4RXcs3B+UekFcAaL
         03D2asxO9xs4yakjhucoeAylVn7TxRvLflD7ji42gq0syRssMXi3ZeSpvGXFr5qidVUN
         39TxT3ldo8CEzN2ja3b5YJhHBui+IUOZA3QpRfWbh4hnLo3541+JiIGqB9Mk/Vj1IO5+
         7376AIRw1FvlORQ2ZQUNgEmYsHUX9lfjpMpkD/4AwwUiBt47kZMHn2Ujuoh8hU74vPdM
         DwPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731944347; x=1732549147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XNuNrxBqUyURPkdBXHGeLgBU5iN5EdsIDoVSlUzMdmk=;
        b=jNh3iABgAAaExVrr5kKAMOY9N81iJVCV5DpjQj+oao9Yh7YeJwmxpjT9Ix2XNVeMIp
         lCQuDqtZpDo5gxBbBoaoMOU5nC/7ffK0qNGRLGh75xvYl5c+CXEISmh+Q5rVzqkYFAS1
         tSHtNyDWPnof7Of2QtPoh9ah9rwKu0Hs4tsYdDhDiL0uxJI4vB6o0JJuQUyCaYsZQiqT
         tBrUptwvz/9HCpxWyu/VTmtRnLLUceeB7QGy3U3DFoYZAQnBtj9IIcpwFZks7f4jp+BZ
         Eddep4qqaLgutKvqljEL3lInLZPTUlFj6G7Wbf8+yu1Uq4+/gMk66+GjjIRQajGYSYYY
         qXcw==
X-Forwarded-Encrypted: i=1; AJvYcCWLztogpFXDaW0Rzx8xSXslWUDi0ViaCWqxzVHCKEBxBPycAJZyDU7nsgDG3JawhtWE80h/MhxTxmqP@vger.kernel.org
X-Gm-Message-State: AOJu0YxM1w3CBvkTCPQEt+UzVh7eAs5mGTJq9uiFQAT9IaSNt32xjs0d
	C2LNbncaGHoREKRLdCsI6EYI6hTcM8iAoehVKnYuYtCeRRDsNq4+Ly7TqBhcQ48xFamkOX8Ogt5
	R
X-Google-Smtp-Source: AGHT+IE6Rw+oZBtfbJDW+T3gX/EtF50OgyEAlP1PpSElJChUCBgsYe5e8IuHw7bHa3JPA3HcVEFFeQ==
X-Received: by 2002:a05:6870:970c:b0:289:2126:6826 with SMTP id 586e51a60fabf-2962dfee96amr12405436fac.30.1731944347304;
        Mon, 18 Nov 2024 07:39:07 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5eeabca05dcsm2857023eaf.10.2024.11.18.07.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2024 07:39:06 -0800 (PST)
Message-ID: <d6539dc1-2fef-48c1-9b03-c07fe82c670e@baylibre.com>
Date: Mon, 18 Nov 2024 09:39:05 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: adi,ad4000: Add PulSAR
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1731626099.git.marcelo.schmitt@analog.com>
 <a155d0d0fb1d9b5eece86099af9b5c0fb76dcac2.1731626099.git.marcelo.schmitt@analog.com>
 <0b8a2d07-feea-409f-a850-7ee0c752a949@baylibre.com>
 <Zzsj9_HVBO5wrJv_@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <Zzsj9_HVBO5wrJv_@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/18/24 5:24 AM, Marcelo Schmitt wrote:
> On 11/15, David Lechner wrote:
>> On 11/14/24 5:50 PM, Marcelo Schmitt wrote:
>>> Extend the AD4000 series device tree documentation to also describe
>>> PulSAR devices.
>>>
>>> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
>>> ---

...

>>>  
>>>  $ref: /schemas/spi/spi-peripheral-props.yaml#
>>>  
>>> @@ -63,6 +78,38 @@ properties:
>>>  
>>>        - const: adi,adaq4003
>>>  
>>> +      - const: adi,ad7946
>>> +      - items:
>>> +          - enum:
>>> +              - adi,ad7942
>>> +          - const: adi,ad7946
>>> +
>>> +      - const: adi,ad7983
>>> +      - items:
>>> +          - enum:
>>> +              - adi,ad7980
>>> +              - adi,ad7988-5
>>> +              - adi,ad7686
>>> +              - adi,ad7685
>>> +              - adi,ad7694
>>> +              - adi,ad7988-1
>>> +          - const: adi,ad7983
>>> +
>>> +      - const: adi,ad7688
>>> +      - items:
>>> +          - enum:
>>> +              - adi,ad7693
>>> +              - adi,ad7687
>>> +          - const: adi,ad7688
>>> +
>>> +      - const: adi,ad7984
>>> +      - items:
>>> +          - enum:
>>> +              - adi,ad7982
>>> +              - adi,ad7690
>>> +              - adi,ad7691
>>> +          - const: adi,ad7984
>>> +
>>
>> IMHO, having fallbacks just makes the bindings harder to use and doesn't
>> actually provide any useful benefit.
>>
> Having fallbacks was a suggestion from a dt maintainer to the ad4000 series.
> I assumed they would ask it for PulSAR too. Will wait a comment from a dt
> maintainer to change it.
> 
>> And with this many chips, it can be easy to overlook a small difference
>> in one chips, like ad7694 not having VIO pin, so is it really fallback
>> compatible? Easier to just avoid the question and not have fallbacks.
>>
> The absence of a VIO pin does not change how the driver handles the devices.
> They are compatible from software perspective.
> 
OK. Another difference for consideration that I noticed is that on some chips,
the SDO line can generate a BUSY interrupt while others can't. Not sure if
that matters from the point of view of fallbacks or not.



