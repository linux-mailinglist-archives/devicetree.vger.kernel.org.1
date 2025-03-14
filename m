Return-Path: <devicetree+bounces-157634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B025A619ED
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 19:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6753719C6A7C
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 18:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07281204C14;
	Fri, 14 Mar 2025 18:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="n7AT3+v4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3292045B5
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 18:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741978598; cv=none; b=SHwNNW2DQdijTf7MXfEtPPlVKQFmrgnBdn+zqInX2OK5Sxm65ZCLraR1/tJST34cmOzN1q2fF1RxxxI+laReeMMiqBzU4p6VlF9CuNofagqGnhGGtyhe9NmTsorQQoj1coQwj9wpWTBEBoTcIxyrG0XdggqRsdVOv50jZQPeOrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741978598; c=relaxed/simple;
	bh=d6lRTVD/mtADsxyTCgSv/4oezDiZLFcfLJQEpM2XOWo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AxKXOA2yp9t82oHWAbfgaK7HDu5F0DfTg0KA2DtCOl59zNDeGo0eO+p9gUUUOpQ2zqXDjR1f/bYCyPTGb2snVAXretQfckyFq9QByZYvbkHA8k9M56stlI+xuPKO73cAzizQ63CWW8O6nIa3jNmzoMby6MQ36jLLXSg/HRsUT+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=n7AT3+v4; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-72bbead793dso499727a34.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 11:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741978595; x=1742583395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RNVuCuSS97Q/Z+sHOmkjZ2bCuVpW+EMqPl3PUMJe14g=;
        b=n7AT3+v4ka4YBn1DdB5mWT1Pj1uOtqPnr/3GrDm9+RrFZVNfP83YTmkNBWg7+tLvo6
         d75XXYGnmFHrwzC+FpvPwRrdFLXLGeUILwIW3xk5/+Z3ihTc9F2OtQq1SPkK258vuFyf
         O+q3LPr0ilX5zuAwi2A99q4+q1WAsJsp4Q/0S4ZZAW+FEW6N4vPEJntjHQL8HTt4CrgH
         z1AzHIoMwiQZDYG1zLjNWTZzKy/mDS04kicmooDAcXgBdYJv4d0Djg1EYUx8IRD2u42j
         6ipEHFVqOJu6MkIJnFpawEtxqSH7p0QDC7nDDFOSQIFo6qFcJnhZx5levirXZGfq0mGp
         CKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741978595; x=1742583395;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNVuCuSS97Q/Z+sHOmkjZ2bCuVpW+EMqPl3PUMJe14g=;
        b=ngMB1kD3lUSyYQrFDAlE29oM++K5FeoHfv8kgAJA+rdTVJ3jtTBtZ2Jir8eapYK7IS
         8AoPhqKWdi88T4tLPtqrC2eVxok6Rde7DdFIUUbpjR7mPmnDPTq6fKLYqEg6X4eTJCRc
         Cf2em/nU3nisLVWQrmQzmTbT/bEvc6SN79d75y9Ww9em/T4PTwKwmMr0cwhqBYTA5SnI
         +6nqtjXED2qA13UF5u+AdoKe8OEiTzH3UCyRKD8ua/YLbM317f1DkXJZtKi8K/pIVcrD
         2yLHVqRP6cyLAneaeNusotNQ6gZieLSxOvoqELL084wRghEPMAHKLVEsLCUgAyzRxgWv
         T51w==
X-Forwarded-Encrypted: i=1; AJvYcCWbA0oFxbp2eAad6VQ6df/Nxsxyj1qwD5ekoZ/LIsmdHuT79hRNPyBjeIW43rW6l62iumQlNng6e9a0@vger.kernel.org
X-Gm-Message-State: AOJu0YzT8FBZ3AVnkerj2eHY0FE++Jntpj1mk9YbC32TKirT4UY3Wg+J
	qBbQvzWCpQjK+NZQpCnxm9zG1EH5QNdmeX521HPidRS5+VkI6WgfTk22HBVuCcc=
X-Gm-Gg: ASbGncuDJbHzE4ROJ7+4omJDC8cYqXaKGIBLGUMqtEMwYF7jq3vtcKFZ3s5Fwh1nL+N
	0NMvNMwD64b5Xd9WiWynOdTuiv1g0NZT0mkxee16gk81WLUQlmeerg5ZLrBEgz56OgEteoOuTGj
	pUdN3Z0RRDUDJ7IoB0Ybza0sAun/Cvt0dKmxHGU2HnPiiTHSOkM6rd+xYyx3qtgphCR9T68xx+X
	KX+Z5saO4Y/BGxjLhQDaXOGmA6PZd6UvjbCfl6w0UaXNPUadpViG9Pv2AkVpFOkQJ6SIVAZunpN
	15IJNlIXEQIldae9iKas9y3iB9/IGtlatXrdAf3bbxsKdnNI/sP/BMFaP8hyKkWqAOTrZTPAKQk
	DOA0MTg==
X-Google-Smtp-Source: AGHT+IGg20VFuY1ZXtqIODcWgwwkYNtqJaT66K1mKtecrIPYl6dsZdvrnubDwiZydzZ3z/ZBfVrqDw==
X-Received: by 2002:a05:6808:1528:b0:3f6:ea63:6a6d with SMTP id 5614622812f47-3fdeefecf73mr2090220b6e.22.1741978595347;
        Fri, 14 Mar 2025 11:56:35 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3fcd5c0007esm798356b6e.37.2025.03.14.11.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 11:56:34 -0700 (PDT)
Message-ID: <05b83988-b7aa-453a-bef7-8e7eda77f53a@baylibre.com>
Date: Fri, 14 Mar 2025 13:56:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] docs: iio: new docs for ad4052 driver
To: Jorge Marques <gastmaier@gmail.com>, Jonathan Cameron <jic23@kernel.org>
Cc: Jorge Marques <jorge.marques@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org
References: <20250306-iio-driver-ad4052-v1-0-2badad30116c@analog.com>
 <20250306-iio-driver-ad4052-v1-3-2badad30116c@analog.com>
 <CAMknhBFiZZUtCkTjQ=AVSgwqe=wCkMnqAmaTqvW_X6fm1OKuYA@mail.gmail.com>
 <e3p2r2fet2spkrxv7x76gunlivrp3vng22wktz4fkww5nkckt7@jpgne4uerr3c>
 <20250310195416.6d8c64f2@jic23-huawei>
 <c62l6jv5vgsxnbipw7jar6tikjavwybdxaurz7hkdowbamc7ic@ak2rva3ujmaa>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <c62l6jv5vgsxnbipw7jar6tikjavwybdxaurz7hkdowbamc7ic@ak2rva3ujmaa>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/14/25 1:13 PM, Jorge Marques wrote:
> On Mon, Mar 10, 2025 at 07:54:16PM +0000, Jonathan Cameron wrote:
>> On Sun, 9 Mar 2025 21:49:24 +0100
>> Jorge Marques <gastmaier@gmail.com> wrote:
>>
>>>>> +.. list-table:: Driver attributes
>>>>> +   :header-rows: 1
>>>>> +
>>>>> +   * - Attribute
>>>>> +     - Description
>>>>> +   * - ``in_voltage0_raw``
>>>>> +     - Raw ADC voltage value
>>>>> +   * - ``in_voltage0_oversampling_ratio``
>>>>> +     - Enable the device's burst averaging mode to over sample using
>>>>> +       the internal sample rate.
>>>>> +   * - ``in_voltage0_oversampling_ratio_available``
>>>>> +     - List of available oversampling values. Value 0 disable the burst
>>>>> +       averaging mode.
>>>>> +   * - ``sample_rate``
>>>>> +     - Device internal sample rate used in the burst averaging mode.
>>>>> +   * - ``sample_rate_available``
>>>>> +     - List of available sample rates.  
>>>>
>>>> Why not using the standard sampling_frequency[_available] attributes?  
>>> Because sampling_frequency is the sampling frequency for the pwm trigger
>>> during buffer readings.
>>> sample_rate is the internal device clock used during monitor and burst
>>> averaging modes.
>>
>> For an ABI that is very vague and the two use cases seem to be logically
>> quite different.
>>
>> Seems that for each trigger we have an oversampling ratio controlled number
>> of samples at this rate. It is unusual to be able to control oversampling
>> rate separately from the trigger clock, hence the lack of ABI.  If
>> we add something new for this it should something relating to oversampling.
>> oversampling_frequency perhaps.
>>
>> For monitor mode, it is tied to the sampling frequency for most devices.
>> But there are exceptions.  E.g. the max1363. Trick is to make it an event
>> ABI property and hence under events/ rather than in the root directory.
>>
>> In this case you'll have to store two values and write the appropriate
>> one into the register to suit a given operating mode.
>>
> 
> If doing buffer captures with oversampling enabled, both sampling
> frequencies have an impact:
> 
> e.g.,
> oversampling: 4
> sample_rate: 2MHz
> PWM sampling frequency: 500KHz
> 
> PWM trigger out (CNV)   |       |       |       |       |
> ADC conversion          ++++    ++++    ++++    ++++    ++++
> ADC data ready  (GP)       *       *       *       *       *
> 
> For monitor mode, it will constantly be doing conversion to check for
> threshold crossings, at the defined sample_rate.
> 
> I like the idea of having the device's sample_rate as
> conversion_frequency.

In addition to what makes sense for this chip, we should also consider what
makes sense other chips with similar features. For example, I am working on
ad7606c which has control for the oversampling burst frequency (frequency of
"+" in the diagram above). So it would make sense to have a standard attribute
that would work for both chips.

On ad4052, just because we have a single register that controls two different
functions doesn't mean we have to be limited to a single attribute that controls
that register.

So I would create the events/sampling_frequency{,_available} attributes like
Jonathan suggested for controlling the sampling frequency in monitor mode and
introduce new oversampling_burst_frequency{,_available} attributes for
controlling the conversion frequency when oversampling. When an attribute is
written, we can cache the requested value in the state struct instead of
writing it directly to the register on the ADC if we want the attributes to be
independent. Then only write the register when we enable monitor mode or when
we start reading samples with oversampling enabled.

Sure, it is more work to implement it in the driver this way, but that shouldn't
be an an excuse to do things in a way that isn't compatible with other ADCs.


