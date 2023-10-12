Return-Path: <devicetree+bounces-7947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBD47C64AA
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F31B28251B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897FFD264;
	Thu, 12 Oct 2023 05:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hrhdeNL+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F5328EF
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:38:20 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86D6AC0
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:38:18 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-278f0f565e2so470372a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697089098; x=1697693898; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wwWnNHAbWyeAscY15FX+TU6dhJaouDy+zgSEChH3FwY=;
        b=hrhdeNL+xrFwt5JwZw2WTndkt3uiH1J30wKia9q7VffNmYl4iEhp32agj2z88CKH2q
         B1PZ0h0mz/aygSprMv+aUJ0etTN6MZzdmpThC7MSs/IKZIRX4d23Buf9OkWtORpbqLq2
         NrpkE8FLNrmAnDzTH47YWGRffztAQ1/vDPm+B+Ii5jNcKPSHIqu5SpGCqFKfXrjGXm+A
         CGxGxgReWs13EJ1d3vG8ALrwgdsKiqrcgnTf+H6qhS16qVdGuvS5jjwCOrrSIgxH+GAf
         pGPeXjxU2riHHxXosc5fneN9e/KBDDWBx5xWxbqlGawA8Ga2N+c1P+rgIANSduNugJQm
         mDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697089098; x=1697693898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wwWnNHAbWyeAscY15FX+TU6dhJaouDy+zgSEChH3FwY=;
        b=O70j9x0VS34Iiy2JiGKDT1Y4+uKpDJaHXWg3qpMtFRmOmMYBrpgbsbc3OVsc1Wa6ds
         l4EPOrxQ++YlqklQU3nH4xgLIm3jVm778nfXz50YvQWvzVpXUqBh4lD1/Jv/9SIJVmtB
         PoqMxerdjrBTCzMY/OIA0NvH1QYEk+nmOLSD6rW9pco6bD7jnJ0BkwgLjkW2YW2gKkEO
         EYAqwu4oxyw/gqtJtfXWVT08yEP6J2iZdAQOP4+d/AgYcPn2h5R7Q/D6GyCsSq1gkVZf
         ChPO6uNKNJ4yV0mG/NykF/yAe/1aUhyGAzzIQhH+zyn+BXLP6BmHhpMpuPD8oBUeMjxZ
         8vQg==
X-Gm-Message-State: AOJu0YwWfOY3SBULzuVc4YWOLIc1+KjOErsg7ypXs3y+EGunNTev5wM9
	oJ3jxgKDAZw++a0v5qdSBmhRSyHm4SJzCnwX/+HQjw==
X-Google-Smtp-Source: AGHT+IGSsE9UdV0Qgkc/+49sBerKsPKwjip2GPaMvf0yjDHtLvarJUP6ASq6DTMnyLnKKYmGaxwKGOUUUcsGQWvpu/Q=
X-Received: by 2002:a17:90b:1c83:b0:274:616e:3fc4 with SMTP id
 oo3-20020a17090b1c8300b00274616e3fc4mr19950072pjb.34.1697089097916; Wed, 11
 Oct 2023 22:38:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-17-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-17-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 12 Oct 2023 00:38:06 -0500
Message-ID: <CAPLW+4m1KLXJ67uDJ83V+zdSA0qU4cDh9Q+irpcixz1btMVv7Q@mail.gmail.com>
Subject: Re: [PATCH v3 16/20] tty: serial: samsung: Add gs101 compatible and
 SoC data
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Add serial driver data for Google Tensor gs101 SoC.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/tty/serial/samsung_tty.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsun=
g_tty.c
> index 07fb8a9dac63..26bc52e681a4 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -2597,14 +2597,22 @@ static const struct s3c24xx_serial_drv_data exyno=
s850_serial_drv_data =3D {
>         .fifosize =3D { 256, 64, 64, 64 },
>  };
>
> +static const struct s3c24xx_serial_drv_data gs101_serial_drv_data =3D {
> +       EXYNOS_COMMON_SERIAL_DRV_DATA(),
> +       /* rely on samsung,uart-fifosize DT property for fifosize */
> +       .fifosize =3D { 0 },
> +};
> +
>  #define EXYNOS4210_SERIAL_DRV_DATA (&exynos4210_serial_drv_data)
>  #define EXYNOS5433_SERIAL_DRV_DATA (&exynos5433_serial_drv_data)
>  #define EXYNOS850_SERIAL_DRV_DATA (&exynos850_serial_drv_data)
> +#define GS101_SERIAL_DRV_DATA (&gs101_serial_drv_data)
>
>  #else
>  #define EXYNOS4210_SERIAL_DRV_DATA NULL
>  #define EXYNOS5433_SERIAL_DRV_DATA NULL
>  #define EXYNOS850_SERIAL_DRV_DATA NULL
> +#define GS101_SERIAL_DRV_DATA NULL
>  #endif
>
>  #ifdef CONFIG_ARCH_APPLE
> @@ -2688,6 +2696,9 @@ static const struct platform_device_id s3c24xx_seri=
al_driver_ids[] =3D {
>         }, {
>                 .name           =3D "artpec8-uart",
>                 .driver_data    =3D (kernel_ulong_t)ARTPEC8_SERIAL_DRV_DA=
TA,
> +       }, {
> +               .name           =3D "gs101-uart",
> +               .driver_data    =3D (kernel_ulong_t)GS101_SERIAL_DRV_DATA=
,
>         },
>         { },
>  };
> @@ -2709,6 +2720,8 @@ static const struct of_device_id s3c24xx_uart_dt_ma=
tch[] =3D {
>                 .data =3D EXYNOS850_SERIAL_DRV_DATA },
>         { .compatible =3D "axis,artpec8-uart",
>                 .data =3D ARTPEC8_SERIAL_DRV_DATA },
> +       { .compatible =3D "google,gs101-uart",
> +               .data =3D  GS101_SERIAL_DRV_DATA },
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, s3c24xx_uart_dt_match);
> --
> 2.42.0.655.g421f12c284-goog
>

