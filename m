Return-Path: <devicetree+bounces-317315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6EgULZD3QmpOKgoAu9opvQ
	(envelope-from <devicetree+bounces-317315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:54:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F186DF1B2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:54:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="DDa/kiLd";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317315-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317315-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2EBC330073F3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CF03C9ED6;
	Mon, 29 Jun 2026 22:54:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D00395AF8;
	Mon, 29 Jun 2026 22:54:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782773645; cv=none; b=JWvwCw7R3jNtrD97c2tbtOwiKxHxsfcq5EvYM7idaN8YSG19zmJn1CjpIj+fwUvKFRqmtkDOXpE41GSj6p2twc2zdWvrttNY91UubG1OkZJaZshdPjbuXIDNREeLVpZBS4QuRSTo+VRm/afikUpsQ5kIAJuLYqQNSBYXhdlE4EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782773645; c=relaxed/simple;
	bh=+yWAoin/kH+b0W23IsxBaAS2XbOfKKJrnYkKX67KsJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f76qZPjNd4DzMKmZbNibldjIAkKG8BqF9c0bL6dphgsTLw70aiHULcr55L9aEJamlMOSabl7vgB8XDKGkMLH1gG5tuYQb/h2NDUiGTgxZTTfWSLS8hhPg5sbpfMiQ5mpcjkrUQfR6gcGqmdNpVWG+tX1JWAey4EJJ4jY2jtzIZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDa/kiLd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 205471F000E9;
	Mon, 29 Jun 2026 22:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782773643;
	bh=I2QbKPk3CwnTUVS4miSqxWELNt6J3FDGkRArSrKqx0Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=DDa/kiLdnbSjoiSKJxcr8Yr5MzysfR5TDmpIiKXrhluT43pnCf6R0ZW+Kpbk6Z1p2
	 /CHp4sFQibn1MqGop9QX802GActNa6ZZb7VqPUH0+E2dyXp+CU6pbsEWVs4AEqJKtN
	 MHMZNhhl3IVUB7fgWwmxrsRls2PmVwDE/PRv9caK2yYXozyZpQXl1ZdFoz9dyihni8
	 nvUHgkMbhiVdlrSilcyCRIz4oUsvw8KKn+pQugrmX6YjIf841X05HLU1jdoBtSLTSM
	 bCDYp3tKKvSWuGk8KJc5yQlk/eDCNin1+RroJ+Tm9v3Krh8hSCBB2Gsc8d1Yvy500r
	 mHO5wd6P/FMzw==
Date: Mon, 29 Jun 2026 23:53:56 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, antoniu.miclaus@analog.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com,
 duje@dujemihanovic.xyz, jishnu.prakash@oss.qualcomm.com,
 jorge.marques@analog.com, joshua.crofts1@gmail.com, krzk+dt@kernel.org,
 linusw@kernel.org, linux-kernel@vger.kernel.org,
 marcelo.schmitt@analog.com, mazziesaccount@gmail.com,
 mike.looijmans@topic.nl, nuno.sa@analog.com, robh@kernel.org,
 sakari.ailus@linux.intel.com, wens@kernel.org
Subject: Re: [PATCH v5 1/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
Message-ID: <20260629235356.6eb1346e@jic23-huawei>
In-Reply-To: <20260628194341.66752-2-jakubszczudlo40@gmail.com>
References: <20260628194341.66752-1-jakubszczudlo40@gmail.com>
	<20260628194341.66752-2-jakubszczudlo40@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317315-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,gmail.com,topic.nl,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28F186DF1B2

On Sun, 28 Jun 2026 21:43:39 +0200
Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:

> When device is suspended and it is in single mode then changing
> datarate doesn't make it actual wait for new measurement, so to
> be sure that read after change is correct functions that changes
> datarate and gain will wait for new data.
> 
> Fixes: 541880542f2b ("iio: adc: Add TI ADS1100 and ADS1000")
> Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Hi Jakub

Most of the feedback I have is actually about stuff from the v4
discussion so make sure to check that thread.

Jonathan

> @@ -123,10 +128,46 @@ static int ads1100_get_adc_result(struct ads1100_data *data, int chan, int *val)
>  	return 0;
>  }
>  
> +static bool ads1100_new_data_not_ready(struct ads1100_data *data)
> +{
> +	u8 buffer[3];
> +	int ret;
> +
> +	ret = i2c_master_recv(data->client, buffer, sizeof(buffer));

See continued discussion on v4.  The cast should be here.

> +	if (ret < 0) {

>  static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
>  {
>  	int microvolts;
>  	int gain;
> +	int ret;
>  
>  	/* With Vdd between 2.7 and 5V, the scale is always below 1 */
>  	if (val)
> @@ -135,6 +176,11 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
>  	if (!val2)
>  		return -EINVAL;
>  
> +	PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND(&data->client->dev, pm);
> +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
Please also take a look at v4 for style comment on this.
We might want to adopt what is the common pattern for general
ACQUIRE_ERR() when there is a return value we want.  It breaks
other kernel coding suggestions but was accepted as a special case.

> +	if (ret)
> +		return ret;
> +
>  	microvolts = regulator_get_voltage(data->reg_vdd);
>  	/*
>  	 * val2 is in 'micro' units, n = val2 / 1000000
> @@ -149,19 +195,31 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
>  
>  	ads1100_set_config_bits(data, ADS1100_PGA_MASK, ffs(gain) - 1);
>  
> -	return 0;
> +	return ads1100_poll_data_ready(data);
>  }
>  
>  static int ads1100_set_data_rate(struct ads1100_data *data, int chan, int rate)
>  {
>  	unsigned int i;
>  	unsigned int size;
> +	int ret;
>  
>  	size = data->supports_data_rate ? ARRAY_SIZE(ads1100_data_rate) : 1;
>  	for (i = 0; i < size; i++) {
> -		if (ads1100_data_rate[i] == rate)
> -			return ads1100_set_config_bits(data, ADS1100_DR_MASK,
> -						       FIELD_PREP(ADS1100_DR_MASK, i));
> +		if (i == size)

I'm lost. How would i == size given the loop condition?
Ah. I looked at review discussion.  This is not what Andy meant - I'll reply to
v4 thread for this. 


> +			return -EINVAL;
> +
> +		PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND(&data->client->dev, pm);
> +		ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> +		if (ret)
> +			return ret;
> +
> +		ret = ads1100_set_config_bits(data, ADS1100_DR_MASK,
> +					      FIELD_PREP(ADS1100_DR_MASK, i));
> +		if (ret)
> +			return ret;
> +
> +		return ads1100_poll_data_ready(data);
>  	}
>  
>  	return -EINVAL;


