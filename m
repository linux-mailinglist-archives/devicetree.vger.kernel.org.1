Return-Path: <devicetree+bounces-138390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 920B3A1033A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BFF5188587C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD64284A71;
	Tue, 14 Jan 2025 09:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GmcGH7H9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8941719922A
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736847860; cv=none; b=oT5tyXI5QxWlPxmbZ8jaTc2bE8QBBEnORHimLvj7MjJLIPSCzuAumd6/7m+DcsVbT788vcY+cpeEd/9cZH755SpJNGS1/ms+gQlBcFmPimVPEgHMlSv0bxOJsbjrQcBpRF/8FEW1up1kcvwdzLAnxCJBH7ozgBjHo2vjHg1RQRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736847860; c=relaxed/simple;
	bh=96T38eBtoOQ2VC92hfgSApqZrOYI6n6Trqp6BTruXkM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=CahTMRZyycGljlEgktngMRVT46bY3JSTj8JoPOGkl+krAhjqilk52Voew+AnbDY9s+caLcIvVN7EhWnUrXf+cxbtIEp5Wc7DqzMgd3h9LxmlN72KguTE6k5sBkt3LuodufpEZ5a7r/1/pRbUktUPN+EluYXjTQKgpzWEUOeAPwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GmcGH7H9; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-437a92d7b96so4810125e9.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 01:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736847856; x=1737452656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dvdDzI0+QAZcMVq4vHT+3PeGIs3aadbqB663qDJpMpY=;
        b=GmcGH7H9hKEaX4mP5cbkPL4iKH9Wmyp85/hiQijBHj+twFDStnzI/rWdeuhZYAxa4e
         WJa04jikrp23mWDqysrlhT0QFOOhD1XRtyU12hMZZBJwilwcUQiIvyGo78uQpHwGOnXn
         DURuXB4MfKk5Mp9dcQOWF4s8uca/jkn2qvuEsDFWilwYZDuTb/Y6n8EY1e98HQ+f0T7y
         u7C9wf4ERgCn/5zlFkEwhEwKgI0BnAgfDgBs0K2EijQMXRiObdLT1IMp0ImUGCW3/vzC
         EIhBxBjHCGdd3OtXmjJb5njwGbPH2gqypDV56KwaTGYH1V3GlW8STJJPoHXwE4zLeyks
         UsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736847856; x=1737452656;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dvdDzI0+QAZcMVq4vHT+3PeGIs3aadbqB663qDJpMpY=;
        b=rw/y8QiVD3xVxLlEYh3lV2sqjpIXPJYUNBjmZKc/5xoSvJmb6zlCr8DGGYk/R/tzwz
         NOQiYo1NRiCDETDU9Pi4zPlm6O5Ml24tNlIF2eJhS5E2sAW+8Aeo/T7HGUNCEizt0bXi
         EiIAkkPVWEDH6B19RZ0n23fowPKi99hijKji/roG5PsTxnQwW2dy/hRklyVH7w0gf+D3
         jARetWvPHv7QrlUNTfVa0mR33kah3sqa6tFJ5vhnBq4j/J9grqxQFQec3sueyTZG2bj+
         QTQByFOBYMoDyr6E7bcF7vSMldZkhlWbb9fcPPMGsbPo7gRkjvTOmGTKMTdGmWSuSltK
         r33w==
X-Forwarded-Encrypted: i=1; AJvYcCVOiRkJ/7xjXJjue9glAnb1Q/l0vXBkT9U0cS+ulTJChWA9fhxdKxhl7kB2JFb/J1jfU9Gc5TrCp53F@vger.kernel.org
X-Gm-Message-State: AOJu0YyECf+7iQUcBddV4j9uJ6r0qI/5gbyrYF3Q2jRW6mBnJTdxnHj6
	oa7h3aoAJ9sRY0J0Y06rYwsD82jMHe/OVUsya7bgL/cWuLEAB1r3NxK1P9QeC9Y=
X-Gm-Gg: ASbGnct5JbKIINEGxDxEzu3hbBn85uUWBkHyMEHbe5EBTOHV4gwVyNY9tv2+F6TgTFX
	qDjoaUYQp/axV490qLQkrHCi5SCdxvCFgkUC8oc6KGfYkJw/DUvgDMXH2/zfRACLM2mOaYuxvrK
	k/SllWzxeAGCcwWuIVil0aObTmzkfwWSL1eXY6g2Bbw+m86QBK1OPB4GBfPV+zpcLnTP7+E/H4M
	idP9G90X1XGhng700IEERJbqZRXgs/W6J02FTjn9YsZ9QmQ7GPxnqLiLChv4LekdhF62NLGPRDc
	sW3HrWPHxkDmgzSC7DNNmtB0V+R4RTqVZQ==
X-Google-Smtp-Source: AGHT+IGEMQzRSU5vsVP1Q6F049dN1Km/Z8NDSTMgd2TrWtE0LlgsHlOnh+81l0FN2f++K7l1tOQrvA==
X-Received: by 2002:a05:600c:a0a:b0:434:ff30:a159 with SMTP id 5b1f17b1804b1-436e255ded6mr233292645e9.0.1736847855823;
        Tue, 14 Jan 2025 01:44:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a5df:aa69:5642:11b5? ([2a01:e0a:982:cbb0:a5df:aa69:5642:11b5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2dc0babsm203233435e9.14.2025.01.14.01.44.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 01:44:15 -0800 (PST)
Message-ID: <3688ad34-86a2-4762-86ee-cbac8c3b9aa7@linaro.org>
Date: Tue, 14 Jan 2025 10:44:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: simple: Add DataImage FG080016DNCWAG03
 driver support
To: Jonas Rebmann <jre@pengutronix.de>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
References: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
 <20250109-panel-dataimage_fg080016dncwag-v1-2-0465603f6669@pengutronix.de>
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
In-Reply-To: <20250109-panel-dataimage_fg080016dncwag-v1-2-0465603f6669@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/01/2025 12:34, Jonas Rebmann wrote:
> Add DataImage FG080016DNCWAG03 8" 640x480 TFT LCD panel support.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 222c170dde8be261e98ff41168ef8a3a42c167c8..14d4cf235036cfd662bf16cb794ea2454d6fd2b2 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1734,6 +1734,31 @@ static const struct panel_desc dataimage_fg040346dsswbg04 = {
>   	.connector_type = DRM_MODE_CONNECTOR_DPI,
>   };
>   
> +static const struct display_timing dataimage_fg080016dncwag03_timing = {
> +	.pixelclock = { 24000000, 25000000, 32500000 },
> +	.hactive = { 640, 640, 640 },
> +	.hfront_porch = { 64, 70, 115 },
> +	.hback_porch =  { 64, 70, 115 },
> +	.hsync_len = { 20, 20, 20 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 8, 12, 30 },
> +	.vback_porch =  { 8, 13, 31 },
> +	.vsync_len = { 20, 20, 20 },
> +};
> +
> +static const struct panel_desc dataimage_fg080016dncwag03 = {
> +	.timings = &dataimage_fg080016dncwag03_timing,
> +	.num_timings = 1,
> +	.bpc = 6,
> +	.size = {
> +		.width = 217,
> +		.height = 136,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>   static const struct display_timing dataimage_fg1001l0dsswmg01_timing = {
>   	.pixelclock = { 68900000, 71110000, 73400000 },
>   	.hactive = { 1280, 1280, 1280 },
> @@ -4731,6 +4756,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "dataimage,fg040346dsswbg04",
>   		.data = &dataimage_fg040346dsswbg04,
> +	}, {
> +		.compatible = "dataimage,fg080016dncwag03",
> +		.data = &dataimage_fg080016dncwag03,
>   	}, {
>   		.compatible = "dataimage,fg1001l0dsswmg01",
>   		.data = &dataimage_fg1001l0dsswmg01,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

