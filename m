Return-Path: <devicetree+bounces-35264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B01B583CD6E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62DCA1F231F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B751386A5;
	Thu, 25 Jan 2024 20:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WO0r7E2m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C8137C44
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706214630; cv=none; b=tOY8JqbCtqR1TZdzftQ6CG7W7rctN6Pr/MgMOdk3pYUZP+uytmlhow2A08nA5gYFdBgGh5LzrY6P0r81KluSMVWM4wBQ+BvsoqNwgGkiRSnde+T4Qg99xPidDP5fvW5W70+dN4OHJZhKLacKzupgMBapoLkvNk/v5l9jZGkqZpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706214630; c=relaxed/simple;
	bh=qyB/Y5vX4BWVM3IVM8ZZ84h1GieTlRH/8FgZwWwIei0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PM/dH1Fr0Mj4R1s3qaikcwqF19Ce6TlV3qeeWbhwY/NxFPGOPD6NB6VsZe8SuLNAFhVU6yPWg0Vi7PorciarQFlLKInCRKRvKSea+snx1/OG1fk5eHM8UJ1kLXIGz6IuKXxVz1a64qkSQ1hr8WOdzEi7MU/fK1adcHlNdvSp3Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WO0r7E2m; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-290fb65531eso1398764a91.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706214628; x=1706819428; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYxfXc50Twx0SI7BklS0TiFbp4w6OJhOAqF13p3nHFU=;
        b=WO0r7E2mwHFP651NKU78CcekdQ30/UjNBj2R+vQr4u0VCSyZfVplnHkTlzJ21yzh3R
         Vac4PpH5NloJVyFrHdf1rZ/DI5GTkPph6TJ57dT3t7bMX/wB5bNV4MZyxdWSx39MKhyH
         lFBRViQUNxbowHeQgdDJH1u3Be6slTdsL/tLELxrNXL3mSkUlqPzh4lIQqkwqj05e1oi
         ZWgGcu7aTLV9sr4GK0OrtU3StJUMbzyf5rvblvORieCvCkJ2zw7EKWa0c7HIytfq7xs9
         AHtAHUUQvHYXax/Gb7eyYVv2BgOBkGtB6Ikc3JXaoWjsd1XMFO1Ac/dRG1hZ+ORn3UPN
         vXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706214628; x=1706819428;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OYxfXc50Twx0SI7BklS0TiFbp4w6OJhOAqF13p3nHFU=;
        b=UDoEfbTullRx56Td4VVyZBY3F/5nWMjbukhxmMOwW7XMAfcuIwuRQOeOT21otqhFfw
         nfIc1/KOi9SsWj000KZQ5pIxgvuFEEsUsl3iuUzUJri5TkBeOjU4rt1BgdaVCxndaH2B
         C4ce2KImwUe8e64Y4YPfggdlIMmGvmS4cGsgCpx5JCRoDWjAQ9Q+ZynK8jSsGktRdtaN
         I6hJVPUwaWL5ARFlnduzxxs+YtHk4pxMCVWtxYuq4kwEoZAUJrMg+meFq+KG0qGkKbNC
         X60a7fyZnazRe5+StWcrZgycIsI6DMrE7lj/kuN6dRDQjhgtC+L/l8sUwf6OH7cuGK36
         s4kA==
X-Gm-Message-State: AOJu0Ywcgr6D09l8Q5ANfsQpZeWJGwXmfged2iyF15KLrIUx3kVkaRde
	9S8IJW3LONZnD5P2LzjJ3rLg8KQmaomAvOgr6KQaoX6JTQOjzG5SjnM3RIetbkGiaFz+MvRZA+x
	ZpOUZKtJTNHSpnih3+ZdfjMvMKUWzzBABujnEVw==
X-Google-Smtp-Source: AGHT+IEz8Vtc1vgjaJUrrDM1+EJq/k5aivTI3aYtqCF7YvJZFNwF0nqii5+o5d1QjE6jqHB/WQnyY/qBbleLzKs8X3g=
X-Received: by 2002:a17:90a:ee45:b0:292:7fa8:29a with SMTP id
 bu5-20020a17090aee4500b002927fa8029amr149942pjb.67.1706214628497; Thu, 25 Jan
 2024 12:30:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-16-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-16-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:30:17 -0600
Message-ID: <CAPLW+4nXTr5AYeeXYxvAF1Je4xrcqg6Hv2y_O9TkenK3giry+w@mail.gmail.com>
Subject: Re: [PATCH v2 15/28] spi: s3c64xx: return ETIMEDOUT for wait_for_completion_timeout()
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
> ETIMEDOUT is more specific than EIO, use it for
> wait_for_completion_timeout().
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 447320788697..d2dd28ff00c6 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -523,7 +523,7 @@ static int s3c64xx_wait_for_dma(struct s3c64xx_spi_dr=
iver_data *sdd,
>
>         /*
>          * If the previous xfer was completed within timeout, then
> -        * proceed further else return -EIO.
> +        * proceed further else return -ETIMEDOUT.
>          * DmaTx returns after simply writing data in the FIFO,
>          * w/o waiting for real transmission on the bus to finish.
>          * DmaRx returns only after Dma read data from FIFO which
> @@ -544,7 +544,7 @@ static int s3c64xx_wait_for_dma(struct s3c64xx_spi_dr=
iver_data *sdd,
>
>         /* If timed out while checking rx/tx status return error */
>         if (!val)
> -               return -EIO;
> +               return -ETIMEDOUT;
>
>         return 0;
>  }
> @@ -574,7 +574,7 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_dr=
iver_data *sdd,
>         if (use_irq) {
>                 val =3D msecs_to_jiffies(ms);
>                 if (!wait_for_completion_timeout(&sdd->xfer_completion, v=
al))
> -                       return -EIO;
> +                       return -ETIMEDOUT;
>         }
>
>         val =3D msecs_to_loops(ms);
> --
> 2.43.0.429.g432eaa2c6b-goog
>

