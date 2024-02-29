Return-Path: <devicetree+bounces-47301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CE386CBD1
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 15:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 038D61C20CE1
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8538A137745;
	Thu, 29 Feb 2024 14:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tnCsGb3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1C1361B8
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 14:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709217777; cv=none; b=UAGxarjXLZiF8URbzP9mJCh9bQfalW8Knk3AAR53C4Bw49LC9GB/sve8Lm5f/91NXlbAGRr7KvjQsZZl3DFPMDyZQsCN/6dw/vNfhrRczKIVESQdjON90CGJ3f4HThBK7vUAfPKozL8d9dMQnoOF3lKcZBUqQhTZA/dvo6EC/Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709217777; c=relaxed/simple;
	bh=ES9enoNgnkqWdPYetfZj1fjEWXAhCMXaUdM4x2i4NBs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Zvtu2hifKEK+EGfDSYXysEC29DNsEhMK5g1QSCjXxy89ncxUW+5hHzND2iVluo2QrmVwYbW12TNFIsaCen1hrhUyjiSUHgUziDDL6oewt2tYI/jV2pDv3mzFLeNG4I7cp159Fobxmx+IeZgDhez6+cvyZShUoa6Fp7lNOTKj4F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tnCsGb3Z; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-412b20dc555so7231475e9.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 06:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709217773; x=1709822573; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvFUVHgs0WkHQ8lyy0DH+ud+r327AtQ3M1EUgtTUDUg=;
        b=tnCsGb3ZlL8ZdCzylUZkdAHfVPHm66Y7IjJx94gCVRud8rK5rxoPLvgh7qqDSE9Mk7
         MN0G6O/BYPtZj7u0nKMLT76A5sGlEOODAqh9BQN+0jGoC+xeHzoV4RmhV8htYP+8knkN
         DyyPlFhYemOaulVUMqOHgtKC+V1/NAobPBZ5CjrOHkcwIzO4tj2ySVvCV1eQW2x5Vd2r
         dyVot6Okon0b37BNpgNNgRqIRTtxKTdKcArOB2M1qXtfubPMtb7z6TknF6I6ADD8zr91
         MTb42tDk4ZJMKfJPQBFAJBcGUh+v/NxEaXjYHkhvsJUABg2uhmLLXV23tijtVFbW2jDt
         jybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709217773; x=1709822573;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HvFUVHgs0WkHQ8lyy0DH+ud+r327AtQ3M1EUgtTUDUg=;
        b=wlLZ87EEFNgT9YcXehuVywONK6Nhayd3gLPhP5l/hUyZiZjXBWJWXnDgh1WcDft2u0
         Ee0cDXhv99fQUQ9mWUTGVpheGVtVthA4RoBxQ5snUkETlHVWLaVWIkDh0VIH2j2FYGZE
         U7SgMMwTYbRQ9kJG6SHS38NZCJE9Mz6WAnYOGWMXM6QX7lWa5OF/Fs3DD4mV2krFfo7B
         2qA9ZwMelmlGNTlzb8LeaL9nvraJzRfkePZ9ssCZZQi1EPc2V9Fb4FtFMpmMgM9Dzr3D
         9ldhPLCFYOH6NVPXpYvEjUO0X7L2A3xtdWaqA0MuiImfpuYKEu+JYr+k1Ko5fAXxhW0i
         PuGw==
X-Forwarded-Encrypted: i=1; AJvYcCXnlx1DjXxxMcYH0qXfIjdy1EgiRYiDXVT+3PmhsNNF4K4/U0I4af9ZyLvBq05UoULNk1SqYq5nVtc2kzJ1Sl4bwgrjZEhbo7f4sQ==
X-Gm-Message-State: AOJu0YwVF1Wbgi2nq6p493RxRFmJ2ACPqig4evKgQ22Fb3AuYE0yGPL5
	kSrieSiLfoi92cjlUZb2IcQOToPdzR79Mt6RrmNPotKm7z7p3vBNmHE/X1F+wH0=
X-Google-Smtp-Source: AGHT+IHh+ON/LL6ZZNj2crn5+292UIB9nm79QnO4uDOpHItauFzeue6Uksr2VBCfylunYEg865eO6w==
X-Received: by 2002:a05:600c:4fd0:b0:412:bfa1:2139 with SMTP id o16-20020a05600c4fd000b00412bfa12139mr1184812wmq.37.1709217772375;
        Thu, 29 Feb 2024 06:42:52 -0800 (PST)
Received: from localhost (alyon-651-1-22-137.w82-122.abo.wanadoo.fr. [82.122.123.137])
        by smtp.gmail.com with ESMTPSA id dx14-20020a05600c63ce00b004129f28e2cdsm5339141wmb.3.2024.02.29.06.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 06:42:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 29 Feb 2024 15:42:50 +0100
Message-Id: <CZHN4S2QW6MY.KKKHHRPPY4ZG@baylibre.com>
Cc: <m.nirmaladevi@ltts.com>, <lee@kernel.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <jpanis@baylibre.com>, <devicetree@vger.kernel.org>, <arnd@arndb.de>,
 <gregkh@linuxfoundation.org>, <lgirdwood@gmail.com>, <broonie@kernel.org>,
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <nm@ti.com>, <vigneshr@ti.com>,
 <kristo@kernel.org>
Subject: Re: [PATCH v2 12/14] regulator: tps6594-regulator: Add TI TPS65224
 PMIC regulators
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Bhargav Raviprakash" <bhargav.r@ltts.com>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.17.0
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-13-bhargav.r@ltts.com>
In-Reply-To: <20240223093701.66034-13-bhargav.r@ltts.com>

On Fri Feb 23, 2024 at 10:36 AM CET, Bhargav Raviprakash wrote:
> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>

> @@ -122,6 +131,27 @@ static const struct linear_range ldos_4_ranges[] =3D=
 {
>  	REGULATOR_LINEAR_RANGE(1200000, 0x20, 0x74, 25000),
>  };
> =20
> +/* Voltage range for TPS65224 Bucks and LDOs */
> +static const struct linear_range tps65224_bucks_1_ranges[] =3D {

You prefixed your arrays with `tps65224` and that makes sense. However
you should also prefix the old ones with `tps6594` then.
This applies to the whole driver.

> @@ -374,11 +518,17 @@ static int tps6594_request_reg_irqs(struct platform=
_device *pdev,
>  {
>  	struct tps6594_regulator_irq_type *irq_type;
>  	struct tps6594 *tps =3D dev_get_drvdata(pdev->dev.parent);
> -	int j;
> +	size_t j;
>  	int irq;
>  	int error;
> +	size_t interrupt_cnt;
> =20
> -	for (j =3D 0; j < REGS_INT_NB; j++) {
> +	/* Number of interrupts supported by each voltage source */
> +	interrupt_cnt =3D (tps->chip_id =3D=3D TPS6594) ?
> +			 ARRAY_SIZE(tps6594_buck1_irq_types) :
> +			 ARRAY_SIZE(tps65224_buck1_irq_types);

The comment is not adding anything, the name is clear and ARRAY_SIZE is
quite explicit.

> +		for (i =3D 0; i < LDO_NB; i++) {
> +			if (ldo_configured[i] =3D=3D 1)
> +				continue;
> =20
> -			error =3D tps6594_request_reg_irqs(pdev, rdev, irq_data,
> -							 tps6594_ldos_irq_types[i],
> -							 &irq_idx);
> -			if (error)
> -				return error;
> +		struct tps6594_regulator_irq_type **ldos_irq_types =3D (tps->chip_id =
=3D=3D TPS65224) ?
> +								       tps65224_ldos_irq_types :
> +								       tps6594_ldos_irq_types;
> +
> +		const struct regulator_desc *ldo_regs =3D (tps->chip_id =3D=3D TPS6522=
4) ?
> +							 tps65224_ldo_regs :
> +							 tps6594_ldo_regs;
> +
> +		rdev =3D devm_regulator_register(&pdev->dev, &ldo_regs[i], &config);
> +		if (IS_ERR(rdev))
> +			return dev_err_probe(tps->dev, PTR_ERR(rdev),
> +					     "failed to register %s regulator\n", pdev->name);
> +
> +		error =3D tps6594_request_reg_irqs(pdev, rdev, irq_data, ldos_irq_type=
s[i], &irq_idx);
> +		if (error)
> +			return error;

There is an indentation missing on the content of the `for` loop.

Best regards,

--=20
Esteban "Skallwar" Blanc
BayLibre

