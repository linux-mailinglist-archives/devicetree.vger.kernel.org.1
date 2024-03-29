Return-Path: <devicetree+bounces-54509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 714B08915C1
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 10:26:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C737287357
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 09:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7ED446D4;
	Fri, 29 Mar 2024 09:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BURO8ZOR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9AF240867
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 09:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711704356; cv=none; b=nsP3HgzbsVbKYEb3i44JIpUkjCGXq3xD2QT1VUMRMDCjOL2oJoGuSo2Atn+8sCfmVR8LNBmiHIO4yjjs1NSkWrNZGMb5baoQDNRCwQQm5+c8gPeILCrf+yZzFO6r9kXaTKFc8Vs/8IV0Wo1rcILJAiuxzFuLY56jO72sIOaRXMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711704356; c=relaxed/simple;
	bh=MF1Ku/gLWWSReWgKcH2HCIF0NvNzfqUrCw4PYMelJgA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=iWSG7j6MkT20aHrI/InQN1R3Mwbvufx9TDajqDpbL0+Vd+vlgJZuA+Bf+/7x+AZse7BPZcbj11Z/e9+ZgNpayHI+nC3kAJ2Jg+Npz7XfmmH8/piCe7vTZYTl2fgt1UZUOIQlPbpA1ufsF2yZrudQbvnfAYaWjX9Zc1SzuBa7MFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BURO8ZOR; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-34339f01cd2so317357f8f.2
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 02:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711704353; x=1712309153; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZbqAjvcUfXjEMKsMx6DWt6hGRbZ/4fw+xrXlGf6rT+k=;
        b=BURO8ZORorh4e+9lhJ45tBmmkjHTQHMtg44jySVxHtSpmIzigT48qOo6+IEEOxVMgu
         qJqVh1vuMBRc+s+cfTjpAxTisg1r/uiE8i9NO01ezl+0lv4+PtjlKPkHbpc+sLYPEHs+
         TfYLZXAtNMsC/yoKtpCnJwqcPATaqy7S8N8rzyTqs8qe/JkM6voyxus7AkkFKggRrBft
         dQ1DG/5WS1My1NMHwWkOg5kuUYJldM7Q4c8Ll7uziaEfO1c3g5PmJxof0oHR3thpy1eX
         FhR4eM2JZmyirRW23+wru/roHC3D2X+PKWRd6uNRZmhu+w+/u7L/ej06eCR36APD6SNZ
         ofpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711704353; x=1712309153;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZbqAjvcUfXjEMKsMx6DWt6hGRbZ/4fw+xrXlGf6rT+k=;
        b=sgCZWfbWTeNICDlfS4sFRusZsNhyM3nS7tfhfnfyW/dyu7ijFaHD1eadbGLBhq+/dY
         tKayNihvNawRpp9AhbzUMTVsjMeD82b0thsk2w9800ZBu53lxgotT9prqikun9Tj5eDS
         fK2VO63JfF8Vm4mdnROzvDEiF586207RDLDHlYlpZ/tEJU6AIvry6QGlnBYBrG3AktGE
         W2KzhNYYDDtPguvpgAFBsSbu19PP31Owc6gZwAiamp3HXi65r46pj72ItiHKr2gIQeuQ
         A2iXTr5KFNlgON0LPyho7wwu8N/HK8eIIgUy7+OUj3bvH17y4Q/0N7lM28AlAEqGAedF
         nUow==
X-Gm-Message-State: AOJu0Yyy03e8f0dA3VZdhlE5HN60Hcx3GY8PqeZIyCjlqiNjcfime0iR
	65iViR4YRDn3WOnKFa2LUMXLn7fHg1DWmBLZ1aTmDRyyUODEnX0Vu75FLp4U/vs=
X-Google-Smtp-Source: AGHT+IH50re5PV/7C69XBqtrNUv+0lTseoO19JlUo4rrIVUwOSr28cjIJZSndIqjgSoPac8lxMlu5g==
X-Received: by 2002:a05:6000:1b04:b0:341:a802:3d25 with SMTP id f4-20020a0560001b0400b00341a8023d25mr840814wrz.53.1711704352929;
        Fri, 29 Mar 2024 02:25:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:3cd8:c97b:1468:c232? ([2a01:e0a:982:cbb0:3cd8:c97b:1468:c232])
        by smtp.gmail.com with ESMTPSA id bk5-20020a0560001d8500b003418364032asm3779716wrb.112.2024.03.29.02.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Mar 2024 02:25:52 -0700 (PDT)
Message-ID: <ab23d0fe-7c94-4170-9776-2d7696a02665@linaro.org>
Date: Fri, 29 Mar 2024 10:25:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: amlogic: add reset controller for Amlogic
 T7 SoC
To: kelvin.zhang@amlogic.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zelong Dong <zelong.dong@amlogic.com>
References: <20240329-t7-reset-v1-0-4c6e2e68359e@amlogic.com>
 <20240329-t7-reset-v1-3-4c6e2e68359e@amlogic.com>
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
In-Reply-To: <20240329-t7-reset-v1-3-4c6e2e68359e@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/03/2024 10:17, Kelvin Zhang via B4 Relay wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> Add the reset controller device of Amlogic T7 SoC family
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> index 5248bdf824ea..e94bb85b5292 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -5,6 +5,7 @@
>   
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>   #include <dt-bindings/power/amlogic,t7-pwrc.h>
> +#include <dt-bindings/reset/amlogic,t7-reset.h>
>   
>   / {
>   	interrupt-parent = <&gic>;
> @@ -149,6 +150,12 @@ apb4: bus@fe000000 {
>   			#size-cells = <2>;
>   			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
>   
> +			reset: reset-controller@2000 {
> +				compatible = "amlogic,t7-reset";
> +				reg = <0x0 0x2000 0x0 0x98>;
> +				#reset-cells = <1>;
> +			};
> +
>   			watchdog@2100 {
>   				compatible = "amlogic,t7-wdt";
>   				reg = <0x0 0x2100 0x0 0x10>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

