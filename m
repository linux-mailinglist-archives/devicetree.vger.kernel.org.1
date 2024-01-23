Return-Path: <devicetree+bounces-34395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9B5839999
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C3EFB2F429
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0DF85C6C;
	Tue, 23 Jan 2024 19:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XH87orin"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B29D85C67
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706038121; cv=none; b=BhjptzIRBozGz8R8SJjRVoJP42b0V5hVo0gQLmzoPAlfaBvn654XkDMLV2M/quFE2DFD8as4XrNt0C6qhrfvgx+xDSxz2z38yQBTQ7xPMkgJfiNlsNmmD2q+gy8gMleNQX80UfOfXjew5Z9OwRlS1Vti2Y7mtGZ4P4jeCrYUk8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706038121; c=relaxed/simple;
	bh=z635edAjEZRLK9uYsv6D75GltoeAuq2T8K98RgKsohU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pFtZFdVLYCvvvlWN8for0MdkD2sjs3tq6a/7owWW4D/0wLCWug3FCi4nvjMi8Ge+kAKLEQ/EAbeE3LcWriZma4Ih3r4Va7kxsByT6CD6+5q646YpC0SgAS5f2He2liMorT3rYpDctKIF5LfNXvT1u4ZZrpbwEwIo/z41FJS4jSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XH87orin; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6dd7debc476so615496b3a.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706038120; x=1706642920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m4fx2jRa6XWdzoBOQRFudfhQ7Cys5tOUHx4aJsazh8w=;
        b=XH87orin++yohiMfBwAoFVV9WdBMKy+twg/U6p/3DyC9KKTOU2Ux3eLbdMfNgfkODT
         ppj7MvP0UEPdg6jEE5yAgZJvT/XXOtMm2ElKwrRwEkVaArOZLozQ8ORNwNgs8bDa8asU
         /rn+q+Ke3bT8gefXTQ+LrLW55JQhv4q1x7wguM/Vwu9Whh0g7jpL5Zt7xDaOWe8L6bz5
         cNisxXxI0IQgX4RWq2IQgPrBOrWWzqV4tOTLOOfjyQv/6vsOetesi3H3EwmHWBlNyngt
         vtoakd+H+8kUbkC5yVFqV+TzKZ+SL2E7oviXIw6OHpzBZKwcyBDRRyJBRaSo9Qp9hGap
         A3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706038120; x=1706642920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m4fx2jRa6XWdzoBOQRFudfhQ7Cys5tOUHx4aJsazh8w=;
        b=BGlbZOk4h44pctXks0OpSnRCVKzKIV9N69ClpdFwDLLy8lRtjqOY8lwNhHdUoBoBhn
         PcN2B4u6U5VhIHdUycGcAcwLEVtZTVPcaPo7SkByulu4fmR35BdGeQ2eeUy8NIbnNG6x
         zS9IoaVr3Nr3PlVlLKC9KzBtuW0DWahFywze9I2bsEOseDj9FgRiqvxuQ8FrETh+nEtz
         KAC6VRk44OtlxiJH8Rzq40DixCE+DEE7AhrILKsn2YLJVS1qF+1eyJKveBJn5/8dWTEr
         fzBA4KVvAyS0lI86AEwTTPdSUjpsUfsCfM06y8aSkcRWwZLyXbU6K9dJDA8uQhiZ7RFT
         yTzA==
X-Gm-Message-State: AOJu0Ywzttrq2Qg/p3rU5i+rGNrer4hloG2UFtXEG68K+c0FZNWPJhLQ
	SXwRZguRmTZVVbqklH7OK9ojyPDMZHOzbC0pAoZ9XxKbjUeUoJrvZ/bGOIQQ770J2n0Znd8yryq
	9BV0chTmWF0YeAyKSdVWo2SzX6xvIhHL/h+CSXg==
X-Google-Smtp-Source: AGHT+IE4pMdlHZBzRIybtPg+syPs+PySUc9Nk1uvLXRsfE7U/0t69O5o5wVcE/JsP6QewXSBCaO+EnVOVMCLRSuJrjI=
X-Received: by 2002:a05:6a00:460e:b0:6da:bceb:3990 with SMTP id
 ko14-20020a056a00460e00b006dabceb3990mr3781418pfb.53.1706038119921; Tue, 23
 Jan 2024 11:28:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org> <20240123153421.715951-17-tudor.ambarus@linaro.org>
In-Reply-To: <20240123153421.715951-17-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 23 Jan 2024 13:28:28 -0600
Message-ID: <CAPLW+4k-5vdkBNdewTgG72iAr0oLv1zXncnmx-qy6diJqQMNDg@mail.gmail.com>
Subject: Re: [PATCH 16/21] spi: s3c64xx: add missing blank line after declaration
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
> Add missing blank line after declaration. Move initialization in the
> body of the function.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index f5474f3b3920..2abf5994080a 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -1273,8 +1273,9 @@ static int s3c64xx_spi_suspend(struct device *dev)
>  {
>         struct spi_controller *host =3D dev_get_drvdata(dev);
>         struct s3c64xx_spi_driver_data *sdd =3D spi_controller_get_devdat=
a(host);
> +       int ret;
>
> -       int ret =3D spi_controller_suspend(host);
> +       ret =3D spi_controller_suspend(host);

Why not just moving the empty line below the declaration block,
keeping the initialization on the variable declaration line?

>         if (ret)
>                 return ret;
>
> --
> 2.43.0.429.g432eaa2c6b-goog
>

