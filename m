Return-Path: <devicetree+bounces-35271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 313F083CD9D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC6F11F26F9C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5284D1386C8;
	Thu, 25 Jan 2024 20:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gthl0H1S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8C4137C20
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706215135; cv=none; b=l2pHX+HX9YwN4YhQBcDdiZhh+fDiIV0RAapE2YVeN9msGTCt/Qe+h6bnAUhpRLqlOJ/FFgrTyB9WJGAB9wuRufbh8nU8peL9YHZqJn/FLMbnr7Mkgdg954jbytswDJTlxOXFdNVs5F7g60tQeFvW0G/++yyYNzvfhIrAmOhObf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706215135; c=relaxed/simple;
	bh=as8BxR+QqTPluaUhYT7i9ae+BmGNNbMHHNTI1DbPeLg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SdtYq0PjqhDsKqFIFx5r2k+Go+LhPrFJzgFhKiNW6rqHz+AcWKPC4TiUW8UrnP0zpvbEnlKC94m60OZSh3KL7bFu2jgHUyUfSLHj06GtIBj3bkDf+0gS3S2xQeBZnvbYm8NT/Ete/cRfb/EEWmxccnqZOyDPNd/AMuCtaCy9Tc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gthl0H1S; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6ddce722576so765518b3a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706215133; x=1706819933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YW4kVaU4qs4/wv4NEfs20us9zrffpc4IBOWQ2Q3fD5c=;
        b=Gthl0H1SL5pH6/nK+uMoSBbK7Y0m30Ms5oXRlQaFBe/TkPP4753hF0TuLxFWbXU3Fl
         oT3dmSw9L8+Hr617q6vK0IQncs8r11F9tAjpLA1dPW1+WSOpDYZyvXrOhWOR9INz+NlE
         x7q2ul6gS1CupMZbPcH5HAChrLpKlgwQhkqFHIJUPRsBeoCiiNZuETQ/91V2gEJQ9oUz
         HKvdbqerEU8EYANNV+ttk7UwNng9u5hUHvUvyKu8C7zXownQEWG6LPbYPU6wn8Ud0/dJ
         tLtDRRT0Rk2TQ65xIao4HcnrKcKI3OD/2JJcqhRMmSC/HFWMZY5qKOf1If2cnyGQI/wm
         EEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706215133; x=1706819933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YW4kVaU4qs4/wv4NEfs20us9zrffpc4IBOWQ2Q3fD5c=;
        b=RkvJ9ErOEl4b8KlUdU2q/ryYCACZEGBk0kkdbmpYmYKNCVbogBw2tWPf2C2Ihv3m7a
         JPboa2JJ9o8i5Xl0rOlxUcJ/TFdBbkv9TtV8O/6TKIHRKG5r1fM4xINVfK9P/dkQOeY3
         77RaFCSqKV/8dv4G0JNR7hjkcyJkXlBa09TrbRWO67tgnsdpsbFYa20NAPJCLH0H5ZRP
         oEThnbqcO1yP+R1xdYRaHQJRtNfdoKMAR2Fqme1Vs93rqE5yQs/EgrWMzJHElf1kKPSP
         2cq8t4cnefLg+f+6qd4ECP25RpEUXtqlu0k5g+00Snrjq57tqgTwp5wCDltfoxmkSeh6
         NmYw==
X-Gm-Message-State: AOJu0YwrSK5xboDp1DOVZ0aZuyOhPOt9GMb7HFpOHRvr9x76bT4rWbOZ
	7BYJISLau1Fk0ozvtr8waf7kC9B8qritG1AFgK/9mQ/vqj2yG8NOya0Tt6zVhgbIZCoLjuvnSni
	QYSWw7bKzqm1/qBCD3l5095O60k/qZF7yLHezbQ==
X-Google-Smtp-Source: AGHT+IHG2ateeum/Uje9xZ8HLCfUOWS6BVCrZklVdP/xXcY/9sA6a/GK03uHDwyYdokYaPXVysBq+NAthGfqOEN/Jk0=
X-Received: by 2002:a05:6a20:ce89:b0:19c:61d6:d050 with SMTP id
 if9-20020a056a20ce8900b0019c61d6d050mr199714pzb.72.1706215133202; Thu, 25 Jan
 2024 12:38:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-18-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-18-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:38:41 -0600
Message-ID: <CAPLW+4m+JO=7_hy4BaNtSZj18=ybHtk4n7E939=NEQC4dvdAsA@mail.gmail.com>
Subject: Re: [PATCH v2 17/28] spi: s3c64xx: drop blank line between declarations
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
> Drop the blank line and move the logical operation in the body of the
> function rather than in initialization list.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 00a0878aeb80..bb6d9bf390a8 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -1282,8 +1282,9 @@ static int s3c64xx_spi_suspend(struct device *dev)
>  {
>         struct spi_controller *host =3D dev_get_drvdata(dev);
>         struct s3c64xx_spi_driver_data *sdd =3D spi_controller_get_devdat=
a(host);
> +       int ret;
>
> -       int ret =3D spi_controller_suspend(host);
> +       ret =3D spi_controller_suspend(host);
>         if (ret)
>                 return ret;
>
> --
> 2.43.0.429.g432eaa2c6b-goog
>

