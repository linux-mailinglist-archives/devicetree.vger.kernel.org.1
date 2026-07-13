Return-Path: <devicetree+bounces-325172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ifW+IQxPVGq2kQMAu9opvQ
	(envelope-from <devicetree+bounces-325172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:35:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD54746A2C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:35:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZNf8uZm3;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325172-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325172-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 731063002505
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 02:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A3A32861F;
	Mon, 13 Jul 2026 02:35:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6082E332EAE;
	Mon, 13 Jul 2026 02:35:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783910148; cv=none; b=r4esBt9Pqxeo7+sjIU7bwiKeO1YvY+XyRx7Ah08ZQhOSDATKiZ2bUR0gPpuTjqE25F8l5p8ajulxat7Lbnr5ltJmQ0a7n6/FkOvXMbpGIWBRUk7meCtefrxy/us1s+voDqGpvFgG7If+7KRlhbXM+9CsFujXLAJQDCruKWLLBZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783910148; c=relaxed/simple;
	bh=toBatwoDppE3aOyC5r0An7fydkC0XZrdBgR5byYrWtY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GQoLgihEsxpH5kixeZ89bgbu3VLu7KMhAGEPHN1BvwFEBgVJh7M5o2nyONWlBh+sSqG8C+tID69VkpBFG2HUXC6OMt4nJUZTVWOAK5jLHPexTwkQXqBaMV/wJnKAgPwVmBOH2L0ZPknW4UOBZMih1eiIOE3nZHdsW16ap1Mpydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNf8uZm3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7FBF1F000E9;
	Mon, 13 Jul 2026 02:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783910145;
	bh=K+WFErLn9MIS4tOMJ/MN69DRQwrqOeAXY5Pq99X78/g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ZNf8uZm38WMoDWylbEfSXCHVKCsksHdi0wQbM3M01mDCms0V6BEpsePlx2xKAr5tO
	 B91F8zV3DCaz4sOqylbbnWiCn0Fb8q3wPJib37rrF2EHIgs7ledrPPkxegCaAx24MD
	 IFpPoxkWCNGQnmSYCgaF2rskIetQfMAugqweLjl5uoYB6TZ8MV+Tl/jzQXj4JyfNmZ
	 YDeThoZw+N5V7GsVyugW+1Rz83ALKKCk4raT+uIQGITFQFt4IdIDtC1y46e+qpTx/d
	 GPkmVLczJlKYXDeSXh3GPlU7EaHT8IjKgojm5cXHQMalgvwJ/EDboBkHbME+Xq+ThU
	 /JBtjKCLjQqCw==
Date: Mon, 13 Jul 2026 03:35:39 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "David Lechner (TI)" <dlechner@baylibre.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chris Hall
 <c-hall@ti.com>, Patrick Edwards <pedwards@ti.com>, Kurt Borja
 <kuurtb@gmail.com>, Nguyen Minh Tien <zizuzacker@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 8/8] iio: adc: ti-ads112c14: add measurement channel
 support
Message-ID: <20260713033539.18457479@jic23-huawei>
In-Reply-To: <20260710-iio-adc-ti-ads122c14-v3-8-746d52cbf1d0@baylibre.com>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
	<20260710-iio-adc-ti-ads122c14-v3-8-746d52cbf1d0@baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325172-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AD54746A2C

On Fri, 10 Jul 2026 17:50:41 -0500
"David Lechner (TI)" <dlechner@baylibre.com> wrote:

> Add support for parsing devicetree properties for measurement channels
> and doing direct reads on these.
> 
> There are quite a lot of conditions that have to be met for each
> measurement to be made, so quite a bit of state and algorithms are
> required to handle it.
> 
> Channels are created dynamically since the number of possibilities is
> unreasonably large.
> 
> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
A few little things,

Thanks,

Jonathan

> ---
> v3 changes:
> * Checked error when getting "label" property.
> * Removed call of fwnode_device_is_available().
> * Used IIO_VAL_DECIMAL64_PICO for scale.
> * Added switch in ads112c14_read_avail() to reduce future diff.
> 
> v2 changes:
> * Adapted for changes in DT bindings.
> * Fixed bug in IDAC current register value calculation.
> * Fix uninitialized variable bug.
> * Fix bug in data->num_measurements calculation.
> * Use IIO_RESISTANCE instead of IIO_VOLTAGE when external reference is
>   used and it is a resistor rather than a voltage source.
> * Fix bug with negative input mux selection on single-ended measurements.
> * Fixed return checks of devm_regulator_get_enable_read_voltage().
> ---
>  drivers/iio/adc/ti-ads112c14.c | 551 +++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 533 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/iio/adc/ti-ads112c14.c b/drivers/iio/adc/ti-ads112c14.c
> index 2ce4411a0d86..a310abd69d8f 100644
> --- a/drivers/iio/adc/ti-ads112c14.c
> +++ b/drivers/iio/adc/ti-ads112c14.c
> @@ -200,9 +222,32 @@ static const struct iio_chan_spec ads112c14_sys_mon_channels[] = {
>  	},
>  };
>  
> +struct ads112c14_measurement {
> +	const char *label;
> +	u32 vref_source;
> +	u8 iunit;
> +	u8 idac1_mag;
> +	u8 idac2_mag;
> +	u8 idac1_mux;
> +	u8 idac2_mux;
> +	u8 iadc_count;
> +	u8 gain_val;
> +	u8 burnout;

Sashiko calls out that this is set but not used.
I'd leave parsing the stuff to set it for now and bring that in when
you want burnt out support.

> +	bool global_chop;
> +	bool bipolar;
> +	s64 scale_available[ARRAY_SIZE(ads112c14_pga_gains_x10)];
> +};

> @@ -257,12 +302,113 @@ static const struct regmap_config ads112c14_regmap_config = {
>  	.cache_type = REGCACHE_MAPLE,
>  };
>  
> +static int ads112c14_prepare_measurement_channel(struct ads112c14_data *data,
> +						 const struct iio_chan_spec *chan)
> +{
> +	struct ads112c14_measurement *measurement = &data->measurements[chan->scan_index];
> +	u32 refp_buf_en, refn_buf_en, ref_val, ref_sel;
> +	int ret;
> +
> +	ret = regmap_update_bits(data->regmap, ADS112C14_REG_MUX_CFG,
> +				 ADS112C14_MUX_CFG_AINP | ADS112C14_MUX_CFG_AINN,
> +				 FIELD_PREP(ADS112C14_MUX_CFG_AINP, chan->channel) |
> +				 FIELD_PREP(ADS112C14_MUX_CFG_AINN, chan->channel2));
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(data->regmap, ADS112C14_REG_DIGITAL_CFG,
> +				 ADS112C14_DIGITAL_CFG_CODING,
> +				 FIELD_PREP(ADS112C14_DIGITAL_CFG_CODING,
> +					    measurement->bipolar ? 0 : 1));

You could use regmap_assign_bits(data->regmap, ADS112C14_REG_DIGITAL_CFG,
				 ADS112C14_DIGITAL_CFG_CODING,
				 measurement->bipolar);

I'm not particularly sure that is any clearer however so up to you.

  
> @@ -436,14 +592,29 @@ static int ads112c14_read_avail(struct iio_dev *indio_dev,
>  {
>  	struct ads112c14_data *data = iio_priv(indio_dev);
>  
> -	if (chan->channel == ADS112C14_SYS_MON_CHANNEL_SHORT) {
> -		*vals = (const int *)data->sys_mon_chan_short_scale_available;
> -		*length = 2 * ARRAY_SIZE(data->sys_mon_chan_short_scale_available);
> -		*type = IIO_VAL_DECIMAL64_PICO;
> -		return IIO_AVAIL_LIST;
> -	}
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:

Move introduction of switch to earlier patch?  Doesn't look like it would
be wrong at that point and it would reduce churn a tiny bit.

> +		if (chan->channel < ADS112C14_SYS_MON_CHANNEL_BASE) {
> +			struct ads112c14_measurement *measurement;
> +
> +			measurement = &data->measurements[chan->scan_index];
> +			*vals = (const int *)measurement->scale_available;
> +			*length = 2 * ARRAY_SIZE(measurement->scale_available);
> +			*type = IIO_VAL_DECIMAL64_PICO;
> +			return IIO_AVAIL_LIST;
> +		}
> +
> +		if (chan->channel == ADS112C14_SYS_MON_CHANNEL_SHORT) {
> +			*vals = (const int *)data->sys_mon_chan_short_scale_available;
> +			*length = 2 * ARRAY_SIZE(data->sys_mon_chan_short_scale_available);
> +			*type = IIO_VAL_DECIMAL64_PICO;
> +			return IIO_AVAIL_LIST;
> +		}
>  
> -	return -EINVAL;
> +		return -EINVAL;
> +	default:
> +		return -EINVAL;
> +	}
>  }

