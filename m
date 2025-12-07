Return-Path: <devicetree+bounces-245029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA70ECAB832
	for <lists+devicetree@lfdr.de>; Sun, 07 Dec 2025 18:13:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B65273004439
	for <lists+devicetree@lfdr.de>; Sun,  7 Dec 2025 17:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C66B28CF7C;
	Sun,  7 Dec 2025 17:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AEcpZAJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C29288C96
	for <devicetree@vger.kernel.org>; Sun,  7 Dec 2025 17:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765127576; cv=none; b=u3L/4GF5xDiBhR51Yo+savvKn/9NJVoJ+6LGh23o2PFsUVElI9raZuLwGEFIRtDYpf8El/cNr1LIIMcCEkFKBCnj4UL9kWTw6zaXfc1KXqL+yHDaG1PixVjDzK4PRH2jV0UQKQGP/ssEkxplFZ5wOVEARPOYihYaq78ZJIMpnsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765127576; c=relaxed/simple;
	bh=6fIJmy+yjwjMHNsDI+pH7pWh9h6/tAFr/2fxK7jhgjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qRTKmweU3+9p5a83RqF2dhntiYuO9mxt7C9AIDTUc65ZFABaegmoLkzdYOCQmWaL3YVl4hLd5L5muc00QLdoAkGBfSk5aeNy6W6apQcx59npX4l7uY1RCSjCYKGNOGpkKmZo8WOYHmZmp9gST7VGIGNXlYOT5F+SHm/ZHIrXhUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AEcpZAJg; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7c6d3676455so1756771a34.2
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 09:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765127573; x=1765732373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rz+hbdFu/Zj5TShBfYbaQ4glba7CKEYXsGsVmzlXQwE=;
        b=AEcpZAJgSzgEEmmCM9uh0mnFUULHzUbijjqHptOIWQpIK6eAqO6pYXJllnYzGBax2O
         126COpenZQIpCKdNIPr/XjQqw3WjSlNkoKkOsvwghey8gLInNsz+RHGBvNWrYmrYXLGW
         UKekfCWImvGn3IOcm/zoCf3y9u+/9K2t56NA8n/s9DwZ3SPv8fQ6lbcAz8CwuA4ycbSm
         fQZ3zxDhu/uLR3xrrfuW2MQu4D3U27lbqCHYEeQSfKwtGSwro8Geda4Rsohha19+P84p
         XRjlmOwTrOZsKQeLUe42P20a7gL0w4qdKsD+xmPJBMBSEmkLD9e7KcdZRtox4eALjs0p
         R7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765127573; x=1765732373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rz+hbdFu/Zj5TShBfYbaQ4glba7CKEYXsGsVmzlXQwE=;
        b=m+5FUy8rOf3tbUS9QG1ne0EJm8zRvPa4UcUZ3dOPnwytEQewRN+i1kZa894nxEeF6p
         gCza4A322wRgRqqbLGhL2FX3DmtU5X3yaZLU+RyFOAMgMdy4ZH/+TE0qcUME359ai3hO
         ZMffi6ueKpTMXOtzPC55wqa0RcJIepP/wZthUfSbtb/HQ+ZVZqLGHhZ/sRzEWT+N++3a
         R6b5tIGa9nzpZ7UuuFprpGo23Gt4m/KGI46BgRWyGpozyspc2/F3Aq84KpkZCA2RBIuI
         nMh4aqhjuYAOYMZaHgVf01h0ATiGBFO5y4tJX3j+0/1tpQyCfpJ/HOb8dMYOt0G+VUAD
         l5rQ==
X-Forwarded-Encrypted: i=1; AJvYcCULe7WTQ9YVB2QxH3fK9tKzYKIdxxxgErNiTU1HHp98oYnJEc56oc/syLNB0559jTyDxJxiv4aRRk2r@vger.kernel.org
X-Gm-Message-State: AOJu0YzLhVa/l9iO2lWqC89eEbdJruAL9au71gH8YJvUzzvJxGkU85G6
	6+jAJCgfn3FcWd1fzZySocRRxsExTQ4uSMdTYkuIKAWoMKswSEfEeFS95eWvYhffV8k=
X-Gm-Gg: ASbGncutLXpXQjYzRQOQo4Gc1fEFxLYxW1gfDydh5a6eOfcNZNULGQ+V5KuU4guKsQh
	fvKoenpEv+e7LvQK/exrz7qm3drJprundKWyTQ22bPZwJuZ8E9B2pquTwPJVeKigaVwdYkuDfZi
	McZL4XS245KENAdzWAwoX7az//Vj7Izc/bODoNSFfDyF+PN0agfsfxPAJKO6Lu/gDqJllNkUOLo
	c96h3CVO0nyK6PIeEBhd4Pj9C0N8pCBQCYXtLwjjec5be9aPZx/pAcxB7aTB3NmRsvvJBxFAXHn
	IMfblxftuIOTO8wXcRIJKKH5uP5TMS65xvDuNO8n9bKm5+GGJMneAmwRTapNGyfUrAH4VkCRpNd
	Tv80VYk2B2coTiku9rdI0pwshZkw8QoVJa1EzZUxfe+TZ1BXNvH6iVDUTE269snq/hZa0fA7aiN
	nKzJykmpyllUcGRLW5RPlini3QSct8xK2Mg2VNYmC1BeL1VIcD6ijAM5TuHaCY
X-Google-Smtp-Source: AGHT+IEM+RUk6l87X+4+Tlmn1OItINTU/R0vum7LolDYV7SnuylndTDMKzytRw/7CMc51VrD1vkNbA==
X-Received: by 2002:a05:6830:6b96:b0:7c7:e3b:488a with SMTP id 46e09a7af769-7c97083b2c4mr2190057a34.30.1765127573303;
        Sun, 07 Dec 2025 09:12:53 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:be99:7ce8:d200:2438? ([2600:8803:e7e4:500:be99:7ce8:d200:2438])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95acadb16sm8248687a34.21.2025.12.07.09.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 09:12:52 -0800 (PST)
Message-ID: <5b843df0-138e-4e2e-a70d-beb8a39ed85f@baylibre.com>
Date: Sun, 7 Dec 2025 11:12:51 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251204-ads1x18-v6-0-2ae4a2f8e90c@gmail.com>
 <20251204-ads1x18-v6-2-2ae4a2f8e90c@gmail.com>
 <20251206200721.5e683a83@jic23-huawei> <DES3ZWAKXXEB.2LQPMDZN4JFCB@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DES3ZWAKXXEB.2LQPMDZN4JFCB@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/7/25 10:02 AM, Kurt Borja wrote:
> On Sat Dec 6, 2025 at 3:07 PM -05, Jonathan Cameron wrote:
>> On Thu, 04 Dec 2025 13:01:28 -0500
>> Kurt Borja <kuurtb@gmail.com> wrote:
>>
>>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>>> analog-to-digital converters.
>>>
>>> These chips' MOSI pin is shared with a data-ready interrupt. Defining
>>> this interrupt in devicetree is optional, therefore we only create an
>>> IIO trigger if one is found.
>>>
>>> Handling this interrupt requires some considerations. When enabling the
>>> trigger the CS line is tied low (active), thus we need to hold
>>> spi_bus_lock() too, to avoid state corruption. This is done inside the
>>> set_trigger_state() callback, to let users use other triggers without
>>> wasting a bus lock.
>>>
>>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> 
> ...
> 
>>> +#define ADS1018_VOLT_CHAN(_index, _chan, _realbits) {				\
>>> +	.type = IIO_VOLTAGE,							\
>>> +	.channel = _chan,							\
>>> +	.scan_index = _index,							\
>>> +	.scan_type = {								\
>>> +		.sign = 's',							\
>>> +		.realbits = _realbits,						\
>>> +		.storagebits = 16,						\
>>> +		.shift = 16 - _realbits,					\
>>> +		.endianness = IIO_BE,						\
>>> +	},									\
>>> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |				\
>>> +			      BIT(IIO_CHAN_INFO_SCALE) |			\
>>> +			      BIT(IIO_CHAN_INFO_SAMP_FREQ),			\
>>
>> What motivates per channel sampling frequency?
>>
>> Given you have to write it each time you configure I guess it doesn't matter much
>> either way.
> 
> I guess making it shared by all is simpler too, so I'll go with that.
> 
Just keep in mind that if there is ever some use case we don't know
about that would require a different rate per channel, we can't change
it without breaking usespace. Once the decision is made, we are
locked in. Keeping it per-channel seems more future-proof to me.


