Return-Path: <devicetree+bounces-124185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC369D7D26
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DEE8B2236E
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC3D18C907;
	Mon, 25 Nov 2024 08:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DWtVj3Pf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D771E18A95A
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732524312; cv=none; b=Bb8hErUSKPi1E49RnJn+EoIx6iAlTNr3EHGSBFt84U7CR8so2tlq9P17XH9gYgLrhgRd0SHx3Azr9p6k5dg/Hx2koRGFJjFggvLYE9ULu2lHuJ4H6jOZTqfPvLGnL6zl7VkdlRGzn5B9sg2eTiZ0nFYVcgotXsSiQEwzC54upzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732524312; c=relaxed/simple;
	bh=pdoF1bJIxWzA7EiXkU3sjqlhShv/0u+F5JoQOJYzzOc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FJnDLsS2jANRzDc1SRM+PGA4b12a1MVIy/r5pPgQajE0m97Uw6Y42JYfEcJz7TZWoWgx6x80yUM1SD3bucGjuYumvJ2VnFUy2VqC2y7vSvKgDdUVFx4MCTBoznh1Peni2EKhMMIdv2/fmyz/1hXhgX/xiSsAsrbJlPvX6hi3kPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DWtVj3Pf; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so38581355e9.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732524309; x=1733129109; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+XGB9+sw6OIOChWIiAo8iO+Vdi73C9rgZ6nQSylkr0c=;
        b=DWtVj3PfZETXx5x3LhyqKTTn81NWTCW4ofbps5EJh/YesD96YdbEP17RrQ3XS97jTF
         gklhYqSm9ElZdbxN5jw/66wIl9GeLJEVuBXKzCwFVT5PTgMJcSRw7HAQEijBXh1iTFT3
         yx8Crpnb0qhVcri53Pr0hk37i0uIn4AR+Dju29fVG1SboRRKhyHuQjCzhXdwEBr5foqf
         XDNRTyLzPdlUfxq54uHQc3U5XL7zVNc887AloJoiEo1ZU97OH+kTLmF01pGGkm+E4it4
         wLGVoLuy+QbqhOtIu6y0t/Hk36TokmoPa3kmILFOfh14OQbuEGkiF2U+c+iw3CDe+eX5
         ScWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732524309; x=1733129109;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+XGB9+sw6OIOChWIiAo8iO+Vdi73C9rgZ6nQSylkr0c=;
        b=Gi0h8Q4rdpbSBWiK9UM3oKMddSVqsuMjy0E20W8KU/oLgR6cnFjXyT7wPFcqYy0Rxe
         9VfOYDuq2my6tr4UUNBQhGC6PuVgZwz2FGtI1LyWxbjJSunSdmSxFba9Ra7635WcY7E6
         +etLfjTXSrTyDDnk31H/GgO0dGrrQsyVNYE71Ba12ZuMz4yvuCUKHWncuRsg7s+qrbOr
         S2pGYsq/WTpMksZ5WVuWteSJ+VUyKSBaxq9WR4fXVXXfVzBoxHZKy9eqYS+hJA6X/J8h
         3Rio7S82OBYOhP9CTOxP937ixuHBYwFo0HuwqavSNPY68XD0GEBFXy53dJpV8oXZ9QGl
         2nEg==
X-Forwarded-Encrypted: i=1; AJvYcCURiapvpIIVB7E0rMiYYTdiR832h5CdH448i2svMwoeQ2TtQJn8UfCJjLUQFUCoI91EtdT4EFA1Ek7H@vger.kernel.org
X-Gm-Message-State: AOJu0YyyLqIJ4VXlodTs7sZ3TKZzcGr2m4CyqbMTIHQYBfyCrYUoBapF
	4urc1czVHz40vmPWFKgBFykRufDKWprpeshelpG02dg+/b+x3Dbolek9P0ZQsSU=
X-Gm-Gg: ASbGncvpKMRChZRWN/h94rDGdwVcGPR/e8s+IAt61OqsVoiwbMo/aMfK2nGzL9JjVnW
	EkOIYpOlRGD76rk4jtdr60NFhLvIXifF2GdjT1KJmmrqbQ0nKtQTmz3C6U+w23r3jYCNISeugvO
	4MsdxAsCKz6Ry9e8GUJb503MuhRxzQlAYBr12O94JuBG2Wv2Wy9GxzDkTRrd6go1VrCqhj5z7zi
	9KnToG3W9RU7KvHs+W2MucGFC2Z58qbRvizxBMxU9vgDkxzIOqlkQIzfaIlxrKcefoDWe+75rgV
	830QF4AWjsWj9x2Sw79Pi6NkFlI=
X-Google-Smtp-Source: AGHT+IH3nnS9lv2OrHPa7UzXVP/Pzo4LcGgWclg0dKbnKj5nL+O4oRZUuLf50pEuMQSrE0T4y1sWig==
X-Received: by 2002:a05:600c:511f:b0:430:5654:45d0 with SMTP id 5b1f17b1804b1-433ce4250camr103403735e9.14.1732524309108;
        Mon, 25 Nov 2024 00:45:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:9dc0:6c46:415c:5f8b? ([2a01:e0a:982:cbb0:9dc0:6c46:415c:5f8b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825faf9829sm9756935f8f.31.2024.11.25.00.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 00:45:08 -0800 (PST)
Message-ID: <3bac31fc-57aa-4234-b10b-d48d3bbfa344@linaro.org>
Date: Mon, 25 Nov 2024 09:45:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/5] gpu: drm: adp: Add a backlight driver for the Summit
 LCD
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
 Nick Chan <towinchenmi@gmail.com>
References: <20241124-adpdrm-v1-0-3191d8e6e49a@gmail.com>
 <20241124-adpdrm-v1-3-3191d8e6e49a@gmail.com>
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
In-Reply-To: <20241124-adpdrm-v1-3-3191d8e6e49a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 24/11/2024 23:29, Sasha Finkelstein via B4 Relay wrote:
> From: Sasha Finkelstein <fnkl.kernel@gmail.com>
> 
> This is the display panel used for the touchbar on laptops that have it.
> 
> Co-developed-by: Nick Chan <towinchenmi@gmail.com>
> Signed-off-by: Nick Chan <towinchenmi@gmail.com>
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
> ---
>   drivers/gpu/drm/adp/panel-summit.c | 108 +++++++++++++++++++++++++++++++++++++
>   1 file changed, 108 insertions(+)
> 
> diff --git a/drivers/gpu/drm/adp/panel-summit.c b/drivers/gpu/drm/adp/panel-summit.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..2dcbddd925ce3863742aa60164369ba9db0bbfff
> --- /dev/null
> +++ b/drivers/gpu/drm/adp/panel-summit.c
> @@ -0,0 +1,108 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/backlight.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <video/mipi_display.h>
> +
> +struct summit_data {
> +	struct mipi_dsi_device *dsi;
> +	struct backlight_device *bl;
> +};
> +
> +static int summit_set_brightness(struct device *dev)
> +{
> +	struct summit_data *panel = dev_get_drvdata(dev);
> +	int level = backlight_get_brightness(panel->bl);
> +	int err = mipi_dsi_dcs_set_display_brightness(panel->dsi, level);
> +
> +	if (err < 0)
> +		return err;
> +	return 0;

Just return err here.

> +}
> +
> +static int summit_bl_update_status(struct backlight_device *dev)
> +{
> +	return summit_set_brightness(&dev->dev);
> +}
> +
> +static int summit_bl_get_brightness(struct backlight_device *dev)
> +{
> +	return backlight_get_brightness(dev);
> +}
> +
> +static const struct backlight_ops summit_bl_ops = {
> +	.get_brightness = summit_bl_get_brightness,
> +	.update_status	= summit_bl_update_status,
> +};
> +
> +static int summit_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct backlight_properties props = { 0 };
> +	struct device *dev = &dsi->dev;
> +	struct summit_data *panel;
> +
> +	panel = devm_kzalloc(dev, sizeof(*panel), GFP_KERNEL);
> +	if (!panel)
> +		return -ENOMEM;
> +
> +	mipi_dsi_set_drvdata(dsi, panel);
> +	panel->dsi = dsi;
> +
> +	int ret = device_property_read_u32(dev, "max-brightness", &props.max_brightness);
> +
> +	if (ret)
> +		props.max_brightness = 255;
> +	props.type = BACKLIGHT_RAW;
> +
> +	panel->bl = devm_backlight_device_register(dev, dev_name(dev),
> +						   dev, panel, &summit_bl_ops, &props);
> +	if (IS_ERR(panel->bl))
> +		return PTR_ERR(panel->bl);
> +
> +	return mipi_dsi_attach(dsi);
> +}
> +
> +static void summit_remove(struct mipi_dsi_device *dsi)
> +{
> +	mipi_dsi_detach(dsi);
> +}
> +
> +static int summit_resume(struct device *dev)
> +{
> +	return summit_set_brightness(dev);
> +}
> +
> +static int summit_suspend(struct device *dev)
> +{
> +	struct summit_data *panel = dev_get_drvdata(dev);
> +
> +	int err = mipi_dsi_dcs_set_display_brightness(panel->dsi, 0);
> +
> +	if (err < 0)
> +		return err;
> +	return 0;

Just return err here, add a common function to set a brighness value and
avoid duplicate code like here.

Neil


> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(summit_pm_ops, summit_suspend,
> +				summit_resume);
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

Please move the driver into drivers/gpu/drm/panels

Thanks,
Neil

