Return-Path: <devicetree+bounces-77233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B88FC90DC5F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 21:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 380BB1F23445
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC7A1662F6;
	Tue, 18 Jun 2024 19:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="An9P9Ci9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6AC161900
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 19:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718738809; cv=none; b=dqyz8XBGq/Ec8pLCKBee/dmMtVVFDjyRrnvIvmzIk+w3riPBqc2ymhILUNRrQ1LNZ7IMx1bIYasKqsX8hFApnDUbVIYFB8K4AT9IzC3t8Jnhz2jQ0y8yAuNfTvvuO/rpsI/8PQxfSq9N9qp5/1O2KgyVArD+8XAGb569gLpiTgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718738809; c=relaxed/simple;
	bh=+FyiA+pYK8APwK75QeRcyo/HcZRVxSHlp1CzDFB8ZR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewP4uTUyf8QJk0VTWZ2Z+Mz+AG99yfKc3eFy5bNUjxfC3lg1/PhJX/oNkmgflliewjyZ89VDHRm/giyTxGcmiaGOY0sFEPVBraAhJxJgaNHROgRkme0i1QjUmASIIo9/MsrSLH75PnCSCE1L8wETAcd9RufFRbd3GAnH7JuN5+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=An9P9Ci9; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e02bf947545so196816276.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 12:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718738806; x=1719343606; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9JdIhONv4P+97AjtXHbls42T4V6PxnxrDwc043W4vOo=;
        b=An9P9Ci9QQ1c5s7gcjCkRnfqnMy/q/1l90M1HEk38mkKcMwJZBQlZMctXfkqRwSUXs
         GoPq7wRdaI6U/3SLlTkld9O9xMIEW898NrHgJ5ZvD1Lr4OmxwqBuJAsW4yM+pHXzJxpR
         7nD63JgJO44ZJKs1g6sf+ebcMpAbxWguzEbmvWFUt6OuCOSTSw2BrzfsPEWdzsY7707j
         rWtNw7QDxpd2TlVGM3WjuBNYx87Rt4Hj18CLPXNFWmlDM/cNLmXbHS6zJMOeVvQP/YkL
         HANnyn/aSn8+kyhCDH07N21Yr/MZbZIFYuSshUVYPxj9n/ophLf8LjeOLU0DkbmqJDPG
         EPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718738806; x=1719343606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9JdIhONv4P+97AjtXHbls42T4V6PxnxrDwc043W4vOo=;
        b=H7nUMdRSINPx4pCTuCfjNQmiRRo65BNik6o+HE5DeuhxA0lYnl60QLmcAmwSoHvXjq
         iYGFobEuM9ySjJiMBHHM0nu6mHHSh6TlvdCmAA7Z/1Ettc3DB0xZaDgWoKpyI2shPx9z
         7uJnEjvwQKvh06znKwNjzEIn6sWJBs69/5Cj708CVY1+ieh15wrfdKRdhMXeEjDXkN5r
         ulp0ykihviJlILEHbL64iB3pGkoCaK60xqKUguab+yayG7dYYGaMZi1BQxT06v/3Nxbg
         x6IuDgz5mRmNRg7UzyXJmdM+u5X8UD3zWgV6UZQD4f1Ugxymlv5y20PC7rOQHoMt7hto
         3Vqw==
X-Forwarded-Encrypted: i=1; AJvYcCWpzUIc4SFL0fqYK/MJYI5TYhrsswbU8mY0iIdKaPyDMHNV+it3+ACdEKKEgBPLdAX6KzdGK87czNzqpEZlrnngjQoZm3tKfSfhLQ==
X-Gm-Message-State: AOJu0Yz2mL4wV5Kv/cFj5QiSeXJTyn1/nfzdqJGbu5NRNfcPsLlf4S5B
	1Ni3qjHxn/1fhxBsxN1cuLfw/2ZoaRNiDkAt0bR3Bbd9zmA3Y2eFQUUXtTTuyXz5Obu2WmfAP3s
	832Mmb6eFaLVBHy7YPAhqxJZ18MTqocWRUN7tug==
X-Google-Smtp-Source: AGHT+IEgckfSzpfRkRk3dzsXY6WG0jQp3J3r598HIt7lADXYgT+sH/QiHeZPNODRKExgkh5yZnVfoB+gxVSZC+8vuoE=
X-Received: by 2002:a5b:c4d:0:b0:dfd:c928:cc9f with SMTP id
 3f1490d57ef6-e02be142117mr988991276.26.1718738805816; Tue, 18 Jun 2024
 12:26:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240618003743.2975-1-semen.protsenko@linaro.org>
 <20240618003743.2975-5-semen.protsenko@linaro.org> <CANAwSgSaYip=oqtLfTzFMq_HWGJMMbEXOqKWC8ANzxNZmBFXTw@mail.gmail.com>
In-Reply-To: <CANAwSgSaYip=oqtLfTzFMq_HWGJMMbEXOqKWC8ANzxNZmBFXTw@mail.gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 18 Jun 2024 14:26:34 -0500
Message-ID: <CAPLW+4kGH+WJS5x6ujGacD_uhsUb9Mi7w1F+ocnc6hZz628kew@mail.gmail.com>
Subject: Re: [PATCH 4/7] hwrng: exynos: Implement bus clock control
To: Anand Moon <linux.amoon@gmail.com>
Cc: =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Olivia Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 11:26=E2=80=AFPM Anand Moon <linux.amoon@gmail.com>=
 wrote:
>
> Hi Sam,
>
> On Tue, 18 Jun 2024 at 06:08, Sam Protsenko <semen.protsenko@linaro.org> =
wrote:
> >
> > Some SoCs like Exynos850 might require the SSS bus clock (PCLK) to be
> > enabled in order to access TRNG registers. Add and handle optional PCLK
> > clock accordingly to make it possible.
> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > ---
> >  drivers/char/hw_random/exynos-trng.c | 22 ++++++++++++++++++++--
> >  1 file changed, 20 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_ran=
dom/exynos-trng.c
> > index 88a5088ed34d..4520a280134c 100644
> > --- a/drivers/char/hw_random/exynos-trng.c
> > +++ b/drivers/char/hw_random/exynos-trng.c
> > @@ -47,7 +47,8 @@
> >  struct exynos_trng_dev {
> >         struct device   *dev;
> >         void __iomem    *mem;
> > -       struct clk      *clk;
> > +       struct clk      *clk;   /* operating clock */
> > +       struct clk      *pclk;  /* bus clock */
> >         struct hwrng    rng;
> >  };
> >
> > @@ -141,10 +142,23 @@ static int exynos_trng_probe(struct platform_devi=
ce *pdev)
> >                 goto err_clock;
> >         }
> >
> > +       trng->pclk =3D devm_clk_get_optional(&pdev->dev, "pclk");
>
> Use devm_clk_get_optional_enabled to avoid clk_prepare_enable
>

Thanks for pointing that out! Will fix in v2.

> > +       if (IS_ERR(trng->pclk)) {
> > +               ret =3D dev_err_probe(&pdev->dev, PTR_ERR(trng->pclk),
> > +                                   "cannot get pclk");
> > +               goto err_clock;
> > +       }
> > +
> > +       ret =3D clk_prepare_enable(trng->pclk);
> > +       if (ret) {
> > +               dev_err(&pdev->dev, "Could not enable the pclk.\n");
> > +               goto err_clock;
> > +       }
> > +
> >         ret =3D clk_prepare_enable(trng->clk);
>
> Use devm_clk_get_enabled for this clock
>
> >         if (ret) {
> >                 dev_err(&pdev->dev, "Could not enable the clk.\n");
> > -               goto err_clock;
> > +               goto err_clock_enable;
> >         }
> >
> >         ret =3D devm_hwrng_register(&pdev->dev, &trng->rng);
> > @@ -160,6 +174,9 @@ static int exynos_trng_probe(struct platform_device=
 *pdev)
> >  err_register:
> >         clk_disable_unprepare(trng->clk);
> >
> > +err_clock_enable:
> > +       clk_disable_unprepare(trng->pclk);
> > +
> >  err_clock:
> >         pm_runtime_put_noidle(&pdev->dev);
> >
> > @@ -174,6 +191,7 @@ static void exynos_trng_remove(struct platform_devi=
ce *pdev)
> >         struct exynos_trng_dev *trng =3D platform_get_drvdata(pdev);
> >
> >         clk_disable_unprepare(trng->clk);
> > +       clk_disable_unprepare(trng->pclk);
> >
> >         pm_runtime_put_sync(&pdev->dev);
> >         pm_runtime_disable(&pdev->dev);
> > --
> > 2.39.2
> >
> >
>
> Thanks
> -Anand

