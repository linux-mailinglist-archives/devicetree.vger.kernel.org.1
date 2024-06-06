Return-Path: <devicetree+bounces-73283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A81168FE79F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:22:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06C70B2466E
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8734196C8C;
	Thu,  6 Jun 2024 13:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Oci2NvsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897C2195FF3
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717680067; cv=none; b=QutiDA9jVeHjoe92Qkxieuokm+w0u5boPHGezMTzUFPkXljAFiJCvs4Z95Q4cgG/GpZKHwz/1SXLXP7Sc+rfu/7e4Rx/mQbkKnPYK6FTSOAk//ubTsag4sFJuAX9OwvGOFb96b4ykn4U4jSxJMzYy0HahfDy9JYfwMjTZbfPbNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717680067; c=relaxed/simple;
	bh=vcwYIMHxTb2dE/MsvyezaxrbtXwmbsQKcmW7F7gPmxI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MUtuul/cnv/Eqcm3+gqbtAvp6GyXkpI3cFHeGSezwtb1MZGHwoA/T7NEeHM44TejIaMbYuCdn9+7RnEKnvYk9fb4HbazMH8nqJL7MSziI2RlMYsys2KjxDJDy6AyY9l7OHQ06gG8z3Bd7fxPkrMn8v68u9higbZE8uXHeFvLFbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Oci2NvsD; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5ba6c41e1a7so527897eaf.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 06:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717680063; x=1718284863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T7E3Qk3YVEo6lKz6EJLkObsOwASGr/j9qGoSIHevJvA=;
        b=Oci2NvsDFdw8o3041wdj/7T9KbvHw8mHvQg1nb8Q1oKMpepIsMZBfe6118jt8/J5Of
         1l5hf3zUOEeks6mqA9yQ2fApMZ6AV1hBZbO8aqLTa5WbrqR5ilZdEuJlTLHT7xNEe353
         sIO6WP/li7zeasa+8ennaIDJHDBj4pMLj6W6Jxis+elTHm9otxY3qFo9XFtexHKqi+iq
         sIgoa0cddEodmWs9TCTP1O2JGb4Duyyu+fyLmzoj0yCfsBMwZ9IpfzGVBfZtwAo5710X
         FAAtb28bZ7se4OHeEvOnMhUlzDBka8ITlXtK3R67prpk5wgxJJ5L+TUFeq5sD2VRncOF
         rbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717680063; x=1718284863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T7E3Qk3YVEo6lKz6EJLkObsOwASGr/j9qGoSIHevJvA=;
        b=F6KoKlU2LO6i0LPbYpT0Z3+t+MqzR/6n02VKhHJsIU7oShmH1ZtA+R+3PtuHCgZX6o
         V7XnF4fBHCXCUu2jc9X8EPLVN2JYQBK2C3AxKBTlThJvUFB7EMI4ya5XoCOvFza/awdf
         r2rfE0fJllLbh/07QyJbTGkMGpcZnJyJ6Chi6DeLq9dhSrSAf3Xk6GB2GiKS06gSJ5yP
         646ZF/bJ6Xy1M857nQmB5mP3fkLPBX+vbhvSV7tblq/+w+korL8Q8i7QTE5vKvbrKB5s
         x7tUO/vnOBTeVpSdNkAuK1boRk/d54W5+myrtd4eZEc+AgJakWR0XdoxC4kqgto087tp
         ZsHw==
X-Forwarded-Encrypted: i=1; AJvYcCVbbnFIu1H4cf9QddDDfXrm3bxX3mS2BQ+AlFZ6XfIlFQKApysCxDKI6wQnOVNEC/hzrEIqZtSMdS50REByNs3HIj0d7EDjakewuA==
X-Gm-Message-State: AOJu0Yy4t8XwOPKMeXYfwWUmwsrFvEb3SRZv0PVYSeutXcAx5eRX2PuS
	HslZjANG6rNh7yVVMMzIv+FfIjcb+XWaqw753WHGMxRchC/JPADthtRWYYWATag=
X-Google-Smtp-Source: AGHT+IG8U+ywX8uuLYXRHCH27Ty0D5fUV4g01fFzaieR7PcUJykpIGiQC6cKpY2D39Db3CDSWvjo2Q==
X-Received: by 2002:a05:6870:96a4:b0:24c:63b2:8a18 with SMTP id 586e51a60fabf-25121c7e095mr6425771fac.7.1717680063627;
        Thu, 06 Jun 2024 06:21:03 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25447e299f6sm356435fac.23.2024.06.06.06.21.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 06:21:03 -0700 (PDT)
Message-ID: <f8ce5dc8-ed68-4f04-af3a-187bf0e4a3b3@baylibre.com>
Date: Thu, 6 Jun 2024 08:21:02 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] spi: spi-axi-spi-engine: Add support for MOSI idle
 configuration
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>, broonie@kernel.org,
 lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nuno.sa@analog.com, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1717539384.git.marcelo.schmitt@analog.com>
 <a6b00e84325bbe44919cc49509e837f2555367d0.1717539384.git.marcelo.schmitt@analog.com>
 <ed4fe3de-726b-4eba-a12a-d2f7b1da26d1@baylibre.com>
 <0e18b3aa83a62103b0f06ee516193c03f80abae9.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <0e18b3aa83a62103b0f06ee516193c03f80abae9.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/6/24 1:51 AM, Nuno Sá wrote:
> On Wed, 2024-06-05 at 12:03 -0500, David Lechner wrote:
>> On 6/4/24 5:43 PM, Marcelo Schmitt wrote:
>>> Implement MOSI idle low and MOSI idle high to better support peripherals
>>> that request specific MOSI behavior.
>>>
>>> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
>>> ---
>>>  drivers/spi/spi-axi-spi-engine.c | 8 +++++++-
>>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-
>>> engine.c
>>> index 0aa31d745734..549f03069d0e 100644
>>> --- a/drivers/spi/spi-axi-spi-engine.c
>>> +++ b/drivers/spi/spi-axi-spi-engine.c
>>> @@ -41,6 +41,7 @@
>>>  #define SPI_ENGINE_CONFIG_CPHA			BIT(0)
>>>  #define SPI_ENGINE_CONFIG_CPOL			BIT(1)
>>>  #define SPI_ENGINE_CONFIG_3WIRE			BIT(2)
>>> +#define SPI_ENGINE_CONFIG_SDO_IDLE		BIT(3)
>>>  
>>>  #define SPI_ENGINE_INST_TRANSFER		0x0
>>>  #define SPI_ENGINE_INST_ASSERT			0x1
>>> @@ -132,6 +133,10 @@ static unsigned int spi_engine_get_config(struct
>>> spi_device *spi)
>>>  		config |= SPI_ENGINE_CONFIG_CPHA;
>>>  	if (spi->mode & SPI_3WIRE)
>>>  		config |= SPI_ENGINE_CONFIG_3WIRE;
>>> +	if (spi->mode & SPI_MOSI_IDLE_HIGH)
>>> +		config |= SPI_ENGINE_CONFIG_SDO_IDLE;
>>> +	if (spi->mode & SPI_MOSI_IDLE_LOW)
>>> +		config &= ~SPI_ENGINE_CONFIG_SDO_IDLE;
>>>  
>>>  	return config;
>>>  }
>>> @@ -645,7 +650,8 @@ static int spi_engine_probe(struct platform_device
>>> *pdev)
>>>  		return ret;
>>>  
>>>  	host->dev.of_node = pdev->dev.of_node;
>>> -	host->mode_bits = SPI_CPOL | SPI_CPHA | SPI_3WIRE;
>>> +	host->mode_bits = SPI_CPOL | SPI_CPHA | SPI_3WIRE |
>>> SPI_MOSI_IDLE_LOW
>>> +			  | SPI_MOSI_IDLE_HIGH;
>>>  	host->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 32);
>>>  	host->max_speed_hz = clk_get_rate(spi_engine->ref_clk) / 2;
>>>  	host->transfer_one_message = spi_engine_transfer_one_message;
>>
>> I think we need a version check instead of setting the flags unconditionally
>> here since older versions of the AXI SPI Engine won't support this feature.
> 
> Oh, was not aware of that... Then, we definitely need to do that. Marcelo, only
> add my r-b tag with the version change in place.
> 
> - Nuno Sá

Actually, looking at [1], it looks like this could be a compile-time
flag when the HDL is built. If it stays that way, then we would need
a way to read that flag from a register instead of using the version.


[1]: https://github.com/analogdevicesinc/hdl/pull/1320#issuecomment-2145744521

