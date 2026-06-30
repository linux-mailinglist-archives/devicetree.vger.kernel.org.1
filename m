Return-Path: <devicetree+bounces-318070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6eGsBCVTRGpsswoAu9opvQ
	(envelope-from <devicetree+bounces-318070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 01:37:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 053756E8ABD
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 01:37:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Y91pGPX3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318070-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318070-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 303ED301F4C8
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 23:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140CF33D4F2;
	Tue, 30 Jun 2026 23:36:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9CD1A6814;
	Tue, 30 Jun 2026 23:36:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782862568; cv=none; b=HuDzW4mFPSIhsbl85PRP9PWtU47dB/0/HagBFICSF2WFXVmwebluEWDggpha0UGjox8vQBZtGfrIZXoaSHFkeTnfjg4y7cPVR0/I77n/C1w0gA2ZnE22IMQ6lNx5QtIY26yxT4rhnGEJg3TEpHR2kRZQASAEqPgsEQF0xwp9Er8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782862568; c=relaxed/simple;
	bh=aX72XBcS4ZGZKsHzDMFNcZNcu7OgQenUUdXq3HgD7Qk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qmmkEO6glVrC1URC1aRpH/2Igeh9G/pXMKVB8PRf6iqPw/DvZmx4mCBKBaFHYTLqDoKk6Ab56h3CtNZLZD61C0u4Nb3h6Y6Czn4Nstl4iBDpgxp8pqwR5BCCZgyjpZld0AOIIlt3rO3IhFmoO3drlC4svUeQuLZ21y7UYvJkxUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y91pGPX3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9F591F000E9;
	Tue, 30 Jun 2026 23:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782862566;
	bh=wBl+6WzSpT/r8VJbJjcUsnvI61cG+nFbsKW3MvqaIPA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Y91pGPX3csjh9S5RSRf2qGRuH0GGevE+5z2x7tzXgzctOziJ9PewIRILeDbKTAUjO
	 LSXKLM4ACsC7lmlQ6oFPsISYp17vUPSgnCROtv8ECQlrc9HdP0w3++kRSxIHRXg2el
	 SD3A64CwFOQ5wsCQP6MJ/wnGyVe9oFZfObmZMpBJZnY9GnSawTGaT36pLIbufkwI1i
	 HOf91n4H0tob12xZj2HRD3nWP9nJEaGo204ZBij3mbO7Ni1p3Ep4hLr4+0bOH2kOQQ
	 SeF4FHogn7gtSxm+dx4xf5AEvFZjrWRXLIjH91PEGJhR27xNfwrL+4E7Bvrn0g0sqz
	 K8xzoQ1V/5sJg==
Date: Wed, 1 Jul 2026 00:36:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Varshini Rajendran <varshini.rajendran@microchip.com>
Cc: <ehristev@kernel.org>, <dlechner@baylibre.com>, <nuno.sa@analog.com>,
 <andy@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
 <srini@kernel.org>, <marcelo.schmitt@analog.com>,
 <jorge.marques@analog.com>, <mazziesaccount@gmail.com>,
 <Jonathan.Santos@analog.com>, <jishnu.prakash@oss.qualcomm.com>,
 <antoniu.miclaus@analog.com>, <duje@dujemihanovic.xyz>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 02/13] iio: adc: at91-sama5d2_adc: use cleanup.h for
 NVMEM buffer
Message-ID: <20260701003600.2a238c20@jic23-huawei>
In-Reply-To: <20260630093603.38663-3-varshini.rajendran@microchip.com>
References: <20260630093603.38663-1-varshini.rajendran@microchip.com>
	<20260630093603.38663-3-varshini.rajendran@microchip.com>
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
	TAGGED_FROM(0.00)[bounces-318070-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:ehristev@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:marcelo.schmitt@analog.com,m:jorge.marques@analog.com,m:mazziesaccount@gmail.com,m:Jonathan.Santos@analog.com,m:jishnu.prakash@oss.qualcomm.com,m:antoniu.miclaus@analog.com,m:duje@dujemihanovic.xyz,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,microchip.com,bootlin.com,tuxon.dev,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 053756E8ABD

On Tue, 30 Jun 2026 15:05:52 +0530
Varshini Rajendran <varshini.rajendran@microchip.com> wrote:

> Use __free(kfree) cleanup helper for the NVMEM data buffer in
> at91_adc_temp_sensor_init() to simplify error handling paths.
> 
> Since __free(kfree) requires a valid kfree-able pointer (not an

Does it require a a kfree-able pointer?
Definition is:
DEFINE_FREE(kfree, void *, if (!IS_ERR_OR_NULL(_T)) kfree(_T))

Some of these DEFINE_FREE() uses did change to be more resilient
to errors so maybe you have an old kernel?

> ERR_PTR), store nvmem_cell_read() result in a temporary void pointer
> first, check for errors, then assign to the managed buffer.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index 255970b2e747..5015c234289e 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -2251,9 +2251,10 @@ static int at91_adc_temp_sensor_init(struct at91_adc_state *st,
>  {
>  	struct at91_adc_temp_sensor_clb *clb = &st->soc_info.temp_sensor_clb;
>  	struct nvmem_cell *temp_calib;
> -	u32 *buf;
> +	u32 *buf __free(kfree) = NULL;
This breaks the 'rule' about having the destructor defined right next to the
destructor (IIRC there is guidance on this in cleanup.h comments).  Linus is
very keen on this always being done and doesn't like the = NULL pattern at all
(I agree but easier to blame the chief Penguin ;)

Given the argument for this seems to be wrong anyway, just define and assign
in one line below.


> +	void *cell_data;
>  	size_t len;
> -	int ret = 0;
> +	int ret;
>  
>  	if (!st->soc_info.platform->temp_sensor)
>  		return 0;
> @@ -2267,16 +2268,18 @@ static int at91_adc_temp_sensor_init(struct at91_adc_state *st,
>  		return ret;
>  	}
>  
> -	buf = nvmem_cell_read(temp_calib, &len);

	

> +	cell_data = nvmem_cell_read(temp_calib, &len);
>  	nvmem_cell_put(temp_calib);

This dance with nvmem_cell_put being called before the error check
seems like another place a cleanup.h trick is useful.

Can we have a DEFINE_FREE() for nvmem_cell_put()  I don't think
ti will matter if we hold that reference for the scope of the rest
of this function - but do check that!

With that in place, you can just do
	u32 *buf __free(kfree) = nvmem_cell_read(temp_calib, &len);
	if (IS_ERR(buf))
		return dev_err_probe(dev, PTR_ERR(buf),
				     "Failed to read calibration data");
	
	}
> -	if (IS_ERR(buf)) {
> +	if (IS_ERR(cell_data)) {
>  		dev_err(dev, "Failed to read calibration data!\n");
> -		return PTR_ERR(buf);
> +		return PTR_ERR(cell_data);
>  	}
> +
> +	buf = cell_data;

> +
>  	if (len < AT91_ADC_TS_CLB_IDX_MAX * 4) {
>  		dev_err(dev, "Invalid calibration data!\n");
> -		ret = -EINVAL;
> -		goto free_buf;
> +		return -EINVAL;
>  	}
>  
>  	/* Store calibration data for later use. */
> @@ -2289,9 +2292,7 @@ static int at91_adc_temp_sensor_init(struct at91_adc_state *st,
>  	 */
>  	clb->p1 = clb->p1 * 1000;
>  
> -free_buf:
> -	kfree(buf);
> -	return ret;
> +	return 0;
>  }
>  
>  static int at91_adc_probe(struct platform_device *pdev)


