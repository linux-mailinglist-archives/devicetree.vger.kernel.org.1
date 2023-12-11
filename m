Return-Path: <devicetree+bounces-23738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B4780C31D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44321280D1B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B86C20B3F;
	Mon, 11 Dec 2023 08:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gwTowJLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E295E5
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:28:07 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c2718a768so44757905e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702283286; x=1702888086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b86h1qVUlvkEy7uz455zczmOFDjJSlNbKkBl5oYZsN0=;
        b=gwTowJLKREuU21eNR2XNUljQPA9I6D4fOkIomJvzdE6diP3vkE3jOa7jDpyZEhib5H
         eP7iXckc7nH6cHL7xXCrkBijXRfSSAzL+3Hh7YjEFYmeG/BwRqVNYnaWx4Zu/1ddWNIV
         sBHPG7yqtgSc6yL8hE/tq09cpY5s+5XLTJt7c2DT2HHOA6WDNPtA2TziysPdEN4a93AL
         sPCYlJ0rlZiOM9k6lAv7ty5E+ZL6yrK95SGC3qa13O3Qn688j5/or0yeJp2sLWZkF/a5
         A54A65E4WRqXxJZlO/lZI8+7+0twiBX4uaJATB4QLiVw8F9KCQnW/dr63MCYUTF0sAS5
         BDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702283286; x=1702888086;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b86h1qVUlvkEy7uz455zczmOFDjJSlNbKkBl5oYZsN0=;
        b=WUH4XmDBXVKeUs2oXiQ3CF0qy+o+FrCFmkfO1gmf6BJ3pXzIr30f1BKxhSOywOkoE3
         Ur+DXO2BVo/kBMp0y9uzPUzNyv4QwcrkgAFMFKmgIMhuFpFO5I4JIaEAS8uzdmY3a5c4
         DgPhcGfJLgsHGEs3a/8Vs6rnmeaN3xnRGixbyPQQ1KKwD9KItDTo/2pu3PflmR5aj7uC
         NOIKWsbY1cZDZNrS0KlapQ82pUPJFzPvRDcSEPhBR5M01V7CF3nxUbaZXwN0glJhfGNi
         lK/pHlVQG/nujBc4/3f2z5seiD/yHX/1lI/omxCDaCLL0A8DNa87MaBNToKmY2dmTHYI
         oIUw==
X-Gm-Message-State: AOJu0YzJiIldIMndObcSdivyjChl21IvyMItxloqSi0IkWwO/tG1SxUE
	CLRVbwvARXMQ5ikrP7DeE8Zn0A==
X-Google-Smtp-Source: AGHT+IE1JkCfTgzpIqb/cP2FfdEODGHnObJkGX6/XOJ3QckUeiVgFbXK6LIH4DyuBBQX5SXPQRvFhA==
X-Received: by 2002:a05:600c:4c8a:b0:40c:d3a:2447 with SMTP id g10-20020a05600c4c8a00b0040c0d3a2447mr2541433wmp.87.1702283286054;
        Mon, 11 Dec 2023 00:28:06 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23? ([2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23])
        by smtp.gmail.com with ESMTPSA id g13-20020a056000118d00b003333d46a9e8sm7955435wrx.56.2023.12.11.00.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 00:28:05 -0800 (PST)
Message-ID: <7b7f1f2c-d940-4ab1-abc3-1afe2ce42e67@linaro.org>
Date: Mon, 11 Dec 2023 09:28:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] drm/panel: st7701: Add Anbernic RG-ARC Panel Support
Content-Language: en-US, fr
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org, linus.walleij@linaro.org, marex@denx.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, jagan@amarulasolutions.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
 <20231208154847.130615-4-macroalpha82@gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20231208154847.130615-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/12/2023 16:48, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RG-ARC is a series of 2 handheld devices, each with a 4
> inch 480x640 display. Add support for the display.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-sitronix-st7701.c | 136 ++++++++++++++++++
>   1 file changed, 136 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> index 036ac403ed21..421eb4592b61 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> @@ -423,6 +423,42 @@ static void kd50t048a_gip_sequence(struct st7701 *st7701)
>   		   0xFF, 0xFF, 0xFF, 0xFF, 0x10, 0x45, 0x67, 0x98, 0xBA);
>   }
>   
> +static void rg_arc_gip_sequence(struct st7701 *st7701)
> +{
> +	st7701_switch_cmd_bkx(st7701, true, 3);
> +	ST7701_DSI(st7701, 0xEF, 0x08);
> +	st7701_switch_cmd_bkx(st7701, true, 0);
> +	ST7701_DSI(st7701, 0xC7, 0x04);
> +	ST7701_DSI(st7701, 0xCC, 0x38);
> +	st7701_switch_cmd_bkx(st7701, true, 1);
> +	ST7701_DSI(st7701, 0xB9, 0x10);
> +	ST7701_DSI(st7701, 0xBC, 0x03);
> +	ST7701_DSI(st7701, 0xC0, 0x89);
> +	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
> +	ST7701_DSI(st7701, 0xE1, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
> +		   0x00, 0x00, 0x20, 0x20);
> +	ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +		   0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> +	ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x00);
> +	ST7701_DSI(st7701, 0xE4, 0x22, 0x00);
> +	ST7701_DSI(st7701, 0xE5, 0x04, 0x5C, 0xA0, 0xA0, 0x06, 0x5C, 0xA0,
> +		   0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> +	ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x00);
> +	ST7701_DSI(st7701, 0xE7, 0x22, 0x00);
> +	ST7701_DSI(st7701, 0xE8, 0x05, 0x5C, 0xA0, 0xA0, 0x07, 0x5C, 0xA0,
> +		   0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> +	ST7701_DSI(st7701, 0xEB, 0x02, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00);
> +	ST7701_DSI(st7701, 0xEC, 0x00, 0x00);
> +	ST7701_DSI(st7701, 0xED, 0xFA, 0x45, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF,
> +		   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB0, 0x54, 0xAF);
> +	ST7701_DSI(st7701, 0xEF, 0x08, 0x08, 0x08, 0x45, 0x3F, 0x54);
> +	st7701_switch_cmd_bkx(st7701, false, 0);
> +	ST7701_DSI(st7701, MIPI_DCS_SET_ADDRESS_MODE, 0x17);
> +	ST7701_DSI(st7701, MIPI_DCS_SET_PIXEL_FORMAT, 0x77);
> +	ST7701_DSI(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
> +	msleep(120);
> +}
> +
>   static int st7701_prepare(struct drm_panel *panel)
>   {
>   	struct st7701 *st7701 = panel_to_st7701(panel);
> @@ -839,6 +875,105 @@ static const struct st7701_panel_desc kd50t048a_desc = {
>   	.gip_sequence = kd50t048a_gip_sequence,
>   };
>   
> +static const struct drm_display_mode rg_arc_mode = {
> +	.clock          = 25600,
> +
> +	.hdisplay	= 480,
> +	.hsync_start	= 480 + 60,
> +	.hsync_end	= 480 + 60 + 42,
> +	.htotal         = 480 + 60 + 42 + 60,
> +
> +	.vdisplay	= 640,
> +	.vsync_start	= 640 + 10,
> +	.vsync_end	= 640 + 10 + 4,
> +	.vtotal         = 640 + 10 + 4 + 16,
> +
> +	.width_mm	= 63,
> +	.height_mm	= 84,
> +
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static const struct st7701_panel_desc rg_arc_desc = {
> +	.mode = &rg_arc_mode,
> +	.lanes = 2,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.panel_sleep_delay = 80,
> +
> +	.pv_gamma = {
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1d),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
> +
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x12),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x0a),
> +
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x25),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x03),
> +
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
> +	},
> +	.nv_gamma = {
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1e),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
> +
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x08),
> +
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x26),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x15),
> +
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
> +		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
> +	},
> +	.nlinv = 0,
> +	.vop_uv = 4500000,
> +	.vcom_uv = 762500,
> +	.vgh_mv = 15000,
> +	.vgl_mv = -9510,
> +	.avdd_mv = 6600,
> +	.avcl_mv = -4400,
> +	.gamma_op_bias = OP_BIAS_MIDDLE,
> +	.input_op_bias = OP_BIAS_MIN,
> +	.output_op_bias = OP_BIAS_MIN,
> +	.t2d_ns = 1600,
> +	.t3d_ns = 10400,
> +	.eot_en = true,
> +	.gip_sequence = rg_arc_gip_sequence,
> +};
> +
>   static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
>   {
>   	const struct st7701_panel_desc *desc;
> @@ -917,6 +1052,7 @@ static void st7701_dsi_remove(struct mipi_dsi_device *dsi)
>   }
>   
>   static const struct of_device_id st7701_of_match[] = {
> +	{ .compatible = "anbernic,rg-arc-panel", .data = &rg_arc_desc },
>   	{ .compatible = "densitron,dmt028vghmcmi-1a", .data = &dmt028vghmcmi_1a_desc },
>   	{ .compatible = "elida,kd50t048a", .data = &kd50t048a_desc },
>   	{ .compatible = "techstar,ts8550b", .data = &ts8550b_desc },

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

