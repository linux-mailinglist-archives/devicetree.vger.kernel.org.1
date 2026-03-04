Return-Path: <devicetree+bounces-271166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LfoI7BgqGmduAAAu9opvQ
	(envelope-from <devicetree+bounces-271166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:41:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 312592047D5
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:41:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 689FD3039013
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9200346A1F;
	Wed,  4 Mar 2026 16:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RCAUVCe6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDCB33C52F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642281; cv=none; b=Mj6+YjTEWCelwysPjXNDGkfpNhFl//U8V8LoR3e5vrMitE4i3E1o3jQLl8T68x/hlOt2468Mllos1cRKojhnBCOTevVaO7YpaHdawzb695Th6OV9BrlyW3OU/Te9R88EC2JJ1hWy+yT0IEsnkpH22/5J5DSivPZ4/2pMdsERzL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642281; c=relaxed/simple;
	bh=aJLHaJLYmJ7A2b/l/tkv+iwtLvHHfYm02swu1fZOvQI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=HZRHCqqpTsQnmpZcLn+qWUu+7AHoHrl2zqzHzuxJ3pXCP9milxhhiLeyUNIgq2/MfGI0xvG9ofkqfBnvlgwfSKdW0hHtXmFHjagH9HWb+YIbvxAy1u+S8ArtKlowkI7lk90K6LytBUqVPX3lSGifaz6TcN2ezWXd39zzQUvXywA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RCAUVCe6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4836e3288cdso47994345e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772642277; x=1773247077; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6E19KtWgB58+Mbnxh60k6w28VIhLgU9w5YGABiECemk=;
        b=RCAUVCe67b3M/4FJ5b5oTLWPCZ9b8/Y4/4mqiKKH1IRSssptMxxWMshG4gESR07Gxq
         aEfUpf+Z59sRRDEIcfKu7BMFD9aN/xNR30Mz2uaqnLsk3ZotxKs3RYpefuJwPl5oG/HG
         PQAIIVweIkQE/HH67NE+fdfQ79mtEF85fcq85bmxD7crVZrV+JxUXXp88xvuUDKhsuDk
         LejfzvfgTVuL9PLkMy4ymBgqv4DZDwGZjiO7Nyrucpdz1VXpXGMGP2JjPpbyRx7BJpb8
         GoHHiuWHB5cyGcjvmj8c/E7pI9yXckmcvC3lGMGGDPt+gv6jV9HkkCCsg4LXWrgmBnYp
         vNfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772642277; x=1773247077;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6E19KtWgB58+Mbnxh60k6w28VIhLgU9w5YGABiECemk=;
        b=mZrkHGW75VMDlB4zs9S7nuOl3u4MJQZcnCrraqytJ9NfIS6F3XkauEUAkaIZgozIrZ
         QC/CNFcibdKNeqcu9gzWrPDPbNx5KjJPPpTWf3elU9wXl/hxTmCYjn9wBZyl+yDqWjzg
         bymNVGX2ChpWXb2fvtWAvjlqqvKFH1NGhWetxGypUI8z3e7yZHp5+jirfOZopDcMInk8
         OqMxlhCNDkbTC1f0Vh+8dZqtVLQKVaBq+eucXMsxFL1NcapPgkl3fEUd/BEPTLa9Idjd
         AhG1Y+u7X5KyDJIWgrY4xIi7SJ2S0W18yexCGu1Q/gewa3xvLa21MG2gsb0gkIDot3AJ
         Tc+A==
X-Forwarded-Encrypted: i=1; AJvYcCUqMiRsLXBCskC5/RHfTr7wZcXBIfOsEkZvubpVIvS6afWrnAuKkkcjGKyN1VYiPRTTBU/iRJn+tUwj@vger.kernel.org
X-Gm-Message-State: AOJu0YzUtjnSfP8WbQNQN8Tn83jZBBxoVb86BzHbmdp0xQVxF+nRXser
	nyI0fTcEUJFnX5hDUjyKx1gGiUaVEls4NcOcg7PCPxHa994+8qXOdiabnaQyLOUev2s=
X-Gm-Gg: ATEYQzwuc10rQxP1wxnzDc3GrOcVQBUsixacGGjR3B4h7jeAfFlEINSwXZbyN7mmPJd
	kTp6gvN4tbu1iAC7UqhGhAEOYCkxHlUVVkN7iad1tlOnC2szzy//4SyTzodLvxyHO0tKK3ADxJ7
	5ttFwAORwsBvC+31DiKzr0PxYTRAcjQt5f0Sehq09xAHLV1M2rGdvpZpaatziGUUvlEYv8GOfuP
	po2AeYugIxKdrWzG0cDBbO3vcG8YqpOxEjmCAdiwMRtzk+zvu+GhZIC26/+dJR0AID1IE3YaJ/v
	b90I1EK7ebl0Qoyjo1SYWEhFnH4gUxj1OLfDdJqu65lsqiJUeO2/mdvJwFCrhMp3GN+J3nuXaBA
	cx/MGFjGBcdkH+1RpH9vPszgYO5TuxtHyg0WJiYfcX6Fhv8ItYFYueCBLD9aMmytAzSk6unX9Ke
	a/7fiws3IDTmqbmSDPGJl4X6GCmEhwZ2CpjzuxmJ5dx1rD2mYCI8cDINFdW7Qan6gDW57Eq6b9/
	43G
X-Received: by 2002:a7b:cb96:0:b0:483:78e7:ce15 with SMTP id 5b1f17b1804b1-48513e9cb2dmr83792405e9.13.1772642277182;
        Wed, 04 Mar 2026 08:37:57 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:da6:dde3:e477:94d2? ([2a01:e0a:106d:1080:da6:dde3:e477:94d2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b59723fesm25843435f8f.38.2026.03.04.08.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 08:37:56 -0800 (PST)
Message-ID: <f5a0f16c-16a8-4051-ba92-19e23d0ad3aa@linaro.org>
Date: Wed, 4 Mar 2026 17:37:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] drm/panel: Add Himax HX83121A panel driver
To: Pengyu Luo <mitltlatltl@gmail.com>, Jessica Zhang
 <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260303115730.9580-1-mitltlatltl@gmail.com>
 <20260303115730.9580-3-mitltlatltl@gmail.com>
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
In-Reply-To: <20260303115730.9580-3-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 312592047D5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271166-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/3/26 12:57, Pengyu Luo wrote:
> Add a driver for panels using the Himax HX83121A Display Driver IC,
> including support for the BOE/CSOT PPC357DB1-4, found in HUAWEI
> Matebook E Go series (Gaokun2/3).
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>   drivers/gpu/drm/panel/Kconfig                |  11 +
>   drivers/gpu/drm/panel/Makefile               |   1 +
>   drivers/gpu/drm/panel/panel-himax-hx83121a.c | 752 +++++++++++++++++++
>   3 files changed, 764 insertions(+)
>   create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c
> 
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 7a83804fe..a60a15205 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -203,6 +203,17 @@ config DRM_PANEL_HIMAX_HX83112B
>   	  Say Y here if you want to enable support for Himax HX83112B-based
>   	  display panels, such as the one found in the Fairphone 3 smartphone.
>   
> +config DRM_PANEL_HIMAX_HX83121A
> +	tristate "Himax HX83121A-based DSI panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	select DRM_KMS_HELPER
> +	help
> +	  Say Y here if you want to enable support for Himax HX83121A-based
> +	  display panels, such as the one found in the HUAWEI Matebook E Go
> +          series.
> +
>   config DRM_PANEL_HIMAX_HX8394
>   	tristate "HIMAX HX8394 MIPI-DSI LCD panels"
>   	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index 6de894e0d..32df40712 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -21,6 +21,7 @@ obj-$(CONFIG_DRM_PANEL_HIMAX_HX8279) += panel-himax-hx8279.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83102) += panel-himax-hx83102.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83112A) += panel-himax-hx83112a.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83112B) += panel-himax-hx83112b.o
> +obj-$(CONFIG_DRM_PANEL_HIMAX_HX83121A) += panel-himax-hx83121a.o
>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX8394) += panel-himax-hx8394.o
>   obj-$(CONFIG_DRM_PANEL_HYDIS_HV101HD1) += panel-hydis-hv101hd1.o
>   obj-$(CONFIG_DRM_PANEL_ILITEK_IL9322) += panel-ilitek-ili9322.o
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx83121a.c b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> new file mode 100644
> index 000000000..719d5ed90
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> @@ -0,0 +1,752 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Himax HX83121A DriverIC panels driver
> + * Copyright (c) 2024-2026 Pengyu Luo <mitltlatltl@gmail.com>
> + *
> + * Multiple panels handling based on panel-novatek-nt36523.c
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_graph.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/display/drm_dsc.h>
> +#include <drm/display/drm_dsc_helper.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +
> +#include <video/mipi_display.h>
> +
> +static bool enable_dsc = false;
> +module_param(enable_dsc, bool, 0);
> +MODULE_PARM_DESC(enable_dsc, "enable DSC on the panel (default: false)");
> +
> +struct himax {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi[2];
> +	const struct panel_desc *desc;
> +	struct drm_dsc_config dsc;
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data *supplies;
> +	struct backlight_device *backlight;
> +};
> +
> +struct panel_desc {
> +	unsigned int width_mm;
> +	unsigned int height_mm;
> +	unsigned int bpc;
> +	unsigned int lanes;
> +	enum mipi_dsi_pixel_format format;
> +	unsigned long mode_flags;
> +	const struct drm_dsc_config *dsc_cfg;
> +	const struct drm_display_mode *dsc_modes;
> +	unsigned int num_dsc_modes;
> +
> +	const struct drm_display_mode *modes;
> +	unsigned int num_modes;
> +
> +	int (*init_sequence_dsc)(struct mipi_dsi_multi_context *dsi_ctx);
> +	int (*init_sequence)(struct mipi_dsi_multi_context *dsi_ctx);
> +
> +	bool is_dual_dsi;
> +	bool has_dcs_backlight;
> +};
> +
> +static const struct regulator_bulk_data himax_supplies[] = {
> +	{ .supply = "vddi" },
> +	{ .supply = "vsp" },
> +	{ .supply = "vsn" },
> +};
> +
> +static inline struct himax *to_himax(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct himax, panel);
> +}
> +
> +static inline struct mipi_dsi_device *to_primary_dsi(struct himax *ctx)
> +{
> +	/* Sync on DSI1 for dual dsi */
> +	return ctx->desc->is_dual_dsi ? ctx->dsi[1] : ctx->dsi[0];
> +}
> +
> +static void himax_reset(struct himax *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(4000, 4100);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	msleep(20);
> +}
> +
> +static int himax_prepare(struct drm_panel *panel)
> +{
> +	struct himax *ctx = to_himax(panel);
> +	struct mipi_dsi_device *dsi = to_primary_dsi(ctx);
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +	struct drm_dsc_picture_parameter_set pps;
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(himax_supplies),
> +				    ctx->supplies);
> +	if (ret < 0)
> +		return ret;
> +
> +	himax_reset(ctx);
> +
> +	if (enable_dsc && ctx->desc->init_sequence_dsc)
> +		ret = ctx->desc->init_sequence_dsc(&dsi_ctx);
> +	else if (ctx->desc->init_sequence)
> +		ret = ctx->desc->init_sequence(&dsi_ctx);
> +	else
> +		ret = -EOPNOTSUPP;
> +
> +	if (ret < 0) {
> +		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +		regulator_bulk_disable(ARRAY_SIZE(himax_supplies),
> +				       ctx->supplies);
> +		return ret;
> +	}
> +
> +	if (enable_dsc) {
> +		drm_dsc_pps_payload_pack(&pps, &ctx->dsc);
> +		mipi_dsi_picture_parameter_set_multi(&dsi_ctx, &pps);
> +		mipi_dsi_compression_mode_multi(&dsi_ctx, true);
> +	}
> +
> +	return backlight_update_status(ctx->backlight);
> +}
> +
> +static int himax_off(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	mipi_dsi_dcs_enter_sleep_mode_multi(dsi_ctx);
> +	mipi_dsi_msleep(dsi_ctx, 120);
> +
> +	return dsi_ctx->accum_err;
> +}
> +
> +static int himax_unprepare(struct drm_panel *panel)
> +{
> +	struct himax *ctx = to_himax(panel);
> +	struct mipi_dsi_device *dsi = to_primary_dsi(ctx);
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
> +	struct device *dev = &dsi->dev;
> +	int ret;
> +
> +	ret = himax_off(&dsi_ctx);
> +	if (ret < 0)
> +		dev_err(dev, "panel failed to off: %d\n", ret);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(himax_supplies), ctx->supplies);
> +
> +	return 0;
> +}
> +
> +static int himax_get_modes(struct drm_panel *panel,
> +			   struct drm_connector *connector)
> +{
> +
> +	struct himax *ctx = to_himax(panel);
> +	const struct panel_desc *desc = ctx->desc;
> +	const struct drm_display_mode *modes;
> +	int num_modes;
> +	int i;
> +
> +	modes = enable_dsc ? desc->dsc_modes : desc->modes;
> +	num_modes = enable_dsc ? desc->num_dsc_modes : desc->num_modes;
> +
> +	for (i = 0; i < num_modes; i++) {
> +		const struct drm_display_mode *m = &modes[i];
> +		struct drm_display_mode *mode;
> +
> +		mode = drm_mode_duplicate(connector->dev, m);
> +		if (!mode) {
> +			dev_err(panel->dev, "failed to add mode %ux%u@%u\n",
> +				m->hdisplay, m->vdisplay, drm_mode_vrefresh(m));
> +			return -ENOMEM;
> +		}
> +
> +		mode->type = DRM_MODE_TYPE_DRIVER;
> +		if (i == 0)
> +			mode->type |= DRM_MODE_TYPE_PREFERRED;
> +
> +		drm_mode_set_name(mode);
> +		drm_mode_probed_add(connector, mode);
> +	}
> +
> +	connector->display_info.width_mm = desc->width_mm;
> +	connector->display_info.height_mm = desc->height_mm;
> +	connector->display_info.bpc = desc->bpc;
> +
> +	return num_modes;
> +}
> +
> +static const struct drm_panel_funcs himax_panel_funcs = {
> +	.prepare = himax_prepare,
> +	.unprepare = himax_unprepare,
> +	.get_modes = himax_get_modes,
> +};
> +
> +static int himax_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi = bl_get_data(bl);
> +	u16 brightness = backlight_get_brightness(bl);
> +	/* TODO: brightness to raw map table */
> +	return mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +}
> +
> +static const struct backlight_ops himax_bl_ops = {
> +	.options = BL_CORE_SUSPENDRESUME,
> +	.update_status = himax_bl_update_status,
> +};
> +
> +static struct backlight_device *
> +himax_create_backlight(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	const struct backlight_properties props = {
> +		.type = BACKLIGHT_RAW,
> +		.brightness = 512,
> +		.max_brightness = 4095,
> +		.scale = BACKLIGHT_SCALE_NON_LINEAR,
> +	};
> +
> +	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
> +					      &himax_bl_ops, &props);
> +}
> +
> +static int himax_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct mipi_dsi_device_info dsi_info = {"dsi-secondary", 0, NULL};
> +	struct mipi_dsi_host *dsi1_host;
> +	struct device *dev = &dsi->dev;
> +	const struct panel_desc *desc;
> +	struct device_node *dsi1;
> +	struct himax *ctx;
> +	int num_dsi = 1;
> +	int ret, i;
> +
> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ret = devm_regulator_bulk_get_const(&dsi->dev,
> +					    ARRAY_SIZE(himax_supplies),
> +					    himax_supplies, &ctx->supplies);
> +	if (ret < 0)
> +		return ret;
> +
> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	desc = of_device_get_match_data(dev);
> +	if (!desc)
> +		return -ENODEV;
> +	ctx->desc = desc;
> +	ctx->dsc = *desc->dsc_cfg;
> +
> +	if (desc->is_dual_dsi) {
> +		num_dsi = 2;
> +		dsi1 = of_graph_get_remote_node(dsi->dev.of_node, 1, -1);
> +		if (!dsi1) {
> +			dev_err(dev, "cannot get secondary DSI node.\n");
> +			return -ENODEV;
> +		}
> +
> +		dsi1_host = of_find_mipi_dsi_host_by_node(dsi1);
> +		of_node_put(dsi1);
> +		if (!dsi1_host)
> +			return dev_err_probe(dev, -EPROBE_DEFER,
> +					     "cannot get secondary DSI host\n");
> +
> +		ctx->dsi[1] = devm_mipi_dsi_device_register_full(dev, dsi1_host,
> +								 &dsi_info);
> +		if (IS_ERR(ctx->dsi[1])) {
> +			dev_err(dev, "cannot get secondary DSI device\n");
> +			return PTR_ERR(ctx->dsi[1]);
> +		}
> +
> +		mipi_dsi_set_drvdata(ctx->dsi[1], ctx);
> +	}
> +
> +	ctx->dsi[0] = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	drm_panel_init(&ctx->panel, dev, &himax_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);

Could you switch to devm_drm_panel_alloc ?

> +
> +	ctx->panel.prepare_prev_first = true;
> +
> +	if (desc->has_dcs_backlight) {
> +		ctx->backlight = himax_create_backlight(to_primary_dsi(ctx));
> +		if (IS_ERR(ctx->backlight))
> +			return dev_err_probe(dev, PTR_ERR(ctx->backlight),
> +					     "Failed to create backlight\n");
> +	} else {
> +		ret = drm_panel_of_backlight(&ctx->panel);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "Failed to get backlight\n");
> +	}
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	for (i = 0; i < num_dsi; i++) {
> +		ctx->dsi[i]->lanes = desc->lanes;
> +		ctx->dsi[i]->format = desc->format;
> +		ctx->dsi[i]->mode_flags = desc->mode_flags;
> +		ctx->dsi[i]->dsc = enable_dsc ? &ctx->dsc : NULL;
> +		ret = devm_mipi_dsi_attach(dev, ctx->dsi[i]);
> +		if (ret < 0) {
> +			drm_panel_remove(&ctx->panel);
> +			return dev_err_probe(dev, ret,
> +					     "Failed to attach to DSI host\n");
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void himax_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct himax *ctx = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static int boe_ppc357db1_4_dsc_init_seq(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x83, 0x12, 0x1a, 0x55, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe1, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc7);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2, 0x98);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x01, 0x07, 0x01, 0x07, 0x01, 0x07, 0x06, 0x06,
> +				     0x06, 0x16, 0x00, 0x16, 0x81, 0x02, 0x40, 0x00,
> +				     0x1a, 0x4a, 0x05, 0x04, 0x03, 0x02, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc6);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd2, 0x00, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc9);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd3, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc6);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2, 0x42);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xd0);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2, 0xf5);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xcd,
> +				     0x81, 0x00, 0x80, 0x77, 0x00, 0x01, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1,
> +				     0xc7, 0xb2, 0xa0, 0x90, 0x81, 0x75, 0x69, 0x5f,
> +				     0x55, 0x4c, 0x44, 0x3d, 0x36, 0x2f, 0x2a, 0x24,
> +				     0x1e, 0x19, 0x14, 0x10, 0x09, 0x08, 0x07, 0x54,
> +				     0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xaa, 0xd4, 0xff, 0x2a, 0x55, 0x7f, 0xaa, 0xd4,
> +				     0xff, 0xea, 0xff, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc8);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb1, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbe, 0x01, 0x35, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd9, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x00, 0x00, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(dsi_ctx);
> +	mipi_dsi_msleep(dsi_ctx, 140);
> +	mipi_dsi_dcs_set_display_on_multi(dsi_ctx);
> +
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_msleep(dsi_ctx, 20);
> +
> +	return dsi_ctx->accum_err;
> +}
> +
> +static int boe_ppc357db1_4_init_seq(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x83, 0x12, 0x1a, 0x55, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd1, 0x37, 0x03, 0x0c, 0xfd);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe1, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc7);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2, 0xa6);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x01, 0x07, 0x01, 0x07, 0x01, 0x07, 0x06, 0x06,
> +				     0x06, 0x16, 0x00, 0x16, 0x81, 0x02, 0x40, 0x00,
> +				     0x1a, 0x4a, 0x05, 0x04, 0x03, 0x02, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2,
> +				     0x02, 0x68, 0x02, 0x68, 0x02, 0x68, 0x02, 0x68,
> +				     0x02, 0x6f, 0x03, 0x04, 0x2d, 0x09, 0x09, 0x00,
> +				     0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x00, 0x00, 0x00,
> +				     0x01, 0x10, 0x10, 0x1c, 0x25, 0x3c, 0x00, 0x23,
> +				     0x5d, 0x02, 0x02, 0x00, 0x00, 0x58, 0x01, 0xac,
> +				     0x0f, 0xa9, 0x10, 0x00, 0x2d, 0x6f, 0x00, 0x70,
> +				     0x00, 0x0a, 0xcb, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc6);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd2, 0x09, 0x85);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc9);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd3, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xd0);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2, 0xf5);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1,
> +				     0xc7, 0xb2, 0xa0, 0x90, 0x81, 0x75, 0x69, 0x5f,
> +				     0x55, 0x4c, 0x44, 0x3d, 0x36, 0x2f, 0x2a, 0x24,
> +				     0x1e, 0x19, 0x14, 0x10, 0x09, 0x08, 0x07, 0x54,
> +				     0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xaa, 0xd4, 0xff, 0x2a, 0x55, 0x7f, 0xaa, 0xd4,
> +				     0xff, 0xea, 0xff, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc8);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb1, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbe, 0x01, 0x35, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd9, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x00, 0x00, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(dsi_ctx);
> +	mipi_dsi_msleep(dsi_ctx, 140);
> +	mipi_dsi_dcs_set_display_on_multi(dsi_ctx);
> +
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_msleep(dsi_ctx, 31);
> +
> +	return dsi_ctx->accum_err;
> +}
> +
> +static int csot_ppc357db1_4_dsc_init_seq(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x83, 0x12, 0x1a, 0x55, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb1,
> +				     0x1c, 0x6b, 0x6b, 0x27, 0xe7, 0x00, 0x1b, 0x25,
> +				     0x21, 0x21, 0x2d, 0x2d, 0x17, 0x33, 0x31, 0x40,
> +				     0xcd, 0xff, 0x1a, 0x05, 0x15, 0x98, 0x00, 0x88,
> +				     0x7f, 0xff, 0xff, 0xcf, 0x1a, 0xcc, 0x02, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd1, 0x37, 0x03, 0x0c, 0xfd);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2,
> +				     0x00, 0x6a, 0x40, 0x00, 0x00, 0x14, 0x98, 0x60,
> +				     0x3c, 0x02, 0x80, 0x21, 0x21, 0x00, 0x00, 0xf0,
> +				     0x27);
> +	/*
> +	 * NOTE: Register 0xE2 configuration (based on downstream reference):
> +	 * - 0x00: 120Hz with DSC enabled
> +	 * - 0x10: 60Hz with DSC enabled
> +	 * - 0x20: 60Hz with DSC disabled
> +	 *
> +	 * Both 0x00 and 0x10 are compatible with 60Hz/120Hz when DSC is active.
> +	 * We use a fixed DSC-on value to remain refresh-rate agnostic.
> +	 */
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xc0, 0x23, 0x23, 0xcc, 0x22, 0x99, 0xd8);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb4,
> +				     0x46, 0x06, 0x0c, 0xbe, 0x0c, 0xbe, 0x09, 0x46,
> +				     0x0f, 0x57, 0x0f, 0x57, 0x03, 0x4a, 0x00, 0x00,
> +				     0x04, 0x0c, 0x00, 0x18, 0x01, 0x06, 0x08, 0x00,
> +				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +				     0x00, 0x00, 0xff, 0x00, 0xff, 0x10, 0x00, 0x02,
> +				     0x14, 0x14, 0x14, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe1, 0x01, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xe2);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd3,
> +				     0x00, 0xc0, 0x08, 0x08, 0x08, 0x04, 0x04, 0x04,
> +				     0x16, 0x02, 0x07, 0x07, 0x07, 0x31, 0x13, 0x19,
> +				     0x12, 0x12, 0x03, 0x03, 0x03, 0x32, 0x10, 0x18,
> +				     0x00, 0x11, 0x32, 0x10, 0x03, 0x00, 0x03, 0x32,
> +				     0x10, 0x03, 0x00, 0x03, 0x00, 0x00, 0xff, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe1,
> +				     0x11, 0x00, 0x00, 0x89, 0x30, 0x80, 0x0a, 0x00,
> +				     0x03, 0x20, 0x00, 0x14, 0x03, 0x20, 0x03, 0x20,
> +				     0x02, 0x00, 0x02, 0x91, 0x00, 0x20, 0x02, 0x47,
> +				     0x00, 0x0b, 0x00, 0x0c, 0x05, 0x0e, 0x03, 0x68,
> +				     0x18, 0x00, 0x10, 0xe0, 0x03, 0x0c, 0x20, 0x00,
> +				     0x06, 0x0b, 0x0b, 0x33, 0x0e, 0x1c, 0x2a, 0x38,
> +				     0x46, 0x54, 0x62, 0x69, 0x70, 0x77, 0x79, 0x7b,
> +				     0x7d, 0x7e, 0x01, 0x02, 0x01, 0x00, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x17, 0x08, 0x08, 0x2c, 0x46, 0x1e, 0x02, 0x23,
> +				     0x5d, 0x02, 0xc9, 0x00, 0x00, 0x00, 0x00, 0x12,
> +				     0x05, 0x02, 0x02, 0x07, 0x10, 0x10, 0x00, 0x1d,
> +				     0xb9, 0x23, 0xb9, 0x00, 0x33, 0x02, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x02, 0x00, 0xb2, 0x01, 0x56, 0x07, 0x56, 0x08,
> +				     0x48, 0x14, 0xfd, 0x26);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x08, 0x08, 0x01, 0x03, 0x01, 0x03, 0x07, 0x02,
> +				     0x02, 0x47, 0x00, 0x47, 0x81, 0x02, 0x40, 0x00,
> +				     0x18, 0x4a, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
> +				     0x00, 0x00, 0x03, 0x02, 0x01, 0x00, 0x00, 0x00,
> +				     0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbf,
> +				     0xfd, 0x00, 0x80, 0x9c, 0x36, 0x00, 0x81, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xcd,
> +				     0x81, 0x00, 0x80, 0x77, 0x00, 0x01, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1,
> +				     0xc7, 0xb2, 0xa0, 0x90, 0x81, 0x75, 0x69, 0x5f,
> +				     0x55, 0x4c, 0x44, 0x3d, 0x36, 0x2f, 0x2a, 0x24,
> +				     0x1e, 0x19, 0x14, 0x10, 0x09, 0x08, 0x07, 0x54,
> +				     0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xaa, 0xd4, 0xff, 0x2a, 0x55, 0x7f, 0xaa, 0xd4,
> +				     0xff, 0xea, 0xff, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbe, 0x01, 0x35, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd9, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x00, 0x00, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(dsi_ctx);
> +	mipi_dsi_msleep(dsi_ctx, 140);
> +	mipi_dsi_dcs_set_display_on_multi(dsi_ctx);
> +
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_msleep(dsi_ctx, 20);
> +
> +	return dsi_ctx->accum_err;
> +}
> +
> +static int csot_ppc357db1_4_init_seq(struct mipi_dsi_multi_context *dsi_ctx)
> +{
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x83, 0x12, 0x1a, 0x55, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb1,
> +				     0x1c, 0x6b, 0x6b, 0x27, 0xe7, 0x00, 0x1b, 0x11,
> +				     0x21, 0x21, 0x2d, 0x2d, 0x17, 0x33, 0x31, 0x40,
> +				     0xcd, 0xff, 0x1a, 0x05, 0x15, 0x98, 0x00, 0x88,
> +				     0x7f, 0xff, 0xff, 0xcf, 0x1a, 0xcc, 0x02, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd1, 0x37, 0x03, 0x0c, 0xfd);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2,
> +				     0x00, 0x6a, 0x40, 0x00, 0x00, 0x14, 0x98, 0x60,
> +				     0x3c, 0x02, 0x80, 0x21, 0x21, 0x00, 0x00, 0x10,
> +				     0x27);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe1, 0x00, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xe2);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd3,
> +				     0x00, 0xc0, 0x08, 0x08, 0x08, 0x04, 0x04, 0x04,
> +				     0x16, 0x02, 0x07, 0x07, 0x07, 0x31, 0x13, 0x16,
> +				     0x12, 0x12, 0x03, 0x03, 0x03, 0x32, 0x10, 0x15,
> +				     0x00, 0x11, 0x32, 0x10, 0x03, 0x00, 0x03, 0x32,
> +				     0x10, 0x03, 0x00, 0x03, 0x00, 0x00, 0xff, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe2,
> +				     0x80, 0x05, 0x1c, 0xbe, 0x09, 0x8d, 0x0f, 0x57,
> +				     0x03, 0x87, 0x06, 0x10, 0x32, 0x06, 0x15, 0x00,
> +				     0x00, 0x14, 0x14, 0x14, 0x14, 0x00, 0x00, 0x00,
> +				     0x01, 0x10, 0x10, 0x16, 0x28, 0x3c, 0x03, 0x23,
> +				     0x5d, 0x02, 0x02, 0x00, 0x00, 0x48, 0x01, 0xac,
> +				     0x0f, 0xab, 0x10, 0x00, 0x32, 0x87, 0x00, 0xa1,
> +				     0x00, 0x0a, 0xcb, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x02, 0x00, 0xb2, 0x01, 0x56, 0x07, 0x56, 0x08,
> +				     0x48, 0x14, 0x00, 0x26);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe7,
> +				     0x05, 0x05, 0x01, 0x05, 0x01, 0x05, 0x04, 0x04,
> +				     0x04, 0x24, 0x00, 0x24, 0x81, 0x02, 0x40, 0x00,
> +				     0x32, 0x87, 0x03, 0x02, 0x01, 0x00, 0x00, 0x00,
> +				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +				     0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xd0);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb2, 0xf0);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbf,
> +				     0xfd, 0x00, 0x80, 0x9c, 0x10, 0x00, 0x81, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1, 0xe1,
> +				     0xc7, 0xb2, 0xa0, 0x90, 0x81, 0x75, 0x69, 0x5f,
> +				     0x55, 0x4c, 0x44, 0x3d, 0x36, 0x2f, 0x2a, 0x24,
> +				     0x1e, 0x19, 0x14, 0x10, 0x09, 0x08, 0x07, 0x54,
> +				     0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe4,
> +				     0xaa, 0xd4, 0xff, 0x2a, 0x55, 0x7f, 0xaa, 0xd4,
> +				     0xff, 0xea, 0xff, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbd, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0xc8);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb1, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xe9, 0x3f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xbe, 0x01, 0x35, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xd9, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, 0xb9, 0x00, 0x00, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(dsi_ctx);
> +	mipi_dsi_msleep(dsi_ctx, 140);
> +	mipi_dsi_dcs_set_display_on_multi(dsi_ctx);
> +
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x24);
> +	mipi_dsi_msleep(dsi_ctx, 31);
> +
> +	return dsi_ctx->accum_err;
> +}
> +
> +static struct drm_dsc_config ppc357db1_4_dsc_cfg = {
> +	.dsc_version_major = 1,
> +	.dsc_version_minor = 1,
> +	.slice_height = 20,
> +	.slice_width = 800,
> +	.slice_count = 1,
> +	.bits_per_component = 8,
> +	.bits_per_pixel = 8 << 4,
> +	.block_pred_enable = true,
> +};
> +
> +static const struct drm_display_mode ppc357db1_4_dsc_modes[] = {
> +	{
> +		.clock = (800 + 60 + 40 + 40) * 2 * (2560 + 154 + 4 + 18) * 120 / 1000,
> +		.hdisplay = 800 * 2,
> +		.hsync_start = (800 + 60) * 2,
> +		.hsync_end = (800 + 60 + 40) * 2,
> +		.htotal = (800 + 60 + 40 + 40) * 2,
> +		.vdisplay = 2560,
> +		.vsync_start = 2560 + 154,
> +		.vsync_end = 2560 + 154 + 4,
> +		.vtotal = 2560 + 154 + 4 + 18,
> +	},
> +	{
> +		.clock = (800 + 60 + 40 + 40) * 2 * (2560 + 2890 + 4 + 18) * 60 / 1000,
> +		.hdisplay = 800 * 2,
> +		.hsync_start = (800 + 60) * 2,
> +		.hsync_end = (800 + 60 + 40) * 2,
> +		.htotal = (800 + 60 + 40 + 40) * 2,
> +		.vdisplay = 2560,
> +		.vsync_start = 2560 + 2890,
> +		.vsync_end = 2560 + 2890 + 4,
> +		.vtotal = 2560 + 2890 + 4 + 18,
> +	},
> +};
> +
> +static const struct drm_display_mode ppc357db1_4_modes[] = {
> +	{
> +		.clock = (800 + 60 + 20 + 40) * 2 * (2560 + 154 + 4 + 18) * 60 / 1000,
> +		.hdisplay = 800 * 2,
> +		.hsync_start = (800 + 60) * 2,
> +		.hsync_end = (800 + 60 + 20) * 2,
> +		.htotal = (800 + 60 + 20 + 40) * 2,
> +		.vdisplay = 2560,
> +		.vsync_start = 2560 + 168,
> +		.vsync_end = 2560 + 168 + 4,
> +		.vtotal = 2560 + 168 + 4 + 18,
> +	},
> +};

Could you move all those before the probe function ?

> +
> +/* Model name: BOE PPC357DB1-4 */
> +static const struct panel_desc boe_ppc357db1_4_desc = {
> +	.width_mm = 266,
> +	.height_mm = 166,
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_CLOCK_NON_CONTINUOUS |
> +		      MIPI_DSI_MODE_LPM,
> +	.dsc_cfg = &ppc357db1_4_dsc_cfg,
> +	.dsc_modes = ppc357db1_4_dsc_modes,
> +	.num_dsc_modes = ARRAY_SIZE(ppc357db1_4_dsc_modes),
> +	.modes = ppc357db1_4_modes,
> +	.num_modes = ARRAY_SIZE(ppc357db1_4_modes),
> +	.init_sequence_dsc = boe_ppc357db1_4_dsc_init_seq,
> +	.init_sequence = boe_ppc357db1_4_init_seq,
> +	.is_dual_dsi = true,
> +	.has_dcs_backlight = true,
> +};
> +
> +/* Model name: CSOT PPC357DB1-4 */
> +static const struct panel_desc csot_ppc357db1_4_desc = {
> +	.width_mm = 266,
> +	.height_mm = 166,
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_CLOCK_NON_CONTINUOUS |
> +		      MIPI_DSI_MODE_LPM,
> +	.dsc_cfg = &ppc357db1_4_dsc_cfg,
> +	.dsc_modes = ppc357db1_4_dsc_modes,
> +	.num_dsc_modes = ARRAY_SIZE(ppc357db1_4_dsc_modes),
> +	.modes = ppc357db1_4_modes,
> +	.num_modes = ARRAY_SIZE(ppc357db1_4_modes),
> +	.init_sequence_dsc = csot_ppc357db1_4_dsc_init_seq,
> +	.init_sequence = csot_ppc357db1_4_init_seq,
> +	.is_dual_dsi = true,
> +	.has_dcs_backlight = true,
> +};
> +
> +/*
> + * Known panels with HX83121A:
> + * CSOT PNC357DB1-4: on MI Book S 12.4
> + * CSOT PPC357DB1-1: on SAMSUNG Galaxy Tab S7 FE
> + * BOE/CSOT PPC357DB1-4: on HUAWEI Matebook E Go
> + * CSOT PPC357DB1-5: on MI Pad 5 Pro 12.4
> + */
> +
> +static const struct of_device_id himax_of_match[] = {
> +	{ .compatible = "boe,ppc357db1-4", .data = &boe_ppc357db1_4_desc },
> +	{ .compatible = "csot,ppc357db1-4", .data = &csot_ppc357db1_4_desc },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, himax_of_match);
> +
> +static struct mipi_dsi_driver himax_driver = {
> +	.probe = himax_probe,
> +	.remove = himax_remove,
> +	.driver = {
> +		.name = "panel-himax-hx83121a",
> +		.of_match_table = himax_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(himax_driver);
> +
> +MODULE_AUTHOR("Pengyu Luo <mitltlatltl0@gmail.com>");
> +MODULE_DESCRIPTION("Himax HX83121A DriverIC panels driver");
> +MODULE_LICENSE("GPL");


