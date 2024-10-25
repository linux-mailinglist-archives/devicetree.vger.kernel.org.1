Return-Path: <devicetree+bounces-115699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE5D9B063A
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71159B2680C
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 14:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02F9D15821A;
	Fri, 25 Oct 2024 14:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rSwnIInW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E5C1442F3
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729867923; cv=none; b=lPIXMlZ7RrTe1xWe/Njex1ZEAia+YcvLK5SENUdEg9wm7sGe+A9835VNdxIP4O+NnbbFFXvGVgaRe3yVjcl77tbWgdv3poyQhOTWT8KlE9L/h6knnvQdERw2CxGxYeCRZgjHHSsh9F7f4jyyyl9tdH14+N/zno68KFyq6FnpuRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729867923; c=relaxed/simple;
	bh=Tpjg+FtmDNYW3Q3q2EP2J57WPEMbN0cjGpOXFFJF6SU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RhN/lCC2FKLVHfnGWTZideRp1eRm8XV6FohFArC2qWhYjV8g3fEGWHlJi8css7J9/7ngLIgLJgp9Wl/kPuX2FxthtXBNlreKmfsISXzoY6HTG1umg14TPYrClFdeMlTeA6YDm3XULpNBw0KdRSsMCssRX/IfX5wiKYXngRnPV/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rSwnIInW; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so2065960e87.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729867920; x=1730472720; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OdmEA9Pt4hPLy+Gk+oZV9nXry2EKovQw8Q5PC4Q8Ego=;
        b=rSwnIInWDQYhqTvfhe+12UleYzdiG00AXvbaKSi0vs/2IqkGsv8bpUJRcrWqwDJ1Ax
         fwHX5mskXDR/BtbdGg/6LhvxFNlfXTPmNSwrHO2GB91st18r9SVXQ69A7Ks0U4c7+/P6
         pnBBd+ucO4ZBEBxsNaH3kKKyJcEv39AgauoIS3wnwamx2g1YeYUeMZrVCCHIwRMqJxju
         TA/vyn+B5vBiub0GbeU4wEcJiEPr/E/h+OgihrivUl2Bm+ugOm1YmUWSc6nUlIMmnPNX
         U52d61ztjWN5Au5XSg9Gni2LTwb/3ExTUuXHatzN9SnhU6Y8WjcMu24mEQ2xZIpQuM0u
         Xvgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729867920; x=1730472720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OdmEA9Pt4hPLy+Gk+oZV9nXry2EKovQw8Q5PC4Q8Ego=;
        b=vMqh6tKkcGmgA2VaEQd7qXSsz1WqLLkwmj6JaQq6e0EIoInn09Z3HMLi6fmnLC15Pc
         WOPX2wiSa9tjMwiniOYrU5befLNt5/6ebi174gGEagZCuKvgozrKUuMTys46Igw6AJhW
         b12UhOTPQ+smtuE782Nzw1MTRVNBXra9Xec/gOIfQI7AAyys1d77pUfDCCfkkwdcF2Bu
         /xOGDJ5WkeFLaW34F30KHRgvKU02Es6h2XJNgOCdvu8rx684DhJNJtqmYMdYm+b33XlE
         n7AFEvhJ0a7lD1wZ2nrfBqE84D/Hu3u/9K66xpCFsKTw/7VyB285Yz4tU+sqr9eAHC68
         GbHg==
X-Forwarded-Encrypted: i=1; AJvYcCUiLg/KSqKhsU3pfY4796+t7PKbfRdCPxDL5TNU692XzOfMOuFeOWb+aoPGA1Ag6eYxsD5qJTg88cEz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2K9CzXDRx0g39k/wvB5TCoeoX1/PHF0pc7nnyyXYIjWlPewsM
	R0gn4YT5ZJdY7byHTpBUAU3UT3JIlRqYl+phyT+lvK0xx8Kicl+G4uQof6Is84extCoO4qmMWkX
	rakpWwoNAm//GMSnHv3uVDh5BsFyQ/mY48uQ2wA==
X-Google-Smtp-Source: AGHT+IGiLD1WiZTLuiIZWdX2d+oO+C5IkrqpeWeNws8Zj1oDVnmqxSUDpqiWwUI2EKDDCtTCFDT0JOMntdwiI2CJd08=
X-Received: by 2002:a05:6512:e8c:b0:539:eb82:d45b with SMTP id
 2adb3069b0e04-53b23ea0214mr3822976e87.56.1729867919707; Fri, 25 Oct 2024
 07:51:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017131957.1171323-1-catalin.popescu@leica-geosystems.com>
In-Reply-To: <20241017131957.1171323-1-catalin.popescu@leica-geosystems.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 25 Oct 2024 16:51:19 +0200
Message-ID: <CAPDyKFoZRc1K1EqY2+1UJft9vE5VsKRKv4xBPu_F6sANOUXOCQ@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: pwrseq_simple: add support for one reset control
To: Catalin Popescu <catalin.popescu@leica-geosystems.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, m.felsch@pengutronix.de, 
	bsp-development.geo@leica-geosystems.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Oct 2024 at 15:20, Catalin Popescu
<catalin.popescu@leica-geosystems.com> wrote:
>
> Reset controls being refcounted, they allow to share gpios across
> drivers. Right now, reset framework and reset-gpio driver supports only
> one reset gpio, so add support for one single reset control. If more
> than one reset gpio is configured in the device tree, then fallback to
> classic gpio control.
>
> Signed-off-by: Catalin Popescu <catalin.popescu@leica-geosystems.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> v2:
>  - drop DT bindings patch
>  - use reset control with 1 reset gpio and fallback to gpio with
>    multiple reset gpios
> ---
>  drivers/mmc/core/pwrseq_simple.c | 44 +++++++++++++++++++++++++-------
>  1 file changed, 35 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/mmc/core/pwrseq_simple.c b/drivers/mmc/core/pwrseq_simple.c
> index 9e016b0746f5..24e4e63a5dc8 100644
> --- a/drivers/mmc/core/pwrseq_simple.c
> +++ b/drivers/mmc/core/pwrseq_simple.c
> @@ -17,6 +17,8 @@
>  #include <linux/gpio/consumer.h>
>  #include <linux/delay.h>
>  #include <linux/property.h>
> +#include <linux/of.h>
> +#include <linux/reset.h>
>
>  #include <linux/mmc/host.h>
>
> @@ -29,6 +31,8 @@ struct mmc_pwrseq_simple {
>         u32 power_off_delay_us;
>         struct clk *ext_clk;
>         struct gpio_descs *reset_gpios;
> +       struct reset_control *reset_ctrl;
> +       bool use_reset;
>  };
>
>  #define to_pwrseq_simple(p) container_of(p, struct mmc_pwrseq_simple, pwrseq)
> @@ -67,14 +71,21 @@ static void mmc_pwrseq_simple_pre_power_on(struct mmc_host *host)
>                 pwrseq->clk_enabled = true;
>         }
>
> -       mmc_pwrseq_simple_set_gpios_value(pwrseq, 1);
> +       if (pwrseq->use_reset) {
> +               reset_control_deassert(pwrseq->reset_ctrl);
> +               reset_control_assert(pwrseq->reset_ctrl);
> +       } else
> +               mmc_pwrseq_simple_set_gpios_value(pwrseq, 1);
>  }
>
>  static void mmc_pwrseq_simple_post_power_on(struct mmc_host *host)
>  {
>         struct mmc_pwrseq_simple *pwrseq = to_pwrseq_simple(host->pwrseq);
>
> -       mmc_pwrseq_simple_set_gpios_value(pwrseq, 0);
> +       if (pwrseq->use_reset)
> +               reset_control_deassert(pwrseq->reset_ctrl);
> +       else
> +               mmc_pwrseq_simple_set_gpios_value(pwrseq, 0);
>
>         if (pwrseq->post_power_on_delay_ms)
>                 msleep(pwrseq->post_power_on_delay_ms);
> @@ -84,7 +95,10 @@ static void mmc_pwrseq_simple_power_off(struct mmc_host *host)
>  {
>         struct mmc_pwrseq_simple *pwrseq = to_pwrseq_simple(host->pwrseq);
>
> -       mmc_pwrseq_simple_set_gpios_value(pwrseq, 1);
> +       if (pwrseq->use_reset)
> +               reset_control_assert(pwrseq->reset_ctrl);
> +       else
> +               mmc_pwrseq_simple_set_gpios_value(pwrseq, 1);
>
>         if (pwrseq->power_off_delay_us)
>                 usleep_range(pwrseq->power_off_delay_us,
> @@ -112,6 +126,7 @@ static int mmc_pwrseq_simple_probe(struct platform_device *pdev)
>  {
>         struct mmc_pwrseq_simple *pwrseq;
>         struct device *dev = &pdev->dev;
> +       int ngpio;
>
>         pwrseq = devm_kzalloc(dev, sizeof(*pwrseq), GFP_KERNEL);
>         if (!pwrseq)
> @@ -121,12 +136,23 @@ static int mmc_pwrseq_simple_probe(struct platform_device *pdev)
>         if (IS_ERR(pwrseq->ext_clk) && PTR_ERR(pwrseq->ext_clk) != -ENOENT)
>                 return dev_err_probe(dev, PTR_ERR(pwrseq->ext_clk), "external clock not ready\n");
>
> -       pwrseq->reset_gpios = devm_gpiod_get_array(dev, "reset",
> -                                                       GPIOD_OUT_HIGH);
> -       if (IS_ERR(pwrseq->reset_gpios) &&
> -           PTR_ERR(pwrseq->reset_gpios) != -ENOENT &&
> -           PTR_ERR(pwrseq->reset_gpios) != -ENOSYS) {
> -               return dev_err_probe(dev, PTR_ERR(pwrseq->reset_gpios), "reset GPIOs not ready\n");
> +       ngpio = of_count_phandle_with_args(dev->of_node, "reset-gpios", "#gpio-cells");
> +       if (ngpio == 1)
> +               pwrseq->use_reset = true;
> +
> +       if (pwrseq->use_reset) {
> +               pwrseq->reset_ctrl = devm_reset_control_get_optional_shared(dev, NULL);
> +               if (IS_ERR(pwrseq->reset_ctrl))
> +                       return dev_err_probe(dev, PTR_ERR(pwrseq->reset_ctrl),
> +                                            "reset control not ready\n");
> +       } else {
> +               pwrseq->reset_gpios = devm_gpiod_get_array(dev, "reset", GPIOD_OUT_HIGH);
> +               if (IS_ERR(pwrseq->reset_gpios) &&
> +                   PTR_ERR(pwrseq->reset_gpios) != -ENOENT &&
> +                   PTR_ERR(pwrseq->reset_gpios) != -ENOSYS) {
> +                       return dev_err_probe(dev, PTR_ERR(pwrseq->reset_gpios),
> +                                            "reset GPIOs not ready\n");
> +               }
>         }
>
>         device_property_read_u32(dev, "post-power-on-delay-ms",
>
> base-commit: 58ca61c1a866bfdaa5e19fb19a2416764f847d75
> prerequisite-patch-id: 0000000000000000000000000000000000000000
> --
> 2.34.1
>

