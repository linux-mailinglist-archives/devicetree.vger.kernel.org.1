Return-Path: <devicetree+bounces-141685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E06A21F64
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 15:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F112118844D8
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 14:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB8361ACED2;
	Wed, 29 Jan 2025 14:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kE0adAY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD28142049
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 14:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738161678; cv=none; b=QekwOxmAg9OWjCfmgggecahC9RV63M9LkHQQ9xxrQPKnP7VlWM6iagZi+ee8wqmV2PvMx74EKOqfOur4ZQp4smL3Fq9oNpjK75arcvnM9zoi9iy4CWZcXPGykQ+jDuTYnxz1glFal+fa3SQUNxj0BlAvRky0pkGMcLngjNt+H4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738161678; c=relaxed/simple;
	bh=FjXyGoFUV4R/Y94du8xtEych+ASHAXdSvB4cI3rLh5Y=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZOG7MancXqfL6YYIvOtYSDoiFd3ugiPaCxEsOaM71ghcjoOBt4xNNpFp+ONuEFj4+3974eyFH6MzffdHZJH1KQ5lRAAIfU//0poI6C7d52HEdr5yrZl8T58amPElIjwuVrlKO6cBa68401iKFW2qX5/sD5xWXJUPoP+XP5D/8cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kE0adAY1; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso4153000f8f.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 06:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738161675; x=1738766475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RoeEIF77ttq3kBMIlHYh3lkn3U1Jyxg1H+SDwLfMBFw=;
        b=kE0adAY1l60SYZLIbdRreSMLR2w0GqsXQNwCAWjHpORq5fqZny7sCXbc6E9kzqW1HQ
         F4gT9fYsbwMJeFz2jYBfeTRIeLbIKOs3xJkQ/KWYqvojuj0WzaL1SxmMNRr00bfjFySf
         BrXd0k4JxTX6mIkQv3qC/pUe0TqWSQQnMyLSxW+/xbdVAmuOHrHws8ObT3JCaCWHJvVw
         y9hpAuDJSUPD4bP2GaPVKO1humHrpOHDXA/5lGbHbpfR1P0QWjkFDCA1Sdl8+CbAFCfI
         hPDB9PDpD8lrAK6K8haTpAgwZ4WvLH9XiDLZREUnuwCE0Ddqee38JfpPyH9ooPifhTdE
         AtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738161675; x=1738766475;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RoeEIF77ttq3kBMIlHYh3lkn3U1Jyxg1H+SDwLfMBFw=;
        b=LB6v/SxRCHGv9XHHKz3dwU3BBWcqpTcjaOsVRsDMGKeomO5FIWAqo0FOvK997mqVSb
         YidByKeudKANE2Q34lKezp4ZaQsTMqgb5aA7LhznQDwROwWUjLGIj+p+wYqCw5+AlDkY
         PcXPnXG4/Q4BIH52AKWi+Pvv1T2279GRucp9QBUzkYyGu4/1iZuy+9hhKuYFxN3vDOBc
         S2Z7mHUGSzLVA2Bsexkx3SYkcs51tuRsO+u8idAZe87Ux0wPAnRS+A0xVS/ADoFsFc3y
         GFnwBCG4ODD/pVEKYLz52jOzgLV7j4dtS3LpAnTt55Vw95GMwfHX1KMGccyx8EoZ/5MF
         8zsA==
X-Forwarded-Encrypted: i=1; AJvYcCU6Dx5MYGyGxaVzgTOc27NSjx95cMw3FuE75ORBvIyQh0q7MVB4nIanFphN9aAzDTyx4l+LOYeqqvxc@vger.kernel.org
X-Gm-Message-State: AOJu0YyBsYAUnDa9pfUUWN9WzskU8FIEfdVpWROwUWc1Cq567VE+VG3a
	zo9hAWAMH9+OjjtGVR8VF9fhNG6svT6kP1++jorQG1xN+bn6eXnNZbCFEchdCCc=
X-Gm-Gg: ASbGncu7WUsdovcnh7I7EqBkP9xAL2XActCmRCwq+vhH903xPb/0Ihywbc0CQkn77Ix
	nPYsvtYa6YJbP4FFsLL8Tk52XUbHCnvh7hmG9JgrCo9sIxBtu9AewotY9jy1PBTc1ieQN6j1AP4
	9qJs/hb032JggkXT3HjhLm2y7UnjeNrwlyJOb2KrV5VEZ8FugeX27FENRC6RXcLfEJmTTudoFN9
	7V5ERPzouPbLxGbD+6iCt+TlgB9WXqFm/n6KfNxGV0fVSh8jY6dQh9870xffFeZiYWxWochIgMj
	KRBWt9fihzNi2Dj9rrxJQfZ/OD8j3w1iTfAnfiYOdP1CL6p2puie30qjNu+BEDk0vx3P
X-Google-Smtp-Source: AGHT+IEIf4gjvAlYyFtDcRPw0SxRksBzmoDfphf5TK95c+F/skoeF3k2jBLOA/p2MLGIgfPeoC+5TA==
X-Received: by 2002:a5d:4fc7:0:b0:38a:88ac:ec9d with SMTP id ffacd0b85a97d-38c51b5e4famr2372138f8f.30.1738161674841;
        Wed, 29 Jan 2025 06:41:14 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:b25e:a614:863b:566e? ([2a01:e0a:982:cbb0:b25e:a614:863b:566e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d5easm16992563f8f.25.2025.01.29.06.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 06:41:14 -0800 (PST)
Message-ID: <3db4b41c-0d29-468a-875b-eec3cced5aa5@linaro.org>
Date: Wed, 29 Jan 2025 15:41:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
 <20250129-topic-sm8650-thermal-cpu-idle-v3-2-62ab1a64098d@linaro.org>
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
In-Reply-To: <20250129-topic-sm8650-thermal-cpu-idle-v3-2-62ab1a64098d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/01/2025 10:43, Neil Armstrong wrote:
> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
> is done from the HLOS, but the GPU can achieve a much higher temperature
> before failing according the the reference downstream implementation.
> 
> Set higher temperatures in the GPU trip points corresponding to
> the temperatures provided by Qualcomm in the dowstream source, much
> closer to the junction temperature and with a higher critical
> temperature trip in the case the HLOS DCVS cannot handle the
> temperature surge.

Since the tsens MAX_THRESHOLD which leads to a system
monitor thermal shutdown is set at 120C, I need to lower
the critical and hot trip point, so please ignore this patchset.

Thanks,
Neil

> 
> Fixes: 497624ed5506 ("arm64: dts: qcom: sm8650: Throttle the GPU when overheating")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 48 ++++++++++++++++++------------------
>   1 file changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 95509ce2713d4fcc3dbe0c5cd5827312d5681af4..e9fcf05cb084b7979ecf0f4712fed332e9f4b07a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -6173,19 +6173,19 @@ map0 {
>   
>   			trips {
>   				gpu0_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6206,19 +6206,19 @@ map0 {
>   
>   			trips {
>   				gpu1_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6239,19 +6239,19 @@ map0 {
>   
>   			trips {
>   				gpu2_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6272,19 +6272,19 @@ map0 {
>   
>   			trips {
>   				gpu3_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6305,19 +6305,19 @@ map0 {
>   
>   			trips {
>   				gpu4_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6338,19 +6338,19 @@ map0 {
>   
>   			trips {
>   				gpu5_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6371,19 +6371,19 @@ map0 {
>   
>   			trips {
>   				gpu6_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> @@ -6404,19 +6404,19 @@ map0 {
>   
>   			trips {
>   				gpu7_alert0: trip-point0 {
> -					temperature = <85000>;
> +					temperature = <95000>;
>   					hysteresis = <1000>;
>   					type = "passive";
>   				};
>   
>   				trip-point1 {
> -					temperature = <90000>;
> +					temperature = <115000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   
>   				trip-point2 {
> -					temperature = <110000>;
> +					temperature = <125000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
> 


