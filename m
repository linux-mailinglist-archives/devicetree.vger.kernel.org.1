Return-Path: <devicetree+bounces-139490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3264A15E5D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 18:37:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD28B7A23DC
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 17:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40B71A0BCD;
	Sat, 18 Jan 2025 17:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1/A4p9jc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB3B18A93C
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 17:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737221842; cv=none; b=NSUyA8+7LjcjDGHwvYUxZx5wZ08ZoN4Qhu4e6TVP5lgQCPR3RRFSE+H55fWnwCJHL/QpMKApEAdjt67xd9k/uA+NZRoWzTem10uLJblodyn45ltFuMuelTjfUNQv3SidZWIdGLWbygGkmy5gDk9wsFwvXAV+iEJD7tubO26aYw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737221842; c=relaxed/simple;
	bh=5KbImRuF/5NpFTkcWvOpCTgTtv6Ro6DY1IS4jD2ffOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=WM71jpFg3vJL58jzQRzRCPC9eZvajfarjMTO4VA7UI1QAcCLShG9Q4iwmdqq7w0LygRm97E1wSY/uKA/jEwtwVZVGZMQNGc0hi0CuRCwTgbjZjSgsAG5Xv3f4sgb0ePVl4MIpUMkQQB0nK4gegn0D+bm4SNbRH4SZ23mcqVUVHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1/A4p9jc; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7231e2ac9e4so779138a34.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 09:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737221839; x=1737826639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oUF4bH1WdmTIXkLPO2OLA3O+H+PKCUbXu0Y6uzH89nY=;
        b=1/A4p9jc1j67bm9Hv5rEWJt8lozmUQf0oKyoXxqCyryNN1fyx6Wg+LF90l47MSt3yy
         ASMr98MtvZso0CXzL1/SJ29fPP2U5xPgWxXPB8emMcQ3K32YNiPjqbdOHmHalGgD0RJv
         VaOd/Hjk8MAaEFZgy6DXRwTwO666vEQ8wt0MP9OMKdhHFDH7gc0hRH3A+EFQETp+lBol
         72NhDE9RY1Mh7a2gYt99V+NZUbT1uIo3txrbjN5zeAE0TE2raoOp1yWPGyEvZARGhIi+
         uKh9hPNNq/Pgad7U64pOBOjmctukfH6qYC9uTlGu8QhdpgBNXerrFNM4FDglMOE/T+7c
         txwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737221839; x=1737826639;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUF4bH1WdmTIXkLPO2OLA3O+H+PKCUbXu0Y6uzH89nY=;
        b=aXI86j5hDt+Brw7eSdSWTYFPl1YuYSH6PQ/1lM3gy9V00ot9p3eRfNiaqC7tWlBhXw
         dPHXl1az6BJjqTUxZZ8MYgf6tLmbYzP2ph9xi0IxfKyU+5TOIQr19BgeEohOL+f2l4t8
         N6lQvV8/WfwZe3DZepd9waCOtV3YpMMxRxbzAb48ChmPoBHeyGKu6beOGvXFTo/k1KKa
         ZPk5gyaDA4FModN0rXtirRIj4P4FkXGuEOVASkJIhaa6hICtKG4Ol2BLAO3y0kdFmkFQ
         sylvQCJLy2nEcWDtdYd8lS8vj7PUTzn7z6FlKIqqUDOM7GjAf7h61Dv/WSQbWEk7N0sw
         eqrg==
X-Forwarded-Encrypted: i=1; AJvYcCXpSlc8nUMq1QiqpW0uegu8X+1HmZgrnvJD8CzV0dpx3nLQAAFXYwjzMrCb073Lgw6sx6BPaxTdjvox@vger.kernel.org
X-Gm-Message-State: AOJu0YyEhJ4vSacp5j3jn2QHbFcXaEC6SHPhPMotmIOpGLgbeKm3XwB5
	tHttoD/eVt2OcdLcN40DhPL82TcuByMTRUN2VaurkaZ1929h7d23ZTLfE4DHGAU=
X-Gm-Gg: ASbGncsP8v8v7D5W8j0xa0XsmASTUJdH7Luhrg05/3rH1feBwe02/XJtLjFgwx1bhcB
	6ixt1JK4+MN14pumlwnjYJVbRHUC32Tj902v9ymw75ZFmf2sqNeDEdSk1SHx8H4xuVHpFcRmA6J
	jzILMpsVfrp6xyS1pVDqKuehH7x0EMeztU5LjRABI3kjXbtez3WbkH7ZCY4drRGMkDwdMs3O8Gv
	8V8ul9UjnoYM9J278qM9N5LTAfP+8hq7iWxvKPEwAovSsUOZmcLo0ygSgBezo4PrKc34JpT8e+b
	YaZhWVld6RDVtftkgmUMiIZoSALzfFI=
X-Google-Smtp-Source: AGHT+IF2phH9N+7acPxIsWlMivwopcNK/+wJoDjwY5UuWgy4NyyY0G9Qpx9Eugtq3ILFnzMuo9wdYw==
X-Received: by 2002:a05:6830:d0c:b0:71d:f21b:a447 with SMTP id 46e09a7af769-7249dae0ab7mr3865118a34.17.1737221839059;
        Sat, 18 Jan 2025 09:37:19 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa36058274sm1427516eaf.40.2025.01.18.09.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jan 2025 09:37:17 -0800 (PST)
Message-ID: <d0253e41-3cab-4263-91b2-81682529f9a0@baylibre.com>
Date: Sat, 18 Jan 2025 11:37:16 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 8/8] iio: adc: ad4851: add ad485x driver
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20250117130702.22588-1-antoniu.miclaus@analog.com>
 <20250117130702.22588-9-antoniu.miclaus@analog.com>
 <a45c60fe9fff0f517032a7e9eb3881cf340a8c1e.camel@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <a45c60fe9fff0f517032a7e9eb3881cf340a8c1e.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 1/18/25 9:10 AM, Nuno Sá wrote:
> On Fri, 2025-01-17 at 15:07 +0200, Antoniu Miclaus wrote:
>> Add support for the AD485X a fully buffered, 8-channel simultaneous
>> sampling, 16/20-bit, 1 MSPS data acquisition system (DAS) with
>> differential, wide common-mode range inputs.
>>
>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>> ---

...

> ...
> 
>> +static int ad4851_read_raw(struct iio_dev *indio_dev,
>> +			   const struct iio_chan_spec *chan,
>> +			   int *val, int *val2, long info)
>> +{
>> +	struct ad4851_state *st = iio_priv(indio_dev);
>> +
>> +	switch (info) {
>> +	case IIO_CHAN_INFO_SAMP_FREQ:
>> +		*val = st->cnv_trigger_rate_hz / st->osr;
>> +		return IIO_VAL_FRACTIONAL;
>> +	case IIO_CHAN_INFO_CALIBSCALE:
>> +		return ad4851_get_calibscale(st, chan->channel, val, val2);
>> +	case IIO_CHAN_INFO_SCALE:
>> +		return ad4851_get_scale(indio_dev, chan, val, val2);
> 
> Maybe this was discussed already and I missed it but I'm a bit puzzled. Don't we
> still need OFFSET for differential channels? How do you express negative voltages?
> 
> - Nuno Sá
> 
> 

It was discussed in early revisions of the series. :-)

There was an OFFSET back then, but we removed it because chip uses twos
complement encoding for bipolar single-ended and (bipolar) differential. We
have 's' and 'u' set in the scan_type.sign in those cases. The current
implementation looks correct to me in this regard.


