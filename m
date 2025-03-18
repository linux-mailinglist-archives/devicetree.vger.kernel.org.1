Return-Path: <devicetree+bounces-158459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A8BA66D99
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 09:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F6103A89C1
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 08:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27F31EF373;
	Tue, 18 Mar 2025 08:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b80RcFWL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF271EF365
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742285555; cv=none; b=rk+1NaYfvpSI8IIvQhAB8MYHToYeh/OFDaDBxD94wk9/IJZyu8WHGfEUcCyeX2JYrYy/hRR50vIF5vmWkagFZ37ZOLivCrEmbxQRmz5P8fwjiqNcdP/61Mj0BdRCFjhHSyUqPeA6GWxrhF8mSn3q0JBFRZyvOeN9t/s9yyrOzEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742285555; c=relaxed/simple;
	bh=0toriMwAl0CDBgiEM/DdeLsHbi9lHVArG6qmpGUnNnM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=fnaBUG0/yQnTeQRl78l2bmxfshsc8IxSRKRmRYqGaQPpbfufAhXCn2cSh3po8QcXC99raDB4VoWrlxy/BFqVJwHSMG3rPTAM3U7v6yMyU7It1jW4LnRv/KYZEq4bDlosX/eaRuU8FSKPncehhlWy3O27Q0d4ujQxxMwBL5BQ6Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b80RcFWL; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-390fdaf2897so4921259f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742285552; x=1742890352; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ekU0V/TxaNd7IwpxOyskUtDxhInPM+KcMXnEVWAgd0g=;
        b=b80RcFWL4/Csu7/EFKwyr6JtuBmhme2/XELTgB0sUNz7fqmJgyergYR/BBXKsRNqRd
         Ow/8IkbROV7jXUQQsjoQnThS5taOR1Wop5OZGWX6tZBIsTWSsFShnlawVKlyMozZeMb1
         kTbTbGJ6i6Azlnnb/Jt/XUkfQW9AqLtoQHasHP1FWAIlaYsGXL7X0G5lIGRGP6YGvSPd
         Xe3EsqqFxmKFBTjYkxtKQFdweMJAO1iEisHihDpXKSTvvKVWNJ+G/EXDfLU/9cwUbMnG
         JW6RB9fq/pyD0L7gFAOzYHExd6R0MYPhvQfD0bWxkq3jAg/P1NXg6BpFX3CnrGixCM4C
         G0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742285552; x=1742890352;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ekU0V/TxaNd7IwpxOyskUtDxhInPM+KcMXnEVWAgd0g=;
        b=fn8tjUyTzyyXRaxYQ29SFWLoGDYZXoPkzJt5ie4g2oAlRXCmgvRGq7r1zss1wOEema
         a+ifs+BM9w7K5QgY9ibag41fq1vS/LUf6eFUOrz1rJPlLOWOOZxco86Mkd9VHQXw7wtr
         QeS/hPB6eeQ6tZ4yQcfSB7+BGElg+rcn0c6Soe4y1r+ItUKP17txgX2U4ZbEnH1mQGD/
         u+DgErKTiS5dc1C+Cy+l5sXc63NB6tsAoXI1XNcwAwnhvToSv99hkmswEQ1EuuAvlev+
         05ms9RywvvGwyP+ETHEzqWvANs63nw8SpaUcyQySl/R4q2yOOSafYx62J3v/NnO/onlh
         4tQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVamGiaNK8V6f77WW6oKlKholQurquJsS5ygUKwMm+NM/KajDP9maPZpQLDkFICHlB5Lko50tbmX6V@vger.kernel.org
X-Gm-Message-State: AOJu0YzFeybFmjNLijeAdkYsC/MUaZq0KNWx/TCpA750KNXC5d5cg57Y
	Iv7WeWNkzzAA/ZS0iJWV6mbfJ1JLCb+VYrIHJOBE1A5ErwgFjFK7YPQfD55vnC4=
X-Gm-Gg: ASbGncsiUImbP3BJVzu9EvVAxEYV3W5+KLZoA6mVKHoo6Bpvqo/ErGjNy15QV8ShK+I
	+7ijyyhuHcURKIDCR4ITXvwlMQkW5I/CiDD8XTC15y7jtqcQPYyhSdisJIfL7T2CL0zaDn9Xoz5
	Jck0eqihmkzpzvVCt2+Aa7iQP/acLLyEbNbBYBQsViJp0DjGTt9BS+Ojx1hTVA+puVUgQE41VCY
	GJbwRzWtpWyBqSdNkfUOuSJbQUrhaJv8hkGEU/j7aftad/AB0zkQ33Nv4OzVc8bQhYRUeey3m5i
	DX6/55ytR4i/KUezFZqB96VClMy5sBNkrb6G84zQImC98jVMsEBx7ltd48G8Doh6THNNgTZ+31k
	DFoCa9tPdMCXU6R0VcX03zw==
X-Google-Smtp-Source: AGHT+IHKV1aaXGeWrW0acEVO2zpsKeS9iOAKguINbKbDjBpEJdqSE+HZOWe+tVFPCJYy6aSPNPr9Zg==
X-Received: by 2002:a05:6000:156b:b0:397:3900:ef83 with SMTP id ffacd0b85a97d-3973900f0a4mr15899999f8f.32.1742285552144;
        Tue, 18 Mar 2025 01:12:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff? ([2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb318af0sm17456499f8f.73.2025.03.18.01.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 01:12:31 -0700 (PDT)
Message-ID: <74bf5ef4-3d55-417e-b365-94e234c5505f@linaro.org>
Date: Tue, 18 Mar 2025 09:12:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: simple: Add NLT NL13676BC25-03F panel
 entry
To: Antonin Godard <antonin.godard@bootlin.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250318-b4-add-nlt-nl13676bc25-03f-v1-0-67e0f8cf2e6f@bootlin.com>
 <20250318-b4-add-nlt-nl13676bc25-03f-v1-2-67e0f8cf2e6f@bootlin.com>
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
In-Reply-To: <20250318-b4-add-nlt-nl13676bc25-03f-v1-2-67e0f8cf2e6f@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/03/2025 08:58, Antonin Godard wrote:
> Add support for the NLT NL13676BC25-03F 15.6" LCD-TFT LVDS panel.
> 
> Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 9b2f128fd309..96e8569d97ca 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3469,6 +3469,30 @@ static const struct panel_desc newhaven_nhd_43_480272ef_atxl = {
>   	.connector_type = DRM_MODE_CONNECTOR_DPI,
>   };
>   
> +static const struct drm_display_mode nlt_nl13676bc25_03f_mode = {
> +	.clock = 75400,
> +	.hdisplay = 1366,
> +	.hsync_start = 1366 + 14,
> +	.hsync_end = 1366 + 14 + 56,
> +	.htotal = 1366 + 14 + 56 + 64,
> +	.vdisplay = 768,
> +	.vsync_start = 768 + 1,
> +	.vsync_end = 768 + 1 + 3,
> +	.vtotal = 768 + 1 + 3 + 22,
> +};
> +
> +static const struct panel_desc nlt_nl13676bc25_03f = {
> +	.modes = &nlt_nl13676bc25_03f_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 363,
> +		.height = 215,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing nlt_nl192108ac18_02d_timing = {
>   	.pixelclock = { 130000000, 148350000, 163000000 },
>   	.hactive = { 1920, 1920, 1920 },
> @@ -5056,6 +5080,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "newhaven,nhd-4.3-480272ef-atxl",
>   		.data = &newhaven_nhd_43_480272ef_atxl,
> +	}, {
> +		.compatible = "nlt,nl13676bc25-03f",
> +		.data = &nlt_nl13676bc25_03f,
>   	}, {
>   		.compatible = "nlt,nl192108ac18-02d",
>   		.data = &nlt_nl192108ac18_02d,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

