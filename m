Return-Path: <devicetree+bounces-326497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wtdFE++VVmpG+QAAu9opvQ
	(envelope-from <devicetree+bounces-326497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:02:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B32758934
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:02:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LRX4OODT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326497-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326497-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 101E53026890
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 750084432FE;
	Tue, 14 Jul 2026 20:02:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178C04BCABD
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:02:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059343; cv=none; b=AkaBJQjtFRo63Scz3+AqSz702ZDdLBARTWxk95pDsrFhixeI7dhgxviSWP0Hke2LwEpaMyr0ZLbzjEi+5WFDOTCowhwNGQkujdmcyCQfFj1+SIYRdQ+2M9Pio4Y3UoQ+y9KJTVsE2PkByEgt5dWsPeFr0v2SYK4/l/3mAFSzFVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059343; c=relaxed/simple;
	bh=PJaYfy7On/mjkfZx/GtCQU4GPGevxuwSRdOgk65wIok=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UHeRW7ns8RrH+Bvz/iqau1SBuw4Amdm7YWfGkmEho7x65Gobawrao3J9AcLsk6khCR2ZqQvXdcl7Hv17i2FvBInczwKciiflOUmMVxUYauDc4hexIxyaOjgwBS9R2SAaaEoV7wYVSBecSr2O4H5Y1wnT+0e6XSD5AOj3uyPW4WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRX4OODT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F188E1F000E9;
	Tue, 14 Jul 2026 20:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059330;
	bh=FmLV3c3AVhLU28azkxFTsGBT1X9WWu5FxsnZxsgLj1k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LRX4OODTOws5LfAZmT70SFZUYs9nK4gO104WPqFFd0T4Fm37u8Brqb2b+pQxgl2YY
	 y6aUsEj3YZ34BIpep7lWWjlpIv9s93ACcMR7vQHCB+f8N1zsLEjvnfZExfyPWSlmHa
	 LsGQRthnzAKnpssBk2DEv895WclXiYTXFXVZU58NkACR0JtzGNtqHNeqP/k8JUUZsl
	 MFK5Za16i+jB05+avPiBRmsUOpzI90qrWS45aS9S3dIESeWuRbLqwbiqD/f702um6S
	 3laMfuos9ovzqdjRy7BL0H/tZPPateXqBuNPMYN9qwNbA+ZqqSvftdtNv6zBRtwvzt
	 iGEb2TwvOPObQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/3] iio: adc: ti-ads1100: Add ti-ads1110 support to
 ti-ads1100 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jakub Szczudlo" <jakubszczudlo40@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714194717.596193-4-jakubszczudlo40@gmail.com>
References: <20260714194717.596193-1-jakubszczudlo40@gmail.com>
 <20260714194717.596193-4-jakubszczudlo40@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:02:09 +0000
Message-Id: <20260714200209.F188E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326497-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2B32758934

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Inverted hardware polling logic causes unconditional 7.5-second ha=
ng and timeout in continuous mode.
- [Medium] Missing error handling for regulator_get_voltage failure exposes=
 raw negative error codes to userspace.
- [Low] Kconfig help text describes the ADC data rates in MSPS (Mega Sample=
s Per Second) instead of SPS.
--

--- Patch [3]: [PATCH v7 3/3] iio: adc: ti-ads1100: Add ti-ads1110 support =
to ti-ads1100 driver ---
commit 48edf6dcf5a3e58bfda7f4b74908d7339f253938
Author: Jakub Szczudlo <jakubszczudlo40@gmail.com>

iio: adc: ti-ads1100: Add ti-ads1110 support to ti-ads1100 driver

Add ADS1110 support that have faster datarate than ADS1100, it also uses
internal voltage reference of 2.048V for measurement.

> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 1c663c98c6c96..2459ff2af1050 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig

[ ... ]

> @@ -1765,11 +1765,14 @@ config TI_ADS1018
>           called ti-ads1018.
> =20
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

[Severity: Low]
This isn't a bug, but are these units correct? The ADS1000/1100/1110 data
rates are typically listed in SPS (Samples Per Second), not MSPS (Mega
Samples Per Second).

> diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
> index f0a30ae139afa..ad9099aaf19c9 100644
> --- a/drivers/iio/adc/ti-ads1100.c
> +++ b/drivers/iio/adc/ti-ads1100.c

[ ... ]

> @@ -90,6 +114,20 @@ static int ads1100_set_config_bits(struct ads1100_dat=
a *data, u8 mask, u8 value)
>  	return 0;
>  };
> =20
> +static int ads1100_get_vref_milivolts(struct ads1100_data *data)
> +{
> +	int voltage_uV;
> +
> +	if (data->ads_config->has_internal_vref_only)
> +		return ADS1110_INTERNAL_REF_mV;
> +
> +	voltage_uV =3D regulator_get_voltage(data->reg_vdd);
> +	if (voltage_uV < 0)
> +		return voltage_uV;

[Severity: Medium]
Will this correctly handle a regulator failure?

If regulator_get_voltage() returns a negative error code (e.g. -EINVAL),
this function returns the raw error code.

Callers like ads1100_calc_scale_avail() and ads1100_read_raw() seem to
directly assign this value to userspace arrays or IIO physical scale
variables without checking for errors. Can this result in exposing raw
negative error codes as IIO scale values?

[ ... ]

> @@ -144,7 +182,8 @@ static int ads1100_new_data_is_ready(struct ads1100_d=
ata *data)
> =20
>  static int ads1100_poll_data_ready(struct ads1100_data *data)
>  {
> -	int data_rate_Hz =3D ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data-=
>config)];
> +	int data_rate_index =3D FIELD_GET(ADS1100_DR_MASK, data->config);
> +	int data_rate_Hz =3D data->ads_config->available_data_rate_hz[data_rate=
_index];
>  	/* To be sure we wait 5 times more than data rate */
>  	unsigned long wait_time_us =3D DIV_ROUND_CLOSEST(USEC_PER_SEC, 5 * data=
_rate_Hz);
>  	int data_ready;

[Severity: High]
Does this polling logic hang the driver in continuous mode?

Looking at the rest of ads1100_poll_data_ready(), it calls:

ret =3D readx_poll_timeout(ads1100_new_data_is_ready, data,
                         data_ready, data_ready !=3D 0,
                         wait_time_us, ADS1100_MAX_DRDY_TIMEOUT_US);

The break condition is data_ready !=3D 0, but ads1100_new_data_is_ready()
returns 1 when the ST/BSY bit is set. This means the loop will incorrectly
break when the device is BUSY, rather than when it is ready.

Additionally, in continuous mode the ST/BSY bit is always 0, which means
data_ready !=3D 0 is always false, causing an unconditional 7.5-second time=
out
every time the data rate or scale is changed.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714194717.5961=
93-1-jakubszczudlo40@gmail.com?part=3D3

