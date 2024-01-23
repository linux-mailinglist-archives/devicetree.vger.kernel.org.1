Return-Path: <devicetree+bounces-34389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE53083994E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:13:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CEFC1C2315F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF47D82D63;
	Tue, 23 Jan 2024 19:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dz0yCv1W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDDE81207
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706037163; cv=none; b=Z+VGr1Cd8vaHh+gkXyzdTN5bVAbC1LgnEjwz8ZURrFkpbJ9a7BVggb2m8q/KhyKa92F1G9LXIWBN21R4FCzF+fGgmwROXgmzZwRdmG4n7eVe5nkSxUcYH/WHczuiLQHaohA6iHfau3/MESIHipCrMsWPEKbMAu94QBhBDCm/TKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706037163; c=relaxed/simple;
	bh=WCVA+pw6+iSTOLRgl4ne/CK558PaHhdGFi3Vw7EsWbw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FxQDg7SHSHVT9psMU3Dr/nxKQ+q5eAwAFHUdoywVzSYOnZ03C8ubWhZXl3lKHvLFjF0OoGlb15v0gQdmG+3QBiTdxwitnFviFFJHV1Uikj/zzqHVEE38xIY+8okGZnWjZtspMg9yTAtuVqSm4q+wgX04XOv3Ih8XRTYqUiKndZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dz0yCv1W; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6db9e52bbccso2878437b3a.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706037161; x=1706641961; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2MABtBJt1eXd29le+TwN8zaGu6n3A3BwV6SbBkk6qw=;
        b=Dz0yCv1Wb5j2tjMpJ8RNMgaOMsukFpHHfj8sl0z94creHFxYFp/i8DHixA1b2w1IDF
         0mrB1kqP6cKQWvDGP4QJKfjC3+TgCPFg6e1Xsg0uMvn8+KLqZgtFZpdAgnHGM5OaTUJ8
         eVgRjYt7sL/5YJGdxTmYccDSvlWwBZal0+Lf03vO3a/urfEyZt9WVNLjZVTLzBvNv9oD
         5v629bLhJ9fh+2t4bW/j0MA3E2ZwTvaFJI0BBrErBEZFvw+ueNSOKna7MsJHiEdZYoQC
         MBAXtfW1eQWOOL/4wmgnyjEGtVIbjLZXpdVkl5WbHVKiloZpdji1FEwlFglKVzb4zLc+
         fASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706037161; x=1706641961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e2MABtBJt1eXd29le+TwN8zaGu6n3A3BwV6SbBkk6qw=;
        b=MVQsk/qYF9pr2M0a4SOSgl95eSC6+85IV/4nvjxmvc9K1Uf3/IqBSB1iGP4FvBPObk
         z2yGlD5dxZCCfqqfA32T7djZ3Zjqofmp4EJJA+sf86SVf1Zpf+3/h4JHi6IhiziM99d0
         GMe7P7V3kppn0o6pZxCDT8xcfixGq5ZkfIR0aOr4QjXDYLCuAWmKOAekcgIKqgETbI2t
         fQY5V6/r4C2zDAv+OBDabZikPjQA0ZVvqVFQoSXyILyKaUeM0d5G31l8yga3WGzwaoeJ
         DZFsRL38iPhpX/m1PTY74sNiQt0JvzJrizC7a5Mk1+Eb6izfHuoAEo+EqP9Fs6f5yb3e
         elEQ==
X-Gm-Message-State: AOJu0YyB7P/4pX8RwpVaA4ioODUl3q5swUYSdhyKDmyL90nzMwNFbyvG
	VpB+SNal946TdbH7BN+RnAkvJoKKfwrdM71P8BWR5xvvR8SKHu3cfBlWT+gTQHUKMWl1uCjB6eL
	NbLL4D7knJ/G0tRadVl33KwhNPB1cpsfEzrZySA==
X-Google-Smtp-Source: AGHT+IEzLIMx9KeDTQS/RcAgL4Xbbq/ry/ea+tOIU85SHc2O3G0CyeBj+EbdDdjeqw61KFQX1x1wVDePvwu4sqxtXrM=
X-Received: by 2002:a05:6a00:1901:b0:6db:d589:1d62 with SMTP id
 y1-20020a056a00190100b006dbd5891d62mr3904501pfi.7.1706037161193; Tue, 23 Jan
 2024 11:12:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org> <20240123153421.715951-7-tudor.ambarus@linaro.org>
In-Reply-To: <20240123153421.715951-7-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 23 Jan 2024 13:12:30 -0600
Message-ID: <CAPLW+4=36DeyQ+v83j6ZqHM4wubet3gnVDvZVptn6oS-pdEhYA@mail.gmail.com>
Subject: Re: [PATCH 06/21] spi: s3c64xx: remove else after return
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

On Tue, Jan 23, 2024 at 9:34=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> Else case is not needed after a return, remove it.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 9ce56aa792ed..db1e1d6ee732 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -406,12 +406,10 @@ static bool s3c64xx_spi_can_dma(struct spi_controll=
er *host,
>  {
>         struct s3c64xx_spi_driver_data *sdd =3D spi_controller_get_devdat=
a(host);
>
> -       if (sdd->rx_dma.ch && sdd->tx_dma.ch) {
> +       if (sdd->rx_dma.ch && sdd->tx_dma.ch)
>                 return xfer->len > FIFO_DEPTH(sdd);
> -       } else {
> -               return false;
> -       }
>
> +       return false;
>  }
>
>  static int s3c64xx_enable_datapath(struct s3c64xx_spi_driver_data *sdd,
> --
> 2.43.0.429.g432eaa2c6b-goog
>

