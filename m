Return-Path: <devicetree+bounces-325154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fvUOG88+VGokjwMAu9opvQ
	(envelope-from <devicetree+bounces-325154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 03:26:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E2926746722
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 03:26:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Y6xHFihg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325154-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325154-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 583D230022E5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 01:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B3D242D72;
	Mon, 13 Jul 2026 01:26:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70397126C03;
	Mon, 13 Jul 2026 01:26:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783905995; cv=none; b=KF0QGyn00VhuLUXxQooMxeXUTtuR/i9fv9Nq39AlQ7mgf7hAENhAuEa9hB7w146LVyYXxuiOXwFTRMFWlHgbW6bQzXrWo3sDL8VyBLh4fgExD4NXvs4dcn3UqYlIqaTHsUC/jx1GtlCzodeL04ld7LWK7KtGRjXB9S9JNwqSM1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783905995; c=relaxed/simple;
	bh=cT/VF6/piZ9t2SCzT7G1IRXvne1tf8KzJF1TA+FDa4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F08yPOWWPiK3yFH1C9RprBduni8jX7uZ7A6AUaYrGdvc5VEB7rPWDXcqVcBCXS1YfYIPBUHQ02tQ/vdnCBDvWeZhww5sVsKirLKMUNZVx98yBVon08kIZgXu7p3sdYO897MmhWNwDUr2RckZvYDkQ4ckjk9AN9MaTbE/pTaPPSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6xHFihg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048801F000E9;
	Mon, 13 Jul 2026 01:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783905994;
	bh=1peA/jrySJvGcIngQ4ts80LgfAFiYhMLIVMQ1uAjAGs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Y6xHFihgfLTR2Ic+s14Fmh5BmUGAgnF6jVjZAs0ENFeG18jcr5agAEMj4rYMwWBhM
	 Hjk1Xnzr1bMOrcVJF3lzR7IXjkCW6EGOP47Dq5Ys1BjsFf+7Ge6ldJpSckS6gjvo1V
	 aUwDfv7qxgEFVMKXUvG/wJbVUAc85RVdI9u1MeuCa9H5SU38YMXTMJfQ8N+b9bhwQ+
	 /R3w4jIA7c/k9AxQHvftOwiQvs6k5vcJgw0Bj36RFrHIkjumBOTN3Wrg6se4fEm9lg
	 YvKHfmORTbC+XuHExprG2ba++yfTD8OzDenAKmrLkqiszm/I9XYsYGgiCF/HapVdyI
	 vyLxEj6ww5Nzg==
Date: Mon, 13 Jul 2026 02:26:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, antoniu.miclaus@analog.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com,
 duje@dujemihanovic.xyz, jishnu.prakash@oss.qualcomm.com,
 jorge.marques@analog.com, joshua.crofts1@gmail.com, krzk+dt@kernel.org,
 linusw@kernel.org, marcelo.schmitt@analog.com, mazziesaccount@gmail.com,
 mike.looijmans@topic.nl, nuno.sa@analog.com, robh@kernel.org,
 sakari.ailus@linux.intel.com, wens@kernel.org
Subject: Re: [PATCH v6 3/3] iio: adc: Add ti-ads1110 support to ti-ads1100
 driver
Message-ID: <20260713022624.08e7b897@jic23-huawei>
In-Reply-To: <20260711184414.1013686-4-jakubszczudlo40@gmail.com>
References: <20260711184414.1013686-1-jakubszczudlo40@gmail.com>
	<20260711184414.1013686-4-jakubszczudlo40@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-325154-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,ti.com:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E2926746722

On Sat, 11 Jul 2026 20:44:14 +0200
Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:

> Add ADS1110 support that have faster datarate than ADS1100, it also uses
> internal voltage reference of 2.048V for measurement.
> 
> Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
> ---
>  drivers/iio/adc/Kconfig      |  9 ++--
>  drivers/iio/adc/ti-ads1100.c | 84 +++++++++++++++++++++++++++---------
>  2 files changed, 69 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 1c663c98c6c9..2459ff2af105 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -1765,11 +1765,14 @@ config TI_ADS1018
>           called ti-ads1018.
>  
>  config TI_ADS1100
> -	tristate "Texas Instruments ADS1100 and ADS1000 ADC"
> +	tristate "Texas Instruments ADS1100 and similar single channel I2C ADC"
>  	depends on I2C
>  	help
> -	  If you say yes here you get support for Texas Instruments ADS1100 and
> -	  ADS1000 ADC chips.
> +	  If you say yes here you get support for TI single channel I2C Analog
> +	  Devices.
> +	  * ADS1000 12-Bit, 128 MSPS Analog-to-Digital Converter
> +	  * ADS1100 16-Bit, 128 MSPS Analog-to-Digital Converter
> +	  * ADS1110 16-Bit, 240 MSPS Analog-to-Digital Converter

Sashiko makes the point that these are not mega sample per second ADCs.
Those are never interfaced by I2C given typically 400kHZ bus clock rate!


>  
>  	  This driver can also be built as a module. If so, the module will be
>  	  called ti-ads1100.
> diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
> index 6ad80d42d390..06892ebc593d 100644
> --- a/drivers/iio/adc/ti-ads1100.c
> +++ b/drivers/iio/adc/ti-ads1100.c
> @@ -5,7 +5,7 @@
>   * Copyright (c) 2023, Topic Embedded Products
>   *
>   * Datasheet: https://www.ti.com/lit/gpn/ads1100
> - * IIO driver for ADS1100 and ADS1000 ADC 16-bit I2C
> + * IIO driver for ADS1100 and similar single channel ADC 16-bit I2C
>   */
>  
>  #include <linux/bitfield.h>
> @@ -41,20 +41,44 @@
>  #define	ADS1100_SINGLESHOT	ADS1100_CFG_SC
>  
>  #define ADS1100_SLEEP_DELAY_MS	2000
> +#define ADS1110_INTERNAL_REF_mV 2048
>  
>  static const int ads1100_data_rate[] = { 128, 32, 16, 8 };
> +static const int ads1110_data_rate[] = { 240, 60, 30, 15 };
>  static const int ads1100_data_rate_bits[] = { 12, 14, 15, 16 };
>  
>  /* Timeout based on the minimum sample rate of 8 SPS (7500ms) */
>  #define ADS1100_MAX_DRDY_TIMEOUT_US	(7500 * USEC_PER_MSEC)
>  
> +struct ads1100_config {
> +	const char *name;

Doesn't seem like name is used. (Another one Sashiko noticed!)
iio_dev->name should be set to this.

> +	const int *available_data_rate_hz;
> +	const int data_rate_count;
> +	bool has_internal_vref_only;
> +};
> @@ -90,6 +114,20 @@ static int ads1100_set_config_bits(struct ads1100_data *data, u8 mask, u8 value)
>  	return 0;
>  };
>  
> +static int ads1100_get_vref_milivolts(struct ads1100_data *data)
Another Sashiko one.  milli (two ls)
> +{
> +	int voltage_uV;
> +
> +	if (data->ads_config->has_internal_vref_only)
> +		return ADS1110_INTERNAL_REF_mV;
> +
> +	voltage_uV = regulator_get_voltage(data->reg_vdd);
> +	if (voltage_uV < 0)
> +		return voltage_uV;
> +
> +	return voltage_uV / (MICRO / MILLI);
> +}
> +
>  static int ads1100_data_bits(struct ads1100_data *data)
>  {
>  	return ads1100_data_rate_bits[FIELD_GET(ADS1100_DR_MASK, data->config)];
> @@ -144,7 +182,8 @@ static bool ads1100_new_data_not_ready(struct ads1100_data *data)
>  
>  static int ads1100_poll_data_ready(struct ads1100_data *data)
>  {
> -	int data_rate_Hz = ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data->config)];
> +	int data_rate_index = FIELD_GET(ADS1100_DR_MASK, data->config);
> +	int data_rate_Hz = data->ads_config->available_data_rate_hz[data_rate_index];
>  	/* To be sure we wait 5 times more than data rate */
>  	unsigned long wait_time_us = DIV_ROUND_CLOSEST(USEC_PER_SEC, 5 * data_rate_Hz);
>  	bool data_ready;
> @@ -181,7 +220,7 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
>  	if (ret)
>  		return ret;
>  
> -	microvolts = regulator_get_voltage(data->reg_vdd);
> +	microvolts = ads1100_get_vref_milivolts(data) * (MICRO / MILLI);

Sashiko commented on error returns here - I think David raised this as well.

>  	/*
>  	 * val2 is in 'micro' units, n = val2 / 1000000
>  	 * result must be millivolts, d = microvolts / 1000



