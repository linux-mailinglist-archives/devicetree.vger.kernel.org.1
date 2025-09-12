Return-Path: <devicetree+bounces-216355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E655BB547B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CABDA168C90
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B80211A09;
	Fri, 12 Sep 2025 09:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cFniJmmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B152638AF
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757669454; cv=none; b=aeLgyw/MZGpMo1bdfg5PSZHLSeFRZK2YW1LvEwekKDyrMPXTRx06ptzWDygSBWdQmaXwQgXhYGHxMsXHjDdVyiC5axRi6HzhdjHEnYVkJGElzEZPJKGTrTO783toF9ES5Eg3jzCOYKTQewNi/p4mlFOCGomh0u79NAclRz1+6pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757669454; c=relaxed/simple;
	bh=hlFmZz3SH60ObFcUVFihSDYbAv89r8HSRjShTlrdIsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mZyv4Hu8sE15L3XQkJWRK7UO8IEbWSbEtmw4PRbZ6OwilrIjkeKCD9S9l1P/s2TcpPwd4d8GLtWfMwZACM9eepsrP/FcFOiZNtgEIJ/0Esp/xdoPizPVVD57ZnrccMBB15cwFiWMI16xQuWtUJj2MHPXGpp+piJgpplrH7M6ks0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cFniJmmQ; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-33c9efd65eeso16428331fa.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757669449; x=1758274249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1aIzMN9zlpmsGg+d+g9UzqtnL/LipD0ZeBNikSa1LIw=;
        b=cFniJmmQ5Lxb0hkNPsbrIInytWJhan/X+PvCKECdZYZqKMOYXYupkd556Pfn+mWgZb
         rRW1F8kYDS0Vro6110NS4BHxY6ZEndURgbDHuRa1SxVxY68+ZVJPYREbgvw4cN92ObMV
         /K9hojIc5wxhKSVvW19VVo9/RhhBTb5q6OplQ+bFHWYo4/j3TSCpCMn6TrnBjiH9Sapx
         LzPZr9627aDiHobtH1lAFebqVqCDXDiq59qv0hVR0myO+ZGsOG4ax8X4OqpohyEC9lO/
         kNH33uE1lfE/71zASTecwEA3y8iXW0eTXED/mXPYN79+FCWDxbmqfSaQOg2KKdtnzDtA
         b8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757669449; x=1758274249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1aIzMN9zlpmsGg+d+g9UzqtnL/LipD0ZeBNikSa1LIw=;
        b=kRwys4JLnIwqZHV0e9eKUXc0Y3tRg1EI8xvMz4U8z8Gw2iYczD4aIzUYWj6+Kd0glP
         n+/m88HQobxbVezz9TxxQ7Oufh5ZboU4sbPp9/gNJ3tO8x31nqHNDc9300atEKEUDljo
         lOyjgmQ941JBZ9MWunNT7CJAIvPVSHNPogMr3kqXWmRg4vIZxCLEe3+caAWz4RZuAKow
         4JoqeUE/se02rzoTzsiml7PnLavXAlVUJUgJAm4CO2cMZd+51rTr7K1xHsk1jV8z9fkm
         6wGJiXfzOkAYzByPA5KA9pYl8TZTpZE8Nx/aR09fetWhfI0HmSPsJU6bZ+f3HzykLate
         +mbw==
X-Forwarded-Encrypted: i=1; AJvYcCUA0mk7JVNeAUbBY3RGONo8/aSV6eMSuVDbJafMTJiRHoiKRzUA1psco46kM5wfjZA6n1xlqPDXlMo/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7bBoHGdBQBtYGLYEQgIXJu4qa+Wy6Bve3BFd/yDh9sXGkaAs6
	rr0erX/4YMoK9+RX+hsHq75Ap6PZV/4HNCOcYDiIeSO1GbfZRtyNedqC
X-Gm-Gg: ASbGncudCosFAmMb2kk9y4S7mF3F+c49+QPctJSwYcBWTw5TaYkAem75TWuji2sfe1O
	4LhCmiJN1FqgwRSpdtC87RitJwfCiMaot5GeqbiB6V+Pdww+cxeskP9d9V++i0SNr3UXp1F1L7G
	ftoQ0PxfzYjpW73k3+kVJQQ9zeRji+N9Ex/15nP7N4Ka+puX7Wr9+60TA2pgX1hKBP+luFd530D
	lIEPePU8mVBFqRcYz5l6m8zCctv+uQ+k0JPHHSbTEhfdzAwYLtNFHGeGImMftW3Xgj7d5fzvwVO
	LzDl6kMadupd4B7ld7ZjaHr8TmpYTgcdlhL4JuuqKQbb+iPTab3uX4uQilZ1jj+5YT7GNIDO4g1
	sVzgxm8sRW7XAECKrvhf25oK877aLjRST
X-Google-Smtp-Source: AGHT+IHZhvTFouH7z71/PdL2eJrkzX4Jjes9ijVKOIiaqvUL1DLMmrokCFicYDILisJ+kbtNo+bM5Q==
X-Received: by 2002:a2e:a231:0:b0:337:f84a:6ded with SMTP id 38308e7fff4ca-3514165afb4mr5768781fa.40.1757669448935;
        Fri, 12 Sep 2025 02:30:48 -0700 (PDT)
Received: from [10.38.18.54] ([213.255.186.37])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1b491f41sm7463431fa.57.2025.09.12.02.30.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:30:48 -0700 (PDT)
Message-ID: <e29e5003-37bb-4ad7-a64a-45e6f9f1c6d1@gmail.com>
Date: Fri, 12 Sep 2025 12:30:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: David Lechner <dlechner@baylibre.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250910-bd79112-v4-0-f82f43746a8c@gmail.com>
 <20250910-bd79112-v4-2-f82f43746a8c@gmail.com>
 <92306c8a-a2ec-4a43-80d7-c8e0c1cc0ee1@baylibre.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <92306c8a-a2ec-4a43-80d7-c8e0c1cc0ee1@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2025 00:20, David Lechner wrote:
> On 9/10/25 6:24 AM, Matti Vaittinen wrote:
> 
> ...
> 
>> diff --git a/drivers/iio/adc/rohm-bd79112.c b/drivers/iio/adc/rohm-bd79112.c
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..a2a3affe2c6dc86a237a164139c27ec66dc9d131
>> --- /dev/null
>> +++ b/drivers/iio/adc/rohm-bd79112.c
>> @@ -0,0 +1,553 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * ROHM ADC driver for BD79112 signal monitoring hub.
>> + * Copyright (C) 2025, ROHM Semiconductor.
>> + *
>> + * SPI communication derived from ad7923.c and ti-ads7950.c
> 
> Really? I wrote the ti-ads7950 driver and I can't say I see the
> resemblance. ;-)

Really. :) I picked the idea of populating the transfers in the probe 
and using buffers from the driver-data, from these drivers :) Well, I 
admit it ended up being a bit different - but the starting point was 
those drivers ;)

> 
>> + */
>> +
> 
> ...
> 
>> +static int bd79112_get_gpio_pins(const struct iio_chan_spec *cs, int num_channels)
> 
> u32 would make more sense when dealing with bit flags.
> 
>> +{
>> +	int i, gpio_channels;
> 
> same for the local variable.

Meh. Ok :)

> ...
> 
>> +static int bd79112_probe(struct spi_device *spi)
>> +{
> 
> ...
> 
>> +
>> +	data->read_xfer[0].tx_buf = &data->read_tx[0];
>> +	data->read_xfer[0].len = sizeof(data->read_tx);
>> +	data->read_xfer[0].cs_change = 1;
>> +	data->read_xfer[1].rx_buf = &data->read_rx;
>> +	data->read_xfer[1].len = sizeof(data->read_rx);
>> +	spi_message_init_with_transfers(&data->read_msg, data->read_xfer, 2);
>> +
>> +	data->write_xfer.tx_buf = &data->reg_write_tx[0];
>> +	data->write_xfer.len = sizeof(data->reg_write_tx);
>> +	spi_message_init_with_transfers(&data->write_msg, &data->write_xfer, 1);
> 
> If these messages never change (other than the data in the buffers), you can
> call devm_spi_optimize_message() here on each message to get reduced CPU usage
> on every SPI message for free.
> 

Thanks!

Yours,
	-- Matti


