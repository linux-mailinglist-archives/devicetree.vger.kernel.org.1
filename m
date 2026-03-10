Return-Path: <devicetree+bounces-273539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCrPLwsnsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:13:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95483251879
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:13:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3EB43349364B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC2E03A3E6E;
	Tue, 10 Mar 2026 13:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dl45Jfbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2FD38AC82
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148164; cv=none; b=hPjVVAOrYyEjleeO2dDmrSN9VoqupqDIBOG/0ZFALomstJndjd69E8fkSaJoKFnn2TND3bJPM9pCl42LXzJFh3GNvlFHjVWW+QIfxtLY2Mw+0xyWPUdV94F6AKPw6Mukar54XQsIFXP64dJl7f8++KdHBvTLZVYOZympmoyViaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148164; c=relaxed/simple;
	bh=3KpPPJvyznOGvZ67I8XW7w93AMlBZYjsAA/QRLYGTxI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hsyFL/A+cr/2te3nWW3nD8fyaodZqmX2UU3kjMbFfwK7LaEwTvvzgCje4FmlKHTJ2wTa1lv55pYkWYF/YAYHE/OdF+dS4Q+dMKg64ey4aARn2e5BWBxJ6e69rHQw3aYgSuuH0hNO+WdK4cy+BjPvEN/yzuqEZ0piklGx0AddjzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dl45Jfbs; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-483487335c2so108017505e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773148161; x=1773752961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAK+PFF08sN5+3bAgzds5zfrCil8cyTfXhxIWYd8Jto=;
        b=Dl45Jfbsqoa8r5L0kLTADcB10AwYBAf0nJd2EiYYETT9Wn6bM/K/pL1jNaycXESWiX
         I66Y4OBvZGnJuHUIlwin6uB2A1+AnBfC1LSfY7KxQ84lux7pC5KErUonKvA5IhPBvrxA
         /99PYtQX4ozBm9oLIq0FnbHX3AQ3cmH+DC08wL3SodqDEZjBFcSBLahWqEU9hXZ954P+
         iZ7ZAjR0Gg4N/uv0apsAe7/3vn5htJbliPw6wXeQ77zlRvRuwQBv+xHjU5OJgGzxQQJn
         9KxFMYgscMQuEWfaN+9ofM+ENhspcxVsTI0rLAzVMk+f0xpIReWAPnb+T2T73P6xEvsM
         lh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148161; x=1773752961;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aAK+PFF08sN5+3bAgzds5zfrCil8cyTfXhxIWYd8Jto=;
        b=p/h6CLq23k25aux9TtCALJJ7SdEXuvUhK0pWKgPXoBQHGkBvBWV9MbSJD1nwf9/5K8
         boe4a/5cAPpETgz9fbDT/OuAk9bEAxQZckk+Au7CjP+5StDpClqbYj0ZoPxW7MfW6KF7
         AEH9JwE7udpWryDNbjVPGgvZ78/arnpRn0OQKAEej/MXD+KJRAUuhLEoE1qUfsCuGlhL
         oP1kqhBKZZm4VrkJapHVmmPt+pU6Aloeck2sxqCvPGQRX6TxUxgNNOIYA1W7lC1mnigL
         RjNb4NSmO+VtlYridfdYhYhSOtYmk2J3xeqMszYpPObPBF6OdQuyoNoYULLpKKfKhBH/
         6tvg==
X-Forwarded-Encrypted: i=1; AJvYcCV6zfLg1SVc7Fm2gteX4PYjGpERAPoB7kUu7lpZGYNLYeH4UIj3jeA85JGaH9Wqtu1nTzNcdIhoYL0K@vger.kernel.org
X-Gm-Message-State: AOJu0YxSaim0X+Os3QWaiDFPpeA163UDHj46KkwoHARWQxWpa63kism9
	0n4gdV88Mwk8a+War0EozZRDqrznLxo3yvn4S6r7cacSGE+PMvBP1aMbg6w9lQj6Yzo=
X-Gm-Gg: ATEYQzy/zcboBiLxOVg8DFAwWnoz/hR4PStsj1b+uzWeKYy0sdzepdE1KSI5p+SYXpz
	zd7N+ruc0CTftYoE0lf50eB/aq60nqgMRDP8fMm3b3YmP/XVLgirFXExVtvBUWFn909GW/yrDE6
	UfcQ+jZLrAoUaDQpAno+IESQPD81DmgfHvQs61bcxPyVAu4SC+nTwf3FQwAVRImh9yOzFYTehYw
	V34Vh3Rq87tgAMyqjpxs7QMGjVJSvSF2tJ7rGkbcoAgpWYQcvYTQQD1x9/ko01HFka8lvy9YUaI
	f+uXRKSg7fkepLdgtPwvT69+/Ouu+RrP9xY8eq7YLROZyP3pP3tgqlS6giEu1HWiR1G8whmq/eF
	AjgA2Ds1I54Gf60mZS+RliBBLEZ8GYi56iprFB5XduxgZzWgufGo96SqVZXZ6Lzhbgm60Gplh85
	4JqHsgwbtE/NQXmNLjlNslY20KQmR66PmNnjeJiYXfs9cySorYgTg3YiL8akQM54YpT0SAYNlNF
	8mb
X-Received: by 2002:a05:600c:8b2f:b0:485:3a59:99ca with SMTP id 5b1f17b1804b1-4853a599b8cmr141900355e9.16.1773148161205;
        Tue, 10 Mar 2026 06:09:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:4d81:e92:c4c0:3c45? ([2a01:e0a:106d:1080:4d81:e92:c4c0:3c45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae4b860sm39614162f8f.36.2026.03.10.06.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:09:20 -0700 (PDT)
Message-ID: <d4665739-f3e5-410e-b5cb-b59dbcbc4851@linaro.org>
Date: Tue, 10 Mar 2026 14:09:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] gpu/drm: panel: add support for DSI panel used in
 Motorola Atrix 4G and Droid X2
To: Svyatoslav Ryhel <clamor95@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260223064630.12720-1-clamor95@gmail.com>
 <20260223064630.12720-3-clamor95@gmail.com>
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
In-Reply-To: <20260223064630.12720-3-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 95483251879
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273539-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 2/23/26 07:46, Svyatoslav Ryhel wrote:
> Add support for the DSI LCD panel module found in Motorola Atrix 4G or
> Droid X2 smartphones. Exact panel vendor and model are unknown hence panel
> uses generic compatible based on board where it is used. The panel has a
> 540x960 resolution with 24 bit RGB per pixel.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>   drivers/gpu/drm/panel/Kconfig              |  12 +
>   drivers/gpu/drm/panel/Makefile             |   1 +
>   drivers/gpu/drm/panel/panel-motorola-mot.c | 244 +++++++++++++++++++++
>   3 files changed, 257 insertions(+)
>   create mode 100644 drivers/gpu/drm/panel/panel-motorola-mot.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 307152ad7759..477c54c90b01 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -464,6 +464,18 @@ config DRM_PANEL_MANTIX_MLAF057WE51
>   	  has a resolution of 720x1440 pixels, a built in backlight and touch
>   	  controller.
>   
> +config DRM_PANEL_MOTOROLA_MOT
> +	tristate "Atrix 4G and Droid X2 540x960 DSI video mode panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	select VIDEOMODE_HELPERS
> +	help
> +	  Say Y here if you want to enable support for the LCD panel module
> +	  for Motorola Atrix 4G or Droid X2. Exact panel vendor and model are
> +	  unknown. The panel has a 540x960 resolution and uses 24 bit RGB per
> +	  pixel.
> +
>   config DRM_PANEL_NEC_NL8048HL11
>   	tristate "NEC NL8048HL11 RGB panel"
>   	depends on GPIOLIB && OF && SPI
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index aeffaa95666d..e17ef8140806 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -45,6 +45,7 @@ obj-$(CONFIG_DRM_PANEL_LG_LD070WX3) += panel-lg-ld070wx3.o
>   obj-$(CONFIG_DRM_PANEL_LG_LG4573) += panel-lg-lg4573.o
>   obj-$(CONFIG_DRM_PANEL_LG_SW43408) += panel-lg-sw43408.o
>   obj-$(CONFIG_DRM_PANEL_MAGNACHIP_D53E6EA8966) += panel-magnachip-d53e6ea8966.o
> +obj-$(CONFIG_DRM_PANEL_MOTOROLA_MOT) += panel-motorola-mot.o
>   obj-$(CONFIG_DRM_PANEL_NEC_NL8048HL11) += panel-nec-nl8048hl11.o
>   obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3051D) += panel-newvision-nv3051d.o
>   obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3052C) += panel-newvision-nv3052c.o
> diff --git a/drivers/gpu/drm/panel/panel-motorola-mot.c b/drivers/gpu/drm/panel/panel-motorola-mot.c
> new file mode 100644
> index 000000000000..eb1f86c3d704
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-motorola-mot.c
> @@ -0,0 +1,244 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/array_size.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +static const struct regulator_bulk_data mot_panel_supplies[] = {
> +	{ .supply = "vddio" }, { .supply = "vdd" },
> +};
> +
> +struct mot_panel {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +
> +	struct gpio_desc *reset_gpio;
> +
> +	struct regulator_bulk_data *supplies;
> +};
> +
> +static inline struct mot_panel *to_mot_panel(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct mot_panel, panel);
> +}
> +
> +static void mot_panel_reset(struct mot_panel *priv)
> +{
> +	gpiod_set_value_cansleep(priv->reset_gpio, 1);
> +	usleep_range(50000, 51000);
> +	gpiod_set_value_cansleep(priv->reset_gpio, 0);
> +	usleep_range(10000, 11000);
> +}
> +
> +static void mot_es2(struct mipi_dsi_multi_context *ctx)
> +{
> +	mipi_dsi_generic_write_seq_multi(ctx, 0x55, 0x01);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(ctx);
> +	mipi_dsi_msleep(ctx, 120);
> +
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xf4, 0x00, 0xbb, 0x46, 0x53, 0x0c, 0x49,
> +					 0x74, 0x29, 0x12, 0x15, 0x2f, 0x2f, 0x04);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xf8, 0x4b, 0x04, 0x10, 0x1a, 0x2c, 0x2c,
> +					 0x2c, 0x2c, 0x14, 0x12);
> +
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xb5, 0x03, 0x7f, 0x00, 0x80, 0xc7, 0x00);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xb7, 0x66, 0xf6, 0x46, 0x9f, 0x90, 0x99,
> +					 0xff, 0x80, 0x6d, 0x01);
> +
> +	/* Gamma R */
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x04);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x30, 0x12, 0x0e, 0x0c,
> +					 0x22, 0x27, 0x31, 0x2e, 0x07, 0x0f);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x30, 0x12, 0x0e, 0x0c,
> +					 0x22, 0x27, 0x31, 0x2e, 0x07, 0x0f);
> +
> +	/* Gamma G */
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x02);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x37, 0x15, 0x15, 0x11,
> +					 0x1f, 0x25, 0x2d, 0x2a, 0x05, 0x0f);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x37, 0x15, 0x15, 0x11,
> +					 0x1f, 0x25, 0x2d, 0x2a, 0x05, 0x0f);
> +
> +	/* Gamma B */
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x01);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x3f, 0x16, 0x1f, 0x15,
> +					 0x1f, 0x25, 0x2d, 0x2b, 0x06, 0x0b);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x3f, 0x16, 0x1f, 0x15,
> +					 0x1f, 0x25, 0x2d, 0x2b, 0x06, 0x0b);
> +
> +	/* Gamma W */
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x20);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x34, 0x15, 0x1a, 0x11,
> +					 0x1f, 0x23, 0x2d, 0x29, 0x02, 0x08);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x34, 0x15, 0x1a, 0x11,
> +					 0x1f, 0x23, 0x2d, 0x29, 0x02, 0x08);
> +
> +	mipi_dsi_generic_write_seq_multi(ctx, 0x53, 0x2c);
> +	mipi_dsi_generic_write_seq_multi(ctx, 0x35, 0x00);
> +}
> +
> +static int mot_panel_prepare(struct drm_panel *panel)
> +{
> +	struct mot_panel *priv = to_mot_panel(panel);
> +	struct mipi_dsi_multi_context ctx = { .dsi = priv->dsi };
> +	struct device *dev = panel->dev;
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(mot_panel_supplies), priv->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to enable power supplies: %d\n", ret);
> +		return ret;
> +	}
> +
> +	mot_panel_reset(priv);
> +
> +	mipi_dsi_generic_write_seq_multi(&ctx, 0xf0, 0x5a, 0x5a);
> +	mipi_dsi_generic_write_seq_multi(&ctx, 0xf1, 0x5a, 0x5a);
> +	mipi_dsi_generic_write_seq_multi(&ctx, 0xd0, 0x8e);
> +
> +	mot_es2(&ctx);
> +
> +	mipi_dsi_dcs_set_display_on_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 20);
> +
> +	return ctx.accum_err;
> +}
> +
> +static int mot_panel_disable(struct drm_panel *panel)
> +{
> +	struct mot_panel *priv = to_mot_panel(panel);
> +	struct mipi_dsi_multi_context ctx = { .dsi = priv->dsi };
> +
> +	mipi_dsi_dcs_set_display_off_multi(&ctx);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> +	mipi_dsi_msleep(&ctx, 70);
> +
> +	return ctx.accum_err;
> +}
> +
> +static int mot_panel_unprepare(struct drm_panel *panel)
> +{
> +	struct mot_panel *priv = to_mot_panel(panel);
> +
> +	usleep_range(10000, 11000);
> +
> +	gpiod_set_value_cansleep(priv->reset_gpio, 1);
> +	usleep_range(5000, 6000);
> +
> +	regulator_bulk_disable(ARRAY_SIZE(mot_panel_supplies), priv->supplies);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode mot_panel_mode = {
> +	.clock = (540 + 32 + 32 + 16) * (960 + 12 + 12 + 8) * 60 / 1000,
> +	.hdisplay = 540,
> +	.hsync_start = 540 + 32,
> +	.hsync_end = 540 + 32 + 32,
> +	.htotal = 540 + 32 + 32 + 16,
> +	.vdisplay = 960,
> +	.vsync_start = 960 + 12,
> +	.vsync_end = 960 + 12 + 12,
> +	.vtotal = 960 + 12 + 12 + 8,
> +	.width_mm = 51,
> +	.height_mm = 91,
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static int mot_panel_get_modes(struct drm_panel *panel,
> +			       struct drm_connector *connector)
> +{
> +	return drm_connector_helper_get_modes_fixed(connector, &mot_panel_mode);
> +}
> +
> +static const struct drm_panel_funcs mot_panel_panel_funcs = {
> +	.prepare = mot_panel_prepare,
> +	.disable = mot_panel_disable,
> +	.unprepare = mot_panel_unprepare,
> +	.get_modes = mot_panel_get_modes,
> +};
> +
> +static int mot_panel_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct mot_panel *priv;
> +	int ret;
> +
> +	priv = devm_drm_panel_alloc(dev, struct mot_panel, panel,
> +				    &mot_panel_panel_funcs,
> +				    DRM_MODE_CONNECTOR_DSI);
> +	if (IS_ERR(priv))
> +		return PTR_ERR(priv);
> +
> +	ret = devm_regulator_bulk_get_const(dev, ARRAY_SIZE(mot_panel_supplies),
> +					    mot_panel_supplies, &priv->supplies);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to get supplies\n");
> +
> +	priv->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +						   GPIOD_OUT_HIGH);
> +	if (IS_ERR(priv->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
> +				     "failed to get reset gpios\n");
> +
> +	priv->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, priv);
> +
> +	dsi->lanes = 2;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_LPM;
> +
> +	ret = drm_panel_of_backlight(&priv->panel);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to get backlight\n");
> +
> +	drm_panel_add(&priv->panel);
> +
> +	ret = devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&priv->panel);
> +		return dev_err_probe(dev, ret, "failed to attach to DSI host\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void mot_panel_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct mot_panel *priv = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_remove(&priv->panel);
> +}
> +
> +static const struct of_device_id mot_panel_of_match[] = {
> +	{ .compatible = "motorola,mot-panel" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, mot_panel_of_match);
> +
> +static struct mipi_dsi_driver mot_panel_driver = {
> +	.driver = {
> +		.name = "panel-motorola-mot",
> +		.of_match_table = mot_panel_of_match,
> +	},
> +	.probe = mot_panel_probe,
> +	.remove = mot_panel_remove,
> +};
> +module_mipi_dsi_driver(mot_panel_driver);
> +
> +MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
> +MODULE_DESCRIPTION("Motorola MOT panel driver");
> +MODULE_LICENSE("GPL");

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

