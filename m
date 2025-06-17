Return-Path: <devicetree+bounces-186582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED02ADC665
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:30:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FD4818854EF
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDDC293B7E;
	Tue, 17 Jun 2025 09:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zybM47Jk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F32293C69
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750152620; cv=none; b=B2Wo2XABup5roLKbdyq2Jgb7o1m3mGTCMsL9MERNiFsZdcubfzwrM8tDnSX8UZ5SII4Qnh77DBHvborQ2RTK1sdW+ttnbFtX1FNXbHM8kNewykb0fNGv0mojuj9jwLrxKZZ7Hx+BU1oK9DjWn8CCSpbUcXA199kml9Z2RebLA/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750152620; c=relaxed/simple;
	bh=zaZ2O9bOumy6WLgWO1r6sqT4gqzW11xkJSkkFy5zOvc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=rBghSkraYsvqiO4dNdSMJC66FZjSWxm3IQzMvlwNVBWnuE4OWx7hbkio/Aj2XJcuKSI/ja1YpUhfq3Rbbb8tmDAeXTFJvqyx0qOS6guh+PmDR/j4lwN90kLMpNpVdWKqdAQg/NX6z60vvbhhZvCAkFLZI+HdaY5TEnrIDuDPspE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zybM47Jk; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-451d3f72391so62284265e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750152617; x=1750757417; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xl41cDxLf5qSZURNGABwnShoulmiUtSz5ST04bw9Wkg=;
        b=zybM47JkwvYMsbbGVEAyPzZoz6r/+bQOtozXo0sx4YGHQWcvS/qdjB88jHLlLoEk6x
         DV/45Y/RN8tNuMW5Boij2Mw47l+Y/AGdCpYfCdjfs1q7YUGmcSAMWEFyfef42q+PKe2R
         1uHlYeFfgNtlLSXyjMRb3bJBdpivmRJALHN9OMbdA8MiQExaxjNtt1VIQpuWMw7DTHu5
         hHd/qbKhyxRqp+XUeFmvWfz0Q6wQQtcUf6aXO8QwLsMqT84d8nfH7dBGSEkkqS/jgv3c
         AHuS3vrI5dZTlSNRTd2FM4EC0ppaSZkzrdWfuEH1uRtVDTHYAc2eMI1OrVcr8f7G9PX4
         k7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750152617; x=1750757417;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xl41cDxLf5qSZURNGABwnShoulmiUtSz5ST04bw9Wkg=;
        b=UJM8diaN01hAvpIsbIzg+8lHmZJZC0mdCS9iFz7J7CsWsRxPBneevZgecReweUEDwH
         b4Dms46B5dpl3AgC0x5MyTVVI8DYE7Hzdeyv5ELBSZbIbqM3ToKlRT8bwEaS0cWzv30s
         PmgRjXYKKsi11neYaZ8IPMAe+3as+UAHLe33PlkuoDMxGCDz4sfe6+TKWt01T3hULgy8
         tCic3A2z5jciBUIRTQPpsJQhCjKfnvhRNnk3H+xfI2v6Q5aUgx/WlemeDy72G0CexZfa
         geRSXOpo7po5hbs7/vohdjOJwP6dXPM/dkYQHLkSavJwr3c2A8ThK6VmTp0IH690PXFY
         oNjg==
X-Gm-Message-State: AOJu0YzSrfIFwLvnUgKCby8V6mxgUo15ZgMD7dhPV5/We0WPSoFdKobq
	LF+V5x4eL8ePVCPZMjK2uZQE76oDyR41i6k3G8/daSxwdRhwZDw6ctSxcF83N4ZNcqY=
X-Gm-Gg: ASbGncvN2JoNP1HvQ9VVc5DZK55QUl6gg+84L0fPBWxvU+W2M7Kp7le7QZ/XUcrqfD2
	PPTbpco1LSTqFBkIYJDyYtPIxt3Stj0VWW1TXyV25GcmpPf9/mSiHaKm38XF97k9LumDI0+lCZy
	TMvcEqWlJSU7KoG9OR+WTVfWpALghGNH/ej/YxcA2H5R6PjYu0QpP3rp3blUNYTq6yHCrJxWYl4
	S8HGBeM/jfU99T1Y7hgh8qgZF9L6shj/APGHIomKLvJTGMfZLDJUJ7gT3WAyE6VyUyaiZ1Ytvba
	faaYYxVet3UP7wIq8m4mOFgtu7ujX6+/tPQ9ApFbVNoLQK2kQ4ICfYSmfe45JMVqEJOsuY3uTv2
	ef36CPMYavfQ1NGgQ5f6bqLfnq6Ug05iJ/6CEwYo=
X-Google-Smtp-Source: AGHT+IH90fM/Hl2qQnPaSI6dqHDTANiZZutrp7G9byHerpIanfYAuG3VuGrXV1ZLniUQsldJImLpAQ==
X-Received: by 2002:a05:600c:8b01:b0:441:d437:e3b8 with SMTP id 5b1f17b1804b1-4533cac9179mr105111595e9.23.1750152616870;
        Tue, 17 Jun 2025 02:30:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3819:3250:4f73:db31? ([2a01:e0a:3d9:2080:3819:3250:4f73:db31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54aeasm13662038f8f.14.2025.06.17.02.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 02:30:11 -0700 (PDT)
Message-ID: <9c512a8d-a39e-4b3a-b617-80b2dc7d14b3@linaro.org>
Date: Tue, 17 Jun 2025 11:30:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-inno-csidphy: allow
 writes to grf register 0
To: michael.riesch@collabora.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250616-rk3588-csi-dphy-v1-0-84eb3b2a736c@collabora.com>
 <20250616-rk3588-csi-dphy-v1-3-84eb3b2a736c@collabora.com>
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
In-Reply-To: <20250616-rk3588-csi-dphy-v1-3-84eb3b2a736c@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/06/2025 10:54, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The driver for the Rockchip MIPI CSI-2 DPHY uses GRF register offset
> value 0 to sort out undefined registers. However, the RK3588 CSIDPHY GRF
> this offset is perfectly fine (in fact, register 0 is the only one in
> this register y
> file).
> Introduce a boolean variable to indicate valid registers and allow writes
> to register 0.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> index 2ab99e1d47eb..75533d071025 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> @@ -87,10 +87,11 @@ struct dphy_reg {
>   	u32 offset;
>   	u32 mask;
>   	u32 shift;
> +	u8 valid;
>   };
>   
>   #define PHY_REG(_offset, _width, _shift) \
> -	{ .offset = _offset, .mask = BIT(_width) - 1, .shift = _shift, }
> +	{ .offset = _offset, .mask = BIT(_width) - 1, .shift = _shift, .valid = 1, }
>   
>   static const struct dphy_reg rk1808_grf_dphy_regs[] = {
>   	[GRF_DPHY_CSIPHY_FORCERXMODE] = PHY_REG(RK1808_GRF_PD_VI_CON_OFFSET, 4, 0),
> @@ -145,7 +146,7 @@ static inline void write_grf_reg(struct rockchip_inno_csidphy *priv,
>   	const struct dphy_drv_data *drv_data = priv->drv_data;
>   	const struct dphy_reg *reg = &drv_data->grf_regs[index];
>   
> -	if (reg->offset)
> +	if (reg->valid)
>   		regmap_write(priv->grf, reg->offset,
>   			     HIWORD_UPDATE(value, reg->mask, reg->shift));
>   }
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

