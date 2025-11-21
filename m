Return-Path: <devicetree+bounces-241152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C1AC7A638
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 71CCB348139
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF65534EF12;
	Fri, 21 Nov 2025 14:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m+sFirhw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8262229CB4D
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763736880; cv=none; b=MIo0HLZexBdujOpC0jnk2crF3izf6A/sY8/H5npgxqtk+MltW3uDOggQbqJ4Qa/IUiEbRO0AvLtSBM58Z2TYfT8k0Gj/m1xGslAIzg0+3CJnlJmqnfUFz8s1Ysaa1VUUB2eeHr3ebT8tiJ0PBq+stQgS/beChyHakHqkBmrfR6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763736880; c=relaxed/simple;
	bh=PdbhQmSWzie/InhU2C8HiWf3tc3T32exhMRvoSTXWYc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=WLFIbhSMsqVZT5fWqZh51fhlLOkRNSP67DxyvKNuHjvf+7vhafqH7QbKsVGP8hs0HWF22lX5Tbnoff8oartY+J8HjGVsOiKFBqQSVe1PxNMcS+xMdTnroT/icVuO1BWN5CZhpvVBNsw6rCZPBO0mrJ0xksQ0FqY//QzU6I8ejTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m+sFirhw; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso14436565e9.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763736876; x=1764341676; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h3T53g7xBgvHEx7HfC5HSakwZWPWLNi811KzyB5b8Cc=;
        b=m+sFirhwuqK3sfmBmGNeavKsLhVRL1vJFQP50D/dyAzR4fPQn9p2UD2GZ5rUX2kZsd
         mFvrjj3Cb6yyFT7EmspeHNunzTqlGsm5hYwkSG/9fjs5dvz/Ij+hSHwgp5/vfiIg8mNJ
         /ThVFNZN8+bO3Z5jfoMe/0p9/Qblvgxjz9Df5ABWWdj8clQJmG9U0Joe2TA+r2QwuzEK
         d2lzGYp2IFz0vy6lWv2NiX8sk/rN7auzcp2Mu1RtfymuOiP3olczirU2hPQX4Coblg24
         91uDLwiZISQMJaxl0glaoDGDRsnMhcfIWIalLW4EuySFcAA0PADwe7NWKg3wtvdtrx/u
         /vEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736876; x=1764341676;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3T53g7xBgvHEx7HfC5HSakwZWPWLNi811KzyB5b8Cc=;
        b=siJxygYy3WZum47WElufd8nh3P9tGcQs4zvjZ6DqNAWkXVkNZpdQBmNv0BICfdg077
         AL7oGxzNLlKSshc6wkVF+ZvYfmGsNgj51BTWo317uugi58xJ5kMYpY5i4LJvaudvM01v
         Ch6ZpNlMz4D7kqkTSqzGWX8o6B8Vt48JBNMaZjk15BWDqt2TV/rGISdY4bv9D2n5cQtP
         9TRqPRaTRjErNiLbIbaOvpY7qFjsk4odDcp9RwkHbii5uqNDDmAE0qmO5IrNBO8ywPYM
         EhV5rPRlB8MXtRt1XZZhHdtufhLi+7Lfa5ubzLYdMUG8bMINh2dlbsp5XmKvqMWUMNJI
         uF1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7tetxLv19//ep3YBD3ENelTfvf2rynusp/wI1rLGLcigZFU4IAmbIYsRzARoVGwWCz8TglWmFZ0zM@vger.kernel.org
X-Gm-Message-State: AOJu0YxR/LYJKAeEfywTTL3LqKh6g8To0NDSKOpku/HqLOGoBjUpUHAI
	kRaWIN14u4XZJFukeMBQlT+sHlu9EitX5VGRDX20Q8ABIHMSmlu1fCr3upV3FNX03QQ=
X-Gm-Gg: ASbGncs8gLXc4gIdQJaFWSbWJFKiz/r4H4y+PW21EqPdm6db0Wg8QSt2GCRRvulfdY4
	HL+ADjA6kma8RxoiI2m2KJqjo7JNXteVmDA9MW//EadKmQeTRwBEdah9EVYtB8N0jw/FOVCDHhi
	MdmBEdDpG9+e09K4TwhwTph3rHNUoF5X1XpRRh4UYfCiHiNl1CG4ez7/jdwLpFowUC4TWhFETHt
	cjBR6uFkyR4lGLwTa1+M+aL+IX7KvMOkvNb/21CIQO+IHjuyCwtd1gyQUJ//gSsYAmvhos8+JPk
	Dq3ofK/IwddGHY8GdyYEiZqgx4SAiSDG7ALmPFQpn4F1CM+7PP1QNx+1B9W1/1hpi3hgP8k0+ww
	raY3S4KG8NYSR75oIU/+rrUQ/U4tIL4l6K4n/YYHEYLUR4m/BYrK2TdPUfBvTfRZHXlIN89ZtoG
	oRL4FEk/luBaWVU6jPtOnDvXO2zSFdyXs7Mltht0nWRsoLwPiWj/9j13dh7IGuUAXmCIJc2Lz+c
	A==
X-Google-Smtp-Source: AGHT+IEzj6mKlAXc/f2f5s+FD/b07AX4yw2dXdDsDHdfncbSE2QSufZD0iTF+t3WaYL5TpdOFlDOEA==
X-Received: by 2002:a05:600c:1f8f:b0:477:a0dd:b2af with SMTP id 5b1f17b1804b1-477c01ea502mr22713205e9.33.1763736876159;
        Fri, 21 Nov 2025 06:54:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cc231dc6esm3409457f8f.7.2025.11.21.06.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:54:35 -0800 (PST)
Message-ID: <326cd208-fcce-49d1-94ee-4913f85bffbf@linaro.org>
Date: Fri, 21 Nov 2025 15:54:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v10 07/11] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-8-kernel@airkyi.com>
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
In-Reply-To: <20251120022343.250-8-kernel@airkyi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/20/25 03:23, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
> device.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v10:
> - Use drm_aux_bridge_register_from_node() instead.
> 
> (no changes since v7)
> 
> Changes in v6:
> - Fix depend in Kconfig.
> 
>   drivers/phy/rockchip/Kconfig              | 2 ++
>   drivers/phy/rockchip/phy-rockchip-typec.c | 5 +++++
>   2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index db4adc7c53da..bcb5476222fc 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -120,6 +120,8 @@ config PHY_ROCKCHIP_TYPEC
>   	tristate "Rockchip TYPEC PHY Driver"
>   	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
>   	depends on TYPEC || TYPEC=n
> +	depends on DRM || DRM=n
> +	select DRM_AUX_BRIDGE if DRM_BRIDGE
>   	select EXTCON
>   	select GENERIC_PHY
>   	select RESET_CONTROLLER
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 1f5b4142cbe4..e31b778c3537 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -56,6 +56,7 @@
>   #include <linux/phy/phy.h>
>   #include <linux/usb/typec_dp.h>
>   #include <linux/usb/typec_mux.h>
> +#include <drm/bridge/aux-bridge.h>
>   
>   #define CMN_SSM_BANDGAP			(0x21 << 2)
>   #define CMN_SSM_BIAS			(0x22 << 2)
> @@ -1312,6 +1313,10 @@ static int tcphy_setup_typec_mux(struct rockchip_typec_phy *tcphy)
>   	if (!of_property_read_bool(np, "mode-switch"))
>   		goto put_np;
>   
> +	ret = drm_aux_bridge_register_from_node(tcphy->dev, np);
> +	if (ret)
> +		goto put_np;
> +
>   	mux_desc.drvdata = tcphy;
>   	mux_desc.fwnode = device_get_named_child_node(tcphy->dev, "dp-port");
>   	mux_desc.set = tcphy_typec_mux_set;

Much better now !
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

