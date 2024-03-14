Return-Path: <devicetree+bounces-50451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B30487BBF0
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1DE9B23BBF
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 11:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085166EB68;
	Thu, 14 Mar 2024 11:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="njcAB7ED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE636EB64
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 11:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710415693; cv=none; b=Oj3veMtFt4+ep/K/Z5kZZG7Tekg19ti+75ZVIFP4PrQN42ecRycWBgmqo9jturQJPqHgrHQvn/8voSKJ5Rq8zCiWNBRZY0Ug1zVarOGAEKDlNf/SoIDVJkO6y5/H/pD3nDWYFAYKcTCbYYtbrL930DR9UcOVdmfKwGDPrDIvxqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710415693; c=relaxed/simple;
	bh=YUnswxyokFpRUhgWdZGsOpo63QsptGL2RAJyQpOw/pA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Nwnn5Rwt8z3ZwBLLUVOMZFxcGp6qudxvwkRDGuGD9cmg6+s3czA/uys/4eRo58Z0OufSf0eb9ywYZ7JTy1KiLlA9IVZ9x+JBtA4ZFAMpiiTdkBqLFx1XyIZ/0oMp+QHrvYprN3LW5ZKzMQA1lG3foQFWOa3cSXk14h7a23TA0sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=njcAB7ED; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-413fa4d494fso225445e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 04:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710415689; x=1711020489; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvfWswJLMy50JXcwMfpuKNA6ONIoYQGANkniEpLZiS0=;
        b=njcAB7ED6FK0wuLtJKLN3HhPWGwP/no4entwuNWxmqXZon6GhzQ6vN3WZLCqGe5VnL
         6WjKudpCfMpZCBSoK0+RGnjxq2s7/g/xlIEmWaBR9+JwFfPIR7//tyi7fmniqR81LeUa
         XsW4uU76rX1TalRE/UTAKt2bRh8DSv+HFD1P7zWdvrJFVEySDfV16Et/BxBeTiRvtH4W
         j7ZM+Lzl3rc7HobNV17kja9dXA60noIo6sDY9YEalFFM74OX0s65xSB0rtAC3z0G+fDg
         E03bdwmLeUMia9TaEIgrqx6Dw8lf3Cn9byJXdkCjXTVO4Ow/NGxVjyB1M1yei6QmW9AF
         bjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710415689; x=1711020489;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kvfWswJLMy50JXcwMfpuKNA6ONIoYQGANkniEpLZiS0=;
        b=pcKS0BD2T14OksbnlGV1fKqAfeWE8RBCU9xh0uC7vQtxDFnd1ag0qs65iHmht2Ww6j
         AoJ4RafhPTvKaGFJ/Q2hP6QfCubT5NcRhplt0C1dQBXDuFldeo/EEOhazDlIU3BeK5QN
         vjXiwmGWLHtCBohdP25wL25CUkTM/HGL5GZrIbii6+V3uCQgkkso5FcveG+IHMaRXza8
         IRYByxVP4I/6FutKJ0tcP+7UeQH3yeCr4wUsYCpW6+RUuwRV2OkaSNkA6nx+znOq1st3
         EzYUbTiY6XnPkc9SHTg4u4+KlWfrYsdCvS1yUFk95RjqLskgOO9K1B0wMi0TzjJ5ReFj
         2Qug==
X-Forwarded-Encrypted: i=1; AJvYcCUxzKkyJ9NEP67k4L2wzgKtCNMZzh1NTj1fxaygVKSN7+itpChtHpkCC/CL4XokHwirVidfKjYlNF/h2zel7CCpLoLyqsHbLKqCqA==
X-Gm-Message-State: AOJu0YxdUGf1cq/bYvmcAnAhSp1WLj4c+f3cLS9DOS/BBjMLwVm5JZhX
	RcNKDAcbQsZQ91CyZ7uiA9314Vj/ie28h75S51RXZvEVDRAqlYtF9LfDVKJUAv4=
X-Google-Smtp-Source: AGHT+IHJEfdVwTbuH+JSGze0FRnS2aVhc9zhn5UqeSV3T5GymAUUSVuHfjDeQarE9hvcW2PNnyn7NA==
X-Received: by 2002:a05:600c:470e:b0:413:2fee:b359 with SMTP id v14-20020a05600c470e00b004132feeb359mr1310873wmo.3.1710415689433;
        Thu, 14 Mar 2024 04:28:09 -0700 (PDT)
Received: from localhost (alyon-651-1-22-137.w82-122.abo.wanadoo.fr. [82.122.123.137])
        by smtp.gmail.com with ESMTPSA id je2-20020a05600c1f8200b004133072017csm5422626wmb.42.2024.03.14.04.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 04:28:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 14 Mar 2024 12:28:00 +0100
Message-Id: <CZTFR87IG7MI.11DN441APOPE3@baylibre.com>
Cc: <m.nirmaladevi@ltts.com>, <lee@kernel.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <jpanis@baylibre.com>, <devicetree@vger.kernel.org>, <arnd@arndb.de>,
 <gregkh@linuxfoundation.org>, <lgirdwood@gmail.com>, <broonie@kernel.org>,
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <nm@ti.com>, <vigneshr@ti.com>,
 <kristo@kernel.org>
Subject: Re: [PATCH v3 09/11] regulator: tps6594-regulator: Add TI TPS65224
 PMIC regulators
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Bhargav Raviprakash" <bhargav.r@ltts.com>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.15.2
References: <20240308103455.242705-1-bhargav.r@ltts.com>
 <20240308103455.242705-10-bhargav.r@ltts.com>
In-Reply-To: <20240308103455.242705-10-bhargav.r@ltts.com>

On Fri Mar 8, 2024 at 11:34 AM CET, Bhargav Raviprakash wrote:
> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>
> Add support for TPS65224 regulators (bucks and LDOs) to TPS6594 driver as
> they have significant functional overlap. TPS65224 PMIC has 4 buck
> regulators and 3 LDOs. BUCK12 can operate in dual phase.
> The output voltages are configurable and are meant to supply power to the
> main processor and other components.
>
> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>  drivers/regulator/Kconfig             |   4 +-
>  drivers/regulator/tps6594-regulator.c | 236 +++++++++++++++++++++++---
>  2 files changed, 215 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/regulator/tps6594-regulator.c b/drivers/regulator/tp=
s6594-regulator.c
> index b7f0c8779..37d76c483 100644
> --- a/drivers/regulator/tps6594-regulator.c
> +++ b/drivers/regulator/tps6594-regulator.c
> @@ -412,14 +562,20 @@ static int tps6594_regulator_probe(struct platform_=
device *pdev)
>  	struct tps6594_ext_regulator_irq_data *irq_ext_reg_data;
>  	struct tps6594_regulator_irq_type *irq_type;
>  	u8 buck_configured[BUCK_NB] =3D { 0 };
> +	u8 ldo_configured[LDO_NB] =3D { 0 };
>  	u8 buck_multi[MULTI_PHASE_NB] =3D { 0 };
>  	static const char * const multiphases[] =3D {"buck12", "buck123", "buck=
1234", "buck34"};

`multiphases` should prefixed like the new one.

> +	static const char * const tps65224_multiphases[] =3D {"buck12"};

> @@ -495,25 +660,30 @@ static int tps6594_regulator_probe(struct platform_=
device *pdev)
>  	if (!irq_data)
>  		return -ENOMEM;
> =20
> -	for (i =3D 0; i < MULTI_PHASE_NB; i++) {
> +	for (i =3D 0; i < multi_phase_cnt; i++) {
>  		if (buck_multi[i] =3D=3D 0)
>  			continue;
> =20
> +		const struct regulator_desc *multi_regs =3D (tps->chip_id =3D=3D TPS65=
224) ?
> +							   tps65224_multi_regs :
> +							   tps6594_multi_regs;

This should be declared at the top of the function.

>  		rdev =3D devm_regulator_register(&pdev->dev, &multi_regs[i], &config);
> -		if (IS_ERR(rdev))
> -			return dev_err_probe(tps->dev, PTR_ERR(rdev),
> -					     "failed to register %s regulator\n",
> -					     pdev->name);
> +			if (IS_ERR(rdev))
> +				return dev_err_probe(tps->dev, PTR_ERR(rdev),
> +						     "failed to register %s regulator\n",
> +						     pdev->name);

The indentation of the `if` looks odd. You should revert this.

> @@ -537,21 +707,34 @@ static int tps6594_regulator_probe(struct platform_=
device *pdev)
>  		if (buck_configured[i] =3D=3D 1)
>  			continue;
> =20
> -		rdev =3D devm_regulator_register(&pdev->dev, &buck_regs[i], &config);
> +		const struct regulator_desc *buck_cfg =3D (tps->chip_id =3D=3D TPS6522=
4) ?
> +							 tps65224_buck_regs : buck_regs;

Same here, should be at the top of the function.

> -	/* LP8764 dosen't have LDO */
> +	/* LP8764 doesn't have LDO */
>  	if (tps->chip_id !=3D LP8764) {
> -		for (i =3D 0; i < ARRAY_SIZE(ldo_regs); i++) {
> +		for (i =3D 0; i < LDO_NB; i++) {
> +			if (ldo_configured[i] =3D=3D 1)
> +				continue;
> +
> +			struct tps6594_regulator_irq_type **ldos_irq_types =3D
> +						(tps->chip_id =3D=3D TPS65224) ?
> +						tps65224_ldos_irq_types : tps6594_ldos_irq_types;
> +
> +			const struct regulator_desc *ldo_regs =3D
> +						(tps->chip_id =3D=3D TPS65224) ?
> +						tps65224_ldo_regs : tps6594_ldo_regs;

Should be at the top of the function, please fix this in the whole file.

Best regards,

--=20
Esteban "Skallwar" Blanc
BayLibre

