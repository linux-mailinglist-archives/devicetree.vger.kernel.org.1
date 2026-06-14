Return-Path: <devicetree+bounces-311453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GoXXNPPALmrX2QQAu9opvQ
	(envelope-from <devicetree+bounces-311453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:55:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCE668159E
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:55:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=npvdJCHk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311453-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311453-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 925F6301496D
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 14:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9B23C65FD;
	Sun, 14 Jun 2026 14:54:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FED13C5836;
	Sun, 14 Jun 2026 14:54:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781448886; cv=none; b=TNIEgy2XiB1ED+1141cWGXMSdPwb+trFpspyGcLMg0sTxKujGwV/fC6zymJiEPEr4YpQCNbHMCz3KCU33Jwhsd1Rp9WsGMpLUO1Lp67EYGilfmThUrqIUQM76mGoKDhJc5mo7qgKNVn+PEpduqJ+o+B0R7O8DoP0l19OUvpDkNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781448886; c=relaxed/simple;
	bh=qzzY6h8LqddyYWPBwcIxL3r9GsVRsycqq6spKH2tM+U=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E72RdgfTZATv+oeUAufQcgPp7KEwcOKtz696fuCgYduM0se5hfJBfww3QbpKyg75lZhsqsU/e1CtJgXX6jhNzOEoNo7Bor/f9n/NNLYwq6CVc1FxSktTXd+O9KnCLfw7YlUgC1IVnMQWK4Z628YILKqCZRpyJPodsvgkposv1e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npvdJCHk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6620C1F00A3A;
	Sun, 14 Jun 2026 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781448884;
	bh=Ei+Ds3JjVfneIYj2QV09C4uT4QbM2W46FkJMShUZQ74=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=npvdJCHkIJd+CHK+6608GAhps4AyxMVigJBXIYnVuBCiQC1Kwbvv4TYQ7Njeqlwsd
	 jsgy3p1jiP99CKl2D7WcLdsiV4lqU5K7XhT/FtYMSM6fWyY8nzGCDCpxK0nZvzeXgr
	 TtaKP8PZCKeoVuGILT7wVsKs/dvcKr/FPp6BJbS/PJ4kI/DesHOeEPgljh1dK4l3Q+
	 GluMsrmA9uvSebaVrMe27gQNgLIwp2FLXMcnA5TKonSAy9Miiz1HlidJUoPqsQ8qQF
	 tOC0M40DCUamraTityQae5F5fuj2ohe173CwYibhtdWz0dldgSHSlqP4n/hvXNxXH1
	 jXcb+jCfRlDiw==
Date: Sun, 14 Jun 2026 15:54:33 +0100
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
Subject: Re: [PATCH v3 3/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
Message-ID: <20260614155433.30a11301@jic23-huawei>
In-Reply-To: <20260613190957.654798-4-jakubszczudlo40@gmail.com>
References: <20260613190957.654798-1-jakubszczudlo40@gmail.com>
	<20260613190957.654798-4-jakubszczudlo40@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:joshua.crofts1@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-311453-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CCE668159E

On Sat, 13 Jun 2026 21:09:57 +0200
Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:

> When device is suspended and it is in single mode then changing
> datarate doesn't make it actual wait for new measurement, so to
> be sure that read after change is correct functions that changes
> datarate and gain will wait for new data.

Fix should normally be the first patch in the series to make it
easier (or at least more obvious) to backport.

Also needs a fixes tag.

A few things inline,

thanks,

Jonathan

> 
> Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
> ---
>  drivers/iio/adc/ti-ads1100.c | 55 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 52 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
> index 76de2466dc53..195394665cd1 100644
> --- a/drivers/iio/adc/ti-ads1100.c
> +++ b/drivers/iio/adc/ti-ads1100.c
> @@ -123,6 +123,36 @@ static int ads1100_get_voltage_microvolts(struct ads1100_data *data)
>  	return ads1100_get_voltage_milivolts(data) * MICRO / MILLI;
>  }
>  
> +static bool ads1100_new_data_ready(struct ads1100_data *data)
> +{
> +	int ret;
> +	u8 buffer[3];
> +
> +	ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
> +	if (ret < 3) {
> +		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> +		return ret;

This is odd given it returns bool (and don't print ret = 1 or 2 here as that
is rather unexpected in an error print.).


> +	}
> +
> +	return FIELD_GET(ADS1100_CFG_ST_BSY, buffer[2]);
> +}
> +
> +static int ads1100_poll_data_ready(struct ads1100_data *data)
> +{
> +	u8 buffer[3];
> +	bool data_ready;
> +	int datarate = data->ads_config->data_rate[FIELD_GET(ADS1100_DR_MASK, data->config)];
> +   // To be sure we wait 5 times more than datarate

Left over from writing the code?  If you want a comment then /* */ and
get the indent right.

> +	unsigned long wait_time = DIV_ROUND_CLOSEST(MICRO, 5 * datarate);
> +
> +	/* To be sure that polled value will have value after config change */
> +	i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));

Check return value probably even though we don't care about the data.

> +
> +	return read_poll_timeout(ads1100_new_data_ready, data_ready,
> +				 !data_ready, wait_time,
> +				 ADS1100_MAX_DRDY_TIMEOUT, false, data);
> +}
> +
>  static int ads1100_data_bits(struct ads1100_data *data)
>  {
>  	return ads1100_data_rate_bits[FIELD_GET(ADS1100_DR_MASK, data->config)];
> @@ -165,6 +194,7 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
>  {
>  	int microvolts;
>  	int gain;
> +	int ret;
>  
>  	/* With Vdd between 2.7 and 5V, the scale is always below 1 */
>  	if (val)
> @@ -185,21 +215,40 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
>  	if (gain < BIT(0) || gain > BIT(3))
>  		return -EINVAL;
>  
> +	ret = pm_runtime_resume_and_get(&data->client->dev);
> +	if (ret < 0)
> +		return ret;

Might be worth looking at the ACQUIRE macros in pm_runtime.h as they might simpify things
a little.

> +
>  	ads1100_set_config_bits(data, ADS1100_PGA_MASK, ffs(gain) - 1);
>  
> -	return 0;
> +	ret = ads1100_poll_data_ready(data);
> +
> +	pm_runtime_put_autosuspend(&data->client->dev);
> +
> +	return ret;
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
> -		if (data->ads_config->data_rate[i] == rate)
> -			return ads1100_set_config_bits(data, ADS1100_DR_MASK,
> +		if (data->ads_config->data_rate[i] != rate)
> +			continue;
> +
> +		ret = pm_runtime_resume_and_get(&data->client->dev);
> +		if (ret < 0)
> +			return ret;
> +
> +		ads1100_set_config_bits(data, ADS1100_DR_MASK,
>  					FIELD_PREP(ADS1100_DR_MASK, i));
> +		ret = ads1100_poll_data_ready(data);
> +
> +		pm_runtime_put_autosuspend(&data->client->dev);
> +		return ret;
>  	}
>  
>  	return -EINVAL;


