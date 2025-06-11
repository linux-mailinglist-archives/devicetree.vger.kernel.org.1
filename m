Return-Path: <devicetree+bounces-185015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E747AD601A
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 22:32:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21DA57ACE9F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 20:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55A42C0332;
	Wed, 11 Jun 2025 20:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LgOSN1Kv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989802BFC8F
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 20:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749673841; cv=none; b=MXowWfVMBpYITVf5ep8RrpCH9atjK6o31aLOIOoVQvU4HuGKVu/B1ZwN530VwGEkXoCs1JSF4DwYKnYJcLgUo18oksch8M4OMoqWCKz6+7stmfxzs5E/dQeoq/zuMbxAqbqVO3LWsYzlelaQG/oFy4CK1REksHdsb6YglYg5/CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749673841; c=relaxed/simple;
	bh=V8XF8OanXNHLGRewnX8t968MZhqrzeDkCeqw2aYCeGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fBzp+LiX6/LP0fUKnr3WPRxH6znuArg5Lr3pLU+csuYohqwMs6/4FRWUUqBu7s5WwkltgchBT6fwH510ru0xMTJWCf50wyHks8eFvZ3B8zAY3j+u8J9jE7H103NBVtCCmCCBdEWID28mIT0KrwvoRmk5tJZKNBpl0zQGWkqv9FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LgOSN1Kv; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6077d0b9bbeso508274a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 13:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749673836; x=1750278636; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ooALxjf044GRWDbSFrzyVi0Lni7sgXLgTftasv+y1gI=;
        b=LgOSN1Kvpv08xOzqZ+MOAmZmx89fbRtSydNhXBXxYfIbMdurjJdhTwTMUdBJRuSXG0
         C6lmLtbbcSj0jURYC5jc++8VdTKdHdRYz3dUan1LKTeFNcEG+69ANpkD0ZgJymaaZlK5
         woKV7oIOgEIP2QdEw2MRvM3oTO0tYclUy84mJmuQR6nyazAlFbA3w8kkigQLUEXnBO5u
         NP9NMuEjB2gjpsrknMBCK9LZN62dwFQ3zTVtRTE3/MlbWCX+g18dmdHuuCDyP4/lQ/wC
         Gi5/LYPS/PjXIi1i1JujRskdoXTBZ2i+PcXIZzd3ALj64dJ2N5GMoEo6f1hq+eW44yUk
         OSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749673836; x=1750278636;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ooALxjf044GRWDbSFrzyVi0Lni7sgXLgTftasv+y1gI=;
        b=SJQXeyaUuYnQYBqL4hvEezTpGyMSWonfGnYQny2S5yORq2q0AO7mxaL9Gx8yxUTV8s
         qYJ+Cs7Zwq5KSaTGqDRCmu0WIfI0R4NmBtMKQ736hJ9drCDUMB4M+X47PLOoQsl6ir60
         tqz4PdhZpKlnyiPiJlyRmX7YFIlzk+wftzvyKHr3vypnv1SGJr4/aECaWKV02jgvzksp
         4CtmMxZQVc7W0utuwDkHeZ9R14SZF3JobRa5lMQyLbWuWWOrSA2ECtIiexEMpIZv3OWZ
         adqy+G+JAd6+qNmAz0rVKK2oC64TcoBEIQdlmC7MvqYY2szn6EFW43n6hIOtqNbs4hCK
         +NvA==
X-Forwarded-Encrypted: i=1; AJvYcCUwqDRYDl3dSPZJeeWAZ+f7HDqFrqg7MvEA421S9PQ5jyeFQfra2iyIoA2QjRLOVw0tJBziU4drI0Fl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0gFLf9mGzr076BCUEaIgo9pz1lDRZSxL+6Bml9l86qJPQP5sQ
	1foleTDKxj6iL/1AC0jwx7lOXbS7F2uPFb2yMtBJtbEKYLvU/Hx+eUOY0uTmnQT+M9M=
X-Gm-Gg: ASbGncseFzsR6eZlw19HMj+oZRyjtH2tX5eMg7/iP9oOxSov0BrjJq508EX+Khayvuz
	g/gW/pa+cyFY9Q1eXSajZI5/lC+s+gO1X6oN/i7UdETVL9vTVf+E+dlFlk8rlwfyNGobo5ePylr
	eNKR6yVvk7GsdhZW1RF5zmVkH/Ow9YWDn5bpjgRmejDfqCv15KuGjiJNV/o17BZ1XGlFKX6rol0
	lZrjhouZzy8MWRdBHlWwl+NFW90EbbbolFmaLndq5s+ajmzwS/Zr/UQGXRr87Qi5hJw3+rRtCqO
	IPKPgStWjOjZsJMxD4tJ0RMjzNW1Hav4FKnmOG1BumeraensgTFUowWpaOXr+Mc52q4=
X-Google-Smtp-Source: AGHT+IHJBH4d2C783mF51S+AT4bh5IyeawOSGcxknA0J3JMZXbjUKz7B08z1l8NjwiFP1xHqX12uLQ==
X-Received: by 2002:a17:906:f581:b0:ad8:9b5d:2c1b with SMTP id a640c23a62f3a-adea21d38cdmr101972066b.9.1749673835685;
        Wed, 11 Jun 2025 13:30:35 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-adeadee8a60sm5588066b.162.2025.06.11.13.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 13:30:35 -0700 (PDT)
Date: Wed, 11 Jun 2025 22:30:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] regulator: rpi-panel-v2: Add regulator for 7"
 Raspberry Pi 720x1280
Message-ID: <fsihsojbs3pex6i6vag4njw27esv257nz3yuacl2bbflyfzfvx@6cc6k7tczdi7>
References: <20250609000748.1665219-1-marek.vasut+renesas@mailbox.org>
 <20250609000748.1665219-2-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3wk5f4esmuzvwutl"
Content-Disposition: inline
In-Reply-To: <20250609000748.1665219-2-marek.vasut+renesas@mailbox.org>


--3wk5f4esmuzvwutl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/2] regulator: rpi-panel-v2: Add regulator for 7"
 Raspberry Pi 720x1280
MIME-Version: 1.0

Hello Marek,

On Mon, Jun 09, 2025 at 02:06:42AM +0200, Marek Vasut wrote:
> +static int rpi_panel_v2_pwm_apply(struct pwm_chip *chip, struct pwm_devi=
ce *pwm,
> +				  const struct pwm_state *state)
> +{
> +	struct regmap *regmap =3D pwmchip_get_drvdata(chip);
> +	unsigned int duty;
> +
> +	if (state->polarity !=3D PWM_POLARITY_NORMAL)
> +		return -EINVAL;
> +
> +	if (!state->enabled)
> +		return regmap_write(regmap, REG_PWM, 0);

I would swap these two if blocks to ensure that disable works even if
the wrong polarity is passed.

> +	duty =3D pwm_get_relative_duty_cycle(state, PWM_BL_MASK);

This is not how it works. I assume this one can only do a single period
length? Then duty should be calculated as:

	duty_cycle =3D state->duty_cycle > RPI_PANEL_PWM_PERIOD ?  RPI_PANEL_PWM_P=
ERIOD : state->duty_cycle

	duty =3D duty_cycle * PWM_BL_MASK / RPI_PANEL_PWM_PERIOD;

> +	return regmap_write(regmap, REG_PWM, duty | PWM_BL_ENABLE);
> +}
> +
> +static const struct pwm_ops rpi_panel_v2_pwm_ops =3D {
> +	.apply =3D rpi_panel_v2_pwm_apply,
> +};

I would prefer to see new pwm drivers use the waveform stuff.

> +/*
> + * I2C driver interface functions
> + */
> +static int rpi_panel_v2_i2c_probe(struct i2c_client *i2c)
> +{
> +	struct gpio_regmap_config gconfig =3D {
> +		.ngpio		=3D NUM_GPIO,
> +		.ngpio_per_reg	=3D NUM_GPIO,
> +		.parent		=3D &i2c->dev,
> +		.reg_set_base	=3D REG_POWERON,
> +	};
> +	struct regmap *regmap;
> +	struct pwm_chip *pc;
> +	int ret;
> +
> +	pc =3D devm_pwmchip_alloc(&i2c->dev, 1, 0);
> +	if (IS_ERR(pc))
> +		return PTR_ERR(pc);
> +
> +	pc->ops =3D &rpi_panel_v2_pwm_ops;
> +
> +	regmap =3D devm_regmap_init_i2c(i2c, &rpi_panel_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(&i2c->dev, PTR_ERR(regmap), "Failed to allocate r=
egmap\n");
> +
> +	pwmchip_set_drvdata(pc, regmap);
> +
> +	regmap_write(regmap, REG_POWERON, 0);
> +
> +	gconfig.regmap =3D regmap;
> +	ret =3D PTR_ERR_OR_ZERO(devm_gpio_regmap_register(&i2c->dev, &gconfig));
> +	if (ret)
> +		return dev_err_probe(&i2c->dev, ret, "Failed to create gpiochip\n");
> +
> +	return devm_pwmchip_add(&i2c->dev, pc);

	ret =3D devm_pwmchip_add(&i2c->dev, pc);
	if (ret < 0)
		return dev_err_probe(...);

> +}
>=20

Best regards
Uwe

--3wk5f4esmuzvwutl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmhJ52UACgkQj4D7WH0S
/k6m0wf/Zj+902IqzoG39t1WOJ/5LfsJHptTTGisVEl6J9Gg2+ol/pAz/Vl0nnh5
1PPKIDMoZr4oimN/R5gWddDF2mUNiA/L/biXDqthzoi2q4Dlg2YI/zAQ9RYkpUml
oNsWnlxk7x959uBbudZbD2knDNg5x/R8GNOJyt3JMvOwsA4SVWLl7Mfz061n/Vyb
r3uA/Uam5mN2gE1OIz9dcZ1X4jvM3QPfrWPq7vnNbCG5piF8xvak5G28zmmWmLNp
69ax5LP4vACpKtmlYoR0qq629Uujf3enTVWZdSlSuSBGqLluaTnUkYyQkK4Uzmoz
UT+WKDqr5GL8IuzHaSC/wqwUxlwDgg==
=oxr7
-----END PGP SIGNATURE-----

--3wk5f4esmuzvwutl--

