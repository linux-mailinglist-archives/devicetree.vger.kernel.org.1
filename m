Return-Path: <devicetree+bounces-48234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21875870E58
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 22:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8732CB2836D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 21:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307B01EB5A;
	Mon,  4 Mar 2024 21:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g8sLL/XG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502168F58
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 21:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709588586; cv=none; b=bVpvJP7EHRQ1u0IvKiQYEruaq5JPVBy2sa1BcPIirHV5IAXm4MWUyfkuRfroQwMhcCll8LpdVfL3NkvHDkNvP5HAfLEF/egBiJZrGZGmfixuBXacLHvd5o06R0vyBBBVQeOfpK0b0FeeAQshd4sfW0HpY0sCJ4R3lwnVL5mYYQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709588586; c=relaxed/simple;
	bh=NcZbdb3mJZwySumOHN45aR4MKl3xOW7cEaAqQHBZKLg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=N6qzV0Q+JYy/TElMyAVyQmvory5wMZncW7UvKRz68z+AW0cga9zMseMAJMpRJzHtqR2XFxB6IExqFYCov+rVPNMksQznYX5NqCFOXX7V2x65ncG4/AiQ4OEvc81BLB61kuSGHC/MsZwMeVKrMEH7VKHkxfhD10Opxscr2gqxyGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g8sLL/XG; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33d118a181fso3169593f8f.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 13:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709588583; x=1710193383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y0WV0jwQBZsJcLmuwWex956CkPmkwWx0VAGntPbjYM8=;
        b=g8sLL/XGQYrqjVdu61HS8OGarH1VchFW9Gx06UJKd1WedgsAJhFWjAgFL4+6ZsO4lw
         NoaYlG18RiMiatUa+I1uCQKAevRsT/gesh8liwG1Bwyg3S7R7S/GjsHRj9jrANiOWvZG
         JuqZAPCJQ4GyMMPJf+3MzilLihKHs0rCZc0nGbUjmdNKmWB5OoU8G1DBuoYfpUxptnCi
         FYXo2VGsHSoq+di5l7gkA2JFcD6sENTVvNag4+ISFWW+0AEqyw7nR6BjSKYqyrXC+Snm
         IoQfxTb85JfIHuaYwCydKB6eL4HAAD1XiedeTNUK/udocoZ4op8byrL6OiwCI2o6zsOf
         e8YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709588583; x=1710193383;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y0WV0jwQBZsJcLmuwWex956CkPmkwWx0VAGntPbjYM8=;
        b=Jemq3nn8rXLOk1ofl54sSgvBp35sC943QfhlkDIFXNhqtaLibBS3rvAwHCJzsfx8Ho
         DHBy029yPSQvT/xb3fM0RiVzoEpfTUUPOVHSMkljXM0Cb0xI6Vyo3pSjPFA57PFcgJF8
         64Fx+6rZpI0tJIQekPuDLoxgHca8Eu3ajiRMC+eaiSx+l8rip00R4P7317y7UhwiA8Zh
         ICx+CSA/+wyroDvPac9bMc30xsBoPpwS/63BmydW0zO4WfDzzv3b7fB66I35Yth/mZXM
         EwicPlYU+NwCSOf2U1mta7daBGh7BjHDBilEDLYclFng7GJgtEvVx9FB4NaQx4cxu0uU
         LASg==
X-Forwarded-Encrypted: i=1; AJvYcCXDPSoTKgCNz0BBnTnZYqqr/fENju30R4lxaYMrLcIQ+StnnMF7iRXntOQR1nJVp9MfHXYGGQz6YJTcbwmwU0ZDmrZSmOyTz9hYuQ==
X-Gm-Message-State: AOJu0YwY0jIEpZpHxwlgB3aCNxmSVtgjobhfz2tV1OnkNyczMx0QwuGt
	2pLsWFpH5nUPAeNoOJE9QDzOx6C2Mikrpui+mI9dIyLvyg9dvBEr9ezLLAfo544=
X-Google-Smtp-Source: AGHT+IGdwPbU6QcEbB9P7le+/pUg8GqOczNkE8PcfWYyj6AsotD06BnVYlD9+IEm8fNe+f0ObiXcGw==
X-Received: by 2002:a5d:594b:0:b0:33d:f30:5689 with SMTP id e11-20020a5d594b000000b0033d0f305689mr7000761wri.30.1709588582788;
        Mon, 04 Mar 2024 13:43:02 -0800 (PST)
Received: from [192.168.1.78] (host-92-17-96-232.as13285.net. [92.17.96.232])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600c314600b00412e8c645a1sm1753289wmo.46.2024.03.04.13.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 13:43:02 -0800 (PST)
Message-ID: <3d8bcab2-70d3-432e-ad18-150230006223@linaro.org>
Date: Mon, 4 Mar 2024 21:43:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/panel: add samsung s6e3fa7 panel driver
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
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
 <daf91db8-c03c-412b-9f0e-8134a7a6e8d5@linaro.org>
In-Reply-To: <daf91db8-c03c-412b-9f0e-8134a7a6e8d5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/03/2024 21:41, Caleb Connolly wrote:
> 
> 
> On 09/02/2024 00:16, Richard Acayan wrote:
>> The S6E3FA7 display controller is enabled in every Pixel 3a (non-XL)
>> variant. Add the driver for it, generated by
>> linux-mdss-dsi-panel-driver-generator.
>>
>> There are other panels connected to the same S6E3FA7 display controller,
>> such as the AMS604NL01 panel, which are incompatible with this driver.
>> Name the device tree compatible after the panel model according to
>> iFixit.
>>
>> Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
>> Link: https://android.googlesource.com/kernel/msm/+/7fda1cd7b64710dafac5f34899611c6d35eb4cd2/arch/arm64/boot/dts/google/dsi-panel-s6e3fa7-1080p-cmd.dtsi
>> Link: https://github.com/msm8953-mainline/linux/blob/v6.6.12-r0/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
>> Link: https://www.ifixit.com/Guide/Image/meta/muyjtLQTHu6MDkhK
>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>> ---
>>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>>  drivers/gpu/drm/panel/Makefile                |   1 +
>>  drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c | 285 ++++++++++++++++++
>>  3 files changed, 295 insertions(+)
>>  create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
>>
> 
>> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c b/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
>> new file mode 100644
>> index 000000000000..10bc8fb5f1f9
>> --- /dev/null
>> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
>> @@ -0,0 +1,285 @@
> 
> [snip]
>> +
>> +static int s6e3fa7_panel_probe(struct mipi_dsi_device *dsi)
>> +{
>> +	struct device *dev = &dsi->dev;
>> +	struct s6e3fa7_panel *ctx;
>> +	int ret;
>> +
>> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
>> +	if (!ctx)
>> +		return -ENOMEM;
>> +
>> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
>> +	if (IS_ERR(ctx->reset_gpio))
>> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
>> +				     "Failed to get reset-gpios\n");
>> +
>> +	ctx->dsi = dsi;
>> +	mipi_dsi_set_drvdata(dsi, ctx);
>> +
>> +	dsi->lanes = 4;
>> +	dsi->format = MIPI_DSI_FMT_RGB888;
>> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
> This flag is only used for video mode panels, you can drop it.

Nevermind, I should really check the dates before hitting reply :/
> 
> With that,
> 
> Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
>> +			  MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM;
>> +
>> +	drm_panel_init(&ctx->panel, dev, &s6e3fa7_panel_funcs,
>> +		       DRM_MODE_CONNECTOR_DSI);
>> +	ctx->panel.prepare_prev_first = true;
>> +
>> +	ctx->panel.backlight = s6e3fa7_panel_create_backlight(dsi);
>> +	if (IS_ERR(ctx->panel.backlight))
>> +		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
>> +				     "Failed to create backlight\n");
>> +
>> +	drm_panel_add(&ctx->panel);
>> +
>> +	ret = mipi_dsi_attach(dsi);
>> +	if (ret < 0) {
>> +		dev_err(dev, "Failed to attach to DSI host: %d\n", ret);
>> +		drm_panel_remove(&ctx->panel);
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void s6e3fa7_panel_remove(struct mipi_dsi_device *dsi)
>> +{
>> +	struct s6e3fa7_panel *ctx = mipi_dsi_get_drvdata(dsi);
>> +	int ret;
>> +
>> +	ret = mipi_dsi_detach(dsi);
>> +	if (ret < 0)
>> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
>> +
>> +	drm_panel_remove(&ctx->panel);
>> +}
>> +
>> +static const struct of_device_id s6e3fa7_panel_of_match[] = {
>> +	{ .compatible = "samsung,s6e3fa7-ams559nk06" },
>> +	{ /* sentinel */ }
>> +};
>> +MODULE_DEVICE_TABLE(of, s6e3fa7_panel_of_match);
>> +
>> +static struct mipi_dsi_driver s6e3fa7_panel_driver = {
>> +	.probe = s6e3fa7_panel_probe,
>> +	.remove = s6e3fa7_panel_remove,
>> +	.driver = {
>> +		.name = "panel-samsung-s6e3fa7",
>> +		.of_match_table = s6e3fa7_panel_of_match,
>> +	},
>> +};
>> +module_mipi_dsi_driver(s6e3fa7_panel_driver);
>> +
>> +MODULE_AUTHOR("Richard Acayan <mailingradian@gmail.com>");
>> +MODULE_DESCRIPTION("DRM driver for Samsung S6E3FA7 command mode DSI panel");
>> +MODULE_LICENSE("GPL");
> 

-- 
// Caleb (they/them)

