Return-Path: <devicetree+bounces-80766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C06791A5E7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:58:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0A271F2657F
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 654D615B57C;
	Thu, 27 Jun 2024 11:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ra6Se469"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C2115B0FA
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489372; cv=none; b=fK5stkGK/6RELkeVoC4RKv3LZqZWMbuXBgG41u0RNpbbyycCeXdGvHcOvJGNgXrS0wel7qt01T6hS8IuK+xxvJ0C4n4Y09YNH6GOJgSCwi+VuqH2tWG+RuiTIApwbMBr58w4yBBZlriwnJylwpf2BSbB5EFMA4x2rFXjoGszCMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489372; c=relaxed/simple;
	bh=g0Wl4h61ssXTDQDWpBbnWoZg465Iv6edu55cBmBWFbQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JMImgwYyhifFmUI4qWzxY3gbSORSxOhoifgyT8WFiOQiyq0z46c/Ec+0iECDtWLADDdfKno1ggM40cBxNXTNaZqqz7/DO6KuGFzDIYC6m9ZaljPk06PdVMUMFseN8l+6ZmEThxJQLywpLJKW8xGBrrnqgP45dq2tpy2ccsFjMQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ra6Se469; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so86645831fa.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719489369; x=1720094169; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C8v4bFj4iSA3BftmxjwpQi84YY85RY3VBaxhTtWxmhU=;
        b=ra6Se469OwI8kcC+Exg2O/gSK7ZnQWlio+EfLbAbooOhARKvM8tM6W9QWiqtUoCcA5
         rBZXMCiT4pneUzf97TD+Bvxf3x9H10ODcLRWtrNvVMsiB1z0q+0YXx2xHRvhb4tZeNd0
         mGGhE5FGnQJ16QXiDIdgZCxaRET5X82Pe3juRZUYbFO3EuxjSW19pdir3onaVQmvsbRk
         wFqiK4G3gONAYaiy6f0LB1d5M26E1PRrp9oqp3oWQ1VRFcrCJ5ItHclYe1k10UcRNLID
         XdJK0z639jUzkllY88y+SUKokCHMSHGwZoCnu2OT0qa6FtrDqNIf5x2m5+XMlm6E067+
         mXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489369; x=1720094169;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C8v4bFj4iSA3BftmxjwpQi84YY85RY3VBaxhTtWxmhU=;
        b=T1d4q3v2x/biAy/oxVa5xSerTyixvksyR2dAzi7pbJ0NlEcR9dqfrgInIkTG+P4piP
         7DbjNwh485NYP7D7iGug6e/FOSAwqklf4tlVx2E/J0JIIh7ZtXsqbIo08+c/v8pH6KDE
         0CAE3VLAkuknR4/PUIByojeCEdHy4snCoZc/gg+CWeaKyGqWvao1mIpslVU6lTqQksBq
         ggUH1ukuT5S2nZTvSzQzH0NLZtdDM9WlL4+j0+hSq3rCUldMHy1BEaJQbdeRPjaobwNF
         ZBAZ6wMGR+eUC6KV3ZMWxyYQzoCaB4qI72hUVeuYk1ph5HxrkFEmVI01PyhR1Y06JzOQ
         Kq0g==
X-Gm-Message-State: AOJu0YymDwMHpCESvGd8OpWAiDBlph7u5wkr3FABla5v/r4dQ8vByN6m
	mM6i6R1UpBqRS/7HOoILMw1aBiMWpydrCEKKkX82gN45K3d9OyIhlQZH4KTF6x0=
X-Google-Smtp-Source: AGHT+IFLPN71sNJnEggE9GCOJ4P9kwk9N//Zz17QnhrpPaDxo5LCeYSPuflBgcBS1lV/RkJD+is4Lg==
X-Received: by 2002:a2e:8297:0:b0:2ec:174b:75bb with SMTP id 38308e7fff4ca-2ec5b38ad36mr76951971fa.28.1719489368486;
        Thu, 27 Jun 2024 04:56:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:feeb:faed:66fa:9e6a? ([2a01:e0a:982:cbb0:feeb:faed:66fa:9e6a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c846a8f0sm63980045e9.42.2024.06.27.04.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 04:56:08 -0700 (PDT)
Message-ID: <cb900231-65d6-404c-8895-e1ee548aef4b@linaro.org>
Date: Thu, 27 Jun 2024 13:56:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: amlogic: a5: add power domain controller
 node
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Hongyu Chen <hongyu.chen1@amlogic.com>
References: <20240627-a5_secpower-v1-0-1f47dde1270c@amlogic.com>
 <20240627-a5_secpower-v1-3-1f47dde1270c@amlogic.com>
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
In-Reply-To: <20240627-a5_secpower-v1-3-1f47dde1270c@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/06/2024 13:47, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add power domain controller node for Amlogic A5 SoC.
> 
> Signed-off-by: Hongyu Chen <hongyu.chen1@amlogic.com>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi
> index 43f68a7da2f7..17a6316de891 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi
> @@ -4,6 +4,7 @@
>    */
>   
>   #include "amlogic-a4-common.dtsi"
> +#include <dt-bindings/power/amlogic,a5-pwrc.h>
>   / {
>   	cpus {
>   		#address-cells = <2>;
> @@ -37,4 +38,13 @@ cpu3: cpu@300 {
>   			enable-method = "psci";
>   		};
>   	};
> +
> +	sm: secure-monitor {
> +		compatible = "amlogic,meson-gxbb-sm";
> +
> +		pwrc: power-controller {
> +			compatible = "amlogic,a5-pwrc";
> +			#power-domain-cells = <1>;
> +		};
> +	};
>   };
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

