Return-Path: <devicetree+bounces-128916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A61F9E9D46
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 18:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 058BC18889A8
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B52155725;
	Mon,  9 Dec 2024 17:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0eMW83n5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A3C1552EE
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 17:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733766260; cv=none; b=XLteUo536WRsg7oKfj39ZNw6GgFdYa1tjAPRaUO8fLIhKtAB4YgaeFdrqAnTKpZVezfY8SK3K2h7utkHs6vLMLjB+MQWUHiY88ozF7VnViFqjnPbfQ19MSK56r88YqAIQNaEWRuoAaMTRTnNHKE6jP9d1Ds3RXGkCho1zRex1w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733766260; c=relaxed/simple;
	bh=T8VsNOEm3fdtOz4g+8Npq3QFd9DXTd9hJ4Mx+0kU1Dg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YK5nQwWLkO0RE42INpUyOIpdffgoj9OPflxaTqWG/+oueE7+ti9DjC3MvWl/CH5Hk8CD/CiW6PGHKdAemc8THSFuPqhVJW8TIGwBscxHicy3kpE8jWyQX2PiUhr91dDtTTW5lJ8xzhCrUhyo8eaB2Er4u/0C5bk1IKWLgJRTjrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0eMW83n5; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3eb494c23e8so304321b6e.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 09:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733766256; x=1734371056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NQaHY150Yps34xQsPyk4V8n2PV48YCsChjwMePfbEZc=;
        b=0eMW83n5rJvm3Z1VPKBQr0LAAEimjThUcIhFCLXzYmgRdNvLfmjCrkiD/xkEybgWLZ
         EBI1dbbFooV6lFkfmj+F/exE60/f2wwlfSf1aiJY2DGHnZ0kNIhIvmHe9XZs66DASfYF
         67twLwgEE2pf1i9ULMP/IaQYLIrwOOfuI0/w8WoBE7cBuFwUDTlM0DF8tc4TeD2pfaZx
         Jlm3ymiPR6CtNqIa5yGHXJI6t8EefPNZsAQ5gg51kmsHcCYJmrt8V0y9NEFRQL9J39Mm
         a/k87wdGm/9Pib0+1l29XsxUwD4KybFXgVpwKDrEGdgZytWnNMNKfc2DH95hBmXP0U8D
         0AUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733766256; x=1734371056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NQaHY150Yps34xQsPyk4V8n2PV48YCsChjwMePfbEZc=;
        b=FZ19e/CWAscbnm3oD1fYYZYjCO71zlRoHEztzDxlDy35nX0OVAHQyOSoZQ/5/tySbg
         sihurRtFrvd7YwE2VoFuo5AtFUtIGLEjX7UnCoo4JFMthMUl4EHvi6Yyp79DeXNnQfQ3
         tw9hB+zW2lINiQvIppCcwiqrVWfBpWOq9otliWYRlppSSG8IofBaDt0HbvdXj9iPDeN0
         Ol390+cjrJahspGu3/xwK8IEFE5f8MEDhlKO6JWwdwEs+QBsK0uycDCSTZz65R5GAp9c
         DALdZ9l7OIQwsPkkN/KnNxe5gm7Xn0+DDtWpRygMzBgmfDJx9HBw1sH47VfKXC5tmvbp
         Tw0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVba5AUglMl7Ts3tp/RFmzXrbRBZyiiUR0k2TA3EooTrWSK/S6o4JCKLqmGzw7NK/kWH9nxB4IM+R3@vger.kernel.org
X-Gm-Message-State: AOJu0YwOH4FceE08IAp4f+1q/kEynmK78hnIcPxSAaYgDwZ7xjDIm6Zb
	qs7SoH8HFIqOf2ZP72AOMbOD5JqznScJqrjlGzfDPw4wUTHbHak7wkNE/h+ejC4=
X-Gm-Gg: ASbGnculjKuWnVruQ8r4bAIaVbG/Mx/9n9LmKxEDtWBQh1WeyegrW16dyRQ3g+QZU0r
	zwS4jRk2UKT3xj2Mw4kpHOJOH84TwZC8ZJuxKhFhQpWTNesIBiXDzVR4ksMaHt0lochydzFSmzU
	82yBWcE5YTFEa4wWdWijECcI9bLYb/pCAPh2AFe3Z8HPzmYjlx3N4BlEFan2JrAHJuzdcVMALfr
	88e4va8oR+IC0moDfwbZg9slm3boGJhorS7L8pf1TwBFvOYhy171i6DMo7nMfV0ZL2KMQ1oFPB/
	m1ByoUf2AHw=
X-Google-Smtp-Source: AGHT+IFb81lytRSGzGy7brox5UjxhmObKKJPioRXNthRoTofZyWXpYB3n+qfmyKwwp6491Ja7RrpNg==
X-Received: by 2002:a05:6808:1883:b0:3ea:57cf:7c26 with SMTP id 5614622812f47-3eb66e12187mr1006950b6e.19.1733766256635;
        Mon, 09 Dec 2024 09:44:16 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3eb57b69471sm551260b6e.45.2024.12.09.09.44.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 09:44:16 -0800 (PST)
Message-ID: <4be8bebb-7db3-43e5-b00e-95ebf7114d80@baylibre.com>
Date: Mon, 9 Dec 2024 11:44:14 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/8] dt-bindings: iio: adc: add ad4851
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>
References: <20241129153546.63584-1-antoniu.miclaus@analog.com>
 <20241129153546.63584-8-antoniu.miclaus@analog.com>
 <2d760894-bda5-4000-9598-914b830333a7@baylibre.com>
 <CY4PR03MB3399F17206B01006467B602F9B3C2@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CY4PR03MB3399F17206B01006467B602F9B3C2@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/9/24 8:02 AM, Miclaus, Antoniu wrote:
> 
> 
> --
> Antoniu Miclăuş
> 
>> -----Original Message-----
>> From: David Lechner <dlechner@baylibre.com>
>> Sent: Thursday, December 5, 2024 2:46 AM
>> To: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>; jic23@kernel.org;
>> robh@kernel.org; conor+dt@kernel.org; linux-iio@vger.kernel.org;
>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
>> pwm@vger.kernel.org
>> Cc: Conor Dooley <conor.dooley@microchip.com>
>> Subject: Re: [PATCH v7 7/8] dt-bindings: iio: adc: add ad4851
>>
>> [External]
>>
>> On 11/29/24 9:35 AM, Antoniu Miclaus wrote:
>>> Add devicetree bindings for ad485x family.
>>>
>>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>>> ---
>>> changes in v7:
>>>  - add adc channels support
>>
>> What is the reason for this change? In a previous version of this series,
>> you explained that we didn't want to specify diff-channels in the DT
>> because there was a use case to use channels as both single-ended and
>> differential at runtime. So I am surprised to see this being added now.
>>
> We had a discussion and we decided to go for the dt approach for specifying
> the channels configuration, even though in the first place we wanted to avoid this.
> Overall it makes more sense.

OK, in that case we will also want to make use of the standard "bipolar"
property from adc.yaml as well since the chip differentiates between
unipolar and bipolar inputs.

Also, might want to drop Conor's review tag and give an explanation in
the next revision since adding these channel properties is a bit of
a big change compared to the version he reviewed.

> 
>>> +patternProperties:
>>> +  "^channel(@[0-7])?$":
>>> +    $ref: adc.yaml
>>> +    type: object
>>> +    description: Represents the channels which are connected to the ADC.
>>> +
>>> +    properties:
>>> +      reg:
>>> +        description: The channel number in single-ended mode.
>>> +        minimum: 0
>>> +        maximum: 7
>>> +
>>> +      diff-channels: true
>>> +
>>> +    required:
>>> +      - reg
>>> +
>>> +    additionalProperties: false
>>> +


