Return-Path: <devicetree+bounces-109519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EBC996A21
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 14:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74A401C218F2
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 12:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD8B194082;
	Wed,  9 Oct 2024 12:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oEWCR1KI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4FC1E4AE
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728477242; cv=none; b=AkYiBnV8HYg3CRzebAvZfl1dCXdJAcEODQAwzKvNeMUBj22Y4Em6sr8H7UBs5vh9wepo0K1NA2We9eaAYd3uA2MDxMSeOS8xz3kNecsAEK+2AihVftZTy4aauvZEB0VAc3MFVAdvGNEImk06EagNDPxuGlXNMAwHVpGJj4MYqoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728477242; c=relaxed/simple;
	bh=BtsQb0rbcJV8Y2VAn7gFpxKpcm67cfIw13+n1xeUsIk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=f6MVAUKDLRLmz+lxAxJ8TbHb0ntgGZVA0Mg0L9TN8qnfLlfChiCzWsFlsOoE7LX2nZDKHWXvSv7zN02M6YI7u7nntxdV86+09kjBYLy1vMqKIPKRlicRTFsyCa0mTl9kO9zxX2THdjJngNl10U9WUrKOVfdv+ug2p1HBl9uOw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oEWCR1KI; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37cfa129074so4483306f8f.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728477239; x=1729082039; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QqJk1+ztcnArzea2IKL9aLbLF7mwRX4o+oj2Q3NmaSw=;
        b=oEWCR1KI376M0+mYZa92BNxnnMDlafE+wtE6gzjaaBWjQpxzOqBuGZv5SqBRjHhtHP
         ilv12G/ywSJRz5XBshFC5PW2EfuxxQRfE+yJCCx2/izGuu3v+zLrKecRF0jrgMlphgTI
         ynyO2Gmve53Cz3VcmZVtxjP1N9zdpUsIR+qBo8cyZz2Rgt9T8jTMVv6r4J+QU7OFGYZY
         ABz9CA8NscEy/zjw9t8RsRvyKCe1bW4cbXVOc0uvltf2ioOJ6f9L9nbonlbq62PJaErl
         uuZmja1hU6etjuFwkyUL+xnsW8RYoLLTq+BJhtQ5YNWWjiZePOAkvnBTrI9oGCz8nMTQ
         EmCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728477239; x=1729082039;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QqJk1+ztcnArzea2IKL9aLbLF7mwRX4o+oj2Q3NmaSw=;
        b=g7UGV+4j3AW5Z+hpHTcLodRei+fO5onNKCPHZxftBYXpy0DItaEpS2Hku2MpAJr9gD
         h7Iz50KkzA9foKEM0bdUletxePuI3Gi86eaL0rbKgo8+LC+vwR2W73HjSCt7lmgWUFKp
         CY4IaKityycBPQ8T7fmd50J/ZbfL9k1ky699dcO5eLsSHbFrIcGOJcpH2GYiMSFAZW3g
         vKrxpNqRBjUUGtkd72nJBFTQjyjJeSZDwukwU/Qq/gXVClY5qu/X7F4JTAwgoEpIkOP9
         9gTDgYg04Ufc6IOD99BjrSGYv6NCRLcZF8nkB42nxYsC3tQ4V4XjvfYM3cXgvmJAX0uP
         t6Iw==
X-Forwarded-Encrypted: i=1; AJvYcCUm0nVjBDqCLiHlNYNYDn/JRzYPIDuwFPUiG0Ya1A/imDMgHICfVI917uWGKedpQwG0ebkZkBQKm1SC@vger.kernel.org
X-Gm-Message-State: AOJu0YwPyta1ItLKfz2YSBc15e9/vzpz0xRpmw0mAYUkc785W6r+adWz
	rnwYRLUNL9ctNYm5nYSttedeZIm4WoFrzJPcPl3MIujokbuOgm0NHl3IqO4SIdc=
X-Google-Smtp-Source: AGHT+IHiHRyc0hqA8nCVxG9BCXYGM0RO3iv6rgEPI1NshjsqqMc6/tyJGTt0KdD/OHx5zcpyYuJt1Q==
X-Received: by 2002:adf:ee87:0:b0:37c:d179:2f73 with SMTP id ffacd0b85a97d-37d3aa58580mr1395456f8f.13.1728477238924;
        Wed, 09 Oct 2024 05:33:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:767b:a30:4bcb:fcaf? ([2a01:e0a:982:cbb0:767b:a30:4bcb:fcaf])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1698fcacsm10288484f8f.116.2024.10.09.05.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 05:33:57 -0700 (PDT)
Message-ID: <192d8bc9-112c-4303-a463-50d28d47cc21@linaro.org>
Date: Wed, 9 Oct 2024 14:33:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v6 1/3] drm/mipi-dsi: add mipi_dsi_compression_mode_multi
To: kernel test robot <lkp@intel.com>,
 Dzmitry Sankouski <dsankouski@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241006-starqltechn_integration_upstream-v6-1-8336b9cd6c34@gmail.com>
 <202410092245.tfsuUllL-lkp@intel.com>
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
In-Reply-To: <202410092245.tfsuUllL-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 09/10/2024 14:18, kernel test robot wrote:
> Hi Dzmitry,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on 58ca61c1a866bfdaa5e19fb19a2416764f847d75]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Dzmitry-Sankouski/drm-mipi-dsi-add-mipi_dsi_compression_mode_multi/20241007-022151
> base:   58ca61c1a866bfdaa5e19fb19a2416764f847d75
> patch link:    https://lore.kernel.org/r/20241006-starqltechn_integration_upstream-v6-1-8336b9cd6c34%40gmail.com
> patch subject: [PATCH v6 1/3] drm/mipi-dsi: add mipi_dsi_compression_mode_multi
> config: x86_64-rhel-8.3 (https://download.01.org/0day-ci/archive/20241009/202410092245.tfsuUllL-lkp@intel.com/config)
> compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241009/202410092245.tfsuUllL-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202410092245.tfsuUllL-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/gpu/drm/drm_mipi_dsi.c:1533: warning: Function parameter or struct member 'ctx' not described in 'mipi_dsi_compression_mode_multi'
>>> drivers/gpu/drm/drm_mipi_dsi.c:1533: warning: Excess function parameter 'dsi' description in 'mipi_dsi_compression_mode_multi'

I missed this, Dmitry, can you send a follow-up patch fixing the kerneldoc ?

Thanks,
Neil

> 
> 
> vim +1533 drivers/gpu/drm/drm_mipi_dsi.c
> 
>    1522	
>    1523	/**
>    1524	 * mipi_dsi_compression_mode_multi() - enable/disable DSC on the peripheral
>    1525	 * @dsi: DSI peripheral device
>    1526	 * @enable: Whether to enable or disable the DSC
>    1527	 *
>    1528	 * Enable or disable Display Stream Compression on the peripheral using the
>    1529	 * default Picture Parameter Set and VESA DSC 1.1 algorithm.
>    1530	 */
>    1531	void mipi_dsi_compression_mode_multi(struct mipi_dsi_multi_context *ctx,
>    1532					     bool enable)
>> 1533	{
>    1534		return mipi_dsi_compression_mode_ext_multi(ctx, enable,
>    1535							   MIPI_DSI_COMPRESSION_DSC, 0);
>    1536	}
>    1537	EXPORT_SYMBOL(mipi_dsi_compression_mode_multi);
>    1538	
> 


