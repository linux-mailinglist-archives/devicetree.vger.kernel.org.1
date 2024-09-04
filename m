Return-Path: <devicetree+bounces-99902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF8A96B7E0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:08:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13C5CB26409
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3867F1CF5ED;
	Wed,  4 Sep 2024 10:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AiBCvM1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B367F146A76
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 10:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725444491; cv=none; b=YPrikeuasXo71BUdRvGCIAe2dxSvwlAqrT4DAxXtabnC/9heoyAWHFIDxaqrfeHtMU9myi4mUoGiLYvIlBcgusNQ+UMAuFJuUGiGhSKMJiWThOwsArrX+h7rmXtOOuLqgJXtm0DHHoNyNrSjAuLPSJ4o2UMTYMJT322dDCiAD1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725444491; c=relaxed/simple;
	bh=zio+a0ruwSHwDzq4IpOiQijKnnS41D2V7N1DIsEFam0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tG55nDd2FSLP+jIbZrG1XvqpxCcwsmcOkRR6ln/jYE5VdIhgAUdnNwoAEyjsR/XHKzJvmO9C3Tu3s7WodQT15+3lMq2oGxGCWwKIUXdWKgAXR0G0+Fbizdc0sWlQePYVeWBrIHeZd6FPEn83LdDDTaCaHgewAAn7c0azgSgyRVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AiBCvM1F; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a89c8db505bso446902666b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 03:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725444486; x=1726049286; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dR1M+3gWwkz1AwnSNcxXU0EUhSSon/LIBkGrYtHf2ps=;
        b=AiBCvM1FRYac3EnoC2V8yMOQxd39CpBMTM2EEe9Ol8wpLtSyRfdt+ewsahrA8H3Vji
         jgZTunExehkTFcQrJWtqO5lYT46ZsWfP1rSn1eAE7D3jtx13wDayI5vGmggTmV13Fvq/
         zajnAFZFueXuEMYzMEGXECdmpzT2HLDKe9XrzGhG361TmbPMrCGxbJsVT9MBACMlW7yW
         9HVpSfEKOsma28RLz506Tl9GzFEP9KmTRy91VQlRJWw27GijXUvJ3px0nf/rhpaOtQO3
         V+f4ovlCqoE/8PgBEy3LTEc58OGCDwBnT2rzGlZgZ083tf9NrcHvpgdm0LCPS3z7wQPO
         uDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725444486; x=1726049286;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dR1M+3gWwkz1AwnSNcxXU0EUhSSon/LIBkGrYtHf2ps=;
        b=tLhK75ICEb+RD3lm0m2JJvPXNZw24WtJxjZ4ASSpzhCl7RZkpu3KiPw6F8qW+oOMRi
         w3ZUN8+J2xeFSmNQZD1y8+XtrvXMHBF7tW3pUE3O7Wp3t/5DoksLUA55LJ/vZpo3gjQZ
         1YHR2O79woKeWd4TiupcHrMYJ+svxVRjaxnUqP3JknEQn70Vy03dPZPSX6YGZhNw+z5p
         CELUR9zaXQRDM5cZvFcv57pmeM1FLiYkraKi58gn0CLBxGYgewvu5gUDa8PgdDPK9GxS
         BgPQOjWaDaJV9tkHmmc37+JzWBGLTMqcBvCIDgt+Xni5Dwi+hwfFOgcNgtE62Spy12V6
         RAWw==
X-Forwarded-Encrypted: i=1; AJvYcCV8tZklIDAmWZ0ovg1QhtZscdRt1AxLV10BeNqwSz3mJYEO9eYQoYA67aoFs4vGlt6sDWI+2GqlBDKW@vger.kernel.org
X-Gm-Message-State: AOJu0YzVCxweD9lEsiLTx05xnE7iWHzU/4qcOVOhW/e2h9OYjeUADtHs
	sSW15g4lMMm7mLni8nwl64pr9/Vlg/hsGmidCFUnAM3N2QriRPrwsTEbIxygQHU=
X-Google-Smtp-Source: AGHT+IHmj/JiGbJvtc5bJERYQCNjeeiYu04Tlb0ms5vEl1yROFVony/cBFRozI3jj6zAJF6Ufv17ow==
X-Received: by 2002:a17:906:c155:b0:a86:a909:4f67 with SMTP id a640c23a62f3a-a8a32f9f1edmr272904266b.52.1725444485983;
        Wed, 04 Sep 2024 03:08:05 -0700 (PDT)
Received: from localhost (p5dc68f76.dip0.t-ipconnect.de. [93.198.143.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89890229b5sm795006166b.51.2024.09.04.03.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 03:08:05 -0700 (PDT)
Date: Wed, 4 Sep 2024 12:08:03 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Guillaume Stols <gstols@baylibre.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-pwm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, aardelean@baylibre.com
Subject: Re: [PATCH 4/8] pwm: Export pwm_get_state_hw
Message-ID: <g2x7a4jmlbziciyctf5qgmcpztobvduds6psoaelnludermkjv@6nlxvbws7eo4>
References: <20240815-ad7606_add_iio_backend_support-v1-0-cea3e11b1aa4@baylibre.com>
 <20240815-ad7606_add_iio_backend_support-v1-4-cea3e11b1aa4@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ufhpggxbgc5feny"
Content-Disposition: inline
In-Reply-To: <20240815-ad7606_add_iio_backend_support-v1-4-cea3e11b1aa4@baylibre.com>


--2ufhpggxbgc5feny
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2024 at 12:11:58PM +0000, Guillaume Stols wrote:
> This function can be used in some other drivers, for instance when we
> want to retrieve the real frequency vs the one that was asked.

I'd write:

	For some drivers (here: the upcoming ad7606 adc driver) it's important
	to know the actually configured PWM state. This is in general different
	from the state returned by pwm_get_state() (i.e. the last applied state)
	because most hardware doesn't have nano second granularity. So make
	pwm_get_state_hw() a public function.

> diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
> index 21fca27bb8a3..82e05ed88310 100644
> --- a/drivers/pwm/core.c
> +++ b/drivers/pwm/core.c
> @@ -651,7 +651,7 @@ int pwm_apply_atomic(struct pwm_device *pwm, const st=
ruct pwm_state *state)
>  }
>  EXPORT_SYMBOL_GPL(pwm_apply_atomic);
> =20
> -static int pwm_get_state_hw(struct pwm_device *pwm, struct pwm_state *st=
ate)
> +int pwm_get_state_hw(struct pwm_device *pwm, struct pwm_state *state)
>  {
>  	struct pwm_chip *chip =3D pwm->chip;
>  	const struct pwm_ops *ops =3D chip->ops;
> @@ -685,6 +685,7 @@ static int pwm_get_state_hw(struct pwm_device *pwm, s=
truct pwm_state *state)
> =20
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(pwm_get_state_hw);

Now that this is a public function, a kernel doc for it would be nice.

>  /**
>   * pwm_adjust_config() - adjust the current PWM config to the PWM argume=
nts
> diff --git a/include/linux/pwm.h b/include/linux/pwm.h
> index fd100c27f109..d48ea3051e28 100644
> --- a/include/linux/pwm.h
> +++ b/include/linux/pwm.h
> @@ -369,6 +369,7 @@ int pwm_apply_might_sleep(struct pwm_device *pwm, con=
st struct pwm_state *state)
>  int pwm_apply_atomic(struct pwm_device *pwm, const struct pwm_state *sta=
te);
>  int pwm_adjust_config(struct pwm_device *pwm);
> =20
> +int pwm_get_state_hw(struct pwm_device *pwm, struct pwm_state *state);

Nitpick: pwm_get_state_hw() is defined in core.c before
pwm_adjust_config(). Please keep this order in the header.

>  /**
>   * pwm_config() - change a PWM device configuration
>   * @pwm: PWM device

Your patch was PGP signed, but I failed to find your key in the kernel
key repo and on https://keys.openpgp.org. To make your signature
actually useful, you might want to fix that.

Best regards
Uwe

--2ufhpggxbgc5feny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbYMYEACgkQj4D7WH0S
/k4+lAf/ah+hVdNth3Gbh1+IZ9TszwkpZoa2BArFKNaI6fg4kzBnP4jdK/9YoYxK
8aV7YXMFTNLZ7B8kdZ1pQ3/gYFvHwPWiGGvMsysEnRj0TKOTw7iTSruScJq9qmMC
WCcJf3TiVd5Jp8JRi9EDaTN5K6pz4a4nF1+8Zf0sPNhubcClQ62RrfUOwgqiYi+O
/zsKhoQIFDrc9qX0BUwU5gK3FxgIXqNXt437y1O5X0PWAeZhnQXpyW4GbXnofQFt
wPqjzS3DUigiDXkUWKImXXGXM5f9SERlGvWjVlqomK29NWzzXugauCfyDxVQUa+Q
pny5/ar13n7yoHt/42iTfwc99oY0/w==
=e96/
-----END PGP SIGNATURE-----

--2ufhpggxbgc5feny--

