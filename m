Return-Path: <devicetree+bounces-203112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C872B200C6
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:51:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 968593A8573
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7452135C5;
	Mon, 11 Aug 2025 07:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j+7gqpAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6291F428C
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754898640; cv=none; b=rhWCdqi6kOLzVgTtpOoSuOCh7cXkPR8/9YGO9ThgejOwcY8g079paFu6b7XU62Tu3bLSPR1Bfc2MsCUb0PH43bn3mY4meNosFdV0+kEjUVNeIYY0uoBf6qdxiMbFrD3D5mlbCzfR331/V1FDG8cCixizFitaGs+Y68Y0OhkwAlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754898640; c=relaxed/simple;
	bh=he5Ch1XupGR8AHoR7p5gnlMAFx+EZtRc2z2UYWJC5js=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=VjLcz7G1ERACyj6XsrqJc4saANtA1HDqVqpcW9sjKF8L5QdrrZv8RAfWqgq2xbyyvCuwZxJSrS8AlhdHJYXK+SRAeGMVldmHlBZf8dDMb5ZdNgYrzMFLhK64xC7+Z59+YP2kVCeUs39GVi+l4PDAWHQ8U8ILWZ0T0vXGyXkNUvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j+7gqpAW; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b90ab438edso763029f8f.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 00:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754898637; x=1755503437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=30AZFCe2shBXe+j7aE6yaDtvEpZeVPQgMPYSK8q/tP8=;
        b=j+7gqpAWELh8xbXcLxrfvny6xFbhZkU0CCgq7moaeeIKNaUXcuGjrNqpKmmASrH3g6
         ZaDnqj3Kd4tvx0wLprnAAiPt1LRcZKiW0ZfzIbbWIK3JjoUogtkVqAYWxr8GVqh3Qlde
         bx2FMS0CL2kyvBg0mjhspFvOOx1oCMVLnoOgtjPC4fyIK0cLxuMHH51S1rYVJ2DPFZrz
         dzD4hgzzHQG3nabMEkV7CNYv+AfcNFUjm00hG9Yjg7gRnbwL8LYOak5br5j/T2xcJ8eK
         7R2L26e7yboLurRCwuNRfWxtNZDzyOUhdR0uYaGzCInPmTheOS+BnGRh/zVLY1u5KsSL
         L0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754898637; x=1755503437;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=30AZFCe2shBXe+j7aE6yaDtvEpZeVPQgMPYSK8q/tP8=;
        b=AFApRwrkAsObPkcdLf9dTYTNR8smPuBoh7Pq/hspgWg93stn4rIQ+biRgLgC6doGPO
         127Sk/6+NtnX+U6Zb960QRSPK9F6CvG2vlabRCHEF7etf9G/rvc1VciX+qO3X0ICv+xg
         syJl4qV4gS/Qi3fMFxolihcrxgKHfCIu6fNuPiTr7EpxPNHw8CZPlEMNmmyz11jnqVbP
         j59dHWnWHC49q6FMEe5vsiOHcfdSS3mWmjJ40vkOE97fRDhHTqf7mMuX7BggY0oogVJ6
         ZvMvYuQsTc3mIUfn8mgkvbLR0GOLEiIoTzl6VQ/lG8tcXCO6ercbx3jRUhWReV39p1uR
         8ZDg==
X-Forwarded-Encrypted: i=1; AJvYcCVxORhcyJU39bHnHy2L2TBVaMcZvLf4tfStZDezWU1LD4wTSOkdbdSe7zEmPB/9dZKjP122eEkUgPBL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxspv2/FlWQIZcsKtJsR/7USRfu0zQULvfpVpeA7eFNcjAlRv/o
	LE8HSJPUmRSsWu32v2q2DCvBtjeqh94Zgj9o9xOt+SSrUyx8Lo+QwrSHLKeBA2zo6WE=
X-Gm-Gg: ASbGncsqWCXufZ4225mR/IyMmNShfAC98wf75nDRMK978rTt5Q53tyXlaXwg/j6DcV4
	02wmfLGN8nNd1cpZG2+jGNBWnPzRVcyuOWW9nDe/guqXqrqkFIyAtGikWyLtJiWA6WYffsKe/oW
	n0IyvPmyj1sTY6wzIRF1tKxEg04jclHR2MTki8WwDPxiNZBkM9GQxXgG8Xv6Q+AuMKMXCfarXD0
	nEKrCDfw5bYcsy694loqLjRR+OKqZuNbuu/NVYIlgFjZfBbEj/tHT+FE7dUj9rTnBAx8Ry6eYsw
	LgIBxqa9BtPNPEoxSwjQrNCaigwANyUDxmWws4NqyJn9cCXN/K3SAoQcpHvjJmo42uzwHySFG8/
	PHp8IK2NtpeyYyzK8Iyh6J4lRniG8tUs0FWZqvppaC2hV7DxZw4SD/7xnURZamZAIWcYBYjWZMk
	Q=
X-Google-Smtp-Source: AGHT+IHagE4Q3TN8RmcEeXIXp4O5y91lmjQYB8Ioobb9YS1YUVs1HCiyWsf+FBuGDHsZpkFt031tag==
X-Received: by 2002:a05:6000:2dc9:b0:3b7:bedd:d268 with SMTP id ffacd0b85a97d-3b900b8bcc5mr9184769f8f.53.1754898637302;
        Mon, 11 Aug 2025 00:50:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b0fa:b045:4b82:de09? ([2a01:e0a:3d9:2080:b0fa:b045:4b82:de09])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e009e465sm31082080f8f.43.2025.08.11.00.50.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 00:50:36 -0700 (PDT)
Message-ID: <09f29ccb-a074-48c4-b017-9d9cf1bc1cb0@linaro.org>
Date: Mon, 11 Aug 2025 09:50:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sm8550: Add missing properties for
 cryptobam
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
 Anusha Rao <quic_anusha@quicinc.com>, Md Sadre Alam
 <quic_mdalam@quicinc.com>, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
 <20250212-bam-dma-fixes-v1-3-f560889e65d8@linaro.org>
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
In-Reply-To: <20250212-bam-dma-fixes-v1-3-f560889e65d8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2025 18:03, Stephan Gerhold wrote:
> num-channels and qcom,num-ees are required for BAM nodes without clock,
> because the driver cannot ensure the hardware is powered on when trying to
> obtain the information from the hardware registers. Specifying the node
> without these properties is unsafe and has caused early boot crashes for
> other SoCs before [1, 2].
> 
> Add the missing information from the hardware registers to ensure the
> driver can probe successfully without causing crashes.
> 
> [1]: https://lore.kernel.org/r/CY01EKQVWE36.B9X5TDXAREPF@fairphone.com/
> [2]: https://lore.kernel.org/r/20230626145959.646747-1-krzysztof.kozlowski@linaro.org/
> 
> Cc: stable@vger.kernel.org
> Fixes: 433477c3bf0b ("arm64: dts: qcom: sm8550: add QCrypto nodes")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index eac8de4005d82f246bc50f64f09515631d895c99..ac3e00ad417719be2885d76d3197f96137848337 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1957,6 +1957,8 @@ cryptobam: dma-controller@1dc4000 {
>   			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>   			#dma-cells = <1>;
>   			qcom,ee = <0>;
> +			qcom,num-ees = <4>;
> +			num-channels = <20>;
>   			qcom,controlled-remotely;
>   			iommus = <&apps_smmu 0x480 0x0>,
>   				 <&apps_smmu 0x481 0x0>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

