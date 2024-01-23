Return-Path: <devicetree+bounces-34388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA739839966
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50194B2E296
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 786F31292DD;
	Tue, 23 Jan 2024 19:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H8ZB+YR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374771272A6
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706036788; cv=none; b=Ktn3XJPozI3T5oq0UT0ovwt4iv6qpOCjsLy5D4uYGf2ms6S7hApz893A8wvxJzyEPkRw4l4MXwb5oEQkY1eB1dxtksHOxa/15kUUwMSw8i9FhkvpKj1O9gHRgZlsuOUfUXV+YtYj6Kr2BltYHiNt8v2c5Qn05FQ24IfHpuMl63g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706036788; c=relaxed/simple;
	bh=5IKq56rZiQOYgPeWbGnpyMEk8pqBBnPZA0ayr4DR8xg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LErf53MQuuv9l+mgS7/ycRR1gLoQzyU7+1Jmh5lyVjJOiR95L4wMcD2ctHw+5foxfkkqJ/vv0JmIzjjdtLG4mS8qOs/na0NZLK49Nke50an7x+8CXe72iVVyTnw9FoJfbPjjVJTtWh9cN4G86xYze758YwVxlYaLsn73EM4ZYqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H8ZB+YR9; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6da4a923b1bso3223126b3a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706036785; x=1706641585; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdLtmnUfI+i2IE7Csxqqy3c+cHq7ckx9/lEVoMFKEOA=;
        b=H8ZB+YR9cEdBWEfz5ekJjjjLZumA1iqc/cZ7hYQwjt7Xqjd2T5jDhh2Nn+matZ6KjA
         j4K9QuphvwtovvlggoRvup10qCkZ5JPN1UweQKOALMghSOYYMYiasTSDXGnx7kjoBSxR
         QeU/bdEc9vLiwY+OVd0tQgw6VFptcVQPvsjgDKFYzdUxljbiMFzQOdiOlujTy1LcZcE9
         XE5d9U6372aYzJu0SKOo3mWGaSRt691/tW7YhqM/j/p4rEXWWPYR21mm3m7s6W3bUlUG
         I4/sLZTOfED8u1Xr7QH+2m/hnaONnLbuoNl90hQ9hakSpRBljD8fOdWThnUZ4V32zlRs
         1kAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706036785; x=1706641585;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdLtmnUfI+i2IE7Csxqqy3c+cHq7ckx9/lEVoMFKEOA=;
        b=GaEAC45Jpbh8d7/T87yttVqbh0ORt24fxamARqPDBC8zQ/islCTPv8TTUT3LsPhA3w
         9UwUKODmfOm6VmZj/6Xhv9SdnSEUDGA0Il+Wq7D5Kf7dSbEsrOPmUH+JTvpKnXjav31/
         BENN0qsKcknMRwNZjpRaGIOUMjUwmG6SdSzUZ9UsEPOuxQF73rLdaqueL52efAMAfesC
         YXQN4/yhv60fK3gArtzOxx6wBBKMLCMmNTfN/sEilvF7hxKftvE0SJOAXK4HFkrguj7R
         461rInX2UxAeD2Y8rmjX34+Leeuq7WLOWyYX3KCfDDWUdrbF5yR1qxHkQ1FpVfHkROdh
         trCw==
X-Gm-Message-State: AOJu0YwzP7Cg3b2NZ6PGAlNQ1YTtcSiJ3YDyv3IGomSrnrZ6V33rLvjr
	mJ7HecFs1VrWZu70srRyOF7WGGkZEvu/DFLnDO05emmctosE4FoEn96iKmpbD1V6ILxmonKYUth
	uRrRQDY5KT2n+ucSmR1aECdgx0WAvaPWLPdq1XA==
X-Google-Smtp-Source: AGHT+IE7eMXgr8fyduKjXpnWZmowsEhu4ODPRkNQaCqLV70A0lHSDhtv7fTrbwCQAQct8ubtrHaDOhEQ26uZTOBuRjU=
X-Received: by 2002:aa7:9a47:0:b0:6d9:a0da:4fbc with SMTP id
 x7-20020aa79a47000000b006d9a0da4fbcmr3559257pfj.36.1706036785556; Tue, 23 Jan
 2024 11:06:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org> <20240123153421.715951-4-tudor.ambarus@linaro.org>
In-Reply-To: <20240123153421.715951-4-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 23 Jan 2024 13:06:14 -0600
Message-ID: <CAPLW+4n-ryLp+MEv1tgX4RfMdtWP+kAyzABqyQ1uJ+V5f0_WuQ@mail.gmail.com>
Subject: Re: [PATCH 03/21] spi: s3c64xx: remove extra blank line
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
> Remove extra blank line.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 187b617e3e14..26d389d95af9 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -16,7 +16,6 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/spi/spi.h>
>
> -
>  #define MAX_SPI_PORTS          12
>  #define S3C64XX_SPI_QUIRK_CS_AUTO      (1 << 1)
>  #define AUTOSUSPEND_TIMEOUT    2000
> --
> 2.43.0.429.g432eaa2c6b-goog
>

