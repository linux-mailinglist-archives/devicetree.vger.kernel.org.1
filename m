Return-Path: <devicetree+bounces-260997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODX5ICGhe2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:04:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 039C9B35AD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3919530071F5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB10F3559FB;
	Thu, 29 Jan 2026 18:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSIITNmm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CF23559D8;
	Thu, 29 Jan 2026 18:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769709853; cv=none; b=n0vuom5v9ziUn7bt6L1RAbWf0agtynh1NVzYsz3G1o5HsXV4joK8HW6D2u7vA8NsrJ+R87rQ4MG4gog6xLOjUrRas+lDMPZ+hyKJSi5FpM7GhSQABz/Isqqdxrs8qrSi9aYupzG6EglibTJmckYMFM11oGv7LMMip1u4JsBzWz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769709853; c=relaxed/simple;
	bh=W81LbQ0yfMFBC66w1hQ4EGhsdxQKV/9uYC19p4OV40A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oagwlisjRggjL/oAau/BvxBUSXJ+T/cBRkc9ygnQDl9VL77Vol9OzObk/mDm9ndPIG2YFOxr186fSrbZAscOPq7wOOnkw83x3NtrvMSd3TN7gXiA5XlQ3nqn+cRt/bqp16wod+2urHhbTt3WgH0SoOlaONvomKQvb9VNKlXMLWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSIITNmm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9EEFC4CEF7;
	Thu, 29 Jan 2026 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769709853;
	bh=W81LbQ0yfMFBC66w1hQ4EGhsdxQKV/9uYC19p4OV40A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=iSIITNmm44gnuL+q0GkLgzZ+9iKEYSLa4dVl0JtoBkipqprHdWj776SudppXSccCJ
	 hkVuRDSi6EtBOZ4357nlsZXlJYnGyQuXnFeF1jSgYIorRJsJCtc0hVhqBZbM08k6p0
	 C6NmYv32sce8L+NevYVus9t4zJHjFGgAEefRYedRask46mU+7uMfGOUunJDfBvQRZI
	 dJ7t2h27h26uWx+Rsu15wvWtuf0E7y3cznFgJdhveb7PRp1ptanqafCRhUis0M9pMg
	 MnKH93nrg6Eyt2lFtHex/8rgnWWywLTjmmPFKhvKL3D4m0urha1oiwGDKi1h/25XNz
	 Nbwujz2RSE0JA==
Date: Thu, 29 Jan 2026 18:04:04 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, David Jander <david@protonic.nl>
Subject: Re: [PATCH v3 7/8] iio: dac: ds4424: convert to regmap
Message-ID: <20260129180404.68bcdf20@jic23-huawei>
In-Reply-To: <20260128153824.3679187-8-o.rempel@pengutronix.de>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
	<20260128153824.3679187-8-o.rempel@pengutronix.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260997-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:email]
X-Rspamd-Queue-Id: 039C9B35AD
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 16:38:23 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Refactor the driver to use the regmap API.
> 
> Replace the driver-specific mutex and manual shadow buffers with the
> standard regmap infrastructure for locking and caching.
> 
> This ensures the cache is populated from hardware at probe, preventing
> state desynchronization (e.g. across suspend/resume).
> 
> Define access tables to validate the different register maps of DS44x2
> and DS44x4.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Hi Oleksij

A few comments that might not overlap with what Andy already provided.

> diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
> index f340d491fcc1..9bef1c60b2eb 100644
> --- a/drivers/iio/dac/ds4424.c
> +++ b/drivers/iio/dac/ds4424.c


> +static int ds4424_init_regmap(struct i2c_client *client,
> +			      struct iio_dev *indio_dev)
>  {
>  	struct ds4424_data *data = iio_priv(indio_dev);
> +	const struct regmap_config *regmap_config;
> +	u8 vals[DS4424_MAX_DAC_CHANNELS];
>  	int ret;
>  
> -	mutex_lock(&data->lock);
> -	ret = i2c_smbus_write_byte_data(data->client,
> -			DS4424_DAC_ADDR(chan->channel), val);
> -	if (ret < 0)
> -		goto fail;
> -
> -	data->raw[chan->channel] = val;
> -
> -fail:
> -	mutex_unlock(&data->lock);
> -	return ret;
> +	if (indio_dev->num_channels == DS4424_MAX_DAC_CHANNELS)
> +		regmap_config = &ds44x4_regmap_config;
> +	else
> +		regmap_config = &ds44x2_regmap_config;
> +
> +	data->regmap = devm_regmap_init_i2c(client, regmap_config);
> +	if (IS_ERR(data->regmap))
> +		return dev_err_probe(&client->dev, PTR_ERR(data->regmap),
> +				     "Failed to init regmap.\n");
> +
> +	/*
> +	 * Prime the cache with the bootloader's configuration.
> +	 * regmap_bulk_read will automatically populate the cache with

regmap_bulk_read() 
style preferred for functions mentioned in comments.

> +	 * the values read from the hardware.
> +	 */
> +	ret = regmap_bulk_read(data->regmap, DS4424_DAC_ADDR(0), vals,

> @@ -233,10 +253,7 @@ static int ds4424_probe(struct i2c_client *client)
>  		return ret;
>  	}
>  
> -	usleep_range(1000, 1200);
> -	ret = ds4424_verify_chip(indio_dev);
> -	if (ret < 0)
> -		goto fail;
> +	fsleep(1000);

This change to fsleep() is unrelated to regmap stuff. So separate patch.

Thanks,

Jonathan

