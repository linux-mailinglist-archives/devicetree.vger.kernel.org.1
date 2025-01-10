Return-Path: <devicetree+bounces-137393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2133A08D94
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:12:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DF6C1610F5
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D2220A5EA;
	Fri, 10 Jan 2025 10:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WaLbKQu6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D2F20ADE6
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 10:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736503830; cv=none; b=GQ7ok0y3dTMhQdJWDxVn/P0DvmLejRM9wGaLvy770VTuNcjIV7UidonxM5jdnhQy4WHCpqmxhn+7OwCfk4503lUpSIim6/NjAAhU+WtZZoU+KPVnOXGSzzzPeC8499VYXjFSqblHiyLcbq2nel1KuCP93UaeyXci1H0+E02FF8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736503830; c=relaxed/simple;
	bh=uniW4wvTEUgg2H01yMj1NlhMMWSg8tYI17IRufbCCHI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Hh2dW3NcLt5xn3c5pBUpr2mrn8STBe+5QLA/lcXuCGB6NZYr9Vk4tu5IRBN+2DRsWei2hKyJcWzvN0eVOTxbCvn5y4oEKo97TsDj3VfPPyLC+wJE86dUToljBWLSR2eKgnBP4IHkpH5Rx/6Xbisr9WPjN1HhWVoNOnetiMJOd98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WaLbKQu6; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43623f0c574so14048555e9.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 02:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736503825; x=1737108625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qU/YhP9GBvho7wDOYndiW+o3LX+a4ZB1ApDiQFDDSEE=;
        b=WaLbKQu66PmZKiw5h4mmuc90x9pTm0b1wykTpjRyBYkJaHjcmRjEnX39bPDhfUAPE8
         05qBZ/WtHgu2tftkQODvNRPzt7T2+t/qY5UpO2ha0YRvYbkM9sQt152+dBHaFf11XqJf
         tNi03d9zg77Er8HLJHNvF5sEuPF+A7/J7+1Ms/+ycLPSHzDvEbiojC8Ru2ZfegEwa+P6
         YNKjVL4vj2dm0M+XT0e8x8SelpcRPj81q8KvOhi8LhXnKcVQ0S1PFPY9nKQyvoPhWw21
         d5v42S935CSTVVmQCZlxEsYR29pHjVp/CDrB4xz404uIZ6mKRDIqHpNGSwKqTkofNo6m
         VwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736503825; x=1737108625;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qU/YhP9GBvho7wDOYndiW+o3LX+a4ZB1ApDiQFDDSEE=;
        b=fMhGXX6T0v8nuglSgEaSe9RwiRp9X3V1aHosSFlKjQj0eoeS6Kh0TieA/IpBqCXNAU
         9d9KwFZ8+eOdkEz1SQotu4xStHKESrjMIomyfJYEW8P8X8vCtdyFFrHjMx6zdJmO1t86
         LtIk9v7cWB8TLf3vmQ706BXdSuh2UGxhPYoAuGgHjJQnjXsJgTht5kBIs71XkZmmpskT
         rUC9yAfaPOcALAV+o9aWVBA0l9nnFB7HrYGQTIgUuZS7VHmuJinJN15rVd/qpsycTO6K
         WpzA4dKH2LLsba9inksBftBLczB0Q/Ql4x1GmDCmtQEZduImwoOQghQ7xyJEjobSNZjr
         5xDg==
X-Forwarded-Encrypted: i=1; AJvYcCXpAPWU0x0OGpC0rvAE1w9Eor6jxXQtU/fEJsJ1mUZAxLcxIPgHorxZdfpFaQux7dlD9NAtnJnxnSVY@vger.kernel.org
X-Gm-Message-State: AOJu0YyUr49XjxxkdrbZmyrimY5WaB8n+S4wmzYD1/21xxBsYtM0Rlif
	LH2jWLvMZtTVNcR294xa8ih2GGOeOcvvobY7ePUvd5r1P3BXrxNSFk7IMEWyOFWF9/TbsjXZQ9i
	/
X-Gm-Gg: ASbGncscjtZNmEjNJJFAgHzpxtzxR/cqfsVcC4Y+K3f4TwJfdqrSidG+U2KjA+sAG9X
	fMUakIQvtpGMSrbvmIudpbdik//+81a/5Y4Zwz8VI/w9/erTiST5bTiQ6obL6/rSBcmiwsYuQ55
	RAk2eSxL0lC/AA/Apym048j6QSzim4V+uRkQt8+ZuagQQws0xwN9jTNfwCp0HqeBDmHfdiumF2s
	TdjrGYGFFjeARCCPX/mFlrujWFZFKkfrGBLWX8KSlAzBdTsZ0SMWAmHlb9VnD8Vj8z6Su8SSqNc
	GYnOFR9Of5+/HDJ8SZziGwDMQNsB2XzEVA==
X-Google-Smtp-Source: AGHT+IEAfZxwOFx6sDD+ACgYzTQU4qG7OfE8myEixibPdomib11nsV0CbsCQwQeJsvXZ0TfyY9GBNA==
X-Received: by 2002:a05:6000:4913:b0:385:fbb7:672d with SMTP id ffacd0b85a97d-38a8735638dmr8832262f8f.52.1736503825258;
        Fri, 10 Jan 2025 02:10:25 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8? ([2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9d8fc51sm47902305e9.7.2025.01.10.02.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 02:10:24 -0800 (PST)
Message-ID: <2967a475-9fbe-4d20-a27c-04676c74d03c@linaro.org>
Date: Fri, 10 Jan 2025 11:10:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 00/11] Subject: [PATCH 00/11] Add DRM support for Amlogic
 S4
To: ao.xu@amlogic.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
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
In-Reply-To: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 10/01/2025 06:39, Ao Xu via B4 Relay wrote:
> This patch series adds DRM support for the Amlogic S4-series SoCs.
> Compared to the Amlogic G12-series, the S4-series introduces the following changes:
> 
> 1 The S4-series splits the HIU into three separate components: `sys_ctrl`, `pwr_ctrl`, and `clk_ctrl`.
>    As a result, VENC and VCLK drivers are updated with S4-specific compatible strings to accommodate these changes.
> 2 The S4-series secures access to HDMITX DWC and TOP registers,
>    requiring modifications to the driver to handle this new access method.
> 3 The register addresses for the video1 and video2 planes have been updated in the S4 hardware,
>    and the DRM driver has been adapted accordingly.
> 4 The OSD, VIU, and VPP components remain unchanged and are consistent with the G12-series.

Thanks a lot for this high quality changeset, happy to see DRM support for a new SoC !

I'll review it carefully next week.

Neil

> 
> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
> ---
> Ao Xu (11):
>        dt-bindings: display: meson-dw-hdmi: Add compatible for S4 HDMI controller
>        dt-bindings: display: meson-vpu: Add compatible for S4 display controller
>        drm: meson: add S4 compatible for DRM driver
>        drm: meson: add primary and overlay plane support for S4
>        drm: meson: update VIU and VPP support for S4
>        drm: meson: add meson_dw_hdmi support for S4
>        drm: meson: change api call parameter
>        drm: meson: add hdmitx vmode timing support for S4
>        drm: meson: add vpu clk setting for S4
>        drm: meson: add CVBS support for S4
>        arm64: dts: amlogic: s4: add DRM support [1/1]
> 
>   .../bindings/display/amlogic,meson-dw-hdmi.yaml    |    1 +
>   .../bindings/display/amlogic,meson-vpu.yaml        |   48 +-
>   .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     |   39 +
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi          |  121 +++
>   drivers/gpu/drm/meson/meson_crtc.c                 |   90 +-
>   drivers/gpu/drm/meson/meson_drv.c                  |  127 ++-
>   drivers/gpu/drm/meson/meson_drv.h                  |    6 +
>   drivers/gpu/drm/meson/meson_dw_hdmi.c              |  244 ++++-
>   drivers/gpu/drm/meson/meson_dw_hdmi.h              |  126 +++
>   drivers/gpu/drm/meson/meson_encoder_cvbs.c         |   10 +
>   drivers/gpu/drm/meson/meson_encoder_hdmi.c         |   19 +-
>   drivers/gpu/drm/meson/meson_overlay.c              |    7 +-
>   drivers/gpu/drm/meson/meson_plane.c                |   24 +-
>   drivers/gpu/drm/meson/meson_registers.h            |   17 +
>   drivers/gpu/drm/meson/meson_vclk.c                 | 1018 ++++++++++++++------
>   drivers/gpu/drm/meson/meson_venc.c                 |  346 ++++++-
>   drivers/gpu/drm/meson/meson_venc.h                 |    4 +-
>   drivers/gpu/drm/meson/meson_viu.c                  |    9 +-
>   drivers/gpu/drm/meson/meson_vpp.c                  |   12 +-
>   19 files changed, 1865 insertions(+), 403 deletions(-)
> ---
> base-commit: 6ecd20965bdc21b265a0671ccf36d9ad8043f5ab
> change-id: 20250110-drm-s4-c96c88be52e4
> 
> Best regards,


