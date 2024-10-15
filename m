Return-Path: <devicetree+bounces-111507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C5E99F0FD
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0DB3284174
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053F11B3948;
	Tue, 15 Oct 2024 15:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="T9RddM7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BF234CDD
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 15:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729005815; cv=none; b=CLbl4x2z22yGDx6IzgMuwQ7LwWeYyjQuzKC8LnSAG2JcjH7vDBNgNCF5/Yld7/Axv8W/TgZwlCg4ATScoyqxFgxg8W7Pu5lyo1BTolOCvPwpNKg0ceE7vy40/60MNdioxY02gnZP1NX4ehL3yQwvs25fP42AYBNRBCK6O/Ultno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729005815; c=relaxed/simple;
	bh=YLETMCDPrnbAET6tAjvlHDpmXTqmTEWt/yDwrStkzVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tkajd1iq1wMfGUJbrGsUk2goLX/i0I0zQoRvLMsgsME9QeDfwsB+3emP6I9EM6e4sSqSX6Me1OhMRS5P2ywjsHekTbC854OcvPY586AAiRGj9deSCUpLn2hD8fzEpFzBecmwJfvQWDFUeVUtyD42+/+Zh+JAbeQVys+HK2LN7LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=T9RddM7L; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5e8010de1caso4259958eaf.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729005813; x=1729610613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K0T5S0U2mPCro6JinRA7I6fZ7DbqCto7AxePCPF7/DM=;
        b=T9RddM7LeDdsz8lsQDQ2GTSyzyfZzyR/8dGuG/mcq3pls7Y/MdESyhITdB+N7YmGB+
         hcGMBrXS8kVIIB/OeTAvLCRZhjDFICJXV7n6jipY1R8iuUUVRE+o3ZlJ/xbUYaxZJ1qH
         O7vLzYTRUPosAW2b9Q4Zpaf+qSeNhbhq4KrGQmxKaukoX4tbewgYvZTm8HzdSDNyj6t+
         QBldyNZa2O4MNc6oGJzvCSaYW8RZakRIv94BQwvmpYhlQBtXEuOmoLn1Fo/AFgBB0zUm
         s3Ig1vU+6RT48+5VLQBNZlBsxY4VZ5gut4fR0H+T1wbCGHuFj1O+r+NwtqTorNIeEQt5
         sqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729005813; x=1729610613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K0T5S0U2mPCro6JinRA7I6fZ7DbqCto7AxePCPF7/DM=;
        b=atkcNGIgnmWo+FdNT4TRBSgPlMgV1r5kPiGM95/gme4qOYanaCNaP6hQ/DasAG0KgZ
         +eFIlIr9B1nmFs0AmKLEjhhBoVLXVTFoC5Df6lRCyo8j9LsnJ9GtJSpDoNjYpUgvk9gF
         OnFxsLKgUovZcjpi2Eu49qBHYuZdoQzjXCPghEBrlInmPwr36mMWK0e1Bqwh98kcvhdN
         umd3hbi36HQemziIpdfHdkp9Wzr4FnRBniOKzhctFAGa9Q5efAlRPR9GLX/gyp0iiFO6
         OWYl8MlztJG/9UtMcX71VZOPyzIcElfukkA8UowXJ047t01q45v8B32toSWjlIv7uy1r
         9kyg==
X-Forwarded-Encrypted: i=1; AJvYcCUJrMKQZd6BCXaq8uOVol9in174vFcMrKMZQM+q+NMwzuIlG8dV9QYRfqRLnxhNnp5MpzyH9tmPuVhE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+t9qs57PEg9zd/XR7nZo3GS0W1wVIZfAYugGoeBoz6LfuTMPu
	SighwhMtufQKks49ox5Kdsf5ayZb6U7bszfDOtmKdVvBcO+1J8NMGeLGr/+f1iA=
X-Google-Smtp-Source: AGHT+IE+ztTemHRDv5T9g+8WcFSapBJ9MnfIGzQwQibwb9DF23REaXpaFJYBY+2Y98oumU2RA3T0Aw==
X-Received: by 2002:a05:6808:30aa:b0:3e2:9e00:6094 with SMTP id 5614622812f47-3e5f0263af9mr1063607b6e.4.1729005812891;
        Tue, 15 Oct 2024 08:23:32 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e5e856205fsm319390b6e.11.2024.10.15.08.23.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 08:23:32 -0700 (PDT)
Message-ID: <23dafe91-2733-4ed6-901a-d324749d11b2@baylibre.com>
Date: Tue, 15 Oct 2024 10:23:30 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/8] iio: dac: ad3552r: add high-speed platform driver
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Angelo Dureghello <adureghello@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-7-eeef0c1e0e56@baylibre.com>
 <c3d55f78-5a54-49f8-b6a1-4ed0f24f8666@baylibre.com>
 <8642bdb546c6046e8fe1d20ef4c93e70c95c6f71.camel@gmail.com>
 <2815c8b0-e2ad-47cb-b5aa-00297cf57899@baylibre.com>
 <781cf5fa075e13260e1b20f5acadb70bd8107cd0.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <781cf5fa075e13260e1b20f5acadb70bd8107cd0.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/15/24 10:00 AM, Nuno Sá wrote:
> On Tue, 2024-10-15 at 09:38 -0500, David Lechner wrote:
>> On 10/15/24 1:37 AM, Nuno Sá wrote:
>>> On Mon, 2024-10-14 at 16:15 -0500, David Lechner wrote:
>>>> On 10/14/24 5:08 AM, Angelo Dureghello wrote:
>>>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>>>
>>>>> Add High Speed ad3552r platform driver.
>>>>>
>>>>
>>>> ...
>>>>
>>>>> +static int ad3552r_hs_read_raw(struct iio_dev *indio_dev,
>>>>> +			       struct iio_chan_spec const *chan,
>>>>> +			       int *val, int *val2, long mask)
>>>>> +{
>>>>> +	struct ad3552r_hs_state *st = iio_priv(indio_dev);
>>>>> +	int ret;
>>>>> +
>>>>> +	switch (mask) {
>>>>> +	case IIO_CHAN_INFO_SAMP_FREQ: {
>>>>> +		int sclk;
>>>>> +
>>>>> +		ret = iio_backend_read_raw(st->back, chan, &sclk, 0,
>>>>> +					   IIO_CHAN_INFO_FREQUENCY);
>>>>
>>>> FWIW, this still seems like an odd way to get the stream mode SCLK
>>>> rate from the backend to me. How does the backend know that we want
>>>> the stream mode clock rate and not some other frequency value? 
>>>
>>> In this case the backend has a dedicated compatible so sky is the limit :). But
>>> yeah,
>>> I'm also not extremely happy with IIO_CHAN_INFO_FREQUENCY. But what do you have
>>> in
>>> mind? Using the sampling frequency INFO or a dedicated OP?
>>>
>>
>> It think it would be most straightforward to have something
>> like a iio_backend_get_data_stream_clock_rate() callback since
>> that is what we are getting.
> 
> Hmmm, what about exporting an actual clock? Maybe it's overkill but from a
> correctness point of view, seems what we should actually do :)

Does seem overkill to me. I wouldn't do it.

> 
>>
>> Re: the other recent discussions about getting too many
>> callbacks. Instead of a dedicated function like this, we
>> could make a set of generic functions:
>>
>> iio_backend_{g,s}et_property_{s,u}(8, 16, 32, 64}()
>>
> 
> Hmm interesting approach. I don't dislike it. Kind of a generic getter/setter thingy.
> We could then still have optional inline helpers that would call the generic
> functions with the proper enum value.
> 
>> that take an enum parameter for the property. This way,
>> for each new property, we just have to add an enum member
>> instead of creating a get/set callback pair.
>>
>> Unrelated to this particular case, but taking the idea even
>> farther, we could also do the same with enable/disable
>> functions. We talked before about cutting the number of
>> callbacks in half by using a bool parameter instead of
>> separate enable/disable callbacks. But we could cut it down
>> even more by having an enum parameter for the thing we are
>> enabling/disabling.
> 
> If we don't get too strict about types it could even fall into the above u8 category.
> 
> Instead of lot of new simple ops we just grow an enum.

Sure. For that matter, maybe try to just stick with 32-bit
for everything to keep it simple. Probably will eventually
need 64-bit for some things, but might be able to get away
with avoiding 8 and 16-bit.

> 
> - Nuno Sá
> 


