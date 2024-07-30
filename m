Return-Path: <devicetree+bounces-89576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7EA942213
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 23:16:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65CB51C22903
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 21:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28AFB18DF6B;
	Tue, 30 Jul 2024 21:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oTr+Xkn5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3798157466
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 21:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722374177; cv=none; b=nvj2Ep/n/jlL7XOuAp/fQGI0nSZAn6d2cwr+yI56cA8Tao8X6B2MtnkOdveTegrM6e2IrgzUldWSFzaVdM57e5jJSaSG528LBG017x9Ihgz+EI3Z5FES/pa8chKZLu4Pw5t9U4NWmH4unStZdaY2KRdG8Qxpg+orukxGrVcykbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722374177; c=relaxed/simple;
	bh=ORTj1whOmho9EBXBhVyx/Aod4OLgvVRSILSuObjsbck=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IEun7aUggYgmmeafdczKcl4iaMaWBgSa/7q4W1kIS0NWWJ3XMv7Es2FTCNELk4j8kO3K/U5U9YbmTb5Y9ZW7g/jY/Jw8q2SxoKpydjA9fNqmr3UvbWxiZbiT/nM9R4e3fioX+oExHD++QQz3jRtlNZQ0qFxUlXvqnUl8Bcocs5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oTr+Xkn5; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-25e3d8d9f70so3216495fac.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 14:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722374173; x=1722978973; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3SNgZGwTB2OgZzwunwEodtuAzjkcRKhZuJtkoHDBu5E=;
        b=oTr+Xkn5h/qwuJThagnlLaF4yBndOz/gaTEy51pqX7TtGsSpyG7lm1Y+h46oavZ4Bu
         UBLkYxOe2u0bSAcW9uflJVbTSLsuQJY71E0J1ILAqwzQgRjeLd2R/0SVe1epmUas6IGN
         ShwbgQtTM+B91FrN27FGpOHCcLg5nwT9o4dxsyL4fvr/tGSEFXqjq1owqMeC+adRnEyW
         Qxl+RsU3ryVWIIus2Ekcp9ioDy+/7OHzJ8x8OyWzycFjTeh8Pdc6r28eMuelvRyPlmag
         qMxUOQfUXZTRwCa7i/2xJYywmlEA7J8tk+CY0dFen2MS8uId2/AkJsIVIE+Ukfr8LJ0c
         qf+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722374173; x=1722978973;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3SNgZGwTB2OgZzwunwEodtuAzjkcRKhZuJtkoHDBu5E=;
        b=m491q+NN2YcJs6K8Ua4l28TfPr3ajyGKHSPuu6C85q0BB9Ktr1rZ4c/Qb2Z/18ajHb
         Zg1LvU1amlvX2IiriZbZt3Lpi/+KsSrt6yaObSL8rrV3u3wrKx/PWXwC4ATZqj9kBlfk
         4UN6pOMc76BK/xWeGj7Eig4CJuYvsrbcFL2tzrrngy8zj2NEpvBydXoyL0jt6omvUljv
         DqvA5MRl5YVjKMkDiu0MbhArC2CK1HQEIz8UN37IIINHqS629JYpm+pkhbmfpC+rIdrD
         /y3iz/MOJxCjOvdxUfo0sRTsYYj6JLgcA58fQuILPvuCXqzWeYlq+1cuHAzMegaotWYf
         TzMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfInH4LZ+Dzi/HZAdwCNJeBU6Wcoh6yo3y3+JKI8uitGBj6veQuEO8k1kWbbz9ALQ0CUj/wP+NRdtVzJYxtByf6HlL+RlLeL2VOA==
X-Gm-Message-State: AOJu0Yzcf5duKWOnoiMnqgXgp25Yn0/E4qrjk1zEjhfsHr/O6ZOBrfhX
	C3957pBrijy58mueypNIgcw7MgCIX/L1bZ6L7Io3xtThemVf3OtI/OYTvNM2F2w=
X-Google-Smtp-Source: AGHT+IEOaxswI3H9GFDKwy5yHX/0pb4wx+ESzHZirngCc6mranrs6dBot2o0wvrjYlgus5dT9h5zxw==
X-Received: by 2002:a05:6870:468e:b0:24e:8987:6f34 with SMTP id 586e51a60fabf-267d4cae74cmr15605740fac.3.1722374172963;
        Tue, 30 Jul 2024 14:16:12 -0700 (PDT)
Received: from localhost (75-172-120-197.tukw.qwest.net. [75.172.120.197])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9f836c845sm9423606a12.37.2024.07.30.14.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 14:16:12 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Tony Lindgren <tony@atomide.com>, John Ogness <john.ogness@linutronix.de>,
 Markus Schneider-Pargmann <msp@baylibre.com>, Uwe =?utf-8?Q?Kleine-K?=
 =?utf-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Ronald Wahl <ronald.wahl@raritan.com>,
 Thomas Richard <thomas.richard@bootlin.com>, Thomas Gleixner
 <tglx@linutronix.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>, Dhruva Gole <d-gole@ti.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] serial: 8250: omap: Support wakeup pinctrl state
In-Reply-To: <20240523075819.1285554-5-msp@baylibre.com>
References: <20240523075819.1285554-1-msp@baylibre.com>
 <20240523075819.1285554-5-msp@baylibre.com>
Date: Tue, 30 Jul 2024 14:16:12 -0700
Message-ID: <7hmsly60o3.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Markus Schneider-Pargmann <msp@baylibre.com> writes:

> UART can be used as a wakeup source for am62 from a powered-off SoC

nit: To be a bit more precise, instead of saying UART can be used as a
wakeup source, I think you should say:

Certain UART pins can be used...

> state. To enable wakeup from UART am62 requires a wakeup flag being set
> in the pinctrl.
>
> If the device is marked as wakeup enabled, select the 'wakeup' pinctrl
> state on sys_off.
>
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

> ---
>  drivers/tty/serial/8250/8250_omap.c | 39 +++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>
> diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
> index 5b7508dfb5d8..617a421a1396 100644
> --- a/drivers/tty/serial/8250/8250_omap.c
> +++ b/drivers/tty/serial/8250/8250_omap.c
> @@ -27,8 +27,10 @@
>  #include <linux/pm_qos.h>
>  #include <linux/pm_wakeirq.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/reboot.h>
>  #include <linux/sys_soc.h>
>  #include <linux/pm_domain.h>
> +#include <linux/pinctrl/consumer.h>
>  
>  #include "8250.h"
>  
> @@ -149,6 +151,9 @@ struct omap8250_priv {
>  	spinlock_t rx_dma_lock;
>  	bool rx_dma_broken;
>  	bool throttled;
> +
> +	struct pinctrl *pinctrl;
> +	struct pinctrl_state *pinctrl_wakeup;
>  };
>  
>  struct omap8250_dma_params {
> @@ -1345,6 +1350,30 @@ static int omap8250_no_handle_irq(struct uart_port *port)
>  	return 0;
>  }
>  
> +static int omap8250_select_wakeup_pinctrl(struct device *dev,
> +					  struct omap8250_priv *priv)
> +{
> +	if (IS_ERR_OR_NULL(priv->pinctrl_wakeup))
> +		return 0;
> +
> +	if (!device_may_wakeup(dev))
> +		return 0;
> +
> +	return pinctrl_select_state(priv->pinctrl, priv->pinctrl_wakeup);
> +}
> +
> +static int omap8250_sysoff_handler(struct sys_off_data *data)
> +{
> +	struct omap8250_priv *priv = dev_get_drvdata(data->dev);
> +	int ret;
> +
> +	ret = omap8250_select_wakeup_pinctrl(data->dev, priv);
> +	if (ret)
> +		dev_err(data->dev, "Failed to select pinctrl state 'wakeup', continuing poweroff\n");
> +
> +	return NOTIFY_DONE;
> +}
> +
>  static struct omap8250_dma_params am654_dma = {
>  	.rx_size = SZ_2K,
>  	.rx_trigger = 1,
> @@ -1566,6 +1595,16 @@ static int omap8250_probe(struct platform_device *pdev)
>  	priv->line = ret;
>  	pm_runtime_mark_last_busy(&pdev->dev);
>  	pm_runtime_put_autosuspend(&pdev->dev);
> +
> +	priv->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (!IS_ERR_OR_NULL(priv->pinctrl))
> +		priv->pinctrl_wakeup = pinctrl_lookup_state(priv->pinctrl, "wakeup");
> +
> +	devm_register_sys_off_handler(&pdev->dev,
> +				      SYS_OFF_MODE_POWER_OFF_PREPARE,
> +				      SYS_OFF_PRIO_DEFAULT,
> +				      omap8250_sysoff_handler, NULL);
> +
>  	return 0;
>  err:
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> -- 
> 2.43.0

