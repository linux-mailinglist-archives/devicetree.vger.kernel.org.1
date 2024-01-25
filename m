Return-Path: <devicetree+bounces-35252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AE683CD16
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52AD2B239FC
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3519136643;
	Thu, 25 Jan 2024 20:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b7kVRMPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DAE135A5B
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213008; cv=none; b=Db1pinHKc+jEijJUErWCAzfocA7rhzzJevh36od373W96OtyHGCKunsM+0SVpKpZ+776Sc2PzsmZSrj7xmwu64nMXJRJd1UC3YHE7c/Cr3AE1xNXhQKF/RiS8LCqe6zt78OJEKInvSR6wFS6GB+CIyIU33wM4h5ZWAZ3C/pThh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213008; c=relaxed/simple;
	bh=XIqatQGlntPXQ1eVjA9alI5TGVXrBtnDl1Cmxzn4kSI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B2z9qj9lvivvR8Ogpmd+e0qYUW732j9PWSMBnnTkn/6t+bzckUDdSiUnQMce/CMjH4EYnTN9XgPrn0ZUCArzwl4sS3mqSIwvTTgasnG/cOVeF8nvDa6bF7cDekGpK09VC8AmZf1FGF79DFpGpw7E3lipIBqHPwXg/RcccLVYHxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b7kVRMPA; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2909a632e40so3106458a91.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706213006; x=1706817806; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xH3ZKgw/eLJq2yFFb6PLMM8HorTqCUfr/nWVvZm32gE=;
        b=b7kVRMPA1CRT7QdMXz2/XAN+J+nVaJx02/MbiqaaPzvmqCQBjgltx0MaVuCrabQmkN
         f8mVKWdVHF7VZDUEvsnCXJMK0bKsX8fe/tAzlLR85Ft71mQWOj48YievQB4IlqumyAo+
         4DwU0L47BMiZYV/ysxDs6NV33sYFidKW8iOLKpSnybibw/OBKfhLr9CPevLIqZwmLe5f
         i2msXKCEwaA0LaV3Mk36gLHuLcHE72kDJqhk6TRnnIHPTE3DPx79PIkygXVP6zv0bYyZ
         Ajau4kA9n2QVmKMQB1kHgGzlGU/qG9V8dEx0ybVifGmIHxJGEUFZdPe0MJSEgvfpiqbm
         8j1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213006; x=1706817806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xH3ZKgw/eLJq2yFFb6PLMM8HorTqCUfr/nWVvZm32gE=;
        b=Q94b453rzCpG+hcd7hj+B15qZkTVcMkkV8PLtuV/3hbatMXS0x/uEq4P99qPXKlTXX
         wm6/57620NDu3I3Pu9DLxe2r9l9DEByLmFLNouhheHpGFXm+LQ9VwUuRgvsnAxXM722A
         CpJ0Xnaa0W+pVt4to9X/x+rPky9xraQs7kmmyWpVakArIMTFQIgAB7YBsxLtOkO/s1LZ
         ogGDeqEq/UcTpIEfRN3PjHUAqs2GtjG5v4bLsmSWIr/CokRN8fsJI86U/U7lgKx3em9O
         CdDz56xMSzcl+n7iZjx29wVQ7vH48tYKp2IkH4RJ2WZaGUpJwfC7wQFmZUpT+VioYkg5
         aB3A==
X-Gm-Message-State: AOJu0Yz/INJoVNg7nmn7KSruiUsNCi3oPT2kVAPF+aFOU1NugbhlZTkh
	7XygMzEaHTt4eqRErjiWvd5g0TvfClzvPg/107MBkjfHGPaeVX5NXXZc7vU97eLFZuPVElyfUUV
	Ui+4gDHwBRsGUt1dyfuNb0ju2e9sYSYXz3XKHBg==
X-Google-Smtp-Source: AGHT+IFHQgriP1QVdFrOGqZj7NOnALQu6ewxwtcJCsLsIFS4zikUnMWXoTydhcnUJgAnCoYHVSRmm6K0EEZ18KSMxCg=
X-Received: by 2002:a17:90a:ea12:b0:28e:77b6:f70f with SMTP id
 w18-20020a17090aea1200b0028e77b6f70fmr127215pjy.93.1706213006495; Thu, 25 Jan
 2024 12:03:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-11-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-11-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:03:15 -0600
Message-ID: <CAPLW+4nOGjfniu+shzO5irmH5bC1E_yD0EZcuDwQJKdfMiDswA@mail.gmail.com>
Subject: Re: [PATCH v2 10/28] spi: s3c64xx: use full mask for {RX, TX}_FIFO_LVL
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 8:50=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> SPI_STATUSn.{RX, TX}_FIFO_LVL fields show the data level in the RX and
> TX FIFOs. The IP supports FIFOs from 8 to 256 bytes, but apart from the
> MODE_CFG.{RX, TX}_RDY_LVL fields that configure the {RX, TX} FIFO
> trigger level in the interrupt mode, there's nothing in the registers
> that configure the FIFOs depth. Is the responsibility of the SoC that
> integrates the IP to dictate the FIFO depth and of the SPI driver to
> make sure it doesn't bypass the FIFO length.
>
> {RX, TX}_FIFO_LVL was used to pass the FIFO length information based on
> the IP configuration in the SoC. Its value was defined so that it
> includes the entire FIFO length. For example, if one wanted to specify a
> 64 FIFO length (0x40), it wold configure the FIFO level to 127 (0x7f).

s/wodl/would/

> This is not only wrong, because it doesn't respect the IP's register
> fields, it's also misleading. Use the full mask for the
> SPI_STATUSn.{RX, TX}_FIFO_LVL fields. No change in functionality is
> expected.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index d046810da51f..b048e81e6207 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -78,6 +78,8 @@
>  #define S3C64XX_SPI_INT_RX_FIFORDY_EN          BIT(1)
>  #define S3C64XX_SPI_INT_TX_FIFORDY_EN          BIT(0)
>
> +#define S3C64XX_SPI_ST_RX_FIFO_LVL             GENMASK(23, 15)

What about s3c* architectures, where RX_LVL starts with bit #13, as
can be seen from .rx_lvl_offset values in corresponding port_configs?
Wouldn't this change break those?

More generally, I don't understand why this patch is needed. Looks
like it just changes the naming of the FIFO level accessing macros,
making the code more bloated too.

> +#define S3C64XX_SPI_ST_TX_FIFO_LVL             GENMASK(14, 6)
>  #define S3C64XX_SPI_ST_RX_OVERRUN_ERR          BIT(5)
>  #define S3C64XX_SPI_ST_RX_UNDERRUN_ERR         BIT(4)
>  #define S3C64XX_SPI_ST_TX_OVERRUN_ERR          BIT(3)
> @@ -108,9 +110,6 @@
>  #define FIFO_LVL_MASK(i) ((i)->port_conf->fifo_lvl_mask[i->port_id])
>  #define S3C64XX_SPI_ST_TX_DONE(v, i) (((v) & \
>                                 (1 << (i)->port_conf->tx_st_done)) ? 1 : =
0)
> -#define TX_FIFO_LVL(v, i) (((v) >> 6) & FIFO_LVL_MASK(i))
> -#define RX_FIFO_LVL(v, i) (((v) >> (i)->port_conf->rx_lvl_offset) & \
> -                                       FIFO_LVL_MASK(i))
>  #define FIFO_DEPTH(i) ((FIFO_LVL_MASK(i) >> 1) + 1)
>
>  #define S3C64XX_SPI_POLLING_SIZE       32
> @@ -219,7 +218,7 @@ static void s3c64xx_flush_fifo(struct s3c64xx_spi_dri=
ver_data *sdd)
>         loops =3D msecs_to_loops(1);
>         do {
>                 val =3D readl(regs + S3C64XX_SPI_STATUS);
> -       } while (TX_FIFO_LVL(val, sdd) && loops--);
> +       } while (FIELD_GET(S3C64XX_SPI_ST_TX_FIFO_LVL, val) && loops--);
>
>         if (loops =3D=3D 0)
>                 dev_warn(&sdd->pdev->dev, "Timed out flushing TX FIFO\n")=
;
> @@ -228,7 +227,7 @@ static void s3c64xx_flush_fifo(struct s3c64xx_spi_dri=
ver_data *sdd)
>         loops =3D msecs_to_loops(1);
>         do {
>                 val =3D readl(regs + S3C64XX_SPI_STATUS);
> -               if (RX_FIFO_LVL(val, sdd))
> +               if (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, val))
>                         readl(regs + S3C64XX_SPI_RX_DATA);
>                 else
>                         break;
> @@ -499,10 +498,11 @@ static u32 s3c64xx_spi_wait_for_timeout(struct s3c6=
4xx_spi_driver_data *sdd,
>
>         do {
>                 status =3D readl(regs + S3C64XX_SPI_STATUS);
> -       } while (RX_FIFO_LVL(status, sdd) < max_fifo && --val);
> +       } while (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < max_fifo=
 &&
> +                --val);
>
>         /* return the actual received data length */
> -       return RX_FIFO_LVL(status, sdd);
> +       return FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status);
>  }
>
>  static int s3c64xx_wait_for_dma(struct s3c64xx_spi_driver_data *sdd,
> @@ -533,7 +533,7 @@ static int s3c64xx_wait_for_dma(struct s3c64xx_spi_dr=
iver_data *sdd,
>         if (val && !xfer->rx_buf) {
>                 val =3D msecs_to_loops(10);
>                 status =3D readl(regs + S3C64XX_SPI_STATUS);
> -               while ((TX_FIFO_LVL(status, sdd)
> +               while ((FIELD_GET(S3C64XX_SPI_ST_TX_FIFO_LVL, status)
>                         || !S3C64XX_SPI_ST_TX_DONE(status, sdd))
>                        && --val) {
>                         cpu_relax();
> @@ -568,7 +568,7 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_dr=
iver_data *sdd,
>
>         /* sleep during signal transfer time */
>         status =3D readl(regs + S3C64XX_SPI_STATUS);
> -       if (RX_FIFO_LVL(status, sdd) < xfer->len)
> +       if (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < xfer->len)
>                 usleep_range(time_us / 2, time_us);
>
>         if (use_irq) {
> @@ -580,7 +580,8 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_dr=
iver_data *sdd,
>         val =3D msecs_to_loops(ms);
>         do {
>                 status =3D readl(regs + S3C64XX_SPI_STATUS);
> -       } while (RX_FIFO_LVL(status, sdd) < xfer->len && --val);
> +       } while (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < xfer->le=
n &&
> +                --val);
>
>         if (!val)
>                 return -EIO;
> --
> 2.43.0.429.g432eaa2c6b-goog
>

