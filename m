Return-Path: <devicetree+bounces-35323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC9583CF55
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3EC61F238A4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21E9913B7B2;
	Thu, 25 Jan 2024 22:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ko6LbK2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC8513B7AE
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706221716; cv=none; b=sUPJzgrUNjibxAJsH1LOOXOqhj/nNv/FJCp+4J0lDyIyFCZRl9sVgY0JkuL3E3AauiNOfpytXxMRJYNSBwaTn7+tcFUiZBv5e6++FNQY3iU0uLZnG5dufoOIP3b9RHQ38M+W/1Ieg9ARnch0B9RdnG9PLYr39P89sB+v1oDs4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706221716; c=relaxed/simple;
	bh=fewPAIgDGLGdcAwZjaqy7sb9SgnJwjIghHSrzOnA3/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A22OxsMPpM/ZUFrTeHdkbZD31g6J5xjvJUS7uxn+O+03kNTGd3RTfwewgu9ciWJ8D/WRJFdXON6/AL/e++o2Cv6b2jZ9thPUubvwKYTrYGhRRTPcOPp3mbAv/hBR9cO6I+KKdE9GPT6c/ERB7ZinfOFTEgSTIZWQRFi6/9b5RT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ko6LbK2j; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5d42e7ab8a9so1720110a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706221714; x=1706826514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zA/exiIpBBgAezYkA5YOl1Fk+JrXYDEmPKHOao67IaM=;
        b=ko6LbK2juHwNUG3Gx5jXI8zidNONjTpKtcEYhExGjxsACQt/BKdcymqKuXsTbZ8Grx
         PpURoiTiaMTFkKPKoCUFirIaIx0rZnw1HIjwri3PsErwuvh2fIIevV4UxUjVUuho31qs
         Fl1Sbshme/EzqQpYvbh3zRKoxqOieRIsU0WgeaT8mxgKI/LcQXNEKtEj0SYTnncxcI8k
         Q72Sac4hIA4aaAOqM9mLVWxpMnIpnM7ys21CX9gNRraZq6fejui00Hur79T05pBIY0Cd
         q6WdPCY5KFFYI27Kez+4I+rlS7Aq5+BmiSgfcS7vAP3k3IO7kwCMxhHh5BYe/3x3daFy
         U0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706221714; x=1706826514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zA/exiIpBBgAezYkA5YOl1Fk+JrXYDEmPKHOao67IaM=;
        b=cH9PNT3eNHDJg1tJIrDR97miYTQhq6tM2/xigupXWnIe4vKvG/H8IW+//ghMJFBCuJ
         OSUdN3tNfRQP66wJG6xu/zfJAnCQNTAXOCPJFNpzrV9qp/8T0F3cXnDuf+3PrC6ygfdA
         o4e4WdSRgS2m0lnuHbqwOHVfq7OZQCkAWKaJYqEtOzdVAQXcTihuN+PwGG++70A7KTAz
         dll1NXpS1+UjWSq1+cNAsogE1bT64gB9xL9bWsMpyIMHUSw81AQErU0wbd9PlapIbfQ1
         GX2vQFuHMeubMZFbyZRhKHQUx5uDjqwfQEvIYmgrWNbsU5cAPIaOINIa9a9jz4LGzGGJ
         Ok/A==
X-Gm-Message-State: AOJu0YyvEfEAgoA/qzoX2fx77Ol50Wq/eWGGb/Kd40O1YxxwEkTLRRgc
	Lxgdn7eU65KgYdIBGu9/anIi+Ds+nhHd3D8xoiKcVKpJKGkan93hzYj2T3/SUddEeljeqwiQpnT
	B4mG+WJDCNxPEHeXvC9ID69BU4PRxyge10/OUpg==
X-Google-Smtp-Source: AGHT+IGf7mEs59neeLmFZTnVN+j87V7sBNtG0A/G6MI/URpASg2tvJBJnJjiUMH8fWPi0lDE99a4eX2t8nzszPn5wI8=
X-Received: by 2002:a05:6a20:258e:b0:19a:999c:6656 with SMTP id
 k14-20020a056a20258e00b0019a999c6656mr423041pzd.72.1706221714015; Thu, 25 Jan
 2024 14:28:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-22-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-22-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 16:28:22 -0600
Message-ID: <CAPLW+4mG_xVvZRrE_jfMxK2zO9GnLAPrHPdzW5bCOPpoiuCjsA@mail.gmail.com>
Subject: Re: [PATCH v2 21/28] spi: s3c64xx: infer fifosize from the compatible
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
> Infer the FIFO size from the compatible, where all the instances of the
> SPI IP have the same FIFO size. This way we no longer depend on the SPI
> alias from the device tree to select the FIFO size, thus we remove the
> dependency of the driver on the SPI alias.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 5a93ed4125b0..b86eb0a77b60 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -1381,7 +1381,7 @@ static const struct dev_pm_ops s3c64xx_spi_pm =3D {
>  };
>
>  static const struct s3c64xx_spi_port_config s3c2443_spi_port_config =3D =
{
> -       .fifo_lvl_mask  =3D { 0x7f },

How will it work with already existing out-of-tree dts's, if only
kernel image gets updated? I wonder if it's considered ok to break
that compatibility like this.

> +       .fifosize       =3D 64,
>         .rx_lvl_offset  =3D 13,
>         .tx_st_done     =3D 21,
>         .clk_div        =3D 2,
> @@ -1389,7 +1389,7 @@ static const struct s3c64xx_spi_port_config s3c2443=
_spi_port_config =3D {
>  };
>
>  static const struct s3c64xx_spi_port_config s3c6410_spi_port_config =3D =
{
> -       .fifo_lvl_mask  =3D { 0x7f, 0x7F },
> +       .fifosize       =3D 64,
>         .rx_lvl_offset  =3D 13,
>         .tx_st_done     =3D 21,
>         .clk_div        =3D 2,
> @@ -1435,7 +1435,7 @@ static const struct s3c64xx_spi_port_config exynos5=
433_spi_port_config =3D {
>  };
>
>  static const struct s3c64xx_spi_port_config exynos850_spi_port_config =
=3D {
> -       .fifo_lvl_mask  =3D { 0x7f, 0x7f, 0x7f },
> +       .fifosize       =3D 64,
>         .rx_lvl_offset  =3D 15,
>         .tx_st_done     =3D 25,
>         .clk_div        =3D 4,
> @@ -1459,7 +1459,7 @@ static const struct s3c64xx_spi_port_config exynosa=
utov9_spi_port_config =3D {
>  };
>
>  static const struct s3c64xx_spi_port_config fsd_spi_port_config =3D {
> -       .fifo_lvl_mask  =3D { 0x7f, 0x7f, 0x7f, 0x7f, 0x7f},
> +       .fifosize       =3D 64,
>         .rx_lvl_offset  =3D 15,
>         .tx_st_done     =3D 25,
>         .clk_div        =3D 2,
> --
> 2.43.0.429.g432eaa2c6b-goog
>

