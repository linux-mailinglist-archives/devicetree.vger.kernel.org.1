Return-Path: <devicetree+bounces-177366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D2EAB71A9
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 18:39:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9463A163AE2
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 16:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A8927F165;
	Wed, 14 May 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sW83iroB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909B27EC78
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 16:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747240733; cv=none; b=j5dQNubMqinKfVvY7YrBZ85jbhPAxuiw/lsPHjXe3pg4P2UOLBoYcGRNDymAuMarV7sH7KK/HM0vjCgDyycAiudwlsBUSdd0af8xxtPg5KPHR+9o1nqtapXCTgZQss6ZeuSg14qYDCL6Yl20vC6fzqatHTIraiPy+L25tm4jsbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747240733; c=relaxed/simple;
	bh=dXpnZ6HRybe9ZHnb0gl+9DoZpwf4gIs/LTIwEUxBnN8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=OEpvCpN6oWQIWRjJtwaHdrPJQFn6p8ZkTlQdBcBiTP5ChYhxuIOB+FiDSRI6qDij8RL2PfiZoNGC20cjOWKhQRLBAkrTaBMWEik8zO/LrmHpklm8b9A7Bg0KTL7fUrKDwubVTMwqe6cH3e4QmpXlD7R8VubznXkYpTC2twNbOLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sW83iroB; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so163105e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747240728; x=1747845528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dP5YcbeqpFYvCKe+8FnH1GIVDVz3AECYHXjeJJujU4=;
        b=sW83iroBO8TwjntS6U4g1IxbESl/D/U+yIzc7tCwt/esnNt5gAshkN4sFQESAg/lot
         b9LpVGGKMH3QYIel09Vb1W//cERBSDvzgxe3oz/u2+AS9uFY8Ydz7mMn2RWYEIPWLobp
         SeeKj2+MEREODg/0EeAiCDyGrdCvJW7zItqnLXlukzgBZunGCUsFGL8psYiacwcfawz9
         3T/efd6oE2Ay3or+cBzYyyuGMucbHxLgG1yuSejODhj5rtUTMkT9ojS6EjwLRkM7pZ1M
         xPnTAeVKjRqpZ3R4+dyyhBhkCrHF/WrwaPo14lYpD3qIkEgiDP9N/4Fq9iBGzZBMBiwa
         KS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747240728; x=1747845528;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+dP5YcbeqpFYvCKe+8FnH1GIVDVz3AECYHXjeJJujU4=;
        b=ngk9rAbHHhXfoab8aM6DVBQhaY8GOljN8359zqNySBF6hXvQ/Vx8AA/5q1lgAoMBBW
         5qBTORutN3lbmH26tlOWxuD33/0ZvhdD5LQ2n1sDYK4HjZff/UKHm8u2taElPxv810OH
         KwKj3BatpQEJJrQBfUb8iSXi3DYol+WakeMAYUra6IKdO3whnLSaaWEPp9DkLVqqeJsV
         YeADOJUerum4GAcNAvpvNvdpBc4fruZCtI6av7TsfcZLwSr4UAAJnWoZWPe9l8qjOwvt
         ZxMOVsfQOeZJ+HjCszvmOsqC+tOgGE1/ZFkBiGhQLesEEDrcN0mHGK/4wiS604OfTkK1
         QpPw==
X-Forwarded-Encrypted: i=1; AJvYcCVDlOKqMhjRTZ850Tq2VbE5z7xLad+kLfuBIR4Pg64UjChwKRovf/eTD+4AtsxY/BcCdsJxjRcqY+DR@vger.kernel.org
X-Gm-Message-State: AOJu0YxLlIZH4w6HwgKh1AxgVdi4P6TSgecQPuLjtvUsNKzq+k/bux0S
	/b0wH+2ElxfzOFyHmEuEodmG6a0EL5ol/AeOqaxUiFF39u4TmNfKjsvGmPtcrGw=
X-Gm-Gg: ASbGnctauxXminiflN6vyZih9VYuEiiUJtxQKPDKNfwwessFWz8Pm8LgpGR120l7TUW
	6HDU6SE18lwQ/UXhtF9hZHb19Mlz0CHvu8pWArfCaVUsND4YrGlLAvooKVRy0MRw55Ni+8Qp+SH
	XRcfs6D/C+IXqXOtspP6yOdYwcPk32fAeX6fi8aC9vKxgQi9mV7zY4moB9LAhCc8iiJZ3tmC8Zl
	rhtkuoND5Rk56ynQYo/ISSoX07J/aRuKG+kvatkYWIVqD82wHZq6IdMHu4pshLYnv8oBt7Tc7K2
	g6kSF+5k0SHrrExp0pRkfkjK2dKN8aOv/V5lYafQB0bBF8tWDqm3OVmynrzXDdrO4vEiKoZyw5P
	lzPDwgHQT6ejY
X-Google-Smtp-Source: AGHT+IEAkwKKEEQ70f0VyhVcMUc6RQxJdEmZDC90di0ICcfqr62LT/lvi+L8lcGRQvc66pK/aI2j2Q==
X-Received: by 2002:a05:600c:1385:b0:43d:b32:40aa with SMTP id 5b1f17b1804b1-442f20baa06mr44937335e9.3.1747240728450;
        Wed, 14 May 2025 09:38:48 -0700 (PDT)
Received: from [10.61.1.139] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c76dsm20425558f8f.92.2025.05.14.09.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 09:38:48 -0700 (PDT)
Message-ID: <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
Date: Wed, 14 May 2025 18:38:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
 quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
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
In-Reply-To: <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2025 13:37, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> The maximum link speed was previously restricted to Gen3 due to the
> absence of Gen4 equalization support in the driver.
> 
> Add change to remove max link speed property, Since Gen4 equalization
> support has already been added into the driver.

Which driver, PHY or Controller ? does this change depends on the patch 1 PHY settings update ?

> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
>   		power-domains = <&gcc PCIE_0_GDSC>;
>   		phys = <&pcie0_phy>;
>   		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
>   		num-lanes = <2>;
>   		linux,pci-domain = <0>;
>   
> @@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
>   		power-domains = <&gcc PCIE_1_GDSC>;
>   		phys = <&pcie1_phy>;
>   		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
>   		num-lanes = <4>;
>   		linux,pci-domain = <1>;
>   
> 


