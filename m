Return-Path: <devicetree+bounces-172330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03347AA47A8
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 11:53:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AA634C4EAA
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 09:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747FE237162;
	Wed, 30 Apr 2025 09:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SGBFb8N4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7396C23506E
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 09:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746006793; cv=none; b=mVOvNrX8NJcNR79jw4RdJillELFbTP2AxWz4f3QRSrZ4kLLWPD63nAZO20z7t+xjl11qKSQ3sDOneBNnopCobisDjtsEjZ24MBiRTYGWaYKVVmmAbltlK2SEA6lAfT2/tMvC0T0xAr6ttS8kDYKWpMbK62k3bcaov4sqnDd9vaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746006793; c=relaxed/simple;
	bh=fe5blfcHEV6p6DqK9EinGD8sn4r9SggUaqP0hbUf4K8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=N4WbTapRMtxFdVmMuCwGUU8b0Pg2LTd+EnRw/+dty4u/OI/0Obts4LjR2ggshcJmkuJNTKTgDqSTEN+6zLRmcg95wq+z6lKxzjcozY99oXU5llgQ+q8CsCIdDXvVbJvq6gEvtVuIDAoPJ5R26afnCZlWZbEkaw5n6r8Ef9zra1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SGBFb8N4; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39bf44be22fso4818552f8f.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 02:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746006790; x=1746611590; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQ33tAShH1B9qY7Mvbeo2mk5ktxHALQMW++e/cV2rKM=;
        b=SGBFb8N4DRyBNiJrBuRtDEGlgeUBRJfqdeZ7WogzDe6qdqCNggOONmkF6n1CEuvgwv
         FNExrUISxCbTeS5hEOPyYxBO+lzy3BsMJsKxBTILbtSIqIUgYeJIr4Sx94LnN1RN7YUT
         8+Y3gUcqaFgdzAIqiCuZquGkXLAiULCUxFEj/gwOrTmJZwgxbyGzsHuJDqGBs9QbtZ84
         xLa122gGfEoZR5qRI81zlJp9gquDsRMLzdC6JRkhH7Sfb8nxOhEMdw4PNctExyjLrHcw
         aAlfsGK97MuEiXDPHC+U7uEakTZu0D7c9VPoF1BET813E070Cs7Vypp0nbnJkaYuTJjL
         Lz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746006790; x=1746611590;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NQ33tAShH1B9qY7Mvbeo2mk5ktxHALQMW++e/cV2rKM=;
        b=FJNupvmKN1FsC06/LvChnDQc6NXugfCIxHzbeFsdiiAZxWLp5bCbHugd7V1OatzGqq
         jVX7bONfp5Or9VphawOEmXMSKXZG4M+TqbCnxzDszMekOvfbIeGn9bBmixUtuyamRcFq
         c5gcMKBpv4s9FsQBMyBQi3UM6HEMA8QZ5yvHUE03rvYuv9gK0sEceQgFcR/GkxdKaMu+
         VxaN8CQ+qFKYnPrsMAOcGDvyhU6k04LT+a681JMUCzy+SZfz6DoOLD9I1SmZlQUHn583
         R0jY6aNSZcPdIn0/qJwhWYXi86XIQq5xgdW6sVurFNRz4DbZ3HDXV7kxASmVschCzV92
         mngg==
X-Forwarded-Encrypted: i=1; AJvYcCW7pVoimpN7bYP2VKT78Fr/EIhoOGkD6Iu3YAEfkAlkni0tNdb92lsugARtBFiirUDxTrAY/DmEcssu@vger.kernel.org
X-Gm-Message-State: AOJu0YycFckE6X4J6YE59DWsszymi2qN2NPpr2I/d3u3DzWGGDkeHG6N
	qDFXpzNJuedwiub9kt+5DKf5trpB8KAqrU9Ta3xp2Khj/gQP4I6ooMPMTHZXWdw=
X-Gm-Gg: ASbGnctlTdAuwnrwj9/8eEmby6pPPAgTPmniWB4Ogf7SqT3nkG2m3i/VKCkjDF/h9kQ
	DH/E+jFtzWuvQzTNx2uRDTBiAw3qsvaWQKOI/gbMPjumiilR4yLG1bXjR2FJaB5QQpASHcWcuDr
	UJ9S02FMScglq35hGNgE4X1YYh3d4EhFKt9R4Tmb/kep8wKwhpboYyeFFHGd3zVu3jdCPhHgPA8
	hFaz1kmFtQqO0+hgtPNEurakKWad/CcKJCQ+KBbM/9zwHKEC+2PjuLiIK2U0XLCJ3a3T0h1QJpx
	MYO6IzyE54X6ZG21Esi2PRI2b2OqJRiug+xaD2kJUALDM40nsmKy8pLUjxcqbc049xQm3H5NufR
	pYXOwLuxrpdIWhIh3/w==
X-Google-Smtp-Source: AGHT+IHmFxBVgaTsAGbGDh4EsUHv+T+0NrbKf322VztbdkbBDNbxxF0eQnDWIUCwiaEeUi/56VbRMA==
X-Received: by 2002:a5d:59af:0:b0:39f:76:8bc with SMTP id ffacd0b85a97d-3a08f765397mr2097367f8f.17.1746006789750;
        Wed, 30 Apr 2025 02:53:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b3d6:213c:5c50:7785? ([2a01:e0a:3d9:2080:b3d6:213c:5c50:7785])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073ca4742sm16225841f8f.23.2025.04.30.02.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 02:53:09 -0700 (PDT)
Message-ID: <6ec33d95-ed93-40bb-8ff3-d2e039dcdaa4@linaro.org>
Date: Wed, 30 Apr 2025 11:53:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] drivers: gpu: drm: panel: Add BOE TD4320
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20250429-lavender-panel-v2-0-fb467ff81bac@mainlining.org>
 <20250429-lavender-panel-v2-2-fb467ff81bac@mainlining.org>
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
In-Reply-To: <20250429-lavender-panel-v2-2-fb467ff81bac@mainlining.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29/04/2025 23:33, Barnabás Czémán wrote:
> Add driver for BOE TD4320 DSI panel, used in Xiaomi Redmi Note 7
> mobile phone.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>   drivers/gpu/drm/panel/Kconfig            |   9 ++
>   drivers/gpu/drm/panel/Makefile           |   1 +
>   drivers/gpu/drm/panel/panel-boe-td4320.c | 247 +++++++++++++++++++++++++++++++
>   3 files changed, 257 insertions(+)

<snip>

> +
> +	ctx->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +			  MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +
> +	drm_panel_init(&ctx->panel, dev, &boe_td4320_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);

Please switch to devm_drm_panel_alloc()

> +	ctx->panel.prepare_prev_first = true;
> +
> +	ret = drm_panel_of_backlight(&ctx->panel);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get backlight\n");
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&ctx->panel);
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void boe_td4320_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct boe_td4320 *ctx = mipi_dsi_get_drvdata(dsi);
> +	int ret;
> +
> +	ret = mipi_dsi_detach(dsi);
> +	if (ret < 0)
> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct of_device_id boe_td4320_of_match[] = {
> +	{ .compatible = "boe,td4320" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, boe_td4320_of_match);
> +
> +static struct mipi_dsi_driver boe_td4320_driver = {
> +	.probe = boe_td4320_probe,
> +	.remove = boe_td4320_remove,
> +	.driver = {
> +		.name = "panel-boe-td4320",
> +		.of_match_table = boe_td4320_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(boe_td4320_driver);
> +
> +MODULE_AUTHOR("Barnabas Czeman <barnabas.czeman@mainlining.org>");
> +MODULE_DESCRIPTION("DRM driver for boe td4320 fhdplus video mode dsi panel");
> +MODULE_LICENSE("GPL");
> 

Otherwise it looks fine.

Thanks,
Neil

