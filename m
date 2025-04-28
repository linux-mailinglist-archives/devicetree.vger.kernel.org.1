Return-Path: <devicetree+bounces-171652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A780DA9F9D7
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3F7E189E269
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 19:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C56297A6A;
	Mon, 28 Apr 2025 19:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HVtrFKh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BD4296160
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 19:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745869509; cv=none; b=uKOJKcppAqj4LcRcaF2CsH2O1OXBLnlSEbB8tk84YXP7KJYgGYGsMvrK1uVMSKlBsZrRcqvtPAXPCaA5+qmcSQGne/IaUUtco4vFyPR+YWLv/U61bnKhvg3JWFv9fVmFBpSBWvX9gafzAw50eyeBraJf1Oq6Z64irRJaIzlSWAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745869509; c=relaxed/simple;
	bh=Ske+BDAj21huhvtbIRDfyBrEs+/jQGWomwPZgUuFL2U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bSemBY8QGYtvLB4zoZCBu7MYDpDt5U84JeBYAuit1PtgxTZL0dK0TyZ6usFSkPSXNtSKEoDGTZjJmqnVkdhknMDB34EYNhzWZuxo2sVx5kjAHuGjlpK34OTUpggb48I+boLj13dbwIOvIpIKHkbfBWfeRBuZhc/gAJ8b3P6NIqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HVtrFKh/; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-736c062b1f5so4422113b3a.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 12:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745869507; x=1746474307; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KaMu0L4wBURz9xq4JXnOvgxpR2Jhc7zGFIG2V5tCWLw=;
        b=HVtrFKh/GxasEaucHFCrOZdvPDRDkjNaw5e35p7EPVJvn6NnF4fHPitKmYh2rnbbWU
         mSMGDODSb+1oi56s9rQ3tyJ56s9a3AlBFHGUMujZKpKGYa6f0JMG452jLGH4GuTcMKgW
         +z/IOTNu8Z4jeVARoqVIjRvoXp4ZFgdCAXuTpAEOSFT+dfiBDCU4wNuWiS7ZU3t7Axwc
         xDtsBMeAPD6zZciRncfoGo+VFzekRhgt+Vx6bVicIOsdhwgfG2sJgq2SmPs51lPtjO6P
         HsmYfyqJHdWWMf7j/CWUqPszuNI06w0F1oKrsMRHArVG4BXwAJORlZVm9nbYw+nUA3XL
         Mg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745869508; x=1746474308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaMu0L4wBURz9xq4JXnOvgxpR2Jhc7zGFIG2V5tCWLw=;
        b=r3tRJUnu8bEabDZ/nnanKwIXrRy1qdEG4PPPk49pXPO87IlT9/YMnewJmHYUOwPZcK
         Z+kQUwnAP9z5KJqNLnuDPU8IEzoAUNtZ1OfCiPB9TgSYwxDw34INhEluNzdq6nqjQAUt
         dE5ElxWkZbtIiP0SETzad9MOneR8VvVkgdpp3WkDf22mAJl7RTNOYaf/93+OPZxEQx5v
         Nk59DwrBOflwyUVbZHmQabW4DezUFEjVaySResICAhJJvoBGMgWkIo4LvpLI+Qylv3RR
         iVzzs20XssmVY9VFWQiAy34l0L2lmkokqd4JZORiX7UjCNaF9OD05t3XboYZ0nlvzElY
         56lw==
X-Forwarded-Encrypted: i=1; AJvYcCWsNMTN3stAzMNAXojBn2CvAoi3+JNFE73LfLfZfV/owVwcerK4V9tTgEq5L0VVGCZBnZtfHQ6WB62g@vger.kernel.org
X-Gm-Message-State: AOJu0YwPES0lLuf8JLuLbyML6JVhj3+H2XLmlxc8hW2vk+DkxHNMvYoW
	eVTqufo8hEphVTHGy9jKGtlgg1WfjNyBZVax8KLTOgpmuDqmET1hVNVqXrBn6w==
X-Gm-Gg: ASbGncuBXI5hf7hdtOtfiPDHZUNo5qhuSMuPPm1xiiXs4G3lHE92uIDmaW0FjeQ5rtX
	Fn6WOTs51QkzMLQ5v54dGGiQO21SIz4mLUFt4kHbw4Gp2xcW02tVw9whAqwj6zzVZryF1fP9OlL
	decoEYI76pYY1pQhpeBc8q+WMeWLVQFZREAyNfLNeE4CD56lX8JenKNAGf2yoJ7b1Rt6/Wbp9in
	KQOqNe1ngV7OYD8XS/KFDZZKcd6x88Lp1806Hxqyr13Hq3btcB4cDDSo6OTVAd3zxbMEZdRZK7E
	vKOhhbbQ6ZsFk2Kh59c4T9fsUmuXRyRJWdY88wer26QBNjYeOWxJ2fQN6NLzld/KEVG2EEdttA=
	=
X-Google-Smtp-Source: AGHT+IG6R82DFa9jAy922lzUHN2EAVQRNR18xiowU6WDSy9TAXdGrX8+WhcNG0tMNBGpq3fQ1R7ExQ==
X-Received: by 2002:a05:6a20:43a1:b0:1f5:75a9:526c with SMTP id adf61e73a8af0-2093c7e3860mr1003669637.13.1745869507413;
        Mon, 28 Apr 2025 12:45:07 -0700 (PDT)
Received: from google.com (28.67.125.34.bc.googleusercontent.com. [34.125.67.28])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25a9abf2sm8338322b3a.122.2025.04.28.12.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 12:45:06 -0700 (PDT)
Date: Mon, 28 Apr 2025 19:45:01 +0000
From: Benson Leung <bleung@google.com>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 8/8] platform/chrome: of_hw_prober: Support
 touchscreen probing on Squirtle
Message-ID: <aA_avWpDUMAvbRBu@google.com>
References: <20250421101248.426929-1-wenst@chromium.org>
 <20250421101248.426929-9-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3yxgRYuYXTrM4tBx"
Content-Disposition: inline
In-Reply-To: <20250421101248.426929-9-wenst@chromium.org>


--3yxgRYuYXTrM4tBx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 21, 2025 at 06:12:46PM +0800, Chen-Yu Tsai wrote:
> The MT8186 Squirtle Chromebook is built with one of two possible
> touchscreens. Let the prober probe for them.
>=20
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Benson Leung <bleung@chromium.org>


> ---
>  drivers/platform/chrome/chromeos_of_hw_prober.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/pl=
atform/chrome/chromeos_of_hw_prober.c
> index 10dbaede0541..f3cd612e5584 100644
> --- a/drivers/platform/chrome/chromeos_of_hw_prober.c
> +++ b/drivers/platform/chrome/chromeos_of_hw_prober.c
> @@ -59,6 +59,7 @@ static int chromeos_i2c_component_prober(struct device =
*dev, const void *_data)
>  DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB_BY_TYPE(touchscreen);
>  DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB_BY_TYPE(trackpad);
> =20
> +DEFINE_CHROMEOS_I2C_PROBE_CFG_SIMPLE_BY_TYPE(touchscreen);
>  DEFINE_CHROMEOS_I2C_PROBE_CFG_SIMPLE_BY_TYPE(trackpad);
> =20
>  static const struct chromeos_i2c_probe_data chromeos_i2c_probe_hana_trac=
kpad =3D {
> @@ -76,6 +77,17 @@ static const struct chromeos_i2c_probe_data chromeos_i=
2c_probe_hana_trackpad =3D {
>  	},
>  };
> =20
> +static const struct chromeos_i2c_probe_data chromeos_i2c_probe_squirtle_=
touchscreen =3D {
> +	.cfg =3D &chromeos_i2c_probe_simple_touchscreen_cfg,
> +	.opts =3D &(const struct i2c_of_probe_simple_opts) {
> +		.res_node_compatible =3D "elan,ekth6a12nay",
> +		.supply_name =3D "vcc33",
> +		.gpio_name =3D "reset",
> +		.post_power_on_delay_ms =3D 10,
> +		.post_gpio_config_delay_ms =3D 300,
> +	},
> +};
> +
>  static const struct hw_prober_entry hw_prober_platforms[] =3D {
>  	{
>  		.compatible =3D "google,hana",
> @@ -93,6 +105,10 @@ static const struct hw_prober_entry hw_prober_platfor=
ms[] =3D {
>  		.compatible =3D "google,squirtle",
>  		.prober =3D chromeos_i2c_component_prober,
>  		.data =3D &chromeos_i2c_probe_dumb_trackpad,
> +	}, {
> +		.compatible =3D "google,squirtle",
> +		.prober =3D chromeos_i2c_component_prober,
> +		.data =3D &chromeos_i2c_probe_squirtle_touchscreen,
>  	}, {
>  		.compatible =3D "google,steelix",
>  		.prober =3D chromeos_i2c_component_prober,
> --=20
> 2.49.0.805.g082f7c87e0-goog
>=20

--3yxgRYuYXTrM4tBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCaA/avQAKCRBzbaomhzOw
wuHsAP9k0n2/zZ8JMwMbW9PvC1L4S+rXwkDzn4vNgVA9gpUADgEAqqQGBGFcOCTo
ivudInVAQKMFJJvenfbspzj/SwoyHA8=
=MQA+
-----END PGP SIGNATURE-----

--3yxgRYuYXTrM4tBx--

