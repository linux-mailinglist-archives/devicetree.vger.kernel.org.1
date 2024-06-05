Return-Path: <devicetree+bounces-72631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F1B8FC6DB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CB6128200C
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DFF3149C7E;
	Wed,  5 Jun 2024 08:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ecdvmj4x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FA84963C
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717577179; cv=none; b=nGLWW/2j2zO60yhasuXxC1STKp9M6l+wBpcTiKX+vDJoGwWZ8yEMtdiAi9hjCwNl2peEsoVOsHO0jDH4JnXOFLeafOWmgO2YRCjTozqYTajbm61+v/ZIddKigi1tICQm0tz9LTT2NzMZTvj3iUmNVhFWKxDczoz8LZ+NEP02iwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717577179; c=relaxed/simple;
	bh=k5hPE9u97z5wZR33by4343ri6f791GQUzIj+JvXc7iM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=bJPhrtzfp5LwHXkqOa53yxrPeLzPc46YH8lttjHgW8tKjo3H5HaSrLLmtWmQgIwL7ETS3sRakrIvJRIaIwHUmsx05dNjOzzmNQBG88plDxxoZV7e3YPvbMpuGHNzBGUeOLN7JKifVBRnmsB3zPFnY4wMU1TAWbLpdiFrEX5wt6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ecdvmj4x; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-35e4be5bd7fso3910159f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717577175; x=1718181975; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cghILI8ZJPm9SL1zceBvs6FK9GtRFOI4Hps8zLPbyaI=;
        b=Ecdvmj4xxxx9KQ2Wf8FfYIHIiC/Ak7wmvzdh7XzPlBqHXyYcsodx5KABOKTzkqYo8G
         uu1VWVpKL02RiGSN5OICVQpvW5bCSOhSegm9xFiUdxRxwva1houeuSqtdVzMfFARxTP3
         UMKD5M/fbYLaMUL4zIIl7vVZx3zJYki83zdNlgZPo84/J/Wwg+90rFnUj06jrCj+qeJt
         kA5lEGdAKZx1GQuPuSoQ9A/nXWWg6lIF8Bh7+RbvceJg+7fTirk5yr0lDsuJoHjfO8CH
         94hV4GHd/dDuq4C4n28KfiRNM3lFVL3JgyIDqaFYrvcgEybmZ+TwbogfmOWHEL3KVv+n
         1gRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717577175; x=1718181975;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cghILI8ZJPm9SL1zceBvs6FK9GtRFOI4Hps8zLPbyaI=;
        b=awPCu+V4SyXyPHiRbD77qKIAy5728t0pEa1hNVYQwlwBwG2LRt8CS/WtC9rn99d409
         MdfSAjGuk/318qr8UHAD3foM4Qx06VCCQgDcAangLzwSJqvxi9T2XOHHakOiw5fFSCeC
         FIigEJbtahoedw78lqqDh+sjekP9gt5xv4g+r49OjhRysv6fgiSND7HaUoxIMJ401hYS
         oNshVg1BAf5wXcxes5SpMGc37jFJMdCv57eT+RcHPOBacWyLKuSE3aA9icXQwB3qV4wb
         sXM1KuNyLfX3+0aWBwoQK95EO2Rnmr/9Kydc0lKke/OIQ4vv6gp3hsWmKVjSdBTadlCa
         Ogvg==
X-Forwarded-Encrypted: i=1; AJvYcCUHFlYmsZ1Q2ndNyM0zYGXjh6GloZM8XZdhHDYtDqZO6GYn0kU9g8Lwzh4oIREnKOvf3r0361KrTcU8kTU4Mgb3oJXjMZ2cwkORGA==
X-Gm-Message-State: AOJu0YxEZHJWBWeRgshbCDDvOt2rocmIsXpirwk8ptTpjgdVl/Updls8
	4+LBEeHKlaSP0XvxeLcsH6wbLwgLIP+IHmeqjHcKCda/WsK/gR+Rv3TLuHzQYp8=
X-Google-Smtp-Source: AGHT+IFY5ACIs0f3ebBqrJnsM1HHTH2Jm8Tl0u6MGK+JdFZj5Lc+Q99ZElmnnfOqiOiP8idM0ErvwQ==
X-Received: by 2002:adf:e7c1:0:b0:354:f815:8b85 with SMTP id ffacd0b85a97d-35e8ef94374mr1276637f8f.67.1717577174518;
        Wed, 05 Jun 2024 01:46:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd? ([2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd062edbcsm13787599f8f.84.2024.06.05.01.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 01:46:14 -0700 (PDT)
Message-ID: <c66846c6-d5d6-4d4d-98d4-ffb907521c09@linaro.org>
Date: Wed, 5 Jun 2024 10:46:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: meson: add GXLX/S905L/p271 support
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240604084134.3315841-1-christianshewitt@gmail.com>
 <20240604084134.3315841-2-christianshewitt@gmail.com>
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
In-Reply-To: <20240604084134.3315841-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2024 10:41, Christian Hewitt wrote:
> Add a device-tree for the GXLX Amlogic P271 (S905L) reference design
> board. This is a low-cost design similar to P281 (S905W) but with
> silicon differences to omit VP9 and use Mali 450-MP2 (not MP3). The
> SoC is marked with S905L and "2" (believed to denote MP2) resulting
> in chip distributor stock lists and Android STB marketing sometimes
> describing it as an S905L2 chip.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> NOTE: This patch depends upon the following submitted patches for
> VDEC [0] and SARADC [1] support:
> 
> [0] https://patchwork.kernel.org/project/linux-amlogic/list/?series=858514
> [1] https://patchwork.kernel.org/project/linux-amlogic/list/?series=858525
> 
> CHECK_DTBS generates some warnings for pre-existing issues inherited
> from common dtsi files. The patch does not add any new issues.
> 
>   arch/arm64/boot/dts/amlogic/Makefile          |  1 +
>   .../dts/amlogic/meson-gxlx-s905l-p271.dts     | 51 +++++++++++++++++++
>   2 files changed, 52 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 0f29517da5ec..0746e01b5853 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -62,6 +62,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-libretech-cc-v2.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-libretech-cc.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-nexbox-a95x.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-p212.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxlx-s905l-p271.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-gt1-ultimate.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-khadas-vim2.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-mecool-kiii-pro.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts b/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
> new file mode 100644
> index 000000000000..1221f4545130
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Christian Hewitt <christianshewitt@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-gxl-s905x.dtsi"
> +#include "meson-gx-p23x-q20x.dtsi"
> +
> +/ {
> +	compatible = "amlogic,p271", "amlogic,s905l", "amlogic,meson-gxlx";
> +	model = "Amlogic Meson GXLX (S905L) P271 Development Board";
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x0 0x0 0x40000000>;
> +	};
> +
> +	sound {
> +		model = "P271";
> +	};
> +};
> +
> +&apb {
> +	mali: gpu@c0000 {
> +		/* Mali 450-MP2 */
> +		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "gp", "gpmmu", "pp", "pmu",
> +			"pp0", "ppmmu0", "pp1", "ppmmu1";
> +	};
> +};
> +
> +&saradc {
> +	compatible = "amlogic,meson-gxlx-saradc", "amlogic,meson-saradc";
> +};
> +
> +&usb {
> +	dr_mode = "host";
> +};
> +
> +&vdec {
> +	compatible = "amlogic,gxlx-vdec", "amlogic,gx-vdec";
> +};

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

