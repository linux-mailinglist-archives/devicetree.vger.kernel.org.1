Return-Path: <devicetree+bounces-35262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2E083CD59
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 853802959EE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94FE6137C2E;
	Thu, 25 Jan 2024 20:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D1ut7Los"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18231136678
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706214243; cv=none; b=QmQeHBQ7azuerzdPD5SMi9d7gxeL3VYkZGMEDnOYgMJxAzSa7Cg4gE54ztgK5pZRj0F/MWUmQRb9Ilg56LoBESyZZfGAwu8EWELUPBjfHsER0cCO5lQnEJSGvNM0hMOyM8PZ/X8n693rEGJ6Q4FcGnq2hBCAWaOl2mUtBWUqw7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706214243; c=relaxed/simple;
	bh=kqQAwBLGyxViE4u0vbdsunK3v7Z4PgeP8PTXlsO5KuM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=adMtZH81PWWBXizB3xKA+IUOcV/sdtPK0aG0u+bxR/OT/Tx9RFH7UtVr/o+fU/Oftn7lLDVrTY3xrQP/5f92PIxx1o1jDEEtqOqRue45vBkN9dwaBc3LwxW0pF0ZUVimuyFyKpT59/8DXV9SYUzy5ubW6CS8wx2v/LGxNzFISVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D1ut7Los; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d70a98c189so45913865ad.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706214241; x=1706819041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YpIaVYqx4hvbLjS/JKbsqZWjGvfbA2FGS3JVN0jglMA=;
        b=D1ut7Losk9rUiKWKgbvaWJh/EGvqET39yGcfxrnQAorXgY5XcyyrL8DMGicJTQpkX4
         vWaENVP8rke2wzAZC1wsnFOt3QJUuCGJO4u39txVsuGjLZJxfpsrTYI4KU8CYOx28s4A
         qk9oNXRW+2oiSljN3MIi41WadqXw9YhkJoblWP4gC3/a+6mr4itPUtKkLYRkE0gFxXvj
         c/269RfQKzB+a1DHCY2j9qbk/9YYtA/iKCHfzPAU+1QpGK2AL4T0LGpjXRiMaEuRFBGS
         N+Pvea1+EGYyTmm/Hyj6/LZrId54GOYsV59fh1a3hh3Bh4cmm6RvMV0VwFxiNX72L05i
         bX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706214241; x=1706819041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YpIaVYqx4hvbLjS/JKbsqZWjGvfbA2FGS3JVN0jglMA=;
        b=YdicjaoLllAfcf0qHo83b6qOmTI4+OVeX/xjBeG2x/ZXuXX+ntHf2moSfksKz9MK1d
         bPqlHW1SLP+Pfi5XYFKFz3znFnOZXP1E6lOoLtPbZF1j2Qsl96IiIx1BUy9E2XPtaEoq
         KIe7QVgXX+pp2BIAxNeFTtkO1talorBfCr4QRvSs/6IyfVZV0Gv8w1e/Ioc1GjYh0o4m
         fbyjHViOD5IyFiGgYhoVGqW1TsxsyOU4r2HTN59GvZzN9qe/jj7l3KPZ3UfOS4IUE+0Y
         n5wFrJ2LjskW8q7QuNRFTsT2tyGCAKGGUyzIIJIyKGnaXtqkUuH78oDWleshHUaI9nzs
         pxIA==
X-Gm-Message-State: AOJu0YyIRhqdDLesfyi6ON3RaRAd2mczkxNWR563STN+Ndf5DT4tr964
	quGktWDRBk6xcii+iak9p9h6H27hXNAFXKFW5kiyejMsilw6gr19Zhnf4mAbTCrRrafAYoAnMhZ
	w0lrDxtT1n/UCZh88POArdB8i49YJ7hosP8DEzQ==
X-Google-Smtp-Source: AGHT+IHnyAGNsE7seCAbcUAO51vGJRmQKWLFPrYB/WBL0TkR2ISmA1F1Y6Av+oPhpkMmznxOGBDBxLv4iR7HHGTMlzI=
X-Received: by 2002:a17:90a:4a85:b0:290:fd33:241a with SMTP id
 f5-20020a17090a4a8500b00290fd33241amr160196pjh.48.1706214241394; Thu, 25 Jan
 2024 12:24:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-14-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-14-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:23:50 -0600
Message-ID: <CAPLW+4m6W-SC=gijBkx_-pK7RvcxFQgnkQzpA23hbO5TEYd_3A@mail.gmail.com>
Subject: Re: [PATCH v2 13/28] spi: s3c64xx: propagate the dma_submit_error()
 error code
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
> Propagate the dma_submit_error() error code, don't overwrite it.

But why? What would be the benefit over -EIO?

>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 48b87c5e2dd2..25d642f99278 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -316,7 +316,7 @@ static int prepare_dma(struct s3c64xx_spi_dma_data *d=
ma,
>         ret =3D dma_submit_error(dma->cookie);
>         if (ret) {
>                 dev_err(&sdd->pdev->dev, "DMA submission failed");
> -               return -EIO;
> +               return ret;
>         }
>
>         dma_async_issue_pending(dma->ch);
> --
> 2.43.0.429.g432eaa2c6b-goog
>

