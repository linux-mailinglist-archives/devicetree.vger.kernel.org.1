Return-Path: <devicetree+bounces-35274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A5F83CDB4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16D961C21595
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A69D1386C2;
	Thu, 25 Jan 2024 20:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ve+S+Opg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AB5135A5E
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706215452; cv=none; b=UnLGjmN82OuyXWcx5K8P+NkaooHIwBuGXlg77OGc4bAzonbSlHuFtkg/TVRZ+86k6ldCFui8Yakl3jH/1CYbhUeR71kmf5wkq/bjB4oJUntbGlOkhoMku5YZ4X8txxeLjP6HwzDEr+Twbk11ysV7kcxBq3cc1WyEe+KJQxc4iB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706215452; c=relaxed/simple;
	bh=A4DlPA5ZS8DI8SfLbauTdQPP3/bM0j755xOJ7bN0/S8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V5KNNGyFVf3bKdhv+9166yzLfiIXCstekqwZZPSar7N621IngQyr5/YBQk6aPGWbwJltRUKwx+k3+PZ4b0Hj369ZSjG0kLq2ulvIZjoGXU0U/QrmOQ6cMRrKbvv9bFtNuMup6oMETt4A/Dr2Z2AWpUec0n8bf9CYvQW2p2VfHPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ve+S+Opg; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d72f71f222so33103035ad.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706215449; x=1706820249; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=45hoLVU1kMNJvCkEmNn31hPORALk5tp9XZjsZd89mts=;
        b=ve+S+Opg0+nNdr3cG1Hmlq/n/tylJEi7bNn+b3HrEaGUHTRKZN7XtBExIbZ6LXFsfI
         YVlTOlvnlC4eoiAh+KUo0z9GS/kOU/BEZJRi+13ViFrgfVHdB8C3O3oVj8zhCPOxGNa4
         tZ5yh6iMP0NuNDFTFMfUcvLENxuulopTJcxSvYDXIli/TvjvwBOdaDaMBxfxesU/Ysgk
         9JvcOxtquvcVZB8+TTBD/naVr5a8G7ssb5ItQqHZNbF89OfgtDBtTuyY8mrACUveL+O4
         lsmTjo3ZInh9oLBtscqCvPPZ3actpJOdnNJdrkKegLrLiZO4CS6uxiF6vi7CXPoSDyGR
         c9wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706215449; x=1706820249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=45hoLVU1kMNJvCkEmNn31hPORALk5tp9XZjsZd89mts=;
        b=p7og3LiUTWewaACF0qK+flhQenQ/sYTfASaG/jaVVwJvA3Z3BZW51OlWp1WO/d9HlW
         Qg4YpmiIkiFWE5pPAjdPs7SW4XRdEiFUI2uPmgy5451lbDh3GhIDfYDazZYy3kx2kGjX
         ZBeAj24wzfRzhk1JA3EnNmPQZMSjdiIV3yq7NV2Ms10ufVMYP+atlLNOR6vVJ9atuvmz
         4uZQ0ceiyzD3uMO8PfYJrrARqhPkTS0sOpyszhfv0igpYgnTR7iiTqeLTvurmHmKqh7Q
         Z/RXD4mXT4QBYj4T9VIfZZ8p3YAhOGxHFU7c0eCn5SHEpOWV3pyv3QcmOwsfsAYkNMVJ
         U0Bw==
X-Gm-Message-State: AOJu0YzdKhMTRUseZhcks4pi1h/OcUoH5qKi9BjiJBQw3Z+anZ0oaMR/
	tMJkSPBjS7MSBOdxiOt/ge+fUryP3eMzXOdv41JFoeoU5dl7f4s94EEqEbOEa0piWjzGtOdX8Vb
	NQrZ/cRzSNkFVG00BYedjRWdotrXYKP+OQZVWaw==
X-Google-Smtp-Source: AGHT+IFjxDRR951l2uvjkFJzpekmldx6UXtJcNdQqyuBbeP5oU2ps8Vv1hWhLiEkCrbTHrGuKMtCJQO0mTbC53OYYXY=
X-Received: by 2002:a17:90a:5785:b0:28c:fb86:23ce with SMTP id
 g5-20020a17090a578500b0028cfb8623cemr181303pji.44.1706215448724; Thu, 25 Jan
 2024 12:44:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-17-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-17-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:43:57 -0600
Message-ID: <CAPLW+4mLWU-8H=qESe9csXm=e_ByvP=nc7MEJzknv+XAUjqUZg@mail.gmail.com>
Subject: Re: [PATCH v2 16/28] spi: s3c64xx: simplify s3c64xx_wait_for_pio()
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
> s3c64xx_spi_transfer_one() makes sure that for PIO the xfer->len is
> always smaller than the fifo size. Since we can't receive more that the
> FIFO size, droop the loop handling, the code becomes less misleading.

Drop (spelling)?

For the patch: how exactly it was tested to make sure there is no regressio=
n?

>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 75 +++++++++------------------------------
>  1 file changed, 17 insertions(+), 58 deletions(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index d2dd28ff00c6..00a0878aeb80 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -485,26 +485,6 @@ static int s3c64xx_enable_datapath(struct s3c64xx_sp=
i_driver_data *sdd,
>         return 0;
>  }
>
> -static u32 s3c64xx_spi_wait_for_timeout(struct s3c64xx_spi_driver_data *=
sdd,
> -                                       int timeout_ms)
> -{
> -       void __iomem *regs =3D sdd->regs;
> -       unsigned long val =3D 1;
> -       u32 status;
> -       u32 max_fifo =3D FIFO_DEPTH(sdd);
> -
> -       if (timeout_ms)
> -               val =3D msecs_to_loops(timeout_ms);
> -
> -       do {
> -               status =3D readl(regs + S3C64XX_SPI_STATUS);
> -       } while (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < max_fifo=
 &&
> -                --val);
> -
> -       /* return the actual received data length */
> -       return FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status);
> -}
> -
>  static int s3c64xx_wait_for_dma(struct s3c64xx_spi_driver_data *sdd,
>                                 struct spi_transfer *xfer)
>  {
> @@ -553,13 +533,11 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_=
driver_data *sdd,
>                                 struct spi_transfer *xfer, bool use_irq)
>  {
>         void __iomem *regs =3D sdd->regs;
> +       u8 *buf =3D xfer->rx_buf;
> +       unsigned long time_us;
>         unsigned long val;
> -       u32 status;
> -       int loops;
> -       u32 cpy_len;
> -       u8 *buf;
> +       u32 status, len;
>         int ms;
> -       unsigned long time_us;
>
>         /* microsecs to xfer 'len' bytes @ 'cur_speed' */
>         time_us =3D (xfer->len * 8 * 1000 * 1000) / sdd->cur_speed;
> @@ -582,48 +560,29 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_=
driver_data *sdd,
>                 status =3D readl(regs + S3C64XX_SPI_STATUS);
>         } while (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < xfer->le=
n &&
>                  --val);
> -
>         if (!val)
>                 return -EIO;
>
>         /* If it was only Tx */
> -       if (!xfer->rx_buf) {
> +       if (!buf) {
>                 sdd->state &=3D ~TXBUSY;
>                 return 0;
>         }
>
> -       /*
> -        * If the receive length is bigger than the controller fifo
> -        * size, calculate the loops and read the fifo as many times.
> -        * loops =3D length / max fifo size (calculated by using the
> -        * fifo mask).
> -        * For any size less than the fifo size the below code is
> -        * executed atleast once.
> -        */
> -       loops =3D xfer->len / FIFO_DEPTH(sdd);
> -       buf =3D xfer->rx_buf;
> -       do {
> -               /* wait for data to be received in the fifo */
> -               cpy_len =3D s3c64xx_spi_wait_for_timeout(sdd,
> -                                                      (loops ? ms : 0));
> -
> -               switch (sdd->cur_bpw) {
> -               case 32:
> -                       ioread32_rep(regs + S3C64XX_SPI_RX_DATA,
> -                                    buf, cpy_len / 4);
> -                       break;
> -               case 16:
> -                       ioread16_rep(regs + S3C64XX_SPI_RX_DATA,
> -                                    buf, cpy_len / 2);
> -                       break;
> -               default:
> -                       ioread8_rep(regs + S3C64XX_SPI_RX_DATA,
> -                                   buf, cpy_len);
> -                       break;
> -               }
> +       len =3D FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status);
> +
> +       switch (sdd->cur_bpw) {
> +       case 32:
> +               ioread32_rep(regs + S3C64XX_SPI_RX_DATA, buf, len / 4);
> +               break;
> +       case 16:
> +               ioread16_rep(regs + S3C64XX_SPI_RX_DATA, buf, len / 2);
> +               break;
> +       default:
> +               ioread8_rep(regs + S3C64XX_SPI_RX_DATA, buf, len);
> +               break;
> +       }
>
> -               buf =3D buf + cpy_len;
> -       } while (loops--);
>         sdd->state &=3D ~RXBUSY;
>
>         return 0;
> --
> 2.43.0.429.g432eaa2c6b-goog
>

