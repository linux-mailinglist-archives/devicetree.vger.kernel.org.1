Return-Path: <devicetree+bounces-252884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E92D1D048EC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5EC3320260F
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC24631AA9B;
	Thu,  8 Jan 2026 15:34:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE64346FB8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767886464; cv=none; b=JTVQ28RAJOeQCuSM/CwtiH98k8ioG4h8Elr1W4hBzySqebN4TbOCIL+3IUbvCbGL1oKGbRlkG4LXGn0CxbLo9t1Sd5GpFwKaxxnfGl+T1Aq0eFkYg1BPeXDJNymKWjK1eDzJecFPhaQTpLSGFVu6hVoLYLHZ7i5LGqzLK0RSRbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767886464; c=relaxed/simple;
	bh=e+OtGCe5Sk6t9FVB5mpfIVm/rpc9dmyJ4vUAETdRSQc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UexlZblhFWYpU0brVyEEFSZ5kCAsFS6ugh0fEFGaOFU6WGZv5HXXAWBwrT7RlWOQAGccdZ+iPW1Vgpc7eaAAMX8ZNnPJeQY8hH7XpgCqcFxW7FYcdSFMtEZpYR2vEVt6fSdOEDeZQgJepj+k1qd4dAoyIDr4+5dExv6iiDMmq9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c7660192b0so2282985a34.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:34:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767886459; x=1768491259;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Myx/T2jiAzQj13PVTSJwAglhfaduo0kFw6dVkLRm/Kw=;
        b=cw1QVrwrfejeVUSxiAX1iAwFmbcR4bqpW0FGquGdfC5Qb7tll4qsmwWnM1BiHRs21D
         t7drF207rWgm0JHIxKsHv7jLReGRIwB2q6uhm5k5ymbRaaOt+EmH2qmk9ovlgngw8kHa
         iet1ZSrOej5kg/cANgNlq33JmSE5CnfXW+mH26dkC5qb7/G13vXa3Q/1FwqBmTKR3kc0
         zfFlFM4YPlWhTRsFE6izwIwfRjgIJRRf777FEAWTR5yzoPyS8xyhn3CAsSpQDF4RkaZs
         tTXaBom4qjl8K6cHWekKJZumJ7MbrOPf1C9+WEtThLQsVrLsDiBgZI9QTqTn8o5/kMDb
         Vdnw==
X-Forwarded-Encrypted: i=1; AJvYcCVC/eHGdmzSR+iBlnIGBbTu+UT9c9x3Dg4bpNHd1vKjgMbZeTRfueFTdysWYh5beQxf6kuDkTz6NqVb@vger.kernel.org
X-Gm-Message-State: AOJu0YyPkWJltSA4koe7GsW9VP31FspGCrT4Zx8834bQHxcQ50czHgza
	4CqJtRkLK5QYWWRGn65cFDLUikpxfL+wyvT/+5oiSD2I6dUpOzp/kv1F8LRaiC4D
X-Gm-Gg: AY/fxX45TWqddiya199v44+grBjRmwAvehLBNeqlcqdB5Eck5xCPi8VfC5Lc0iu6dD0
	i8DQkbeCDMUpoWcYo3mQzI4nCLvo3nfdKPSuEqYjfl9DoKcFkky6K35oZzippNb/Tg8wZD0nX6n
	E/M68kLEjDMBwDCre1p27buSacGc7XuSUrpG82Xq9+iUk8qbVrIYBweM/j9r/2ddP7BxrtJmGl9
	aBKzl8deZWR1mzKIier7JDoMOl4BMhbGjvzN4vKwTGAz9ClkA2sbtsdjTQVMmkKT137Zs+yd8yz
	OXoYKid6r7c6nYCkr/vJ3GfwCQlZW43OL62mF/2euQiQRxDJksdwvhTrz1/eCF3qzYchVph31M0
	bfb0OaNvAiFWQswF2KM28VYvVguVEdW50OrVE7krc2oKfcNRCL0LsT9M0rf9r5bNFGV/wDQ9RYT
	KHU9xrVv5pOGxDnOHxZ6qEiFlqGfbJwYChYxrP9OzDWATpFxJa
X-Google-Smtp-Source: AGHT+IF81bhPG66dJcZm+UiOuhcfS9DhAL93amJbAj1fgi+lLldQl/outWQHN+3p+4s4A9qmDcxYUA==
X-Received: by 2002:a05:6820:751a:b0:65c:fc52:c347 with SMTP id 006d021491bc7-65f54eeb502mr1791449eaf.14.1767886458897;
        Thu, 08 Jan 2026 07:34:18 -0800 (PST)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com. [209.85.161.48])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65f48ccea34sm3333504eaf.13.2026.01.08.07.34.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:34:18 -0800 (PST)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-656d9230cf2so1674687eaf.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:34:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUdn82Z3J2n86qfEbuuwfRgsSjvAFDjEBVrVkIqpaCMy9QHBG64fiiUcqwAtwaOxlTiNnKA/SnZ9zyW@vger.kernel.org
X-Received: by 2002:a05:6102:4a83:b0:5ee:a81a:dea4 with SMTP id
 ada2fe7eead31-5eea81ae785mr282830137.27.1767885976851; Thu, 08 Jan 2026
 07:26:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:26:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWEj=3dLMPtFLtvoQ2aW_qRBLes_viCKmiWzK3bUe7uxA@mail.gmail.com>
X-Gm-Features: AQt7F2qzrssQHw0k6aAqGzzh2oKOX1eJ3p9c7BCb14ihkvvK0IAUBKGlnhMTeis
Message-ID: <CAMuHMdWEj=3dLMPtFLtvoQ2aW_qRBLes_viCKmiWzK3bUe7uxA@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] thermal: renesas: rzg3e: make calibration value
 retrieval per-chip
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs expose the
> temperature calibration data via SMC SIP calls.
>
> Prepare for them by moving the syscon usage into a single function, and
> placing it in the chip-specific struct.
>
> Rename the functions to match their functionality, and remove single-use
> variables from the private state.
>
> Also, move the calibration value mask into a macro.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/drivers/thermal/renesas/rzg3e_thermal.c
> +++ b/drivers/thermal/renesas/rzg3e_thermal.c
> @@ -70,7 +70,12 @@
>  #define TSU_POLL_DELAY_US      10      /* Polling interval */
>  #define TSU_MIN_CLOCK_RATE     24000000  /* TSU_PCLK minimum 24MHz */
>
> +#define TSU_TEMP_MASK          GENMASK(11, 0)

This is the value same as the existing TSU_CODE_MAX definition.

> +
> +struct rzg3e_thermal_priv;
> +
>  struct rzg3e_thermal_info {
> +       int (*get_trim)(struct rzg3e_thermal_priv *priv);
>         int temp_d_mc;
>         int temp_e_mc;
>  };

> @@ -334,22 +337,8 @@ static const struct thermal_zone_device_ops rzg3e_tz_ops = {
>         .set_trips = rzg3e_thermal_set_trips,
>  };
>
> -static int rzg3e_thermal_get_calibration(struct rzg3e_thermal_priv *priv)
> +static int rzg3e_validate_calibration(struct rzg3e_thermal_priv *priv)
>  {
> -       u32 val;
> -       int ret;
> -
> -       /* Read calibration values from syscon */
> -       ret = regmap_read(priv->syscon, priv->trim_offset, &val);
> -       if (ret)
> -               return ret;
> -       priv->trmval0 = val & GENMASK(11, 0);
> -
> -       ret = regmap_read(priv->syscon, priv->trim_offset + 4, &val);
> -       if (ret)
> -               return ret;
> -       priv->trmval1 = val & GENMASK(11, 0);
> -
>         /* Validate calibration data */

I think this comment can be dropped, as this is clear from the
function name.

>         if (!priv->trmval0 || !priv->trmval1 ||
>             priv->trmval0 == priv->trmval1 ||

> @@ -402,11 +404,16 @@ static int rzg3e_thermal_probe(struct platform_device *pdev)
>         if (IS_ERR(priv->base))
>                 return PTR_ERR(priv->base);
>
> -       /* Parse device tree for trim register info */
> -       ret = rzg3e_thermal_parse_dt(priv);
> +       ret = priv->info->get_trim(priv);
>         if (ret)
>                 return ret;
>
> +       /* Validate calibration data */

Obvious, so please drop this comment.

> +       ret = rzg3e_validate_calibration(priv);
> +       if (ret)
> +               return dev_err_probe(dev, ret,
> +                                    "Failed to get valid calibration data\n");

rzg3e_validate_calibration() already prints its own error message.
As this function became small, perhaps inline it here, and use a single
dev_err_probe() in case of failure?

> +
>         /* Get clock to verify frequency - clock is managed by power domain */
>         clk = devm_clk_get(dev, NULL);
>         if (IS_ERR(clk))

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

