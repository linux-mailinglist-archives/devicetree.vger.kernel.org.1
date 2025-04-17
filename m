Return-Path: <devicetree+bounces-168307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 636FEA921A9
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C082A3BE2BA
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43FF253F04;
	Thu, 17 Apr 2025 15:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JaGsPXR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4C8253B43
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744903892; cv=none; b=acU4n6owFWy4uVwxMTLR1vn8AzplOsuMq6g/FkKhqL3DMNRLGWoWwTdlrq/fWnlFMUBpfI4P9EIZnJ51z1uPNS5rS+4l6nwvl5ItrOivq/kFyEvmvE5wz2RddBzsCsJ+wwnwEa2DjeKpGxRAL5PMpxSzixvABwU+/AMKj2tWFPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744903892; c=relaxed/simple;
	bh=LZEPpejIfFxYDDGNK0bRJuD+hdjnNFo5RREyMTxXYqM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=J3ww24c1fGiqQEVU7e13fLPAZyUTfzhZlxkH4qLC/T0hS2kY8jPSGykNF3n9WUGclDuHGyARMUG71oWe7tUoSQXzmTYSRSWcJDPZ+dl6LF/Wdv6GNgnIAciKlA2uVht6OD4SClacx1DDjAOSXgaYX2DOPEBczWPyaAKdbQ3Rxxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JaGsPXR6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso9510425e9.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744903889; x=1745508689; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GabpQFM6FHZHsv6ak2pU2BPX+s6Z3k+bnrJDF1aRDfE=;
        b=JaGsPXR6wlyt8B1JMr+RgC+J3OX/Q2zw3eCenvKtnycuRWz9HP3xuV47yT+DxZBayn
         gDDU8TdaG0MYd9EEepLiyqWHKCbkzvJOslPc0NLu9Po0dimnMIq9c2UqxBML0/Gy08q3
         7L2IlVD9AbWGFszianCz3E5gDSxDeptS7Ie9PyoprK4eslQ2C5QQBN4OYEK+8amNU9pw
         WLguYfB/qoyj/BMT1GwdzLTagNFdUfEoNQlltm1XpybiduJMSCWycCGQ1VQ5XAF3U+cS
         x0I52jH90sdgUVKt1MHO25LDpSrJ3dLJLkFCrxPV+NhmqwX6cbH1Thd+cLaMmfA8v1Kc
         nYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744903889; x=1745508689;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GabpQFM6FHZHsv6ak2pU2BPX+s6Z3k+bnrJDF1aRDfE=;
        b=UVPkVevegFI2qvy7hR2fhXslhMPeMVqYMe7foUQz/jhkZWo/aMzMphsQkVx3O+P+Q0
         8FLuGWn6fFGfCaAk/eP0vMKiS/ZfrSRvKcpkdRYGiO1vgeeU11NdKpscouDEHSzW2zJH
         6E0MD/W4IETNYN1fj4tEcyBBVp6bTtMUVX3TZnKJl2CI9W+7Pf6lz870sCEgsdXxPMUi
         //atWWOJQ8MLzdkY1fo65U5ozBl6B+zgDyfAGySENE4P9tsww6or3QRvU8hvftPkpmJg
         CzxveYBdVCrFzb7Gz7ylJUdKZyvWCwoG+xRPSH++1l5VtunyRKbKOgPkSiheQd+Ha5oG
         8wvw==
X-Forwarded-Encrypted: i=1; AJvYcCXKvhrhXIzcpv44a3i5mIOQRGqif/U4NPUpjndWS8djgNXvkoTHKaP+AAzh2s8VOjnLycq7RyMdnTx5@vger.kernel.org
X-Gm-Message-State: AOJu0YycBw7VO0bUMSl0aiKYtw+LGR7Vn3DwPjfZsCSbphkOE9SLetm4
	I/BKb6zO41LdHnP1jm8+zV8SwhHO7dyatX7+Um5KWGlPMk7ZXDn8XymYtedFIR0=
X-Gm-Gg: ASbGncuYnA3Ex9svpIBpPS1mRSk+m0jnjGGu5xBwW0cj6Vc/bZFFzoICO+itUZ2s58j
	o4BDEwrINH99773fOCb2rhSghDeyc82AU7kOJmK2P2Vwji4bH70irezFBR7p1mV69ByCFPF6Soc
	D+fpx/cYPMa8Q2VtAJAHY6+BsMSU+F6Ac2cin5BnSXO1arSJ+QJXgYUKROaYCrhiTHKmTSIt/b4
	TZOhDVUT0uvStUJhQYS9Ku44GZxpHoyA1IeFTrbAPi3+YH2F4nePa0sx0jtaTJb41SWsyHWBvgv
	E3G/fxVT96Kh+aFHKnt2YGVnaQU0Q6DOdFmjEhbAqMPul32bdq/Syu/KFLVYNvz6GJcOPXMyR+L
	ynI8j60XcrAduRoo=
X-Google-Smtp-Source: AGHT+IEXc2yZ84OQzIxc27xjxj+s0MRjzbSsN1SkSFfY0y63NTO2TgOX8V5f9KQrjAvVEdjTrXopHA==
X-Received: by 2002:a5d:64ae:0:b0:39a:c9b3:e1d7 with SMTP id ffacd0b85a97d-39ee5b35fc8mr5056045f8f.29.1744903888828;
        Thu, 17 Apr 2025 08:31:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a7f9:634b:42d:1546? ([2a01:e0a:3d9:2080:a7f9:634b:42d:1546])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae979663sm21247275f8f.51.2025.04.17.08.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 08:31:28 -0700 (PDT)
Message-ID: <969b474b-b154-466b-87a1-3ae16c45af26@linaro.org>
Date: Thu, 17 Apr 2025 17:31:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 2/3] drm/panel: simple: Tianma TM070JDHG34-00: add
 delays
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "Pu, Hui" <Hui.Pu@gehealthcare.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250411-tianma-p0700wxf1mbaa-v3-0-acbefe9ea669@bootlin.com>
 <20250411-tianma-p0700wxf1mbaa-v3-2-acbefe9ea669@bootlin.com>
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
In-Reply-To: <20250411-tianma-p0700wxf1mbaa-v3-2-acbefe9ea669@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2025 21:19, Luca Ceresoli wrote:
> Add power on/off delays for the Tianma TM070JDHG34-00.
> 
> Fixes: bf6daaa281f7 ("drm/panel: simple: Add Tianma TM070JDHG34-00 panel support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> ---
> 
> Changed in v3:
> - add Fixes: and Cc:
> - remove regulator delay
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index df718c4a86cb7dc0cd126e807d33306e5a21d8a0..fd7ee5d1ca280be306620def30d3b423106b4304 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4452,6 +4452,12 @@ static const struct panel_desc tianma_tm070jdhg34_00 = {
>   		.width = 150, /* 149.76 */
>   		.height = 94, /* 93.60 */
>   	},
> +	.delay = {
> +		.prepare = 15,		/* Tp1 */
> +		.enable = 150,		/* Tp2 */
> +		.disable = 150,		/* Tp4 */
> +		.unprepare = 120,	/* Tp3 */
> +	},
>   	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

