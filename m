Return-Path: <devicetree+bounces-48233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BA6870E36
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 22:41:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 976BE1C235C2
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 21:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB9D57992D;
	Mon,  4 Mar 2024 21:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OixF0ZvM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AE0200D4
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 21:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709588514; cv=none; b=AkoyPbs0zSIuFkscGCdS7ROQXsrkwS1eF+Jqljk0ZUjKM4je7iSYTwCF0LGO+Yyu3pgK+jg/ZRpcE6PZs9KbXciwusbpaPevqsNo02jrtUO5scR1lHWGjfMio4iRULFAttRfOEEZPHC4HYoeB0gI7rniz8GtpXUaES8ywi5ooDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709588514; c=relaxed/simple;
	bh=Oy1DFtQHEzd1ve//pMTgIi6FQDFB9AI7JYCp9dQf31g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=loocQ0EAM0ry3m+rGXVt7JpNkidAz2cBIupQ8eeNADD6Ihtb2+EUFDvCOq9j9KfMp7K5NDZaq66rdrcADmTCzSGhuchyNzMpzCB0WdvR4PWAMQ2fXiZXOYTp1g95AdpeFpTUtyGAu2BBgh2sQjhWmopD8dLuQGzYM0n/nt/tEJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OixF0ZvM; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-412e6bdd454so7836325e9.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 13:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709588510; x=1710193310; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wMSzSnNeX1SJVZ4xO5p1NX8uvnZawTZ0OOTUVf+eqcM=;
        b=OixF0ZvMehFu9zK4I7gsPfT9gS5OOSA5q5hdbCbcLNU9WinqBXBHnkzPbiU3HOIpgU
         rAfd2ac9yfmEKzmSH5lps14LlW5n2iuspvEs2pjkPPg1SO6BfN/Ty42UL97rpqvL201k
         fo/sk5/64b/FNNeITMhC5wbJCHKy3A+U/dOUpEKzGzS0yhs63U31g4Q3oi8rCIVgQUQA
         QTXYnIe7danORA6HqqhikmwLN0trfiAuhr+VbK8EOQwd63lA+g4g7SvNJ4pJjGI4XwXd
         6H6BL286ZjTCMcu91Vt5yOd3M9ozuLApvm2CGPX71/lyRsGgr57OSGpEKG6apaB7OYag
         ymDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709588510; x=1710193310;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wMSzSnNeX1SJVZ4xO5p1NX8uvnZawTZ0OOTUVf+eqcM=;
        b=tx1jK+Nmy/mgfNSFznHOQyraWjPfLZDdVwSdKMEVn0hmwwW/0sKo6oFs2cbArqqHa+
         xS+Y6n0q13+0H3PIJxFIXM/4hWhhBII8lZ+PWnPIxnWn/S+ZYYRJ6F4ryOOjMB6JsPiM
         FjIO7iNbZntfBE+uwFOKS/mqw+EKuMGZAx3/V+H29TSVFTAv6N+q2lX3OindAl5aBM57
         6M+bmfd8RPP73E5EAHGUzDIC4cUVC2bk9T6YDAY8YHolA1Kfmscg7qm1qOxdB6l8p0NJ
         H1Ug85Y03TuoLU0QCZiegOIWfnYdqMdlICuccZyv/OoVpuNm+Q9/tJh3TsGKHVzLS5xm
         iRqg==
X-Forwarded-Encrypted: i=1; AJvYcCV+A5VQ+bg/8ATNwHvaTIw5sY9d9kSf+6qP+6SSzV5qoHBH2ZR4E4mJyIXk1ePM5S0SmxklYVPvBidO9FzzYFuE4BoT4sjqDhJsFA==
X-Gm-Message-State: AOJu0YyumRFMCZ3H3V8jbNKXoB01nv9iT1z5/RNIixDa8qgOJcJZdPw3
	FY10PF82x31oNuZ287PlhIGJT3iHp0mwlBTrVtmml1zIGYdsnOr8YQcHRPjllrc=
X-Google-Smtp-Source: AGHT+IGDlc02ROsYpzqqoCRMRjOPK7UTtnEuK5NqYze+RqmgsW3X/2nttf5Kg9ZBvEOZy3qh/7L70Q==
X-Received: by 2002:a05:600c:3148:b0:412:bf53:51b0 with SMTP id h8-20020a05600c314800b00412bf5351b0mr7738027wmo.20.1709588509949;
        Mon, 04 Mar 2024 13:41:49 -0800 (PST)
Received: from [192.168.1.78] (host-92-17-96-232.as13285.net. [92.17.96.232])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600c314600b00412e8c645a1sm1753289wmo.46.2024.03.04.13.41.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 13:41:49 -0800 (PST)
Message-ID: <daf91db8-c03c-412b-9f0e-8134a7a6e8d5@linaro.org>
Date: Mon, 4 Mar 2024 21:41:48 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/panel: add samsung s6e3fa7 panel driver
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20240209001639.387374-6-mailingradian@gmail.com>
 <20240209001639.387374-8-mailingradian@gmail.com>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20240209001639.387374-8-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 09/02/2024 00:16, Richard Acayan wrote:
> The S6E3FA7 display controller is enabled in every Pixel 3a (non-XL)
> variant. Add the driver for it, generated by
> linux-mdss-dsi-panel-driver-generator.
> 
> There are other panels connected to the same S6E3FA7 display controller,
> such as the AMS604NL01 panel, which are incompatible with this driver.
> Name the device tree compatible after the panel model according to
> iFixit.
> 
> Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> Link: https://android.googlesource.com/kernel/msm/+/7fda1cd7b64710dafac5f34899611c6d35eb4cd2/arch/arm64/boot/dts/google/dsi-panel-s6e3fa7-1080p-cmd.dtsi
> Link: https://github.com/msm8953-mainline/linux/blob/v6.6.12-r0/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
> Link: https://www.ifixit.com/Guide/Image/meta/muyjtLQTHu6MDkhK
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c | 285 ++++++++++++++++++
>  3 files changed, 295 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
> 

> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c b/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
> new file mode 100644
> index 000000000000..10bc8fb5f1f9
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
> @@ -0,0 +1,285 @@

[snip]
> +
> +static int s6e3fa7_panel_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct s6e3fa7_panel *ctx;
> +	int ret;
> +
> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	ctx->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
This flag is only used for video mode panels, you can drop it.

With that,

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> +			  MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM;
> +
> +	drm_panel_init(&ctx->panel, dev, &s6e3fa7_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	ctx->panel.prepare_prev_first = true;
> +
> +	ctx->panel.backlight = s6e3fa7_panel_create_backlight(dsi);
> +	if (IS_ERR(ctx->panel.backlight))
> +		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
> +				     "Failed to create backlight\n");
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to attach to DSI host: %d\n", ret);
> +		drm_panel_remove(&ctx->panel);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void s6e3fa7_panel_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct s6e3fa7_panel *ctx = mipi_dsi_get_drvdata(dsi);
> +	int ret;
> +
> +	ret = mipi_dsi_detach(dsi);
> +	if (ret < 0)
> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id s6e3fa7_panel_of_match[] = {
> +	{ .compatible = "samsung,s6e3fa7-ams559nk06" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, s6e3fa7_panel_of_match);
> +
> +static struct mipi_dsi_driver s6e3fa7_panel_driver = {
> +	.probe = s6e3fa7_panel_probe,
> +	.remove = s6e3fa7_panel_remove,
> +	.driver = {
> +		.name = "panel-samsung-s6e3fa7",
> +		.of_match_table = s6e3fa7_panel_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(s6e3fa7_panel_driver);
> +
> +MODULE_AUTHOR("Richard Acayan <mailingradian@gmail.com>");
> +MODULE_DESCRIPTION("DRM driver for Samsung S6E3FA7 command mode DSI panel");
> +MODULE_LICENSE("GPL");

-- 
// Caleb (they/them)

