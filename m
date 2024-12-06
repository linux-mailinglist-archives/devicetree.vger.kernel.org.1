Return-Path: <devicetree+bounces-128042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A732A9E74B7
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:44:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34A10169C15
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1147120E330;
	Fri,  6 Dec 2024 15:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l7/GyszV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E3B20E304
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499784; cv=none; b=rSbCnwrhneAI1/hrmTb/0f6c27HjiGOTWwuRb5Weq4FRRpFRl+OygDXyVlcrJj2qMQMYAIhYboJEr5HKZQMiXBShZeDJ79ofXb4YxQ8OPVdukmkihwU32t574rIYTPtyFUel0dEeCJ0gKvM9x6l+n6S+qX8tSPM9Rk9Qs8uCggs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499784; c=relaxed/simple;
	bh=7NlftJRasVAObJvHPP/WpEJDi0l5ohe48qjEpQcP6cQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KVAtwuugshaw+K0lHs/pVzM5CdJMWPLvmfIpO49k+JWTJaTAqO0HbpY04B4DntztkM9xOgDlaIh17Oit0sNTHlSnE0/FDavhZX0d90g3yjPwg6SVEKAogQGT+iUT+3q8YmLX0DJCD21rsDLH1Hs8kIM6MbPGR1uk4j5jhICtUpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l7/GyszV; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-385ddcfc97bso1696329f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499779; x=1734104579; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYV5P1ZJISdq13OzkYXkbJislzC14sD62DMBLiJjapo=;
        b=l7/GyszVjYfJoX1m9thOuaUN3XtUjybYkz6vKxCuLsta+UI8kKkc91fjv/IzptdGzD
         Ingc2z0xAGIiOyz/ztB+Io52JsTNdhpUdq37Pqv/ZfmM6081fjMF+ABJ9hKa3oaqQqz+
         8rCImuO/FMgHTHVFfNjhuQiGZninF0kk5i+12U4apt9JQBDlKhDc67EXxLNTjLWz4xK+
         vid+LD09OwUZ7cG/2z7//XxafsbF9/ikjWs6imLOxlpH+2atLR9GX9UiXyiAMqFXI3m+
         Oc7UsxpdJvKKjAGDhLNz8132r6ye2oECguyRb60wEVE4c/wdgyOjapcQUhnnStEond6u
         XEcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499779; x=1734104579;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LYV5P1ZJISdq13OzkYXkbJislzC14sD62DMBLiJjapo=;
        b=Xley0RYbsO6Y3T6iQrIBD1ONUkbLjgydCDVwOH3/YJldupPHCnVjmFF0aBsDR+7PQ9
         ZPWLcCcLXUDfIUJtTJZ4aUtHc7tlqOdZ4qJgN08gt7Qw4aANsKJlEHLgHVBZUcKeyv51
         w2XK+irrEhRikNVsQHKuR1l1AYt2KYe5OnJjRYe8RRWmdyhw4WRVgzxyoeqlFT2oK/0/
         AiW+ST/N7CGBGrz/Dr7LmBmpWsU61p1irgemjK979c6Uc2HzNtp0QkocDDxWQDbaaFnY
         4OBMR9/79lGOqxmZwO+RGncwHUYTt8QfqeJMF6uae3ZX0+/rTyjfhc9eVyBc6NcuSBbH
         eISA==
X-Forwarded-Encrypted: i=1; AJvYcCXxELIqhPFVcgAzMQvthwmslDf7sTPybsFAMQCPXqOwgHqvWP0vQC21FZqVEf8BEoRAn4cKdenSNMJ6@vger.kernel.org
X-Gm-Message-State: AOJu0YzjsIDtnAhWY6T99ry2HeKVIXI8qTqLB0yaObgVdPT10HcDv9+U
	+2YwwzQszkZUMcqSdqEikrmPcOhZoBzGMc5mUZAPMud/Mhi6mlwvM6SNy0qzNsE=
X-Gm-Gg: ASbGncst+gLRLeBDb3kDQcygQ/Hn3KAT0yUSZqh3M5qKFyZSEN9m76QHZm+j/jfkCRe
	WuRpcO8kwxHE/GkQlvIvtW3APadF+w4IFZZn6nDcAokqBt8jI00qR2frFMC7bm6kcmkJnqLT+7P
	6FWIzF6WlA61G7FYIXA2z7a2sHH3JownqkhzFe4/AvFNWzuqB1gtkvlCcgDIdsRa0WKisGBqM50
	CSjhOkv+8IbdxDzRg9XPXMsZLmCpvB6ABpM9JDxi9yIp4ZnyGTIfNo43I++GE4Z6r18Rn+h3u43
	Y20wQNREPjrxU+yq/EG7uqn5jx4=
X-Google-Smtp-Source: AGHT+IF2MszW+R6WQx8jK8eOIRjM+8EACHmUN+Ecl27G6iOCJJXgb9J+BBHlHUmJa9pkMvBTlx5TBw==
X-Received: by 2002:a05:6000:4007:b0:385:f1d6:7b6a with SMTP id ffacd0b85a97d-3862b3cf82fmr2702803f8f.55.1733499779648;
        Fri, 06 Dec 2024 07:42:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf3a:f04c:5b99:c889? ([2a01:e0a:982:cbb0:bf3a:f04c:5b99:c889])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098c8sm4936536f8f.77.2024.12.06.07.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 07:42:59 -0800 (PST)
Message-ID: <2417fc42-4874-4e73-9a87-384d239ede7e@linaro.org>
Date: Fri, 6 Dec 2024 16:42:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 08/19] arm64: dts: qcom: sm8550: Fix CDSP memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
 <20241206-dts-qcom-cdsp-mpss-base-address-v1-8-2f349e4d5a63@linaro.org>
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
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-8-2f349e4d5a63@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2024 16:32, Krzysztof Kozlowski wrote:
> The address space in CDSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x1400000 was
> copied from older DTS, but it does not look accurate at all.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Fixes: d0c061e366ed ("arm64: dts: qcom: sm8550: add adsp, cdsp & mdss nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index f454015c5b90c7d792c01bf85256812857d79c64..541b88eb5f5300ef9e20220305ff638db9b2e46b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -4716,7 +4716,7 @@ nsp_noc: interconnect@320c0000 {
>   
>   		remoteproc_cdsp: remoteproc@32300000 {
>   			compatible = "qcom,sm8550-cdsp-pas";
> -			reg = <0x0 0x32300000 0x0 0x1400000>;
> +			reg = <0x0 0x32300000 0x0 0x10000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

