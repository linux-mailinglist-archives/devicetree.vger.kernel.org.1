Return-Path: <devicetree+bounces-143495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FFEA2A2AE
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DCDA7A272E
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DCC6224AFB;
	Thu,  6 Feb 2025 07:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ac0m006N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E466E2248AF
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738828387; cv=none; b=JmRgchc8PvSPjtrjExp0pkldBE08OokiGXgrF3C+YCVzwHSqjrLdbKcxwKvNpeB6/X3xVxiYhvmu2YNwdqN56K4QUXvUMfLGBWUg4+TgULsvO3XOpnmlYZEUatWfIajb5u1ZB7rCbKlAPjCKd/l2IwWQ1KJS5BYX52gnCnSt8eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738828387; c=relaxed/simple;
	bh=m3pqvKmJ/Z8qndxmifJJzHfJ8SakGeyV+JdUcnde8xc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=D4MwPWZwj3pVchFHdW0j3I3fX9725if6WElvMpDfjVLek/kaN8vC9Tf6cbWTqxMGzVJzIaOOLkt62lpD4sj1+YbHHrIiDuCMrkfca/TQKPPgZlj8yn2cXvzfBQy1HiN5xddVWd2SnhHyX57VV+Aj4HJ+oFSuuyMf7JaryRa5BMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ac0m006N; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so5541525e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738828384; x=1739433184; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6m7TXnR8Yp1Zl6pcqMtLySEDyoW+PZY7jbi3ZwdEqTE=;
        b=ac0m006NSE5ZI2J5K7jWrlNOSZU8O+a5U73nklPQBKRyQrR/1L1n2TL/j39kvP7DKD
         LbvQHGxJJQq1UVFbHdegTLZAuAqr3Nq0JmaIPo80LeNcepFq9lSvYEPH4JRWVTJow5bx
         2gymxnVGcY3w6Rpr8AwwGvKVYXKm7BECMdATdrGGurPRNfGVv7WlJVO0iiPvS1zkaurs
         INse6s5xhGU0xjYgPB/+7pz56iw/igT6yzmsq3ufu6DF4ns9W7qQv8I0S0OThACN0pvy
         CIRX+KV3b3Zcqa4C6F0lN8Tvv+W+YztlDsN0zTyeffDUjZUI5LWejz7hB6pDkDl8j2J8
         KDYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738828384; x=1739433184;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6m7TXnR8Yp1Zl6pcqMtLySEDyoW+PZY7jbi3ZwdEqTE=;
        b=wAiTqa7h680f0AukMdviSpDDJ+yppJA5+mQm5oOrM7Xw7Ya2TwwBAeePhHNT6iv5lh
         T1AadXq94nJxJj77SpGfVNgLglyMFqmVRHmD/66cFdNzr/jxs/3wPRhZY8W5q52fagDR
         LuETRdTdMcDeLXJw12q9VQ/70MLILbWQEhqJKAmgaVCW0YyIR8ZOL9/+59K4hEWEy4LV
         rr8F/19FzxmgOryUf1e00ZhDqTVxiVc8cgXvrI3euqV7e9aXd1GcvVzpSGiIHfJ8THgF
         svTvNXmXNmTjZHCdmwP5jwRGxTDpGBK2+zAXdueM3LdnYFuK0rnUoQs2DuYce8bSqFI+
         coFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnPP9O4HLhOulYv1ZTK8h/KE6dZvmU2vaxcaigh1UsU5VRdXl7sM4I0Q4HoxBG5SzhnS6V0nNz0k72@vger.kernel.org
X-Gm-Message-State: AOJu0YxrxBAqTpe5BcpgB5rMbpyCWrk/j6VHn5XPtQ8seUKVGROw3Ndl
	HrYcx36pZB1qn1LBwmc9RCLWZyZQXYNQcFhV+xNUhmo2zoVWEwBfcmY8JOA8NPg=
X-Gm-Gg: ASbGncuCvx4rVRK0Z0dzw68irBYQxHsZffbd05s25rhi5qKB+pXAAdHELmo/0sphwNz
	tjUv+a8vxPQ3cfCZr6JL+QH0P9bgcSVmNO983KP/xJNej2TdtMZhQCNBjpbGcLMvxH5wYLW6lIV
	pNeV7nj0qPKd4UGYUfg9d1X2Quw/JE1dZi6EdeJikq6pyPBj/yU0UGz8xNbV/+6R/9BpSUTzyM8
	YmfH3NagaafhoUnRfsjxilAolTynQ7bQDFcSZJSzb0r/7u/WkqZZvthd9z5EX8aybcMcIqFnyg+
	T68FBzRyv36/aS90fyYXZNdN2P38c0HeLhTtii60bgJEShFJSxOXY1pw42lDFYWTuVu3
X-Google-Smtp-Source: AGHT+IH0RqYwjPbaACsjDyFw9S+aalsLTtgB2h+Skh1qS7c10wBFGD0+SWpJDenUFZCuNvQ5UxMfHQ==
X-Received: by 2002:a05:600c:4ec8:b0:436:9227:915 with SMTP id 5b1f17b1804b1-4390d434838mr44861015e9.9.1738828384159;
        Wed, 05 Feb 2025 23:53:04 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4972:46a2:e0cb:c0a6? ([2a01:e0a:982:cbb0:4972:46a2:e0cb:c0a6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dcae5c7sm10442625e9.18.2025.02.05.23.53.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 23:53:03 -0800 (PST)
Message-ID: <2a602642-7c18-4969-ae41-8d24bcacac45@linaro.org>
Date: Thu, 6 Feb 2025 08:53:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 3/5] drm: panel: Add a panel driver for the Summit
 display
To: fnkl.kernel@gmail.com, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jessica Zhang
 <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alyssa Ross <hi@alyssa.is>, Nick Chan <towinchenmi@gmail.com>
References: <20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com>
 <20250205-adpdrm-v5-3-4e4ec979bbf2@gmail.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250205-adpdrm-v5-3-4e4ec979bbf2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2025 23:10, Sasha Finkelstein via B4 Relay wrote:
> From: Sasha Finkelstein <fnkl.kernel@gmail.com>
> 
> This is the display panel used for the touchbar on laptops that have it.
> 
> Co-developed-by: Nick Chan <towinchenmi@gmail.com>
> Signed-off-by: Nick Chan <towinchenmi@gmail.com>
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
> ---
>   drivers/gpu/drm/panel/Kconfig        |   9 +++
>   drivers/gpu/drm/panel/Makefile       |   1 +
>   drivers/gpu/drm/panel/panel-summit.c | 132 +++++++++++++++++++++++++++++++++++
>   3 files changed, 142 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index d7469c565d1db8b8e974dd6c45d03d9352d99d63..5085a82e4bc695e85cabbc3200859bbe10cb0f91 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -925,6 +925,15 @@ config DRM_PANEL_SIMPLE
>   	  that it can be automatically turned off when the panel goes into a
>   	  low power state.
>   
> +config DRM_PANEL_SUMMIT
> +	tristate "Apple Summit display panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	help
> +	  Say Y if you want to enable support for the "Summit" display panel
> +	  used as a touchbar on certain Apple laptops.
> +
>   config DRM_PANEL_SYNAPTICS_R63353
>   	tristate "Synaptics R63353-based panels"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 7dcf72646cacff11bab90c78e3b8b1f357e5f14a..10ac2e850f5cd6d6546439de75483466e4015d1a 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -89,6 +89,7 @@ obj-$(CONFIG_DRM_PANEL_SHARP_LS060T1SX01) += panel-sharp-ls060t1sx01.o
>   obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7701) += panel-sitronix-st7701.o
>   obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7703) += panel-sitronix-st7703.o
>   obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7789V) += panel-sitronix-st7789v.o
> +obj-$(CONFIG_DRM_PANEL_SUMMIT) += panel-summit.o
>   obj-$(CONFIG_DRM_PANEL_SYNAPTICS_R63353) += panel-synaptics-r63353.o
>   obj-$(CONFIG_DRM_PANEL_SONY_ACX565AKM) += panel-sony-acx565akm.o
>   obj-$(CONFIG_DRM_PANEL_SONY_TD4353_JDI) += panel-sony-td4353-jdi.o
> diff --git a/drivers/gpu/drm/panel/panel-summit.c b/drivers/gpu/drm/panel/panel-summit.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..fb084f280c6fa3197b64876edd03172dbdf962b3
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-summit.c
> @@ -0,0 +1,132 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/backlight.h>
> +#include <drm/drm_device.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_mode.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <video/mipi_display.h>
> +
> +struct summit_data {
> +	struct mipi_dsi_device *dsi;
> +	struct backlight_device *bl;
> +	struct drm_panel panel;
> +};
> +
> +static int summit_set_brightness(struct device *dev)
> +{
> +	struct summit_data *s_data = dev_get_drvdata(dev);
> +	int level = backlight_get_brightness(s_data->bl);
> +
> +	return mipi_dsi_dcs_set_display_brightness(s_data->dsi, level);
> +}
> +
> +static int summit_bl_update_status(struct backlight_device *dev)
> +{
> +	return summit_set_brightness(&dev->dev);
> +}
> +
> +static const struct backlight_ops summit_bl_ops = {
> +	.update_status	= summit_bl_update_status,
> +};
> +
> +static int summit_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
> +{
> +	struct drm_display_mode *mode = drm_mode_create(connector->dev);
> +
> +	connector->display_info.non_desktop = true;
> +	drm_object_property_set_value(&connector->base,
> +				      connector->dev->mode_config.non_desktop_property,
> +				      connector->display_info.non_desktop);
> +
> +	mode->vdisplay = 2008;
> +	mode->hdisplay = 60;
> +	mode->hsync_start = mode->hdisplay + 8;
> +	mode->hsync_end = mode->hsync_start + 80;
> +	mode->htotal = mode->hsync_end + 40;
> +	mode->vsync_start = mode->vdisplay + 1;
> +	mode->vsync_end = mode->vsync_start + 15;
> +	mode->vtotal = mode->vsync_end + 6;
> +	mode->clock = (mode->vtotal * mode->htotal * 60) / 1000;
> +	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> +	mode->flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC;
> +	drm_mode_set_name(mode);
> +	drm_mode_probed_add(connector, mode);
> +	return 1;
> +}
> +
> +static const struct drm_panel_funcs summit_panel_funcs = {
> +	.get_modes = summit_get_modes,
> +};
> +
> +static int summit_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct backlight_properties props = { 0 };
> +	struct device *dev = &dsi->dev;
> +	struct summit_data *s_data;
> +	int ret;
> +
> +	s_data = devm_kzalloc(dev, sizeof(*s_data), GFP_KERNEL);
> +	if (!s_data)
> +		return -ENOMEM;
> +
> +	mipi_dsi_set_drvdata(dsi, s_data);
> +	s_data->dsi = dsi;
> +
> +	ret = device_property_read_u32(dev, "max-brightness", &props.max_brightness);
> +	if (ret)
> +		return ret;
> +	props.type = BACKLIGHT_RAW;
> +
> +	s_data->bl = devm_backlight_device_register(dev, dev_name(dev),
> +						    dev, s_data, &summit_bl_ops, &props);
> +	if (IS_ERR(s_data->bl))
> +		return PTR_ERR(s_data->bl);
> +
> +	drm_panel_init(&s_data->panel, dev, &summit_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	drm_panel_add(&s_data->panel);
> +
> +	return mipi_dsi_attach(dsi);
> +}
> +
> +static void summit_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct summit_data *s_data = mipi_dsi_get_drvdata(dsi);
> +
> +	mipi_dsi_detach(dsi);
> +	drm_panel_remove(&s_data->panel);
> +}
> +
> +static int summit_suspend(struct device *dev)
> +{
> +	struct summit_data *s_data = dev_get_drvdata(dev);
> +
> +	return mipi_dsi_dcs_set_display_brightness(s_data->dsi, 0);
> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(summit_pm_ops, summit_suspend,
> +				summit_set_brightness);
> +
> +static const struct of_device_id summit_of_match[] = {
> +	{ .compatible = "apple,summit" },
> +	{},
> +};
> +
> +MODULE_DEVICE_TABLE(of, summit_of_match);
> +
> +static struct mipi_dsi_driver summit_driver = {
> +	.probe = summit_probe,
> +	.remove = summit_remove,
> +	.driver = {
> +		.name = "panel-summit",
> +		.of_match_table = summit_of_match,
> +		.pm = pm_sleep_ptr(&summit_pm_ops),
> +	},
> +};
> +module_mipi_dsi_driver(summit_driver);
> +
> +MODULE_DESCRIPTION("Summit Display Panel Driver");
> +MODULE_LICENSE("GPL");
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

