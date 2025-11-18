Return-Path: <devicetree+bounces-239822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 303A5C69B6E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 32D2B2BAFC
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38572359F9B;
	Tue, 18 Nov 2025 13:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oIJXPMQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A142C08CD
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763473844; cv=none; b=FIWZBhO96Gm7udb5rOMvYx0qcdxzlQiouggIJGc+bfOyCi/UJI5j5ont4mfzKtbemx9PiFPzJsVfXtJT+kSLL+P3fRvma2mGSaVQznf5L+kP8BDH7wy2iPw79E79W4ScHZMf3927vWbzlic22g2EkyptC1Vtp0U6vVktJ1QjQ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763473844; c=relaxed/simple;
	bh=Wdfz6MU7crHZhD2zOh6NIqWK2qePyBKdxojuh1X4o2k=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=cJ2VgkQnha+tZqplJDp2hGPRp/dG/OXgLk7UtbNPazfsRzWpfcc4hVtdpVMZj4pidwRBwVBqjYy4CXy/AbYVGHWb9jL/LLmksyBM5MMiYtIxZBc3R/YIsZ6bD3Qw7wd1oqjxNNDsdCreOYtcWiym6shdT7+i3s80ZsGpttEXFgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oIJXPMQb; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b31c610fcso4766468f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763473839; x=1764078639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dY87Qd6K9FmYpUIN2v9FDUk/qdoG5fxW/x7OSqsCn3w=;
        b=oIJXPMQb3pIDnAB6uEbrDMK0emnt6ObNg1VTMX4AulXnrkKzmHk5H9Qm1wNrhpGF09
         RAoYeWMA/0xAqridWaYQVSumkqnN3NfMSlIPnfjfbbr05Vl6IZ6K9wlkjURe1sFTIJ+S
         S5pLpopFuKysWnH0/O6UvC1DLJOmjFNb/F5Yxu53JC/JzaX5cYISegGBIgpbp6yeRClU
         r45oHbYTlOvFefCxOm8gqQ5ZDPTepRkOxZWFREi96jEWmh1P1ZoJETuVQGRFboBmMY6V
         2u6/K0yZdCDFvsMkiFNGbwQberLl6Uq9HGwERnPwwrdyGAEye3MPXBOp2Y888Lss0XD6
         A+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763473839; x=1764078639;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dY87Qd6K9FmYpUIN2v9FDUk/qdoG5fxW/x7OSqsCn3w=;
        b=jRb7vuzREl1Y9Wb2VQK56TYP8bGD5sDb49AZywTgbg6He14Bb0X/t+Ae87Jvdv6elS
         0mv/o8bRJuXBmvdCUiHPrkIcq66/uRKe/s6au7Hq0YGxs19PteMZhflz22dliEWh9bsC
         Vrtk9au40cBZExNyCsjM4QNTaUN1AZDe/bGaHmoAWLfeVsVk+kBRHsepHc9ZTmMK5Am0
         1Lrvcam0Z51QDw1HY/RjxugFR2ZhdM1xemV2fxx8xAYW0PqDVKEDhd98pdLsaT49zvSa
         4bSD8WY3y1VLFHwkmQACtXtN2enWM5qf41sx0F4d/pQlfNM9IYIn0+ukU/Oc+wklYtwj
         h2nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtYaT3CHVay5QZSKJdnFXhmm/6QIeYQP8qsUt2augvEP44ZCWr4DK+RZq1Wu2oTDc7pk3jCHFXpZ2k@vger.kernel.org
X-Gm-Message-State: AOJu0YxCSy7RCKiNNTy9jy6R3dpuxNFkAHlIDOUlFXqZG/e+QrRCBGE2
	DpJE7FVqpTJfHbEm+35rCDR96iZKOxGkiiQ5AuXWkPA8QyI6iKmwHB4Fxf/ElaxxK4o=
X-Gm-Gg: ASbGncvGAGBKMVi4K68WwzuM1pYcuUJJN+VSfj6UAk7uhaYEgvJfsjHT3LHRz27BMnq
	E98/muUXZ2IW/g3u7IG9HhuM+f6MKkuDTIXoQ4/flha5dkIKyQ8DSTvUp2RQBl3KlgKFjqfVMT2
	L2hqXvIEbJJNlSvyMVAQHlu82CJo8VR712c0CmACBladWp55+/1ZjYvSMkpGnneswacMc/oDxh9
	9C4seJfR1hWpPYdhE6gdMHfIYZy5D1iKYECjrwGeL5FpPjnZVis6NK0wKU+TbGRLiwELbZdkgLH
	E2I6+n67m58qdneNNTS3rxILIBlS4Odu4pf6qxC5XQSUggb1Q99cmDMxjzClYV1GgntABimmj7J
	plJMxlK+MoVtGGe7qthxIlvYwiIBVFN9v0cggwv6Mu/XqJ+BnkiJqxBy0+yolNIlQXaUk+fHMPX
	fbadeUcaMi+XPozuYbFzoxPfqWXkFrqDz5xYv5fg+i+Q6hZl6sT9flT2QD6mRC6E8=
X-Google-Smtp-Source: AGHT+IHO7NgHAvMoNL+Vwr0gsrbLBbRzB68mfS+LYvq/Q1H/ixopITAemFG2PunekaEBn/eSbVurMg==
X-Received: by 2002:a05:6000:24c7:b0:428:52c7:feae with SMTP id ffacd0b85a97d-42b593869b1mr16288107f8f.32.1763473839029;
        Tue, 18 Nov 2025 05:50:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e85e6fsm32359458f8f.18.2025.11.18.05.50.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:50:38 -0800 (PST)
Message-ID: <e21760e8-4eaf-4181-a328-5d0d205b7ae0@linaro.org>
Date: Tue, 18 Nov 2025 14:50:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/9] drm/panel: ilitek-ili9881d: Add support for
 Wanchanglong W552946AAA panel
To: Chaoyi Chen <kernel@airkyi.com>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-6-kernel@airkyi.com>
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
In-Reply-To: <20251106020632.92-6-kernel@airkyi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/6/25 03:06, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> W552946AAA is a panel by Wanchanglong. This panel utilizes the
> Ilitek ILI9881D controller.
> 
> W552946AAA is similar to W552946ABA, but the W552946AAA only
> uses 2 lanes.
> 
> Tested on rk3506g-evb1-v10.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 225 ++++++++++++++++++
>   1 file changed, 225 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index ad4993b2f92a..9b3e9450808d 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -820,6 +820,204 @@ static const struct ili9881c_instr tl050hdv35_init[] = {
>   	ILI9881C_COMMAND_INSTR(0xd3, 0x39),
>   };
>   
> +static const struct ili9881c_instr w552946aaa_init[] = {
> +	ILI9881C_SWITCH_PAGE_INSTR(3),
> +	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x02, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x03, 0x53),
> +	ILI9881C_COMMAND_INSTR(0x04, 0x53),
> +	ILI9881C_COMMAND_INSTR(0x05, 0x13),
> +	ILI9881C_COMMAND_INSTR(0x06, 0x04),
> +	ILI9881C_COMMAND_INSTR(0x07, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x08, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x09, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x10, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x11, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x12, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x13, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x14, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x15, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x16, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x17, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x18, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x19, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1e, 0xc0),
> +	ILI9881C_COMMAND_INSTR(0x1f, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x20, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x21, 0x09),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x23, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x24, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x25, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x26, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x27, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x28, 0x55),
> +	ILI9881C_COMMAND_INSTR(0x29, 0x03),
> +	ILI9881C_COMMAND_INSTR(0x2a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x30, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x32, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x33, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x34, 0x04),
> +	ILI9881C_COMMAND_INSTR(0x35, 0x05),
> +	ILI9881C_COMMAND_INSTR(0x36, 0x05),
> +	ILI9881C_COMMAND_INSTR(0x37, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x38, 0x3c),
> +	ILI9881C_COMMAND_INSTR(0x39, 0x35),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3b, 0x40),
> +	ILI9881C_COMMAND_INSTR(0x3c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x40, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x41, 0x88),
> +	ILI9881C_COMMAND_INSTR(0x42, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x43, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x44, 0x1f),
> +	ILI9881C_COMMAND_INSTR(0x50, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x51, 0x23),
> +	ILI9881C_COMMAND_INSTR(0x52, 0x45),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x67),
> +	ILI9881C_COMMAND_INSTR(0x54, 0x89),
> +	ILI9881C_COMMAND_INSTR(0x55, 0xab),
> +	ILI9881C_COMMAND_INSTR(0x56, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x57, 0x23),
> +	ILI9881C_COMMAND_INSTR(0x58, 0x45),
> +	ILI9881C_COMMAND_INSTR(0x59, 0x67),
> +	ILI9881C_COMMAND_INSTR(0x5a, 0x89),
> +	ILI9881C_COMMAND_INSTR(0x5b, 0xab),
> +	ILI9881C_COMMAND_INSTR(0x5c, 0xcd),
> +	ILI9881C_COMMAND_INSTR(0x5d, 0xef),
> +	ILI9881C_COMMAND_INSTR(0x5e, 0x03),
> +	ILI9881C_COMMAND_INSTR(0x5f, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x0c),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x0e),
> +	ILI9881C_COMMAND_INSTR(0x64, 0x0f),
> +	ILI9881C_COMMAND_INSTR(0x65, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x66, 0x11),
> +	ILI9881C_COMMAND_INSTR(0x67, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x68, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x69, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x6a, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6b, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6c, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6d, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6f, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x70, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x71, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x72, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x73, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x74, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x75, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x76, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x77, 0x0f),
> +	ILI9881C_COMMAND_INSTR(0x78, 0x0e),
> +	ILI9881C_COMMAND_INSTR(0x79, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x7a, 0x0c),
> +	ILI9881C_COMMAND_INSTR(0x7b, 0x11),
> +	ILI9881C_COMMAND_INSTR(0x7c, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x7d, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x7e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7f, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x80, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x81, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x82, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x83, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x84, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x85, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x86, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x87, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x88, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x89, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x8a, 0x02),
> +	ILI9881C_SWITCH_PAGE_INSTR(4),
> +	ILI9881C_COMMAND_INSTR(0x00, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x70, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x71, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x66, 0xfe),
> +	ILI9881C_COMMAND_INSTR(0x82, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x84, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x85, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x24),
> +	ILI9881C_COMMAND_INSTR(0x32, 0xac),
> +	ILI9881C_COMMAND_INSTR(0x8c, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x3c, 0xf5),
> +	ILI9881C_COMMAND_INSTR(0x88, 0x33),
> +	ILI9881C_SWITCH_PAGE_INSTR(1),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x78),
> +	ILI9881C_COMMAND_INSTR(0x55, 0x7b),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x20),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xa0, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xa1, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xa2, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xa3, 0x13),
> +	ILI9881C_COMMAND_INSTR(0xa4, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xa5, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xa6, 0x1a),
> +	ILI9881C_COMMAND_INSTR(0xa7, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xa8, 0x67),
> +	ILI9881C_COMMAND_INSTR(0xa9, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xaa, 0x29),
> +	ILI9881C_COMMAND_INSTR(0xab, 0x5b),
> +	ILI9881C_COMMAND_INSTR(0xac, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xad, 0x28),
> +	ILI9881C_COMMAND_INSTR(0xae, 0x5c),
> +	ILI9881C_COMMAND_INSTR(0xaf, 0x30),
> +	ILI9881C_COMMAND_INSTR(0xb0, 0x31),
> +	ILI9881C_COMMAND_INSTR(0xb1, 0x32),
> +	ILI9881C_COMMAND_INSTR(0xb2, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xb1, 0x2e),
> +	ILI9881C_COMMAND_INSTR(0xb2, 0x32),
> +	ILI9881C_COMMAND_INSTR(0xb3, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xb6, 0x02),
> +	ILI9881C_COMMAND_INSTR(0xb7, 0x03),
> +	ILI9881C_COMMAND_INSTR(0xc0, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xc1, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xc2, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xc3, 0x13),
> +	ILI9881C_COMMAND_INSTR(0xc4, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xc5, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xc6, 0x1a),
> +	ILI9881C_COMMAND_INSTR(0xc7, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xc8, 0x67),
> +	ILI9881C_COMMAND_INSTR(0xc9, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xca, 0x29),
> +	ILI9881C_COMMAND_INSTR(0xcb, 0x5b),
> +	ILI9881C_COMMAND_INSTR(0xcc, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xcd, 0x28),
> +	ILI9881C_COMMAND_INSTR(0xce, 0x5c),
> +	ILI9881C_COMMAND_INSTR(0xcf, 0x30),
> +	ILI9881C_COMMAND_INSTR(0xd0, 0x31),
> +	ILI9881C_COMMAND_INSTR(0xd1, 0x2e),
> +	ILI9881C_COMMAND_INSTR(0xd2, 0x32),
> +	ILI9881C_COMMAND_INSTR(0xd3, 0x00),
> +	ILI9881C_SWITCH_PAGE_INSTR(0),
> +};
> +
>   static const struct ili9881c_instr w552946ab_init[] = {
>   	ILI9881C_SWITCH_PAGE_INSTR(3),
>   	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> @@ -1772,6 +1970,23 @@ static const struct drm_display_mode tl050hdv35_default_mode = {
>   	.height_mm	= 110,
>   };
>   
> +static const struct drm_display_mode w552946aaa_default_mode = {
> +	.clock		= 65000,
> +
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 52,
> +	.hsync_end	= 720 + 52 + 8,
> +	.htotal		= 720 + 52 + 8 + 48,
> +
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 16,
> +	.vsync_end	= 1280 + 16 + 6,
> +	.vtotal		= 1280 + 16 + 6 + 15,
> +
> +	.width_mm	= 68,
> +	.height_mm	= 121,
> +};
> +
>   static const struct drm_display_mode w552946aba_default_mode = {
>   	.clock		= 64000,
>   
> @@ -1983,6 +2198,15 @@ static const struct ili9881c_desc tl050hdv35_desc = {
>   	.default_address_mode = 0x03,
>   };
>   
> +static const struct ili9881c_desc w552946aaa_desc = {
> +	.init = w552946aaa_init,
> +	.init_length = ARRAY_SIZE(w552946aaa_init),
> +	.mode = &w552946aaa_default_mode,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
> +	.lanes = 2,
> +};
> +
>   static const struct ili9881c_desc w552946aba_desc = {
>   	.init = w552946ab_init,
>   	.init_length = ARRAY_SIZE(w552946ab_init),
> @@ -2023,6 +2247,7 @@ static const struct of_device_id ili9881c_of_match[] = {
>   	{ .compatible = "feixin,k101-im2byl02", .data = &k101_im2byl02_desc },
>   	{ .compatible = "startek,kd050hdfia020", .data = &kd050hdfia020_desc },
>   	{ .compatible = "tdo,tl050hdv35", .data = &tl050hdv35_desc },
> +	{ .compatible = "wanchanglong,w552946aaa", .data = &w552946aaa_desc },
>   	{ .compatible = "wanchanglong,w552946aba", .data = &w552946aba_desc },
>   	{ .compatible = "ampire,am8001280g", .data = &am8001280g_desc },
>   	{ .compatible = "raspberrypi,dsi-7inch", &rpi_7inch_desc },

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

