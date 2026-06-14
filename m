Return-Path: <devicetree+bounces-311500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +zdFBuUML2oX7gQAu9opvQ
	(envelope-from <devicetree+bounces-311500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:19:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B80A68223B
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:19:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BmybkeVN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311500-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311500-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0F92F30011B0
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 20:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C565B30C62D;
	Sun, 14 Jun 2026 20:19:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C77242D89;
	Sun, 14 Jun 2026 20:19:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781468383; cv=none; b=rTtmnqJD5cg6ow+4aTZG29yCSZyXsokQTccm92TXzX3f8BMY/A7Nk0XkBP0IHPwdPaVWj90HzZHPZ+oZTrRyqYRi3gVB/YZ56l2/pqXfwdycu+bsDQFZB3zeIx/rTWrTLZGTYYJp6XVPqjoPvaIKRNfl+8Tyd7jCIu8OWuSGe8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781468383; c=relaxed/simple;
	bh=0fyT4pPGh7PytDfIVZQJr/wcACYpkawMMw5ezDVOpN4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CkTxEsB6d88gIUDbZRitQfmCZkGqT5NNXKGP8RsHvVXe2hd7LbbD/Sg6qryVKcGMP7j7tkJ872lEKYNqkGXG6Ls0NEmNsL3+AacsWo1yjBI45qmdof00ULigSkqLVgStUN9kZybKqSwDzX4Z2n42b/2B4gcgskiJkkGX0tvAkFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmybkeVN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC70D1F000E9;
	Sun, 14 Jun 2026 20:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781468382;
	bh=V5mfCha4ZVf8+D9rlx4mI1Xe9g/ffmetRKR17oFV9Ck=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=BmybkeVNuzwbLWJGh8qzaAYUDILYJamRJ383gAQN+8MxI3hcoxzfv3316gs5mKD2r
	 ALEqd+VVPgiVzWOUeMQwYijFCE7w+ggxSe1j3kf26qty2nJKyl7G7Y5ziJO940YAw3
	 atjtSrGVtqCQNiCASdtC3MGWSVoOG0C20yHcdJ2QOAcHvy4w8cUJlJVh5hTUb65z2U
	 m2zWXMpEipEIEfXUuqP2OXJfbiBebWuiLeZC6NcUJTAysarfL4tB1XJtvsYdiZrtlo
	 Lo+KZWPIAlkmQWNXZE97gh6F+LHyUEcJqq4R/F78uJABY6LAlAc4WdGSuJWVPWgPiS
	 Vu+kWFGSwuisg==
Date: Sun, 14 Jun 2026 21:19:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ak@it-klinger.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com
Subject: Re: [PATCH v11 11/11] iio: adc: hx711: add support for HX710B
Message-ID: <20260614211933.120b8c6e@jic23-huawei>
In-Reply-To: <20260603184859.89693-12-piyushpatle228@gmail.com>
References: <20260603184859.89693-1-piyushpatle228@gmail.com>
	<20260603184859.89693-12-piyushpatle228@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piyushpatle228@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ak@it-klinger.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311500-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,sashiko.dev:url,intel.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B80A68223B

On Thu,  4 Jun 2026 00:18:59 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Add support for the AVIA HX710B ADC, which shares the HX711 GPIO
> interface but uses trailing PD_SCK pulses to select the active mode.
> 
> Model the HX710B with variant-specific channel tables and IIO info,
> track the active channel across conversions, and use the fixed gain
> value when computing scale.
> 
> Also update the adjacent Kconfig text, file header, and module
> description so the driver text matches the newly supported variant.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Hi,

One small thing inline which is is kind of a side effect of cleaning up
the regulator description in earlier patches

Thanks,

Jonathan

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index fde95758b9a0..447699e1d60b 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c


>  static int hx711_probe(struct platform_device *pdev)
>  {
>  	const struct hx711_chip_info *chip_info;
> @@ -543,32 +709,43 @@ static int hx711_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(hx711_data->gpiod_dout),
>  				     "failed to get dout-gpiod\n");
>  
> -	ret = devm_regulator_get_enable_read_voltage(dev, "avdd");
> +	if (chip_info->has_fixed_gain)
> +		ret = devm_regulator_get_enable_read_voltage(dev, "vref");
> +	else
> +		ret = devm_regulator_get_enable_read_voltage(dev, "avdd");
>  	if (ret < 0)
>  		return ret;

https://sashiko.dev/#/patchset/20260603184859.89693-1-piyushpatle228%40gmail.com

Sashiko calls this out (confusingly on patch 4 review). The binding
says we need avdd and dvdd as well. So we should be turning those on,
even if we don't want to read their voltages - the dvdd one is a bit
more arguable, but it is very odd to ignore avdd when the driver
is touching it anyway.

I think you need something like:


	if (chip_info->has_fixed_gain) {
		ret = devm_regulator_get_enable_read_voltage(dev, "vref");
	 	if (ret < 0)
	  		return ret;
		ret = devm_regulator_get_enable(dev, "avdd");
		if (ret < 0)
			return ret;
	} else {
		ret = devm_regulator_get_enable_read_voltage(dev, "avdd");
		if (ret < 0)
			return ret;
	}
	ret = devm_regulator_get_enable(dev, "dvdd");
	if (ret < 0)
		return ret;

For any that aren't provided in DT you'll get stub regulators as long as we
don't need to read the voltage.

Other than that the only thing I'd look into is the suggestion read_raw()
might clash with buffered reads and corrupt the capture.  I haven't checked that.

Thanks,

Jonathan



