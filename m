Return-Path: <devicetree+bounces-58627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C91D8A2A34
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB8B61F215D7
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89FAD58AB9;
	Fri, 12 Apr 2024 08:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RqOyfTLr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138F758AAB
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712911970; cv=none; b=DQZpRtCrBIkMO3Ar604J0U0Epm+LVU7TiyPowLPnWzcejPITOIDJV5ymvur33TevBxr1ZuAS4AkoTz6fMqIApF0trRwiK3666wbiPsx/QEkBf7aR0WTag1+6ebd+m7TN2rxLtQyVZFYmd+lgen88XYRZfHuBT/fZ8HE9BrnppKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712911970; c=relaxed/simple;
	bh=/IeU9ssGSLw9Ct4KuGTCKCYgaCVVK3WWsbfp9sM9Zro=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=iVRQrRe6+tQrDYs7b+OWnoGsBcCyptqyXHoEb7pzh+mhoe3hwKopnWhqTBTN+5Mii16lO/r6wNogTax8WzZpb5Ug/Cc5oah30ZzG4V2GN8n34oI4UpKO1/trbMaLJkWQ9CMr03t9Yg220KbcQwZq51VVke/tALMBR4w8Vv0XGSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RqOyfTLr; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-343e096965bso365515f8f.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712911965; x=1713516765; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqg7/6oBVG7FC2A7yaPi7N20RXmvrxHvn6/HhvcSh6c=;
        b=RqOyfTLrl4I0+Yl+iJg11oM+9a6lv6BgqUJ9wtodMOtWliCNM8w5JyeTGgqOJwBM1z
         ftB6q+27wedCE+AIuSxFU3hbRhygw5fPjxpJE5ag9XRPPC7EyLnl1n6Pm+iPQ1k8LIZp
         Xdy4CJigXNPFtOzOAg8ULhjbKBZv0GGLnERBlGMtwrDxwIbrkYv9wwKz5rsQatoO6YQ3
         7mXR36iTAjgj5hk4SGcd2Z1eeZr1gEZZA14+z5DZNCbWYi6wb7XW0+mdY7W2sNpa8JxO
         RajpZ1CxNxn5qCsrOxVol+8oU4aSwDNHBIucgM/oelKJGZgoGmRm9r0mLIgM0SGD+RYw
         WwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712911965; x=1713516765;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yqg7/6oBVG7FC2A7yaPi7N20RXmvrxHvn6/HhvcSh6c=;
        b=iSxcx+px/lNz8SY2PTSALgVc1S8nwL/gsNG2uGTyDCteZ/mcT0IcuDIb/WaF4aoFgf
         R4K4XoCFAvl5tNHit7gF354s/e2nsaAxGCpYakR70XEGfk6cK5FEc+69GlDoMa2ZXHlf
         nnu7WxZCC7pnoNmLozgXcbW0SzRfy8S+1+ekitFGDOCfqJ41WEfBGekgzhwmUTWPIdl4
         MglSD6y9NMNgxN55Cyamdm7qXk5/1gv8zM4Zs5GAxGTccKd+/lK21Vg2FJVZs9h6uq6h
         JIiaKSWhBuXFZpS/rS3+Lfld3SZgynaO6quqg3FYCCHK5p7yYKTTYDuobMsBTEn76G9g
         /OBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNFtvS3YR//rirx1rlVsWfe6PJcUKtDXDf6ULv2cvjPbrvQ/+Zm6cwqt0WFDgW8WxPLHYBlhr00Yn4g8XZHqGaeXj30GY9x9VN7Q==
X-Gm-Message-State: AOJu0YzpEFJ88sogAgETSHV+Em7YnzY2j6/daABr1tR5+SPYmd3DKfZD
	659dcfojBDU8/zOtm9e3wWE+sGJ+jhoFgHVgydJStqJsQevmaSefeAoD0EDEvRU=
X-Google-Smtp-Source: AGHT+IGaJEFW2OydWrtGlJEvOj+LQ9miUlniEJ47ZdatRM1Zm7j9aYX06RboRzFi8hrNNAXWEXWFlA==
X-Received: by 2002:a5d:5982:0:b0:346:ba70:82f4 with SMTP id n2-20020a5d5982000000b00346ba7082f4mr2066199wri.46.1712911965458;
        Fri, 12 Apr 2024 01:52:45 -0700 (PDT)
Received: from localhost ([2a01:e0a:448:76e0:776e:989f:b50c:7cf6])
        by smtp.gmail.com with ESMTPSA id b10-20020a056000054a00b00341b7d5054bsm3783180wrf.72.2024.04.12.01.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 01:52:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Apr 2024 10:52:43 +0200
Message-Id: <D0I0M4T4O9G1.UUESU247CE42@baylibre.com>
Cc: <m.nirmaladevi@ltts.com>, <lee@kernel.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <jpanis@baylibre.com>, <devicetree@vger.kernel.org>, <arnd@arndb.de>,
 <gregkh@linuxfoundation.org>, <lgirdwood@gmail.com>, <broonie@kernel.org>,
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <nm@ti.com>, <vigneshr@ti.com>,
 <kristo@kernel.org>
Subject: Re: [PATCH v6 10/11] pinctrl: pinctrl-tps6594: Add TPS65224 PMIC
 pinctrl and GPIO
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Bhargav Raviprakash" <bhargav.r@ltts.com>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.15.2
References: <20240408124047.191895-1-bhargav.r@ltts.com>
 <20240408124047.191895-11-bhargav.r@ltts.com>
In-Reply-To: <20240408124047.191895-11-bhargav.r@ltts.com>

On Mon Apr 8, 2024 at 2:40 PM CEST, Bhargav Raviprakash wrote:
> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>
> Add support for TPS65224 pinctrl and GPIOs to TPS6594 driver as they have
> significant functional overlap.
> TPS65224 PMIC has 6 GPIOS which can be configured as GPIO or other
> dedicated device functions.
>
> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/pinctrl/pinctrl-tps6594.c | 275 +++++++++++++++++++++++++-----
>  1 file changed, 228 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/pinctrl/pinctrl-tps6594.c b/drivers/pinctrl/pinctrl-=
tps6594.c
> index 66985e54b..f3d1c1518 100644
> --- a/drivers/pinctrl/pinctrl-tps6594.c
> +++ b/drivers/pinctrl/pinctrl-tps6594.c
> @@ -338,8 +506,20 @@ static int tps6594_pinctrl_probe(struct platform_dev=
ice *pdev)
>  	config.parent =3D tps->dev;
>  	config.regmap =3D tps->regmap;
> -	config.ngpio =3D TPS6594_PINCTRL_PINS_NB;
> -	config.ngpio_per_reg =3D 8;
> +	switch (tps->chip_id) {
> +	case TPS65224:
> +		config.ngpio =3D ARRAY_SIZE(tps65224_gpio_func_group_names);
> +		config.ngpio_per_reg =3D TPS65224_NGPIO_PER_REG;
> +		break;
> +	case TPS6593:
> +	case TPS6594:
> +		config.ngpio =3D ARRAY_SIZE(tps6594_gpio_func_group_names);
> +		config.ngpio_per_reg =3D TPS6594_NGPIO_PER_REG;
> +		break;
> +	default:
> +		break;
> +	}

Please merge the two switch case.=20

Other than that I think it's ok.

Best regards,

--=20
Esteban "Skallwar" Blanc
BayLibre

