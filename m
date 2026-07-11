Return-Path: <devicetree+bounces-324818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R8/REddcUmpKOwMAu9opvQ
	(envelope-from <devicetree+bounces-324818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:10:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DE69B741E82
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:10:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=l0vRvDAa;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324818-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324818-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FD313050A22
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BE933ADA0;
	Sat, 11 Jul 2026 15:07:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560602D9EFB
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 15:07:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783782457; cv=none; b=s2dCzMJfzlBAEHig/uNcT4s0zFwEYqcms0V5Smn/q6kAeOEFVl4/1japKmlBvMtn1GdSo/99InYKBA4bv8uJc1dG0IMjDXGls3CukWHDCWyI6EUl5gMRh0vxEFFirSCppxpEhBirN2G6BWe+UsNXmRWb7abgpEr1LVt0gRlwX0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783782457; c=relaxed/simple;
	bh=gCnIYXS7l6OLB7PpxEY05mTYnJlHvIVhDb+6beqSHZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YoEneW3qjRvQVbdlOQs7arfJtQzBvnj4z7qmmEfpmynY3qcA/BdKVpRmM5lt8ejPv/NG1h5oHYQSLyTtCQbjWPIDu0XvG33acAfgHV40tNL9nlBKhbOdW34z+SytaaDSsB50eruHTA3gjGjuXhyc2t+xvaKrut+EEZehbit1C7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=l0vRvDAa; arc=none smtp.client-ip=209.85.160.50
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-446f87b6de1so730251fac.3
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 08:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783782453; x=1784387253; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G95LYy3SIhKCZuULQ6kHhqOCotb5tWbIJKUEos0d2CQ=;
        b=l0vRvDAaetNx2URX6tpMka5Xu0AxeFHne4N5w7LP6smNdR76ppU2ENvpGo+zI15CVu
         mf/8jeDgoJru0ODVcpVLlHAqDsDx+qTMzgnNe5xfxIgQWdg8ycUHXISkdA6hSP0ldK/6
         1LNtnO4V+aXotroRd9CmAe/0z3ufWaZtwMs5ln4xD4oTHiDQZUGKHspDxSkNPRVPvyYd
         SnWyK5oB8oXM1FKsOMBmw4s+j0ojsz4vIkKzubbSsWxySZk73j4o/lZkqZMcXPYTGgam
         7zX8kpSL+FMLMp6zsRqTXvk699ea2B7KG+oLwGHOvpwLvk8dva3n8pnYb6XWR7qX6HZx
         3DEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783782453; x=1784387253;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G95LYy3SIhKCZuULQ6kHhqOCotb5tWbIJKUEos0d2CQ=;
        b=KtvgyGxt7Z64uKX8TU6X+T5h7lop/UQxJYwd52kEF4x3eeYiC58iPcD8fwsaW1RZ7+
         CP3cWJiZAKItJIJPOeYKH0MXwV8vYmlEnQdSnkqhZ0L4l2n6z07ap3RZNG0GORXl+wcr
         oq0o4N1xZymni0rGd7nIk7zSUih1L7Wmx+EYQ5Z9e9El0byGF8akA1ioFFbMm3PJi+g8
         ooNCjTwg/55bL8a400PwhNnGHFkn6qwmEWDKI3Gw0sh9LcgsNODG9p+ytb/eMSuJqYeg
         va0CDroQymCYcGNLdW5VDn5shm/3betxNwBp37hklRefxJADRfhYwbhaFLdScDhxuImJ
         eRrA==
X-Forwarded-Encrypted: i=1; AFNElJ/Q+bxSN1kWDCpH8T/3HO4UMri+RYrTioXEyPaYCnpngmdcym5Nt/nyo/B+HheeRUBHXOHndbrmmw7g@vger.kernel.org
X-Gm-Message-State: AOJu0YwRUPj/qNcyyZBm6fBNvqOU/vJsM1rexRUmZYZO720Ct0hn0wVz
	FsjJ1drIRuEcVewiBauv3R0iIdT1jyUtvSRZBayCkkSIfweX3O64HxxFcQJuUbKgg9cOMiryjpj
	kc+eX
X-Gm-Gg: AfdE7cmuIQu3612ZLmKx3RXVidxQ5cJu2E9bmNFLAcyDSInXsrtnEyuLM/b++/MW0kG
	24l8mRcShBhwIco8qlCvaxUtCKTPWTMf0Q54d5Rno8I+hW8ybsP6EQ3ywQEkDuvlaXvm8kB0CnV
	saItvK4F9K1cjYfmsuVgD13q9fVh1yW960CxBMzvNZOxwUfzOd2pH/XeItrepCA0eOnw+pKDn/P
	y0wUJlBWgs0ok0PL8mmL777oeqxam4TllPrjLuB6LFVOgCAGbM5IZw5w7uTuAopw7enQ50cFTxb
	kC9W8ABdvuIeXb75N24F26KWWw5RY1hHb7q2r73wzsuHQrWgTi5B5L1J1hWmgRiMBlr5soK4rjB
	z9smwU+1lNdH6V9AA10Qzunr6B+KHch44ZIpdIcO2nONCtdCguDkzBqHvZx+FPYER64FbVImMa1
	8RVngbSauckDhQxAv6SvsejULq9JbSU6ITLdr+5+dSm5D/uZcoG36CN/nmhOvEYXQ=
X-Received: by 2002:a05:6808:bce:b0:497:e39e:a002 with SMTP id 5614622812f47-4a42aed5ce8mr2156666b6e.30.1783782453233;
        Sat, 11 Jul 2026 08:07:33 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:a950:74e5:81f2:8c89? ([2600:8803:e7e4:500:a950:74e5:81f2:8c89])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1b02e5abbsm8265036b6e.15.2026.07.11.08.07.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jul 2026 08:07:31 -0700 (PDT)
Message-ID: <931fe63d-d200-4b79-9e17-fa48c8de7f29@baylibre.com>
Date: Sat, 11 Jul 2026 10:07:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] iio: dac: ad5686: implement new sync() op for the
 spi bus
To: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
 linux@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <20260710-ad5686-new-features-v7-0-1bcc8c280e4d@analog.com>
 <20260710-ad5686-new-features-v7-4-1bcc8c280e4d@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260710-ad5686-new-features-v7-4-1bcc8c280e4d@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324818-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:from_mime,baylibre.com:dkim,baylibre.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE69B741E82

On 7/10/26 6:20 AM, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Use of local SPI bus data to manage a collection of SPI transfers and
> flush them to the SPI platform driver with the sync() operation. This
> allows for faster handling of multiple channel DAC writes, avoiding kernel
> overhead per spi_sync() call, which will be helpful when enabling
> triggered buffer support.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  drivers/iio/dac/ad5686-spi.c | 129 ++++++++++++++++++++++++++++++++-----------
>  drivers/iio/dac/ad5686.c     |   4 +-
>  drivers/iio/dac/ad5686.h     |   8 ++-
>  drivers/iio/dac/ad5696-i2c.c |   2 +-
>  4 files changed, 108 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/iio/dac/ad5686-spi.c b/drivers/iio/dac/ad5686-spi.c
> index d3b64b4361d5..ae74a17ba48e 100644
> --- a/drivers/iio/dac/ad5686-spi.c
> +++ b/drivers/iio/dac/ad5686-spi.c
> @@ -13,59 +13,95 @@
>  #include <linux/errno.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/module.h>
> +#include <linux/overflow.h>
>  #include <linux/spi/spi.h>
>  
>  #include <asm/byteorder.h>
>  
>  #include "ad5686.h"
>  
> +/**
> + * struct ad5686_spi_data - SPI bus specific data
> + * @msg: SPI message used for transfers
> + * @size: number of transfers currently in the message
> + * @capacity: maximum number of transfers that can be added to the message
> + * @xfers: array of SPI transfers, allocated with the provided capacity
> + */
> +struct ad5686_spi_data {
> +	struct spi_message msg;
> +	unsigned int size;
> +	unsigned int capacity;
> +	struct spi_transfer xfers[] __counted_by(capacity);
> +};
> +
>  static int ad5686_spi_write(struct ad5686_state *st,
>  			    u8 cmd, u8 addr, u16 val)
>  {
> -	struct spi_device *spi = to_spi_device(st->dev);
> -	u8 tx_len, *buf;
> +	struct ad5686_spi_data *bus_data = st->bus_data;
> +	struct spi_transfer *xfer;
>  

This could use some comments similar to the explanation in the
commit message that this function is just queuing writes to
be sent over the bus when sync() is called.

> +	if (bus_data->size >= bus_data->capacity)
> +		return -E2BIG;
> +
> +	if (bus_data->size)
> +		bus_data->xfers[bus_data->size - 1].cs_change = 1;
> +	else
> +		spi_message_init(&bus_data->msg);
> +
> +	xfer = &bus_data->xfers[bus_data->size];

Why not a local variable for st->data[bus_data->size] too so we don't
have to write it so many times?

>  	switch (st->chip_info->regmap_type) {
>  	case AD5310_REGMAP:
> -		st->data[0].d16 = cpu_to_be16(FIELD_PREP(AD5310_CMD_MSK, cmd) |
> -					      FIELD_PREP(AD5310_DATA_MSK, val));
> -		buf = &st->data[0].d8[0];
> -		tx_len = 2;
> +		st->data[bus_data->size].d16 =
> +			cpu_to_be16(FIELD_PREP(AD5310_CMD_MSK, cmd) |
> +				    FIELD_PREP(AD5310_DATA_MSK, val));
> +		*xfer = (struct spi_transfer) {
> +			.tx_buf = &st->data[bus_data->size].d16,
> +			.len = sizeof(st->data[bus_data->size].d16),
> +		};
>  		break;
>  	case AD5683_REGMAP:
> -		st->data[0].d32 = cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, cmd) |
> -					      FIELD_PREP(AD5683_DATA_MSK, val));
> -		buf = &st->data[0].d8[1];
> -		tx_len = 3;
> +		st->data[bus_data->size].d32 =
> +			cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, cmd) |
> +				    FIELD_PREP(AD5683_DATA_MSK, val));
> +		*xfer = (struct spi_transfer) {
> +			.tx_buf = &st->data[bus_data->size].d8[1],
> +			.len = sizeof(st->data[bus_data->size].d8) - 1,
> +		};
>  		break;
>  	case AD5686_REGMAP:
> -		st->data[0].d32 = cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, cmd) |
> -					      FIELD_PREP(AD5686_ADDR_MSK, addr) |
> -					      FIELD_PREP(AD5686_DATA_MSK, val));
> -		buf = &st->data[0].d8[1];
> -		tx_len = 3;
> +		st->data[bus_data->size].d32 =
> +			cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, cmd) |
> +				    FIELD_PREP(AD5686_ADDR_MSK, addr) |
> +				    FIELD_PREP(AD5686_DATA_MSK, val));
> +		*xfer = (struct spi_transfer) {
> +			.tx_buf = &st->data[bus_data->size].d8[1],
> +			.len = sizeof(st->data[bus_data->size].d8) - 1,
> +		};
>  		break;
>  	default:
>  		return -EINVAL;
>  	}
>  
> -	return spi_write(spi, buf, tx_len);
> +	spi_message_add_tail(xfer, &bus_data->msg);
> +	bus_data->size++;
> +
> +	return 0;
> +}
> +
> +static int ad5686_spi_sync(struct ad5686_state *st)
> +{
> +	struct spi_device *spi = to_spi_device(st->dev);
> +	struct ad5686_spi_data *bus_data = st->bus_data;
> +
> +	bus_data->size = 0; /* always reset, even on sync failure */
> +	return spi_sync(spi, &bus_data->msg);
>  }
>  
>  static int ad5686_spi_read(struct ad5686_state *st, u8 addr)
>  {
> -	struct spi_transfer t[] = {
> -		{
> -			.tx_buf = &st->data[0].d8[1],
> -			.len = 3,
> -			.cs_change = 1,
> -		}, {
> -			.tx_buf = &st->data[1].d8[1],
> -			.rx_buf = &st->data[2].d8[1],
> -			.len = 3,
> -		},
> -	};
>  	struct spi_device *spi = to_spi_device(st->dev);
> +	struct ad5686_spi_data *bus_data = st->bus_data;
> +	struct spi_transfer *xfer = &bus_data->xfers[0];

It would be nice if the commit message also explained why the
read() function needs to be changed to use bus_data.

>  	u8 cmd = 0;
>  	int ret;
>  
> @@ -86,8 +122,21 @@ static int ad5686_spi_read(struct ad5686_state *st, u8 addr)
>  				      FIELD_PREP(AD5686_ADDR_MSK, addr));
>  	st->data[1].d32 = cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, AD5686_CMD_NOOP));
>  
> -	ret = spi_sync_transfer(spi, t, ARRAY_SIZE(t));
> -	if (ret < 0)
> +	xfer[0] = (struct spi_transfer) {
> +		.tx_buf = &st->data[0].d8[1],
> +		.len = sizeof(st->data[0].d8) - 1,
> +		.cs_change = 1,
> +	};
> +	xfer[1] = (struct spi_transfer) {
> +		.tx_buf = &st->data[1].d8[1],
> +		.rx_buf = &st->data[2].d8[1],
> +		.len = sizeof(st->data[1].d8) - 1,
> +	};
> +
> +	spi_message_init_with_transfers(&bus_data->msg, xfer, 2);
> +
> +	ret = spi_sync(spi, &bus_data->msg);
> +	if (ret)
>  		return ret;
>  
>  	return be32_to_cpu(st->data[2].d32);

