Return-Path: <devicetree+bounces-254121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B9446D143FA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 891AA3043315
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E06F379995;
	Mon, 12 Jan 2026 17:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xHRGWeGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1985B379986
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768237278; cv=none; b=KSB0sEneyx1JXRW/Po3ThjpCFX0ouMBuzsc2ijw3OGSfAsezPErsJFEtEmTKlHoyQdvI4B9hqYu0oKJNvWpUJmRaOgiZdBi/0S3vEE5NHGJg6RHFQhaU/VM5X296fAA648R7Wb4nMlfJ12IaBJaCeQLH91a//em60t6gZawnFyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768237278; c=relaxed/simple;
	bh=Mj1Yo/+kMDe7Z3d4CNX1daTeAOa9r7LVOIZJ6VYDsaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f+UgZzCH+iTjoH5ONeT0ZCunNaxHo/uWaUhjMCPEvhOkiSItYgrw59kXJwDoEPDI71Gtw0PfosXdSb3zjG9K3mxQR93mmaQ7USrWv6rBORHIAY2xHdF0/ZmHN5znmbTtZgTdz788PVujB921knwEmTPqSdkAr/KgJ7o7nLfro6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xHRGWeGK; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-459993ff4fcso2453513b6e.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768237275; x=1768842075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=so8XntnCWLt6fJSRVtTMtZ7eRh+xR/oddnPqW1/m8DM=;
        b=xHRGWeGKZX3KgiIUrMfHbYMq9+LJ8rYw1YEQ1S79GOn6RAg0TZmC/9WocNULcU0ImX
         uy0/NnfRckmWECwpf82eJqV95yr+Agju6ATc1hELu0AyoT246dsdweEO+u/OL1jqcZeD
         8FRcJIVgNBczDhyLrhH2GxLpHzq9fLAHc9nUNZrmRbi36j64qUBR7w1v+qS+/wc9X+W8
         pw3OCpAUqVXeeXNOw16yQr4NpWbxuQXmz3cTmo3SleyIh3IRiZfAXxLkuWLsXHAgDJ8n
         etQblsostg5hi7jSdPDL5fKDgyXQly9u7Jybae85YQZ472Q91XwQKAHkwreTAn+IaJF9
         jpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768237275; x=1768842075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=so8XntnCWLt6fJSRVtTMtZ7eRh+xR/oddnPqW1/m8DM=;
        b=FOXd87GeoaWoUASghtYRR/wCj9lqC39FcZghQA6azQZBnnUHtZf0/LDlDdLqbATZDs
         SxK+1AOmbEbTf9pVF5OU8alxHqbS7BTHQSBohB3Za8jcUamSMzE/cG88AgSU6AUQyp1X
         Ack6TYm0E4EKYwFGxt8WauTXyJhkVqS4viRCa7CfN31bg6mUz8QouBIuKbeYLQITT7iM
         oKFZIb+wjbu3PakPZJOIl4G/dYKyRGV7u1j/9R9+hB7ViDO+JMkJq2HPhjOPI2IDhEd9
         sXe7r/LCznB0vs8wVlyRk7G0XRlVO+iFOGqGb88jug2Dz9ir2iOSdzmF1Zi9Ybnm2Qum
         KKbA==
X-Forwarded-Encrypted: i=1; AJvYcCWEbpMNHamb6C5kLu1dEBWguXZbwkh4PyuSev9L3N9bXbhH9eFTeEA9pFFxaqgM3Uy+r45UM166bjUT@vger.kernel.org
X-Gm-Message-State: AOJu0YwoGeEj8YE1nh4YXyM2P97nsE7KXGcLy1Aa9HQ8gt+JWTNvCoxl
	dL1Y3qrtmHgEuFhr522AxuIs8LthJ/j0xAwsnERqxLuQyiLSGA03uPKy+l9ByBCnak0=
X-Gm-Gg: AY/fxX5pf3wxC7OntQYz0E2ET4x9HXcJY9aqpflnJCWTUK0uc4OAf7O8LljsZ3kDpTH
	64QOIrzfbHicO31OrfW2VANIf/hiIYC8MkMouaZu/6w23UXkwo4D0ToCP6O1S2nvwm2PPQQnPo8
	1VMSmOoUXXKM/aLAjj3HYqaWBw5svP9tJgT11AHiiBvZMtJxEOBANisDhXwOjxdxg53RaxcBcyp
	a+Xu8wRUZlBWTQRxF+S8/yp5uwzbKzLnKbKVvCxyOHTazNaFbPKXtn3FoUzaUFRM4/yOGfSntkn
	DzP1lNdazz8kBcCIZoGIpquw53mwKNbIOw49rjKgG4dUYNfJal2zbRS1QJqbhoFdbUejehkd71z
	5JZ6PB4aZfmAsn1tO4D5cR+/AgyDJP3Dk/IRLuYcKc9vHwrvEqivs1C5d4Sq3smh61EJi45Y7zx
	AQN71riIDuvpTn+x3vySP9KTpEFTrt6j5jqWiWzgQ0Ao7aLFnxqTVey4pmsBVf
X-Google-Smtp-Source: AGHT+IHF2zSPcETdBanHmPj9qpqYedDpsO+mBiC5UofQ2hlmzyKmZYBQU3SkAtpC5qjlsIgfZvRPcg==
X-Received: by 2002:a05:6808:1311:b0:450:d693:4d2d with SMTP id 5614622812f47-45a6bebb60emr9095964b6e.33.1768237273286;
        Mon, 12 Jan 2026 09:01:13 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:6b4b:49b3:cce5:b58f? ([2600:8803:e7e4:500:6b4b:49b3:cce5:b58f])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e2b2b20sm8500125b6e.18.2026.01.12.09.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 09:01:11 -0800 (PST)
Message-ID: <2d7b3105-1bb4-40db-9a2b-dfc133b15840@baylibre.com>
Date: Mon, 12 Jan 2026 11:01:09 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/9] spi: support controllers with multiple data lanes
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
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-3-145dc5204cd8@baylibre.com>
 <aU_4RhfUlJ5R_inQ@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aU_4RhfUlJ5R_inQ@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/27/25 9:16 AM, Andy Shevchenko wrote:
> On Fri, Dec 19, 2025 at 03:32:11PM -0600, David Lechner wrote:
>> Add support for SPI controllers with multiple physical SPI data lanes.
>> (A data lane in this context means lines connected to a serializer, so a
>> controller with two data lanes would have two serializers in a single
>> controller).
>>
>> This is common in the type of controller that can be used with parallel
>> flash memories, but can be used for general purpose SPI as well.
>>
>> To indicate support, a controller just needs to set ctlr->num_data_lanes
>> to something greater than 1. Peripherals indicate which lane they are
>> connected to via device tree (ACPI support can be added if needed).
>>
>> The spi-{tx,rx}-bus-width DT properties can now be arrays. The length of
>> the array indicates the number of data lanes, and each element indicates
>> the bus width of that lane. For now, we restrict all lanes to have the
>> same bus width to keep things simple. Support for an optional controller
>> lane mapping property is also implemented.
> 
> ...
> 
>> +#define SPI_DEVICE_DATA_LANE_CNT_MAX 8
> 
>> +	/* Multi-lane SPI controller support. */
>> +	u32			tx_lane_map[SPI_DEVICE_DATA_LANE_CNT_MAX];
>> +	u32			num_tx_lanes;
>> +	u32			rx_lane_map[SPI_DEVICE_DATA_LANE_CNT_MAX];
>> +	u32			num_rx_lanes;
> 
> This adds 8*4 + 4 + 8*4 + 4 bytes to the already big enough structure for
> the rather rare use cases. Can we start doing it separately and use just
> a pointer here?
> 

There are rarely more than a few SPI devices, so the tradeoff between
making the code more complex to handle the allocation vs. making the
struct just a bit smaller does not seem worth it to me.

