Return-Path: <devicetree+bounces-188384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1107EAE3AA5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A01E93A7505
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 09:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5F7A23BD0C;
	Mon, 23 Jun 2025 09:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cBPXhvo2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6E42BB13
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 09:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750671112; cv=none; b=PowloJBbHJOe+KL3Ku7juruaHTfB3u0lApgmFv9lZsu2fidBG23JyJiix0mHBnGmhJOTSVUSLDjFcWG0H2VKGhjAgiKG2JeAKZ+d04sCs26AUwQCqDfQeJOlzFbHyAoyYz6/iMTLaFehSrzqa/exqZbw0eWrF9zLfmuhbE95Ay4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750671112; c=relaxed/simple;
	bh=jBkECa9RVZ+l2pdBEqTlTVtcmeZGky2J0XHjAXvpFIQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JRmAzs70j5iFulMrZYf1zeisnW4DqpJbtf9KifZBrMZvEzsdhsQ0xejGvjN7VmEsBy5z7pxmOGWuPRuB+OoBCcqbs3EFcI1BFt+uEAQegzc3iBim8qGGiBjLpmShPNkTHQeqdhy39wVhF7BjqYZvHYtnBNF4lZve6A//uQzKzy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cBPXhvo2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4535fbe0299so20068455e9.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 02:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750671109; x=1751275909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hwwKos7qPkEDfzDF1aNvUABLMH1ha0PD0/gSjYFHfWE=;
        b=cBPXhvo29QL1+cIKDBDHoKHuU9N7p2XScHs48MVpCtXL9kq5i34avUKPjN1Nm2txg5
         6nOvkrY5OxLji3PkFDrRv4Bt28gmEGWuyqkwn/Aalwdm2NKOfLf1zwyyDL0ee/dfGaNH
         2ZafJE4Yc5WYQZ1LHOpyzwf51WFcez62H2+Mh+LUgVAOnM8OTwD848NQ9kj0ZLqP1YmB
         TePDXZgV2EDPvBiGEM5JttPBw2U6Hbog02WealCTnUlOVBaiJ24y3Ljas6vTtL1QasmA
         OafQj0/G2v0d/B679LcwvKlCjWsQtbyPCyLnmgnR64ZhS8q+voXJU/a3hBKl8vQVyyti
         TTfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750671109; x=1751275909;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hwwKos7qPkEDfzDF1aNvUABLMH1ha0PD0/gSjYFHfWE=;
        b=ijq+NxCLj441jPPW1aN+OOIzgFq6a89uvp9rp4cpZwrVdhwafHGaM821CoD+Ho9zE8
         zDzvy4K0jbQa6yiKcetF1PHG5jIYXlowsBLw2Od2SbYvgNmtO7XXF4s865x4J6FhVqnb
         HbrHuyhWh+kncQyu5R3jtKjBEitlDoctRMzVzf1oPP3DEoB+SVe++Nd0hlwd4IX1B3hM
         GRXAz8xh8gChNugrOAhYJIOiRhwwHfL4ZEShnk7Q0B93sHl1Y0tS3etHQlac1vEj+lX9
         dY8mOkjVSTHSwEHcGrLaqxEKcrH29q7yw6AjGzbwBWny1wtQTw/a/oEJi6UWRYMKv6cn
         qGoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXixMXFlJ4FkQoV4sv+lJLhfGtHC99R4+qfwa53YjnnwpMfd1o4ZlmH/D/2MU84zwoyNdB5EehExRIe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg7jPQA7Sk2dwZbpUV+RcjYN8mAnLFQZzISPAoIibaeiMGpnVd
	d18/5jO7dZDwZYFv36pdM3AbkrHSbYYldDaLgjlqREl009+S5SUNHaj7ps9J+LFTbKg=
X-Gm-Gg: ASbGncuv/b9/hPX8dCzXqvP5k3MY0BafZPJjENSLierV80i5NxHbyRiX4j8QupT3LnK
	+d/1D+Ozf4JBfKHCSWVjo/6cZYrGOunVxHw6Qb7lb2+mjP2MydbF6XNQALzkuFmlwIsbrhgeAFz
	DXOGXrzP0EFlaw5lC4OdM/BLn4fP1e9/CHvlPxJWcfjwbmn+oWW7u7DR8PvdWUr+AeKSsd1gOqt
	8MhsRRvC7bLFIW9iLQxZ2XVkpYxhyLi/lMeNGfABSBlA1eHiYAWHSRIAqX6MzCsw46wQYIfzarV
	Ms/L3HMn7bOVedwTrLOKgHUKuqUw/14gRHIhF1fSrhNLJ1wKZLYnEUTOh0I+k6PtC/FuylpnJZ2
	RgsUMqcIF+jkI+JbXWUKx04FQpR3OvdP0oVCaGRqLRXw9h7mQYg==
X-Google-Smtp-Source: AGHT+IFBqwtFTrV2RJJWLnfSwBkn+cHmN5bYqxTgZf0F7hFiKkS8UhH3g7wssfa8DtWBEnCbVdLBZg==
X-Received: by 2002:a05:600c:1caa:b0:442:f4a3:9388 with SMTP id 5b1f17b1804b1-453659ec1cemr95163195e9.19.1750671109073;
        Mon, 23 Jun 2025 02:31:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:8c08:7c51:bbb1:5a2d? ([2a01:e0a:3d9:2080:8c08:7c51:bbb1:5a2d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4536466596asm108289945e9.0.2025.06.23.02.31.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 02:31:48 -0700 (PDT)
Message-ID: <bed8c29c-1365-4005-aac7-1635a28295bf@linaro.org>
Date: Mon, 23 Jun 2025 11:31:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 09/10] [RFT] arm64: dts: qcom: sm8250: extend CAMSS with
 new CSIPHY subdevices
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-10-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20250612011531.2923701-10-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
> Following the new device tree bindings for CAMSS IPs introduce csiphy2
> device tree node under SM8250 CAMSS, which allows to perform camera
> tests of the model on an RB5 board with an attached vision mezzanine.
> 
> Note that the optional 'phys' property is deliberately not added.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> For testing only, do not merge.
> 
>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index f0d18fd37aaf..401a32679580 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -4613,6 +4613,10 @@ camss: camss@ac6a000 {
>   					     "cam_sf_0_mnoc",
>   					     "cam_sf_icp_mnoc";
>   
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
>   			ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
> @@ -4641,6 +4645,16 @@ port@5 {
>   					reg = <5>;
>   				};
>   			};
> +
> +			csiphy2: phy@ac6e000 {
> +				compatible = "qcom,csiphy";
> +				reg = <0 0x0ac6e000 0 0x1000>;
> +				clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
> +					 <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
> +				clock-names = "csiphy", "csiphy_timer";
> +				interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
> +				#phy-cells = <0>;
> +			};

I would've expected the CSI PHY nodes to be out of the camss node, why would you
keep them as subnodes since you would reference them via phys phandles ?

Neil

>   		};
>   
>   		camcc: clock-controller@ad00000 {


