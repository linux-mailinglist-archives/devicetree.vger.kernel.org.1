Return-Path: <devicetree+bounces-105363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D243298680C
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 23:07:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52E041F21A8A
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 21:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381AA14AD24;
	Wed, 25 Sep 2024 21:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VKQgcD7k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9421714C4
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 21:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727298428; cv=none; b=FAx+h9P3CQzuh75iF0CNRBiUzbLSA7Vy2YYdu9G1bVjEQAPELVWUPwXyA9FSe2ZTrWQYD7aF/bLCrM3NwS7W2ddHeroaxlZPlgp/u2nHxKV+NkJXf6JCPb1Z+cwuSO15Ij/Lueak3Qp3zsubj9J71myQJxH4/lLmd3eQveH/oTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727298428; c=relaxed/simple;
	bh=cGWWbYfWIqUGOYMgUw+A87wStl8/rHXH1B1SA/5SgGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WrUKz7jCCVN97uUjsapft3csafO5A9U+dPtzsPBguUr8nkLDWGrXZ2pCeONSl9arHi/sG1EqchG7Lias6gQzCobR434LK0oo895IHvMJP1kpfhFoiB5dphIr6GrYyGSrRfjCLywxp6goG6QI9jqwLdx2A/+0Hq69lzfTpk8MD40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VKQgcD7k; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3787f30d892so156158f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 14:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727298424; x=1727903224; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1eUf1b5sBeEa+R24gGQ9aEEgDksXQ+YlPL6/W/duLKU=;
        b=VKQgcD7k0Zbl1eNd7FLuDBOTlZ1OuAUn4J+cTTvwgwpjBUr8lhygefI9POVUcZUwVX
         9IEJeQczOrqp8eskzQsssv5xVR7kOwCDONu5tOAWvDBJU3D4c3sTaIyfqwB0+u8GWVxR
         qa6GaB8AY5UtoJbwElbpAqKS4VMQicDB9qP9Jqpbx/KbvjPV2hxOmtIk2HuCyvtnwkfb
         yQxsQpDtHTxZJ2Js2nGZPvvQMr+liswRbxlIKmH4B4R56RX11whAcVN5bU0y8A81m7aS
         qy45RJ2LOBFFEvLcc154uQtAuQJN3p4oAhSfOtNDd20n4qOrlB+D6hjSsJ9k/f05YOZh
         WVlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727298424; x=1727903224;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1eUf1b5sBeEa+R24gGQ9aEEgDksXQ+YlPL6/W/duLKU=;
        b=rAePxEyk59qhhIuJEMSzHEApPaqw3moz37Gh3nrsdxTl82HeDzdFAHk7f8sj57hNE8
         IyiKYH8U5lDzTWbPB1zosSHtsbVDzOklNmDetCPoofhWnYk/yakK1YN76xNr9Z6gdNn2
         I5LumnLd1FTgRVVL1S1FeUMIU2WJpcTCmetOtuN0p6AgpQZ+wvnSQQTjPA2RNO06ytPB
         mW/45AF1FEDwqSOXxB3TH6QLUP5JfNwBivHYl3Oob8VP+b28MUdLI+NeuOLtRCt+Anyn
         6hMLg/sHi7DCRdVWHiS4nosljNzZodB32D63AqBZA2R4xNfZ4rCTh4FGDcArS+8vWRZz
         eFvw==
X-Forwarded-Encrypted: i=1; AJvYcCUR7GYgO0rdLTrP/r8eQsxX6g9mm9J/goC6w3MxhTffNE9XXOyxCq4B1I5CiyER/xl6g6C1bz1M10m0@vger.kernel.org
X-Gm-Message-State: AOJu0YylXbESEXqPGHEG7JuWMSZY4mfbklFykoYeY1mz2Y3zHsLX2sK7
	jPapsVd7FLTOzeWCHhi/GIgJDXy94tBNbrNjSry+gmq9zlSwxUj3v8ktC1XzO5Y=
X-Google-Smtp-Source: AGHT+IHDoFkGKB1bUmLWhLANh/i/kng9W0x9TR8bISvn6Efb45zS2dgcqducbkWBM86Lea49/HxWBA==
X-Received: by 2002:a5d:6c61:0:b0:371:9360:c4a8 with SMTP id ffacd0b85a97d-37cc246702cmr3213015f8f.6.1727298423544;
        Wed, 25 Sep 2024 14:07:03 -0700 (PDT)
Received: from localhost (lfbn-nic-1-357-249.w90-116.abo.wanadoo.fr. [90.116.189.249])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc2cec21sm4796837f8f.52.2024.09.25.14.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 14:07:02 -0700 (PDT)
Date: Wed, 25 Sep 2024 23:07:00 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alex Lanzano <lanzano.alex@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mehdi Djait <mehdi.djait@bootlin.com>, christophe.jaillet@wanadoo.fr, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v6 2/2] drm/tiny: Add driver for Sharp Memory LCD
Message-ID: <q2njnpzpkd3xrrv6icr5wq6uztja3wfmy2x2ldreqemzbwkedv@ixywmn7qy34q>
References: <20240905124432.834831-1-lanzano.alex@gmail.com>
 <20240905124432.834831-3-lanzano.alex@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gufllnff6auc6cvc"
Content-Disposition: inline
In-Reply-To: <20240905124432.834831-3-lanzano.alex@gmail.com>


--gufllnff6auc6cvc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Thu, Sep 05, 2024 at 08:44:00AM -0400, Alex Lanzano wrote:
> +static void sharp_memory_crtc_enable(struct drm_crtc *crtc,
> +				     struct drm_atomic_state *state)
> +{
> +	struct pwm_state pwm_state;
> +	struct sharp_memory_device *smd = drm_to_sharp_memory_device(crtc->dev);
> +
> +	sharp_memory_clear_display(smd);
> +
> +	if (smd->enable_gpio)
> +		gpiod_set_value(smd->enable_gpio, 1);
> +
> +	switch (smd->vcom_mode) {
> +	case SHARP_MEMORY_SOFTWARE_VCOM:
> +		smd->sw_vcom_signal = kthread_run(sharp_memory_sw_vcom_signal_thread,
> +						  smd, "sw_vcom_signal");
> +		break;
> +
> +	case SHARP_MEMORY_EXTERNAL_VCOM:
> +		break;
> +
> +	case SHARP_MEMORY_PWM_VCOM:
> +		pwm_get_state(smd->pwm_vcom_signal, &pwm_state);

I'd prefer using pwm_init_state() here instead of pwm_get_state(), The
former only depends on machine description (probably device tree), the
latter depends on what happend before to the PWM. While it probably
doesn't make a difference in practise, the former is more deterministic.

> +		pwm_state.period =    1000000000;
> +		pwm_state.duty_cycle = 100000000;

Unusual indention.

The device tree (and also ACPI) defines a default period for a PWM. If
you used pwm_init_state() -- as suggested above -- you could just use
pwm_set_relative_duty_cycle(smd->pwm_vcom_signal, 1, 10); here.

> +		pwm_state.enabled = true;
> +		pwm_apply_might_sleep(smd->pwm_vcom_signal, &pwm_state);
> +		break;
> +	}
> +}
> +
> +static void sharp_memory_crtc_disable(struct drm_crtc *crtc,
> +				      struct drm_atomic_state *state)
> +{
> +	struct sharp_memory_device *smd = drm_to_sharp_memory_device(crtc->dev);
> +
> +	sharp_memory_clear_display(smd);
> +
> +	if (smd->enable_gpio)
> +		gpiod_set_value(smd->enable_gpio, 0);
> +
> +	switch (smd->vcom_mode) {
> +	case SHARP_MEMORY_SOFTWARE_VCOM:
> +		kthread_stop(smd->sw_vcom_signal);
> +		break;
> +
> +	case SHARP_MEMORY_EXTERNAL_VCOM:
> +		break;
> +
> +	case SHARP_MEMORY_PWM_VCOM:
> +		pwm_disable(smd->pwm_vcom_signal);

What is the objective here? Do you want to save energy and don't care
about the output? Or do you want the PWM to emit the inactive level?
Note that for the second case, pwm_disable() is wrong, as depending on
the underlying hardware the PWM might continue to toggle or emit a
constant active level.

> +		break;
> +	}
> +}
> +
> [...]
> +
> +static int sharp_memory_init_pwm_vcom_signal(struct sharp_memory_device *smd)
> +{
> +	struct pwm_state state;
> +	struct device *dev = &smd->spi->dev;
> +
> +	smd->pwm_vcom_signal = devm_pwm_get(dev, NULL);
> +	if (IS_ERR(smd->pwm_vcom_signal))
> +		return dev_err_probe(dev, -EINVAL, "Could not get pwm device\n");
> +
> +	pwm_init_state(smd->pwm_vcom_signal, &state);
> +	state.enabled = false;
> +	pwm_apply_might_sleep(smd->pwm_vcom_signal, &state);

Same question as above. If you care about the output level, use

	{
		.period = ...,
		.duty_cycle = 0,
		.enabled = true,
	}

> +
> +	return 0;
> +}

Best regards
Uwe

--gufllnff6auc6cvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmb0e1oACgkQj4D7WH0S
/k68sgf+KYIiaD1KzjAI6h4LyzOtgTo4g9sAIrf/9XEfC8Ym5WDznk4zxlf18J2J
jfvTI4VtUF6UvCcEQASWeyHcRnhLnWFa0ZL+qGcMNb+vkXkQcFtToUPA8urOSGM7
KeXUFqbrZ9S3u3TKtBJ5NJRbyu+AtU7W/VQn2FVf8AUPuzuJpltmw7YfWdbHgG6H
QZUlQzzAIqtD+MVMp2r3zWFQXiIdoBVtahQMv672eU10Fx+wRiwgL10swYM6MWKd
uNK998JsuZV24+I8w/2gNAprjRl+0cI5k4v0oS4hoV97m3+7+3KBQsWZW8sp+oSY
lZPkNJXisBhHLM+yBvp5M3FJWULTaQ==
=MZIJ
-----END PGP SIGNATURE-----

--gufllnff6auc6cvc--

