Return-Path: <devicetree+bounces-67173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 488488C6DB0
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:17:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76BB1B224DF
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AECF715B144;
	Wed, 15 May 2024 21:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oIhLQExt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9A815B14E
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715807828; cv=none; b=gCUTVkFwZp8ZOf3G+AowRKbI4FXqGQ9pieqgsQ3rDd2KwuWJRy9jDB8C/eg6LN8e+zvkesCRZiLkXss6+yMEc/8vDJzA8LTNRx0II4YJhDDfcCnvjxf/8q63gqDz6gF1j+PEz5X1rW8FTBB8SCxL1GMOETIeEQ9rF9NwlGRwLhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715807828; c=relaxed/simple;
	bh=fVu8teOm/cpL+PXaRt7rUtjUZJu9F5TcDV5Sv6zSvko=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=YFLIgVRatdq0X3yVfnnHHNPXR0m6ngePRROzuv+Vk0+e4s/+t3sr04bKPE0EMHrOBzPdoXDWx9p30mgKE7IrZjdZIVtm/cxjW2nbt9bSxqegtCx/qB4OZ1Vee2bzA6mWZcHTpeVPv+bW3FucCBbz8NcBlatgwOjLzZOo4sDdsZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oIhLQExt; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34dc8d3fbf1so6048644f8f.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715807825; x=1716412625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vBWhsyX9LLmi6Zfn+QHqsSBYed60uZAgbYOF3wTL9Z8=;
        b=oIhLQExtwRFW2cNHBzbrHJpiZKG2XUktjDc5b5xPTOrofxNnqeR5Gk8KPZGALiQwDh
         YBnaZ0rqApAHyisPdavFv8PLWckoVDdFS5blyF85dSFc9HIVTnCcwfCajUDqT7+kqwA5
         t3pOWfw0Zl9R0MfuI/QhktoR7g/6w5Xp4uLmPXJ7XP+5SLvAuwbEWI4g9IET+k3DbzYg
         Uv+B6mu6yW5mFd20E72/qzUgxPPGXwc2XwLoCeZfrgjV0yEHYzLBN786N71exJBoOUQC
         L2GnU2Q9elOrCeswKJUoijGagom8BZn6i9NcnjA9h8BHouqf3tCoQ0dTpvt14SZpf2uP
         Sn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715807825; x=1716412625;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vBWhsyX9LLmi6Zfn+QHqsSBYed60uZAgbYOF3wTL9Z8=;
        b=RnbZCPYK6xekrJj3QI/sO3hAeIs1AiYKfc9RhA2yLaiNSq88t2gpI08oRTXsvyDYh4
         a+X9UDzIJdQlMkJWqYNlyhTGKrS6x87PAAjESpt8MRAYHT2hGPhwWnVWm5L2jg2FxxgI
         OrmoFYKMWv8Bdf/sIjwZQvsyrF4/b1ZBA7bV4gaE/A4iP8m+JJvM/sSSzxUhD8sYtHkl
         FyIMtyqGeLr0BZP5k/EVE5yc8gdeLgKhG0P/hrg4KohKPxad+zcmGBsVuOKxb1Ty141Z
         RNeuz4FnMlgUvhqbwpXdms/y/Pon1JdAxzt7Ftb8sNQAgiIrR+ozjeR97Bg4Bp5EN4ij
         cQaA==
X-Forwarded-Encrypted: i=1; AJvYcCXOKELP9G47KYZTFE55j8VWCcmy8IwcMSPFX0IylxE3XpftggOuZOwCIfGKCOy4je5Vqs00geV54QDDeW5tlyUCKopBhMJKBupdUQ==
X-Gm-Message-State: AOJu0Yxly+mUthjGVDS2+C7JIS+KQB72zZ3vfu9nEErsE6AzCq3c/h6W
	bgF73JQeFdwRkJkhW4+JRRDgkRf/hbaEfUCPvfdSbWMdjsHHtMDlWLzeJMglNc0=
X-Google-Smtp-Source: AGHT+IGQw+SyF1Ngyi3PHoftO0kJoIhWYm3aqC1MeDXQ/v9s6nV3ueLPsQz8+6lxlT7itvNTlikq3Q==
X-Received: by 2002:adf:e5cc:0:b0:351:cb2d:fd2f with SMTP id ffacd0b85a97d-351cb2dffa2mr3200072f8f.19.1715807825162;
        Wed, 15 May 2024 14:17:05 -0700 (PDT)
Received: from [10.1.2.176] ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b896b00sm17241576f8f.45.2024.05.15.14.17.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 May 2024 14:17:04 -0700 (PDT)
Message-ID: <a48e0ccb-43cf-4215-a725-1ed62b222ab1@linaro.org>
Date: Wed, 15 May 2024 23:17:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 5/6] drm/panel: simple: Add Microtips Technology
 13-101HIEBCAF0-C panel
To: Aradhya Bhatia <a-bhatia1@ti.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: DRI Development List <dri-devel@lists.freedesktop.org>,
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel List <linux-kernel@vger.kernel.org>, Nishanth Menon
 <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar <u-kumar1@ti.com>,
 Devarsh Thakkar <devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>
References: <20240515095133.745492-1-a-bhatia1@ti.com>
 <20240515095133.745492-6-a-bhatia1@ti.com>
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
In-Reply-To: <20240515095133.745492-6-a-bhatia1@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/05/2024 11:51, Aradhya Bhatia wrote:
> Add support for Microtips Technology USA 13-101HIECAF0-C 10.1",
> 1920x1200, 8-bit TFT LCD with LVDS interface, LED backlight and touch
> support (ILITEK 2511).
> 
> [0]: Panel Datasheet
> https://simplespec.microtipsusa.com/uploads/spec/datasheetFile/2588/13-101HIEBCAF0-S_V1.1_20221104.pdf
> 
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 32 ++++++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 10e974bffd28..3a0d8f0ff267 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3055,6 +3055,35 @@ static const struct panel_desc logicpd_type_28 = {
>   	.connector_type = DRM_MODE_CONNECTOR_DPI,
>   };
>   
> +static const struct drm_display_mode microtips_mf_101hiebcaf0_c_mode = {
> +	.clock = 150275,
> +	.hdisplay = 1920,
> +	.hsync_start = 1920 + 32,
> +	.hsync_end = 1920 + 32 + 52,
> +	.htotal = 1920 + 32 + 52 + 24,
> +	.vdisplay = 1200,
> +	.vsync_start = 1200 + 24,
> +	.vsync_end = 1200 + 24 + 8,
> +	.vtotal = 1200 + 24 + 8 + 3,
> +};
> +
> +static const struct panel_desc microtips_mf_101hiebcaf0_c = {
> +	.modes = &microtips_mf_101hiebcaf0_c_mode,
> +	.bpc = 8,
> +	.num_modes = 1,
> +	.size = {
> +		.width = 217,
> +		.height = 136,
> +	},
> +	.delay = {
> +		.prepare = 50,
> +		.disable = 50,
> +	},
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
>   	.clock = 30400,
>   	.hdisplay = 800,
> @@ -4694,6 +4723,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "logictechno,lttd800480070-l6wh-rt",
>   		.data = &logictechno_lttd800480070_l6wh_rt,
> +	}, {
> +		.compatible = "microtips,mf-101hiebcaf0",
> +		.data = &microtips_mf_101hiebcaf0_c,
>   	}, {
>   		.compatible = "mitsubishi,aa070mc01-ca1",
>   		.data = &mitsubishi_aa070mc01,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

