Return-Path: <devicetree+bounces-21633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B16EE804BFE
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:13:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34BDAB20C1A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835103B7A8;
	Tue,  5 Dec 2023 08:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sg1XvEzI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5877198
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 00:13:32 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c032962c5so36298975e9.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 00:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701764011; x=1702368811; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XWja+/NJZfgKI5wDXKrgIcWo2x8Q6ApX0pGmb/ZtNHI=;
        b=Sg1XvEzIWptzf7zecZRBvsRbm+j8ZNjBlWukLj18pjvG+aypbP2k1rfhcImu6OICuD
         FegNYGY3819rWkoL43PmZtVeSRflUug+QX2/omgL8AWM773NsX834AiPQwq7f5zucIhB
         WI84ZID3Qd0jfjyiPQrCtGcwhvh6y9fSJLGFg/MCbmTCpApJXYzJ8sYGCLK4VRqzSfr4
         V0Y6KZT3ds/TH6SLeJ4qxM9GWhCV8elU01uF0PdUWTPQ2bO1Xa4allZ4KAl4Onc9Xxls
         Y5eE0Bht05NJUKPs1AE5S0CpmzCCM3jh2KLHi2dBQx9Wz6zMNis6ncCWaDt28A6Hf8yd
         lFnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701764011; x=1702368811;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XWja+/NJZfgKI5wDXKrgIcWo2x8Q6ApX0pGmb/ZtNHI=;
        b=FHIYP4yqSaAU1OTqUUqT5gWrvXjcAcOe/p/KwOaBArVbrjpHDsl1PGWHeIZ46e0N/0
         ObEOtVR1Ty/6Db3LlQxvyfOr5e6f8ZiNpnYErRYrE2QhduI36XpAsEekeJp0Tf4KCL78
         xUr4jaaCED12X/F5tmrHe84hS84LNjtjpFzFLOnA2mgbH0xa9r6HG6IwcQK2YBVNicMc
         XdFsYxOqhITwaKrzQD2bMg/+mbIN2SVyW/SqzzlDdwQBr7lbRMF23IcIp2TLdNksNnBE
         /+W+TvgRQfoPEueYOQJIe9NClF/hFNxm9P7Ov3Ec3L+6+Ctu4E1PAbfG0lTOk48iJAnd
         QqrA==
X-Gm-Message-State: AOJu0YyvSRo1BESvjDZmhLxaUTJA0eGuOElNmC+HzBVoMsjL1YAwZJ0+
	UmeziD89VAS2azYJeR+S/4BNiQ==
X-Google-Smtp-Source: AGHT+IHywBwwMICzmpSikqbB/Gw1BnE1K6zCV6jpsXcXKgRPnuPD0n/hV+xrys8lX74iOpylMILcKw==
X-Received: by 2002:a05:600c:4445:b0:40c:9df:3e30 with SMTP id v5-20020a05600c444500b0040c09df3e30mr144326wmn.103.1701764011132;
        Tue, 05 Dec 2023 00:13:31 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb? ([2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c470900b004063cd8105csm21461190wmo.22.2023.12.05.00.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 00:13:30 -0800 (PST)
Message-ID: <b1fe97f3-4236-4efe-b156-762d5668eda4@linaro.org>
Date: Tue, 5 Dec 2023 09:13:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] drm/panel: ilitek-ili9881c: make use of
 prepare_prev_first
Content-Language: en-US, fr
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
 kernel@pengutronix.de
References: <20231123-drm-panel-ili9881c-am8001280g-v1-0-fdf4d624c211@pengutronix.de>
 <20231123-drm-panel-ili9881c-am8001280g-v1-1-fdf4d624c211@pengutronix.de>
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
In-Reply-To: <20231123-drm-panel-ili9881c-am8001280g-v1-1-fdf4d624c211@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/11/2023 18:08, Philipp Zabel wrote:
> From: Marco Felsch <m.felsch@pengutronix.de>
> 
> The panel.prepare() call requires an initialized MIPI-DSI host, so set
> the prepare_prev_first flag to indicate that the host must be
> initialized first.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index 7838947a1bf3..0c911ed9141b 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -1094,6 +1094,8 @@ static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
>   		return ret;
>   	}
>   
> +	ctx->panel.prepare_prev_first = true;
> +
>   	ret = drm_panel_of_backlight(&ctx->panel);
>   	if (ret)
>   		return ret;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

