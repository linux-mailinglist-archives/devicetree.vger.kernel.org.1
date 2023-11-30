Return-Path: <devicetree+bounces-20533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D34367FFDF6
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 22:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DEE6B20B39
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 21:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A2B5B20C;
	Thu, 30 Nov 2023 21:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wPqbnp5q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9651510FC
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 13:50:58 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c9b5b774f0so18006151fa.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 13:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701381057; x=1701985857; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aANyBr2T0t8LeKYSkonqHHH3ddTbNb3vuWdQ0g12q+Q=;
        b=wPqbnp5qRtfp082LnkkE85atm3ai15hClOrgxH6TPBNETyZNCpcH/qjtLUfN7cQKtI
         bMTA0rqlEolb32uyNkz1HxvbutaB6wTKhJCOGnzKhRi4UewsaSh/QM/8sAHq38spLDzT
         KLoSUBpSmdV1eJgKTqeAz1Gzps830CBLFa2rMRRgDk/rjfINktB0nKMr8Gx8uRM72f/4
         BukNYUQV/kZJRv8+XUYZ/GR3DkLp/+QQZymLbG/bWxIxe/gJSguC/9/mr6WVJO34LClf
         G8h6xe7nP6ufrCRt3DWIoG52TC7gVCNhPKji9sTmZXB9szz4BnJjER6fF2GPRjdSFCzc
         ID4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701381057; x=1701985857;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aANyBr2T0t8LeKYSkonqHHH3ddTbNb3vuWdQ0g12q+Q=;
        b=lryfpYtAPFjAbQWbgqE1SzwFGua5cE1gGIZ5+1sMiiXMvysL03LBzXVBfVBNAbA1rY
         S6+s53Jw5Lu+fKSMWQzK1JVAwJpHQK4WBPsDAfiL2YzzqNuhkChK8NQ76XwqBRw07jq2
         G2YfVvkEk8lB1nU1QSyIGdmYvyEefcfvg8IUDiXCezaL71QAA0gQPsqlcDmzSjXbIRFJ
         TgWx2QXdH4ILMwYHoNXGtwngk12dCnIgNPH9PjcWPsqVavV8cSVxccoQ868ckYjHTk6p
         URdCkKxMC4nD6fX9BaoSMNm63MSjSbIUfEq2qkVbbAY0VIQsqbv+qLC82O26LEJVbDkS
         eOFQ==
X-Gm-Message-State: AOJu0YyOZjOp6DGcueqq8a+pW5vUpLQWbykajYD4nK2ZdHcuhNeS8hrn
	TnO9evbYMdmvzLI9OzDDVH60hU43vextiVFSpGPYoA==
X-Google-Smtp-Source: AGHT+IGTreSyOMteX5Yn0pCJXOJ23n2w1uz7JmQUqmbNcKkrGMdUipIFSV2GkcHhgdqYisB6JJKbOnVn4oDTwdlFnHo=
X-Received: by 2002:a2e:8503:0:b0:2c9:bacc:1285 with SMTP id
 j3-20020a2e8503000000b002c9bacc1285mr117766lji.47.1701381056908; Thu, 30 Nov
 2023 13:50:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231121-dev-iio-backend-v1-0-6a3d542eba35@analog.com> <20231121-dev-iio-backend-v1-6-6a3d542eba35@analog.com>
In-Reply-To: <20231121-dev-iio-backend-v1-6-6a3d542eba35@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 30 Nov 2023 15:50:46 -0600
Message-ID: <CAMknhBHsFS5p-_250WRmkH2za+QPV6WyKNfgD-E1W8=HV3W3fg@mail.gmail.com>
Subject: Re: [PATCH 06/12] iio: adc: ad9467: add mutex to struct ad9467_state
To: nuno.sa@analog.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org, Olivier MOYSAN <olivier.moysan@foss.st.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 21, 2023 at 4:17=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno Sa <nuno.sa@analog.com>
>
> When calling ad9467_set_scale(), multiple calls to ad9467_spi_write()
> are done which means we need to properly protect the whole operation so
> we are sure we will be in a sane state if two concurrent calls occur.
>
> Fixes: ad6797120238 ("iio: adc: ad9467: add support AD9467 ADC")
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> ---
>  drivers/iio/adc/ad9467.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/iio/adc/ad9467.c b/drivers/iio/adc/ad9467.c
> index 04474dbfa631..91821dee03b7 100644
> --- a/drivers/iio/adc/ad9467.c
> +++ b/drivers/iio/adc/ad9467.c
> @@ -4,7 +4,7 @@
>   *
>   * Copyright 2012-2020 Analog Devices Inc.
>   */
> -
> +#include <linux/cleanup.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>

Ah, the case of the misplaced header from the previous patch is solved. :-)

>  #include <linux/device.h>
> @@ -122,6 +122,8 @@ struct ad9467_state {
>         unsigned int                    output_mode;
>
>         struct gpio_desc                *pwrdown_gpio;
> +       /* protect against concurrent accesses to the device */
> +       struct mutex                    lock;
>  };
>
>  static int ad9467_spi_read(struct spi_device *spi, unsigned int reg)
> @@ -162,6 +164,7 @@ static int ad9467_reg_access(struct adi_axi_adc_conv =
*conv, unsigned int reg,
>         int ret;
>
>         if (!readval) {
> +               guard(mutex)(&st->lock);
>                 ret =3D ad9467_spi_write(spi, reg, writeval);
>                 if (ret)
>                         return ret;
> @@ -310,6 +313,7 @@ static int ad9467_set_scale(struct adi_axi_adc_conv *=
conv, int val, int val2)
>                 if (scale_val[0] !=3D val || scale_val[1] !=3D val2)
>                         continue;
>
> +               guard(mutex)(&st->lock);
>                 ret =3D ad9467_spi_write(st->spi, AN877_ADC_REG_VREF,
>                                        info->scale_table[i][1]);
>                 if (ret < 0)
>
> --
> 2.42.1
>
>

Alternately, this could probably be solved with spi_bus_lock/unlock
and spi_sync_locked rather than introducing a new mutex.

