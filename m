Return-Path: <devicetree+bounces-245494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C78CB1756
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9D173020CC4
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933DA8C1F;
	Wed, 10 Dec 2025 00:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="o2mVzEiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2E36FBF
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765324930; cv=none; b=ia2dJ4+Th59CkSq9m96kRt2mPmTv29Q7rc0tHIOdwZu5TFdLPg1RbYgC9+Hy+2RJTG88f0Vbe1U3NZVzQYFH0EHDhuqlpNnqPTGNztAVsEe9Jfg05c4bvYNeSRat8EyeziCKzGTuBme3PzOlMXAeuWrT4e8YEhAPTKBv2+66NcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765324930; c=relaxed/simple;
	bh=XBETjClpZtzYEHwW4MMmqqNrYdl+mNXjJ9Nw2T/r6ug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lHe5vvQDKi0S2ehAuSnviUfoLphi+bUHqlDrUd39dorwmEFG9qY0sx4BAJDa8psDDEdbl8fByPJ6e4RN9nsLXe7yv84DzTHRREN6uWgqc4Pd3gYY3yGbh4WGHMXw9M22TjA0+mHYryrjrPWQl3+J5KQe3yInvOqQAYkKZ23/3Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=o2mVzEiK; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-4557c596339so570184b6e.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 16:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765324927; x=1765929727; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KTbKv1vVkKrPnK5tPm0Gi9Pxe85hhjzLCItkx/m3ECs=;
        b=o2mVzEiKtLvParW8MIt+HyguZ8r4uGUCDt2dduQDFXE0LzWQFw0gjui02HG+4IhNkl
         409BV5nvOa059qM61XKZKJ3HYts1U5KAyamuSlkpSV9yNn4wvEQXYGy1/mum7Xhz91O/
         r9NOFOAbwP5vNLpNzyyJTdS/bzJBbL2hlTCK2jtXzSswH+ZgcZjuiSbDpKUFOAVwUqpg
         jC+ESX4b7NsnY3XGW+Y+O6d2S9jP+84wQs8eL6YXcLA0ohvAJZ8UfQuatIeurd78LrNf
         VQotZNh1RJHZD/xZY7Sq/iOzval7WeNL8woxmotj5rgRBzLzkfrkQ6D6JRNGqCUVMnqh
         NMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765324927; x=1765929727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KTbKv1vVkKrPnK5tPm0Gi9Pxe85hhjzLCItkx/m3ECs=;
        b=ZpDxFu9t6BaPO1r3FCIK5mQG1mdcT1g7v3T9gKt5Agegyz67ltI1x2hIHhIfVK1Oaz
         1vwyCY3l4iWUGliiZzTXC4V+atAJF/XqXE/ReYaHHITp8rLis/oVGjAegcKRPghjwYzC
         xxVI4rzg0qEzGzFLaumgN7bKTso4/y5/q6jJTqwUG5JW/LWRlAaDzAF3+eOBOvG0k99E
         PGm5WmVI/YFfW0TEmfIU3eelMbgwHiN0v0KrhS0EA0bSa4Sk32XNy4c0Hwape/a5ntlj
         w7lxPmEvqwglFDXqOy550LOSgLjshJr+ndgkaiU6UDE+H4HVvKmvrR3CuZi9DIVmj1qv
         7k+A==
X-Forwarded-Encrypted: i=1; AJvYcCXGrkvK0i534iABO7nohdVEDPazoXLduOdDz+QGoitgKTde9Re2DYEnV+kVv1qV8PoLSf3Y4C8VIKwE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn49J0hCjwsAl++s+QbZOIwRjHysY2xSXno2kXnJulPEJFqbwC
	XhuopWFm7p4fNe3BoG7FikyKosKSPJuXHeqs9JsmKA8SDISdDgquu58TsvCPzcHbMUY=
X-Gm-Gg: ASbGncsmDv7lxABxZU0gaKEm2O08RIZEOcfgjGx2yY1iU9FiYssRMFVr/zoc5PAboAm
	wgLOEDgsF3Jgn/M7Edl0FtskuiG6szrUkHA8Bf0dAdhf6E87SyRzxSe8cDdFboc/DHNEk8rYFU7
	pu721K2sXyf37yCxkEL/x4OBlGAyzPbJXF8P86v9jC1skyO4U+j16mpoFjM1fyZz6TeoDVfE0xD
	uWfSHTHq0VZCQ45XZnKleVoCRNCPE+fLM4XghBNYsqBG8t+Y7/txJOK4umfXMKe1F1pUOrsfYsW
	MxFHlvS/EuL1NUWf7BMYxsIQGEMtOtvjQteCULoXlY0Va1YYjHsmLmqQtQJXyjTy2kHvEC6lQr2
	He/jLXyzbsnpyH0MZxj3JAc1I1HIXeobdViotxdmA8IQfATb8+Dh6NZJxqyRjwDkawDsqvfiOOY
	Qt0kofyIVuW2ggypANha5YHnmrIq345+YtoCJjwdsb6hZe25TcrtVpGdaV8Eci
X-Google-Smtp-Source: AGHT+IGelHO7cGCcA6PiEhLrrcOt3bTb3YgxI0Xmgu0mriW2zt4R+0Laragye1p41eo80Tns9fCO7g==
X-Received: by 2002:a05:6808:3989:b0:450:d773:ad1e with SMTP id 5614622812f47-45586960a3bmr393107b6e.66.1765324927565;
        Tue, 09 Dec 2025 16:02:07 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:1635:b560:bfdd:f758? ([2600:8803:e7e4:500:1635:b560:bfdd:f758])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4537f6bc9d5sm8556424b6e.0.2025.12.09.16.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 16:02:05 -0800 (PST)
Message-ID: <2aca99a6-9541-4cd4-933e-815ceaabe365@baylibre.com>
Date: Tue, 9 Dec 2025 18:02:03 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/7] spi: axi-spi-engine: support
 SPI_MULTI_LANE_MODE_STRIPE
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
 <20251201-spi-add-multi-bus-support-v3-4-34e05791de83@baylibre.com>
 <aS79ex5Konr_EeMA@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aS79ex5Konr_EeMA@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/2/25 8:53 AM, Andy Shevchenko wrote:
> On Mon, Dec 01, 2025 at 08:20:42PM -0600, David Lechner wrote:
>> Add support for SPI_MULTI_LANE_MODE_STRIPE to the AXI SPI engine driver.
>>
>> The v2.0.0 version of the AXI SPI Engine IP core supports multiple
>> lanes. This can be used with SPI_MULTI_LANE_MODE_STRIPE to support
>> reading from simultaneous sampling ADCs that have a separate SDO line
>> for each analog channel. This allows reading all channels at the same
>> time to increase throughput.
> 
> ...
> 
>> +static u8 spi_engine_all_lane_flags(struct spi_device *spi)
>> +{
>> +	u8 flags = 0;
> 
>> +	int i;
> 
> Why signed?

Because it is conventional.

> 
>> +	for (i = 0; i < spi->num_data_lanes; i++)
>> +		flags |= BIT(spi->data_lanes[i]);
>> +
>> +	return flags;
>> +}
> 
> ...
> 
>>  static void spi_engine_gen_xfer(struct spi_engine_program *p, bool dry,
>> -	struct spi_transfer *xfer)
>> +				struct spi_transfer *xfer, u32 num_lanes)
> 
> Side note: this bool parameter makes code harder to follow. And now we have
> pointers and integers/booleans to be interleaved. Perhaps reconsider the order
> of the parameters (and ideally get rid of boolean by making two distinct
> functions?).

There would be significant code duplication if we split this
which would make it error prone.

Perhaps a bit unusual parameter ordering according to data type,
but they are grouped logically, so I think it is OK. `dry` affects
what is written to `p` and `num_lanes` supplements `xfer`.

> 
> ...
> 
>>  	version = readl(spi_engine->base + ADI_AXI_REG_VERSION);
>> -	if (ADI_AXI_PCORE_VER_MAJOR(version) != 1) {
>> +	if (ADI_AXI_PCORE_VER_MAJOR(version) > 2) {
> 
> But this includes v0 as well!

I think it is OK. There was never a version 0 released, nor
is one expected.

> 
>>  	}
> 


