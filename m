Return-Path: <devicetree+bounces-52948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3E288A7F0
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:59:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C92C1C3E71F
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB27129A9F;
	Mon, 25 Mar 2024 13:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dR7AnY10"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04008128810
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 13:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711373732; cv=none; b=mgkgCE56Rt2IwbtStHMYr0lTc/Ea7fyrY50S4UFURFaH9ynN72bmCyjJGxxQ5pUZi3Kvb/4simm3vYv0kN5ceeWnzH3Cd692b0q+58dO2AwEEmRKtAfqLZeSpwaf97P5q8pDHVU39LIphxxzbW7cCjiTddW6Qre75m8q323OJ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711373732; c=relaxed/simple;
	bh=TCPyUbafQCw3a+le65i3q3p05CsQjzehRXJqoZCkz3Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G1qw/R+lc0f02A2E4+dHCqdGIrmq0yj3TnLNonFYP/BiYPoP0P6Q4e7TzvGgaZ3m0ieisqshd4zOTESfkuCoDrXM9wyBYjrwaKOehMQKj9wpEXsHD0tmbQzZVoDJ6HrVYYGWW2kPOnITuaEIfBiEwQnOaSB/ie7Ap4k+RbefQHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dR7AnY10; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d48f03a8bbso48617671fa.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 06:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711373728; x=1711978528; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wMCYCOAUB399ZWIzjXcdJZ2KHil8v/UMqqPWVku47Q0=;
        b=dR7AnY10y3mjOLMoHH2w2eytqdV9Uq/BKXafcRA2zXUUwzbPFF0cps/iyRTvt969He
         O/+3xoW+jb9bNYH6D20oSKtGgep2Ysp8EdYuY5J5GQOJ+9NDHUBzQVsg6mcmLmH/fRSg
         s5yqOxGprnEqB5cGfH0G8hhVZRqIRJu31JZfVkMVkP09OXirZQ/WCNn3H+kfYqsF3jPa
         I2YUyNjgQz/qlCzwVCZkLH1afrox7DHarxEFcJnghYxprBRp0957bMB/CpwKDOV2hwld
         IQF9X7qktxL1SthMR/S538GVvz/KK6T3xI2+hFIGu2OteMb2ish6SsmwS6WPO2fYaxd/
         C1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711373728; x=1711978528;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wMCYCOAUB399ZWIzjXcdJZ2KHil8v/UMqqPWVku47Q0=;
        b=W9P4fZKTq5Y4eH97DANqLvz7+YxU7NZb6PMdhzrdvrO5dSM0dT3mQjYLlG4fCsM7rV
         eKLCEUTluzVWY0Bo3NU4pHU9zBRHs6+khliWaZQRU95nwetdKZKLmPUJ2rabdWWTzplK
         sn7LhI2BBOsBx2ucKxEaX9GO5pI+2m6QsiQqrdB7smbJLV4ude1RKg2JpZljkRpguQaS
         sYUFfjo1zJaNzk61gDJSFXap2exQWSz/ATHdxOdnZSlMZfdp2bw/0SSdcVK2n63t5CRr
         3SH/xBjulsr99rpk/QYVZE6Q80rbrMkjznsD8SMZToLMWdVAl/p96WClbKHOa9Kdb52A
         Cv2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWX3fEsAPgEu0SzxfRs0oKtQVsKKmZpat5VsuQR3i3QYKQsrF2AkgjWdk3lwQierBPkJmO9nlg/Y23fCbRI3Y4lgWGY5A9N/opN7g==
X-Gm-Message-State: AOJu0YyuNEiXdpbgWqfWtigtqcAsSDH8nQLTVXxQrCdSwEJNia/xGuVf
	F0hqCfKlRLRW6T/JkL2pWr7gTuHJrXxF/o8+bFsZvOGWCQveu4rL4tc+vm6t9KIzAWay0/jXv2+
	/GeDCM2yeZEKP7OnEfFnG+IuJnackgBSFBfw5fQ==
X-Google-Smtp-Source: AGHT+IHaTowjHDD+wkEmqqR2T4q/qAfyUNdkL17rUe2qmjICjJ4WsEyBPGIBcsY6t/oJ7tOBkVYkWK9qUuSPYEm359Q=
X-Received: by 2002:a05:651c:212a:b0:2d6:ce5c:de25 with SMTP id
 a42-20020a05651c212a00b002d6ce5cde25mr1524321ljq.8.1711373728029; Mon, 25 Mar
 2024 06:35:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1711131830.git.marcelo.schmitt@analog.com>
 <15a70e55d7b6f0a97c4042bdaa41c2b672eb4f2f.1711131830.git.marcelo.schmitt@analog.com>
 <CAMknhBH7umcBD0hyt=6fOKu9E8k=CSrnNE4Z+9ynn0F4B=Wk2w@mail.gmail.com>
In-Reply-To: <CAMknhBH7umcBD0hyt=6fOKu9E8k=CSrnNE4Z+9ynn0F4B=Wk2w@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 25 Mar 2024 08:35:16 -0500
Message-ID: <CAMknhBHZT5xM5RG0cmEHvCJ5AwZnLQnV9_jW5=gP=s_45LYfcw@mail.gmail.com>
Subject: Re: [PATCH 2/2] iio: adc: Add support for AD4000
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	marcelo.schmitt1@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 23, 2024 at 4:53=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On Fri, Mar 22, 2024 at 5:06=E2=80=AFPM Marcelo Schmitt
> <marcelo.schmitt@analog.com> wrote:
> >

...

> > +
> > +       vref_reg =3D devm_regulator_get(&spi->dev, "vref");
>
> This should to be devm_regulator_get_optional(), otherwise it can
> return a "dummy" regulator if one is missing in the devicetree which
> will fail when getting the voltage.
>
> > +       if (IS_ERR(vref_reg))
> > +               return dev_err_probe(&spi->dev, PTR_ERR(vref_reg),
> > +                                    "Failed to get vref regulator\n");
> > +
> > +       ret =3D regulator_enable(vref_reg);
> > +       if (ret < 0)
> > +               return dev_err_probe(&spi->dev, ret,
> > +                                    "Failed to enable voltage regulato=
r\n");
> > +
> > +       ret =3D devm_add_action_or_reset(&spi->dev, ad4000_regulator_di=
sable, vref_reg);
> > +       if (ret)
> > +               return dev_err_probe(&spi->dev, ret,
> > +                                    "Failed to add regulator disable a=
ction\n");
> > +
> > +       st->vref =3D regulator_get_voltage(vref_reg);
> > +       if (st->vref < 0)
> > +               return dev_err_probe(&spi->dev, st->vref, "Failed to ge=
t vref\n");
> > +
> > +       if (!device_property_present(&spi->dev, "adi,spi-cs-mode")) {
> > +               st->cnv_gpio =3D devm_gpiod_get(&spi->dev, "cnv", GPIOD=
_OUT_HIGH);
> > +               if (IS_ERR(st->cnv_gpio)) {
> > +                       if (PTR_ERR(st->cnv_gpio) =3D=3D -EPROBE_DEFER)
> > +                               return -EPROBE_DEFER;
> > +
> > +                       return dev_err_probe(&spi->dev, PTR_ERR(st->cnv=
_gpio),
> > +                                            "Failed to get CNV GPIO");
> > +               }
> > +       }
>

In a review for a different patch, Jonathan said he would prefer
devm_regulator_get() and failing in regulator_get_voltage() rather
than using devm_regulator_get_optional() so I think the same would
apply here and my suggestion should be overruled.

