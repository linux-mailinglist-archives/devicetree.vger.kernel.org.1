Return-Path: <devicetree+bounces-20904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D91B7801858
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 01:01:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97E761F21107
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 00:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E78A23;
	Sat,  2 Dec 2023 00:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zAl8NWQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 218F119F
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:01:45 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1d0477a0062so57195ad.0
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 16:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701475304; x=1702080104; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mAq9aESkSR3AFEFm9X9jLBFq75wW+IJ+aFdTgvAj3CA=;
        b=zAl8NWQy86zk2Ry4cQU8TRkeiBBVAxYnyqYT1LBYcdII1p+jn5ExEPY8s7N2Hs/Rfz
         RF4uU/eJJ+8THqedTDmVLCg5Xe13ayFCDHK7STEgEz0wENj4M8mV/Bzmj54qvRnpRTsI
         CyOfSuErplUOjeeBgLljEvZRwotIiyxmBO9+jRl3TLM898WEWVKaBrbI2hPrdexUECaT
         WUJGWqHJMTipkdVglAhd8pDlawtN9JL1ND6N07Y/d0+MjO+OSlsbl13yzAQXhAdOGTlR
         VNuUc/8o8GIeS6S9pe4VfJDAFWIaYuEaYf9xrGbq3W+YBXK0RjBbbRSfDh+SCHKaoZKH
         BGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701475304; x=1702080104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mAq9aESkSR3AFEFm9X9jLBFq75wW+IJ+aFdTgvAj3CA=;
        b=U9fNMlDNFfV8zzx3ai1yOu2qPez/N9CJNuZcoi4fTWhiTZg/TSGkimhm/M9vs6N8ZX
         QgN1ph+zP7TYd0Ol9g2dkPohIm4+KUhqbrsEd6DhHOVxklDSRhYaJR928bBv5z1EHFhK
         78tdRYUFuj7gT+IzX34d4+XVKtGD92HBew0+S59rU4fv1nkmd8HBRZna9NI7pgUBlRI6
         M6VqmMT8ZwisXzfpFgg70piFXRHgEIItpXB/Y5B8+wfjsNcmnh+EvEQyaWhyeiWQgyHk
         KREfN5ONChNxRGZUBfnYvIgHvu6YEm6ZVF5Y/ROHuRvglRNHmjYAr8MHGwUzCSQ6QJYy
         /PJA==
X-Gm-Message-State: AOJu0YxOIMsYKZu+ymbEVT3vAQvOpt5n0Ksy9MA0KigLwWSSaljGux2X
	Ns//+GkA6QFGqlfeb0/dbYB2sQ==
X-Google-Smtp-Source: AGHT+IE17kpLJ8Q5Lug32eokrVRrSIqitRaVpd6LfPR22gRh2ZjbVP9mKMFERR3xRKkC14Zj3KFEnQ==
X-Received: by 2002:a17:902:c950:b0:1cf:dbef:79c4 with SMTP id i16-20020a170902c95000b001cfdbef79c4mr361753pla.16.1701475304205;
        Fri, 01 Dec 2023 16:01:44 -0800 (PST)
Received: from google.com (148.98.83.34.bc.googleusercontent.com. [34.83.98.148])
        by smtp.gmail.com with ESMTPSA id li18-20020a17090b48d200b00274922d4b38sm3738989pjb.27.2023.12.01.16.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 16:01:43 -0800 (PST)
Date: Fri, 1 Dec 2023 16:01:40 -0800
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
	tomasz.figa@gmail.com, s.nawrocki@samsung.com,
	linus.walleij@linaro.org, wim@linux-watchdog.org,
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org,
	arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org,
	jirislaby@kernel.org, cw00.choi@samsung.com,
	alim.akhtar@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, semen.protsenko@linaro.org,
	saravanak@google.com, soc@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com, linux-serial@vger.kernel.org
Subject: Re: [PATCH v5 17/20] tty: serial: samsung: Add gs101 compatible and
 common fifoszdt_serial_drv_data
Message-ID: <ZWpz5L2g4SB2cdVD@google.com>
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
 <20231201160925.3136868-18-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201160925.3136868-18-peter.griffin@linaro.org>

On 12/01/2023, Peter Griffin wrote:
> Add serial driver data for Google Tensor gs101 SoC and a common
> fifoszdt_serial_drv_data that can be used by platforms that specify the
> samsung,uart-fifosize DT property.
> 
> A corresponding dt-bindings patch updates the yaml to ensure
> samsung,uart-fifosize is a required property.
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

---

I verified boot to a busybox console with kernel logs printed to the serial
port.

Regards,
Will

> ---
>  drivers/tty/serial/samsung_tty.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 1b0c2b467a30..f8d98f1006de 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -2490,14 +2490,25 @@ static const struct s3c24xx_serial_drv_data exynos850_serial_drv_data = {
>  	.fifosize = { 256, 64, 64, 64 },
>  };
>  
> +/*
> + * Common drv_data struct for platforms that specify uart,fifosize in
> + * device tree.
> + */
> +static const struct s3c24xx_serial_drv_data exynos_fifoszdt_serial_drv_data = {
> +	EXYNOS_COMMON_SERIAL_DRV_DATA(),
> +	.fifosize = { 0 },
> +};
> +
>  #define EXYNOS4210_SERIAL_DRV_DATA (&exynos4210_serial_drv_data)
>  #define EXYNOS5433_SERIAL_DRV_DATA (&exynos5433_serial_drv_data)
>  #define EXYNOS850_SERIAL_DRV_DATA (&exynos850_serial_drv_data)
> +#define EXYNOS_FIFOSZDT_DRV_DATA (&exynos_fifoszdt_serial_drv_data)
>  
>  #else
>  #define EXYNOS4210_SERIAL_DRV_DATA NULL
>  #define EXYNOS5433_SERIAL_DRV_DATA NULL
>  #define EXYNOS850_SERIAL_DRV_DATA NULL
> +#define EXYNOS_FIFOSZDT_DRV_DATA NULL
>  #endif
>  
>  #ifdef CONFIG_ARCH_APPLE
> @@ -2581,6 +2592,9 @@ static const struct platform_device_id s3c24xx_serial_driver_ids[] = {
>  	}, {
>  		.name		= "artpec8-uart",
>  		.driver_data	= (kernel_ulong_t)ARTPEC8_SERIAL_DRV_DATA,
> +	}, {
> +		.name		= "gs101-uart",
> +		.driver_data	= (kernel_ulong_t)EXYNOS_FIFOSZDT_DRV_DATA,
>  	},
>  	{ },
>  };
> @@ -2602,6 +2616,8 @@ static const struct of_device_id s3c24xx_uart_dt_match[] = {
>  		.data = EXYNOS850_SERIAL_DRV_DATA },
>  	{ .compatible = "axis,artpec8-uart",
>  		.data = ARTPEC8_SERIAL_DRV_DATA },
> +	{ .compatible = "google,gs101-uart",
> +		.data = EXYNOS_FIFOSZDT_DRV_DATA },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, s3c24xx_uart_dt_match);
> -- 
> 2.43.0.rc2.451.g8631bc7472-goog
> 

