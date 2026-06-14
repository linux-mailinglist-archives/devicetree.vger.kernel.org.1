Return-Path: <devicetree+bounces-311450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P7hFNme/LmqQ2QQAu9opvQ
	(envelope-from <devicetree+bounces-311450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:49:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3156C6814FE
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:49:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oyj5aKZK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311450-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311450-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E67F0300A632
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 14:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C22399364;
	Sun, 14 Jun 2026 14:49:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4187256C61;
	Sun, 14 Jun 2026 14:49:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781448548; cv=none; b=jZiPqGoFTUVGOEUbkglxcJfDUYc21gJ6RZsdbSlyEbNByHEqOm6G6UC+cqEWjNLrlCoU8lmk1miEHITv6lHeV6CdEY+A0Mpo3py2nSg9yLeK1g4nAXSnVoC/zQRsjs2p3ylXWPFLY+gTdpSEwxKTFnhIFUJNjVzyN1yX93nNj7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781448548; c=relaxed/simple;
	bh=9HNhS0Wr07mVvaWL+DZO9QP8Czcm4BKRR1KCuC0D+6U=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QB5zYEFgE2p/bjAVFGRNACKzVjiMvlmU7t1wIVClpm9QOiO6UvUEJLUuEzDVGDibWm0h6KeYqPcrHdiZOmI8VqseZbCkef6xVB2RJc4H0++uL4vbKHqtYBSeATrTLbISwRqNtVWxuOARjws7sbOVisKqV+xDcbjFnRo5fck6ICg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyj5aKZK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9BEA1F000E9;
	Sun, 14 Jun 2026 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781448547;
	bh=K181SurXMOCKnbDeZLwM6hC2gj+SqOl7Sd4if4LutGM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=oyj5aKZKEUPLlZqNuzzbUN1vEAuiP16w+GUo97O6bPXMyJYH6mpBu5TDo9z4nDO7V
	 h+OfXgEde7hnMBqDzF5HFMDBerPku1Cz4a+ToylJG2uJZ/1I5PY18/E04eglUCgbcU
	 TABbsIkqs6GjWvkWBwVxpannLAeSYrLCM4Mha0YjBZ3A/oN3BLyWDse0t325RFODO5
	 YBgEIysdIQk/+8A1cwEqpK2vV4VlPc8QHQQKhGyI5srjhwxwd2eU0mARZqaR7RsyCc
	 5C9MT2naZ1x6Nl03yTvV9dOELNs0cu1o+2daK4nsv+aHeVqFUIc50vvlVIS0qFn/gT
	 UG/KHZ3anXhbw==
Date: Sun, 14 Jun 2026 15:48:54 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, antoniu.miclaus@analog.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com,
 duje@dujemihanovic.xyz, jishnu.prakash@oss.qualcomm.com,
 jorge.marques@analog.com, krzk+dt@kernel.org, linusw@kernel.org,
 linux-kernel@vger.kernel.org, marcelo.schmitt@analog.com,
 mazziesaccount@gmail.com, mike.looijmans@topic.nl, nuno.sa@analog.com,
 robh@kernel.org, sakari.ailus@linux.intel.com, wens@kernel.org,
 joshua.crofts1@gmail.com
Subject: Re: [PATCH v3 2/3] iio: adc: Add ti-ads1110 support to ti-ads1100
 driver
Message-ID: <20260614154854.6b8ea2db@jic23-huawei>
In-Reply-To: <20260613190957.654798-3-jakubszczudlo40@gmail.com>
References: <20260613190957.654798-1-jakubszczudlo40@gmail.com>
	<20260613190957.654798-3-jakubszczudlo40@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:joshua.crofts1@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-311450-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3156C6814FE

On Sat, 13 Jun 2026 21:09:56 +0200
Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:

> Add ADS1110 support that have faster datarate than ADS1100, it also uses
> internal voltage reference of 2.048V for measurement.
> 
> Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Hi Jakub

A few minor things spotted on a fresh read,

Thanks,

Jonathan
> diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
> index aa8946063c7d..76de2466dc53 100644
> --- a/drivers/iio/adc/ti-ads1100.c
> +++ b/drivers/iio/adc/ti-ads1100.c

>  static int ads1100_data_bits(struct ads1100_data *data)
>  {
>  	return ads1100_data_rate_bits[FIELD_GET(ADS1100_DR_MASK, data->config)];
> @@ -107,9 +145,9 @@ static int ads1100_get_adc_result(struct ads1100_data *data, int chan, int *val)
>  
>  	pm_runtime_put_autosuspend(&data->client->dev);
>  
> -	if (ret < 0) {
> +	if (ret < 2) {

If ret < 0 we don't want to eat the error value. So normally these have some dance
like
	if (ret < 0) {
		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
		return ret;
	} else if (reg < 2) {
		dev_err(&data->client->dev, "Short I2C read\n");
		return -EIO;
	}

>  		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> -		return ret;
> +		return -EIO;
>  	}

...

> @@ -338,6 +371,12 @@ static int ads1100_probe(struct i2c_client *client)
>  	if (ret)
>  		return ret;
>  
> +	model = device_get_match_data(dev);
> +	if (!model)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Can't get device data from firmware\n");
> +
> +	data->ads_config = (struct ads1100_config *)model;

Why is the cast needed?   If you find yourself casting away a const
it normally implies there should be a const somewhere else.
In this case I think the pointer in the structure should simply be const.

>  	ret = ads1100_setup(data);
>  	if (ret)
>  		return dev_err_probe(dev, ret,


