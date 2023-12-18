Return-Path: <devicetree+bounces-26364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B088163D6
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 01:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A581282711
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 00:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952C264D;
	Mon, 18 Dec 2023 00:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="x5Eg/vyO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C821C03
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 00:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2cc4029dc6eso28860731fa.1
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 16:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1702859805; x=1703464605; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYUBkOEorNXEv/35ooZwWw6D13yiKFfdtV8i+HwsJ9E=;
        b=x5Eg/vyOElGVVa+8Lwf+Mvs3ff551DjSEFk7ZwXickDPFUdmpR1ga1+gUytvi04Ys1
         7qk6b6QcVMg91Z/7Uy4259KWo0tEBa6LLnezEPyfJU93HvfUpksb+0M4XOssvZ8DXsoZ
         ArMegj4RTCcbwlwfy1dRpz+8f5337pGo2kXLXyPkztE10+9ZdMRSTVymFGfko3zUeDvb
         RiHj/3ZW3ROfrGGqkIPJQmGny+5JYneVe/oPDumphb4g0m1/bYlt24uMDbAczzhf23Jz
         QqoXJSWVE6P5xqpuXeIhpvkp8c9k5t4X5cp1UOxVhcaJUJfwpKf/gadFKylxh8pXQKQy
         Cktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702859805; x=1703464605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lYUBkOEorNXEv/35ooZwWw6D13yiKFfdtV8i+HwsJ9E=;
        b=PYEaGn8SLkCjeJNm4u+EdIWZUWzbeuMEafQZXXc6sB0vke6cHSWQjnRIJIGw7teLo7
         eGISPY55B6BjTGshsmsRDz7dwT+GtaDs+2TydbBNEeQ6bY6iDLU3Quc8820GbkIVY3mS
         Q1OtLLT+2bQCmqZLhxownfXJZ6XZLJ/HPac07ffM0k6c0X0eakvd1Zfkb5a8C/szu4Bp
         8qMTt+IdUOCJjR7TDr2HHlDd3xlj24TfOapCJ8+U/hrI6xVJ477QKQRjzMxO3FvORyoz
         JnN8EpQkDt21SXlISzjvO1lIc/m6JJktal0sPj4BucjDNzP3iP8iypB99c/2VJ35sFpj
         aw6Q==
X-Gm-Message-State: AOJu0YxMlOUM5oNwBxJxyjEIoHnvCPm9S4bj6Yblda0IbnwR4hAKiqJd
	DJ+PJScCTx3cQNe2iBh2IQSshPJiSDtcog5KYssyxg==
X-Google-Smtp-Source: AGHT+IG5hzwsgx3reTV+ztHM9kZUXQnM7oCOIuPaQCTL1b9ez/lp4ihe6o232DrEmCPw0hI1HPfDgiWatygaGEBYb0k=
X-Received: by 2002:a2e:b8c9:0:b0:2cb:2bd7:38fc with SMTP id
 s9-20020a2eb8c9000000b002cb2bd738fcmr7467947ljp.15.1702859805700; Sun, 17 Dec
 2023 16:36:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1702746240.git.marcelo.schmitt1@gmail.com> <ce92ae93b1c2e36b20a9881b145c8c2c85acb1dd.1702746240.git.marcelo.schmitt1@gmail.com>
In-Reply-To: <ce92ae93b1c2e36b20a9881b145c8c2c85acb1dd.1702746240.git.marcelo.schmitt1@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Sun, 17 Dec 2023 18:36:34 -0600
Message-ID: <CAMknhBF7Ab0FZCKYkSq8siDMPtX5VRRn04FS7XiYLtK-1TJa3A@mail.gmail.com>
Subject: Re: [PATCH v4 09/15] iio: adc: ad7091r: Enable internal vref if
 external vref is not supplied
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: apw@canonical.com, joe@perches.com, dwaipayanray1@gmail.com, 
	lukas.bulwahn@gmail.com, paul.cercueil@analog.com, 
	Michael.Hennerich@analog.com, lars@metafoo.de, jic23@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dan.carpenter@linaro.org, marcelo.schmitt1@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 16, 2023 at 11:49=E2=80=AFAM Marcelo Schmitt
<marcelo.schmitt@analog.com> wrote:
>
> The ADC needs a voltage reference to work correctly.
> Enable AD7091R internal voltage reference if no external vref is supplied=
.
>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/iio/adc/ad7091r-base.c | 7 +++++++
>  drivers/iio/adc/ad7091r-base.h | 1 +
>  2 files changed, 8 insertions(+)
>
> diff --git a/drivers/iio/adc/ad7091r-base.c b/drivers/iio/adc/ad7091r-bas=
e.c
> index aead72ef55b6..9d0b489966f5 100644
> --- a/drivers/iio/adc/ad7091r-base.c
> +++ b/drivers/iio/adc/ad7091r-base.c
> @@ -217,7 +217,14 @@ int ad7091r_probe(struct device *dev, const struct a=
d7091r_init_info *init_info,
>         if (IS_ERR(st->vref)) {
>                 if (PTR_ERR(st->vref) =3D=3D -EPROBE_DEFER)
>                         return -EPROBE_DEFER;
> +
>                 st->vref =3D NULL;
> +               /* Enable internal vref */
> +               ret =3D regmap_update_bits(st->map, AD7091R_REG_CONF,
> +                                        AD7091R_REG_CONF_INT_VREF, BIT(0=
));

Can we use regmap_set_bits() here to avoid the BIT(0)?

The same comment applies to other patches in this series.

> +               if (ret)
> +                       return dev_err_probe(st->dev, ret,
> +                                            "Error on enable internal re=
ference\n");
>         } else {
>                 ret =3D regulator_enable(st->vref);
>                 if (ret)
> diff --git a/drivers/iio/adc/ad7091r-base.h b/drivers/iio/adc/ad7091r-bas=
e.h
> index 81b8a4bbb929..9cfb362a00a4 100644
> --- a/drivers/iio/adc/ad7091r-base.h
> +++ b/drivers/iio/adc/ad7091r-base.h
> @@ -20,6 +20,7 @@
>  #define AD7091R_REG_CH_HYSTERESIS(ch) ((ch) * 3 + 6)
>
>  /* AD7091R_REG_CONF */
> +#define AD7091R_REG_CONF_INT_VREF      BIT(0)
>  #define AD7091R_REG_CONF_ALERT_EN      BIT(4)
>  #define AD7091R_REG_CONF_AUTO          BIT(8)
>  #define AD7091R_REG_CONF_CMD           BIT(10)
> --
> 2.42.0
>

