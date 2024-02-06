Return-Path: <devicetree+bounces-38988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9685A84B1AA
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C88F61C22BBE
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A969B12D750;
	Tue,  6 Feb 2024 09:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dNw332XI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92CDB12D745
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 09:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707213379; cv=none; b=duk69t79rxBseg2XKc1lOXtdoY+4qCswZV4oEUx5AQnC/CRDJ5jrLZtj1rinL2RLikQFAcGeJfHMCr0iSUI3haAWVGopij5BWjBJYr4SnfDGZbVu1B9az6UHSHMZR0gU0RSztwAMFaLP2zW+uLGNsn88dD7D0VlQldOOuzJmfck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707213379; c=relaxed/simple;
	bh=pwU543wkEC4pEjHTs+niRFnjN9ZiwdPq48b+x0FBCPI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tI5rzJkTtreFibiOipP37qUhE4siCntiU/3iKz7cUk1rCZsPjBGYGf9W9cO9i35Oo1BD9GOxX5pAhGyh2LYm6Su/Z8Q36617eScFvQZ3RDDumolO1NCrgdYevgvXQAmosHTxnhrT8UEnZ01u95nwHM3cJs7OwgVsM3WVkPakCus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dNw332XI; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6818aa08a33so2923246d6.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 01:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707213375; x=1707818175; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CMShq1kVjIqxhVRjaGYU4SJMpzxmIaFIwT3PC41eekc=;
        b=dNw332XIaoEHTnyiiMk3asBU5CHbddzHvxKV9wLeuItnrU4cNtduoGyNdd36GEdJkC
         K3CnLNDrnykRWlRm+USnYor2iY2Vw9p/MFMAG7BigFgvXnXDpN9atbjihgFjITDKxVVp
         GWbd14Jh3My/BF7yOQoUkXkjXdRc2gzqQ9TVlYgiLwM/MiVYRF6QO4sodB3OBjFT9H+h
         ZoI7kqDAj+LWDk4LtUU8S3adz+M4yzXfndyXVVnsh1QnDMdj4ap14jREpBZ5X/GYzYvv
         IPfP5CrbYFXq+GhE1IVc66+guvIGAusPwA7q8SKNU5B6cccyiK2yRITHySeD1SrHWE7i
         CRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707213375; x=1707818175;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CMShq1kVjIqxhVRjaGYU4SJMpzxmIaFIwT3PC41eekc=;
        b=m/tVcAv/v0g9/4NjD2tokRrVRE7w6An9JVOk0ELDWc9bw/2hobUSa+9EDabgMseQSC
         yfNt3jEZIL5iCb0zN156lyuGweyL0I1/fOUGYCXBY9Ih3Ue377IWG6x1qlJHVHQf/7rM
         fVUJpPbd4WCX6+vsNCIMjNnXfjt2ENeiAYimEhFJHh7Hn6WGLhV1jBlUMFupar+tMTbd
         DKYXgE33iXYkfO6y5Ybch4hO7sesinOdN/0xSqr8F5vXSV+DXhVta/hHg0aN8Bn94XGC
         nec0dq/6A5C9ad1HpHDWSrsGsV9Jbmbw+HbnbUIKCOoQ8uvhjndPtt5YhPfuYoU4jPzP
         buxg==
X-Gm-Message-State: AOJu0YyUC8tnQDEgtQmOO9Z8FFmE5Rh5kfIn7ZWTzIo4vBbSNGZq69MZ
	t35Ae8ySlgZVGJ3BFEZd6p5LtGcuol0+N2rdi1wHc3NVq8Sf2/Sx2rAlPu75JpJvW/46TCq0vwT
	AGqqkQQohTZ13QZ6FsBtsJCM1RgOglQhXV5RcCQ==
X-Google-Smtp-Source: AGHT+IFSdhPP6seqkN3QxA7HFQZjJlBC9D2/9kKIGZd292r7UcQK8SRWFqqkFkZYfhENYbBAeL3ygtD/3krIkOa2XD8=
X-Received: by 2002:a0c:dc09:0:b0:682:bfd0:d79e with SMTP id
 s9-20020a0cdc09000000b00682bfd0d79emr4046715qvk.27.1707213375539; Tue, 06 Feb
 2024 01:56:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206085238.1208256-1-tudor.ambarus@linaro.org> <20240206085238.1208256-2-tudor.ambarus@linaro.org>
In-Reply-To: <20240206085238.1208256-2-tudor.ambarus@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 6 Feb 2024 09:56:04 +0000
Message-ID: <CADrjBPr7AjCOi_sgzpJWRmKdyYkgB8Vcw0HW-e4VKUVh_yT6wA@mail.gmail.com>
Subject: Re: [PATCH 1/4] spi: s3c64xx: explicitly include <linux/types.h>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, semen.protsenko@linaro.org, 
	krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, 
	linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 6 Feb 2024 at 08:52, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> The driver uses u32 and relies on an implicit inclusion of
> <linux/types.h>.
>
> It is good practice to directly include all headers used, it avoids
> implicit dependencies and spurious breakage if someone rearranges
> headers and causes the implicit include to vanish.
>
> Include the missing header.
>
> Fixes: 230d42d422e7 ("spi: Add s3c64xx SPI Controller driver")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 72c35dbe53b2..c15ca6a910dc 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -17,6 +17,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/spi/spi.h>
> +#include <linux/types.h>
>
>  #define MAX_SPI_PORTS          12
>  #define S3C64XX_SPI_QUIRK_CS_AUTO      (1 << 1)
> --
> 2.43.0.594.gd9cf4e227d-goog
>

