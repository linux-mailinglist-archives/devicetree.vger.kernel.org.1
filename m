Return-Path: <devicetree+bounces-132567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEC99F7793
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 842E37A15B3
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6737021CA1E;
	Thu, 19 Dec 2024 08:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HhPQKAyH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA931FC7DB
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 08:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734597596; cv=none; b=W5iAboS3Y6lfOv2m9xlPUGg4eNdnL7nH3gf1cme3IAX9fcM/aEZMehDb5Ipx80nSee13olUUzL/0BqLgp4qsr0zOkrfcK/tULI5SL+P1g3YrnWFG8ZonvVBlt+nOTgPs40O22JEXIyTii8MTxKVYOVQthax7DP2/ddEnQAz1xBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734597596; c=relaxed/simple;
	bh=ZZv9f/chmlVZY5/YHYxWyweqe0ecFp6HAWYNPze4qQw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=BhgseOk5ZHmdr5nWhwbbDZEkSDd/lPo1XProqQX6MhKuQgGFzKzAkthRobHSBEAtifDH1B1k0rTw2j87BbPDtm9bS0JjRqd8S7mxH/ojSAgSe5B6dQYqGganpo2SoPAv9ICZGvTXBPBW5+Q4KhO67HG7Z0rsh+ZgNSOKHuzeEpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HhPQKAyH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso500155e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 00:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734597593; x=1735202393; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mtfgoeA7eE+OrRyjCTbDfckw040NbsZdr9TCD4QM7JQ=;
        b=HhPQKAyHtcrMX9GhcMN+tz5jdakVqIZ4I1PU/iX0evs/QmMXwuQAbGFfsJazuUBx0S
         /9NSAlO61/OAjr2cDFf4iuDKR0K4BHFb40OTMdMKmFia1JWOLehYRAejbOcXXHc8i3Au
         SdDecD27zIiK8K/3OpohLQ5YaaNrEy3DIc0LqMco6pSyA3KAzVSQwy8dRTaw5B7qDgBJ
         Xq2yPjAlf8GsC6tUIZUOmVLJN1qXf62+xOBheH11TdR7SnMbf2+QSNRfiNPKWlNKRbub
         VA5Ofxo5KZun6U1omCBlahh3S4wgYufaadrrS/RtKVLRMIiHUtWKF2hHQJqCJdDQYyEX
         ta4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734597593; x=1735202393;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mtfgoeA7eE+OrRyjCTbDfckw040NbsZdr9TCD4QM7JQ=;
        b=CvwSAWLMe5Zd+/GaLh1nvlb8STV6xuCuwfA3l9psfl5b6Ng7XzRjvREDcjUMakxiCD
         IUQSnUp3dWSBAOkcYxZ3h/uZ1M2ck7iP9woqm8rsiYl1qEYM3R/9+udrnomxeQl13Soe
         8ZpZ61brPdh2XXCVANDxWJhw1XjaR2hdy4ezga4Hm/UanVnsE1c12SrbZ65lR2z2RIRZ
         Se6+yOwy/0JCejiWBT1aZNqmX8PYt5q9271bxfmXgBJ/Z+DoHhYT5oeAPmplsCcmbzvh
         dsaFlwJgsuA/w+P/kiBNwWQvhShbqcB5FfJv8GwRu7PZ9MGtKKcxkgeUvx2PNxHaddD4
         dmeA==
X-Gm-Message-State: AOJu0YwWCrpTQoDAoae7dgpU66HJGrS3ArcGvCor1ohrgzlrPSDxBvws
	0Jyzbdhi0+wSgp3/Q0QrQd72xfe2k/UIbKkSftT0pLg0dVkuqvXtHKdmAZwRHZ0qdjl/zOLc6NN
	7tVM=
X-Gm-Gg: ASbGnctt/jvchKK1S8Ao1WS5dG/vhp06Av2LqqOsJAwxMDfoYNClHlxa+wuX/VKVKXE
	GG2NuCUAa7M0shciBLStiHlTjYgH6mLOwwzfHTT2SrvQfcs0oPASLHZ00XQEGbEKfWzPH/pUMtE
	kNY4rcH6RFD9NDnVB6i3MAhRuiTEj6mcEAHRBS7mWAJS+WrovmpJLeZQpV/zm0baJR9B0rJPsmB
	HteMXeibAFxfEPWSjNqNDqKQDB+GoNWt0TByTJeJ3t2fGIVORS675nNSOcbmUhA8gD1PmWvjWPn
	2n32jSD3/StehIljfGmhhSnwzgftCJ/rBA==
X-Google-Smtp-Source: AGHT+IHJ1qbPX7Kt/S5hwJCMdQsklOUum5k06XSyYYvLLeZ9tO/ePTVOINpeHjL9//GcTEorsHy63w==
X-Received: by 2002:a05:600c:1c28:b0:434:a386:6cf with SMTP id 5b1f17b1804b1-43655344e89mr55062675e9.2.1734597592593;
        Thu, 19 Dec 2024 00:39:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a0fd:4342:76af:7533? ([2a01:e0a:982:cbb0:a0fd:4342:76af:7533])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b1f6sm46211345e9.31.2024.12.19.00.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 00:39:52 -0800 (PST)
Message-ID: <ea76f075-348e-4749-bbef-59de8d1f03a6@linaro.org>
Date: Thu, 19 Dec 2024 09:39:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] drm: panel-simple: support TOPLAND TIAN G07017 LCD
 panel
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jessica Zhang <quic_jesszhan@quicinc.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de
References: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
 <20241218-topland-tian-g07017-v1-3-d5e411c199e3@pengutronix.de>
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
In-Reply-To: <20241218-topland-tian-g07017-v1-3-d5e411c199e3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 18/12/2024 20:45, Ahmad Fatoum wrote:
> The TIAN-G07017-01 is a 7" TFT-LCD module by TOPLAND ELECTRONICS (H.K).
> The panel features 1024x600 24-bit RGB pixels driven over LVDS as well
> as a PWM backlight and I2C-connected ft5506-compatible capacitive touch.
> 
> The panel description is taken from the Datasheet V0 (2024.5.23), but
> it lists no timings and these were provided by the vendor separately.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 222c170dde8be261e98ff41168ef8a3a42c167c8..626cbc6858215f6fdc72063e38564e2dc1deb52c 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4361,6 +4361,37 @@ static const struct panel_desc ti_nspire_classic_lcd_panel = {
>   	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
>   };
>   
> +static const struct display_timing topland_tian_g07017_01_timing = {
> +	.pixelclock = { 44900000, 51200000, 63000000 },
> +	.hactive = { 1024, 1024, 1024 },
> +	.hfront_porch = { 16, 160, 216 },
> +	.hback_porch = { 160, 160, 160 },
> +	.hsync_len = { 1, 1, 140 },
> +	.vactive = { 600, 600, 600 },
> +	.vfront_porch = { 1, 12, 127 },
> +	.vback_porch = { 23, 23, 23 },
> +	.vsync_len = { 1, 1, 20 },
> +};
> +
> +static const struct panel_desc topland_tian_g07017_01 = {
> +	.timings = &topland_tian_g07017_01_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 154,
> +		.height = 86,
> +	},
> +	.delay = {
> +		.prepare = 1, /* 6.5 - 150µs PLL wake-up time */
> +		.enable = 100,  /* 6.4 - Power on: 6 VSyncs */
> +		.disable = 84, /* 6.4 - Power off: 5 Vsyncs */
> +		.unprepare = 50, /* 6.4 - Power off: 3 Vsyncs */
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +};
> +
>   static const struct drm_display_mode toshiba_lt089ac29000_mode = {
>   	.clock = 79500,
>   	.hdisplay = 1280,
> @@ -5037,6 +5068,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "toshiba,lt089ac29000",
>   		.data = &toshiba_lt089ac29000,
> +	}, {
> +		.compatible = "topland,tian-g07017-01",
> +		.data = &topland_tian_g07017_01,
>   	}, {
>   		.compatible = "tpk,f07a-0102",
>   		.data = &tpk_f07a_0102,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

