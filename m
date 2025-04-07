Return-Path: <devicetree+bounces-163776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D832CA7DF80
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 15:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 911FE188BD81
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 13:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 158651865E5;
	Mon,  7 Apr 2025 13:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vCItKhDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4DF1684AC
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744032942; cv=none; b=sinYMbJ/eO6h5rJ7a5KJa37MofFycZv/KaS55pWgp9wSy5su/o1iGJ0nM3FTufxnfrXVSRdRedfnhI2vWnIyV+J5luswyO2FenZ6EKNp0SGGwxRiGRgCA/CjwkTcPe8HrxGoSPLcjDvSehufmhnASPeodxq7bWtVLvggogMbAHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744032942; c=relaxed/simple;
	bh=JV/fsewgMLzt6AsM00h7nttpDgsxhTK9NpFFsusEmxM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=c3BfawjTmPaC1Ir2tOIoQaTOI0rfF4hl7bjMCO0nrvNce8iYt75+2wCrFEP/Drfz/SX5MKPW241WvsdqP1WHLqY583yzdICatagxndepBgWB9bE1qW8wtD8FENceROg6xvNBOnk2TR9+ly0mzh1B9c4+NXFm4TLSmVSFOvV5JE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vCItKhDv; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso28588985e9.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 06:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744032938; x=1744637738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P0LHtjos1ImdqVi/gelaCgwiv4OpEpWfEMCV2QzLNaA=;
        b=vCItKhDvPTdc9vxyStf2BXKxbmi7SHiNQNUdTY/Y6IT39VmfVw8Vih7PvRkkvoQO2L
         dSPtkPnGcWWtWmS1+cJoNtLJfZcFMeOtIlULrsb/3CFYuoVRP1XBaAk78kQHrBr1Vpri
         mAefOSh7Wgn5Wf0BvtnMcM+RH5G3e5yH1tW2Bt7rnrtVJcpV/cELnwCboOpZh+z+Byt3
         X8fWSt338X7QRHETKgMeiuV56WY9bbDTWFIufz/xpOBM8aZrHga+khGpiSoaiDLeuIKN
         BjmepQZwc7FOduvgbX2+2OS5F+2Oon7geSA+9SGU88UEhp3OpQdGfMu30ZCaNb44Br9H
         6yrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744032938; x=1744637738;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=P0LHtjos1ImdqVi/gelaCgwiv4OpEpWfEMCV2QzLNaA=;
        b=i9fJq/qHkymxc5ExkQ+MXBd1wyfRojFORx0UFRG/8gQIASY0wiPJcFYcb017jmhQzQ
         eP/Mc/iFvsMtGYDwQbG7lcXK/dE5xxt8rvotllqeWvpGGB40EuMZ162V6w+vQwziV0bi
         nzsmIKbKsUJPYNmCc0gUp09eB7ylRQ6ZATeeK5fUvYTfn/Au5DOan+JYzsdb/4OrpdKF
         3YfBtIf1A9nIX2bTS0je0Q1wtkX1Tn63SwDvB6rrFW5vduVETPwrB4Yx1GRlhkX/1s+3
         OPzfXDW/eo5UsmnD1rGZEr3yeOKvZqUX87E7P2qCJ1vyjMNQsDzkuN1nYcS+JJiZpGFZ
         6Yew==
X-Forwarded-Encrypted: i=1; AJvYcCX5uWjwrAQ/Xg7dz/UaOpHjtEMXMmFrO8q9r6C1Uj7Hzr+1BN5DLGJeVYG6f9hf56pvrGKihvS5KHcu@vger.kernel.org
X-Gm-Message-State: AOJu0YxFH/WG4/s9Owdqg+VBqekghOSjt1IA2XZeC375Ie/tMyIF/Evh
	4vLh23NCKveM9BcN/nIMt63pgmAzAUtiofeVqg5DEEAsZs3cYAoKG+twoNv/Uz0=
X-Gm-Gg: ASbGncsNUY4zRp/+6khTU5gNCgmhYQKb+tnTIEqdRUuR6hJGVGdCJLS7blPm3fKry93
	FcJvqKc7a25TavrwCOzoC+0DZxBfLYni4c0HKLwMF/jyQVGYCr2MXeX3roT048GwKPPZQ1iPqf7
	/azgrv5F/MOzBI/mpRAxjHTi8jqmZs1gb+lyVHHcVi+S4HR+j+N/YDtfMcROs/WTHfvdTWIiyoW
	7wwzit7VhbaHP+4ggRWFCx0v9/RJWK75NJdxxKyPWwOAndunO/z4qvSzQ36AtylJQoKzfd3tme+
	1ZGlslv4YJ0Mz0VNF6cUIBedbxE6rUCbwryZm+tOPh0iSyCeeGnN4AFh5zIfP+Nk8itbEMTsH4N
	pCUICMEkeTk7uG0HFf3wbDA==
X-Google-Smtp-Source: AGHT+IGc/Tqj+Xbwyo9nvOlB3snhOMJJnkxZqcC2do/h9DolUCTDuX8l+Cif229oOSyfaKseAxWR0g==
X-Received: by 2002:a05:600c:1e13:b0:43d:abd:ad0e with SMTP id 5b1f17b1804b1-43ecf8e72d6mr125317655e9.18.1744032937818;
        Mon, 07 Apr 2025 06:35:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f2a4:b974:cba3:a605? ([2a01:e0a:3d9:2080:f2a4:b974:cba3:a605])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec366a699sm129376315e9.38.2025.04.07.06.35.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 06:35:37 -0700 (PDT)
Message-ID: <1fe3b7ff-ed22-4057-b85d-f65883596585@linaro.org>
Date: Mon, 7 Apr 2025 15:35:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8650: Add CAMSS block definition
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
 <20250312001132.1832655-3-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20250312001132.1832655-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/03/2025 01:11, Vladimir Zapolskiy wrote:
> Add SM8650 CAMSS device tree node to the platform dtsi file,
> it contains of
> * 6 x CSIPHY
> * 3 x CSID
> * 2 x CSID Lite
> * 3 x IFE
> * 2 x IFE Lite
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 184 +++++++++++++++++++++++++++
>   1 file changed, 184 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 719ad437756a..bf5e238a93c3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4903,6 +4903,190 @@ cci2_i2c1: i2c-bus@1 {
>   			};
>   		};

<snip>

> +			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 602 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 604 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 688 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;

You need to pass a 4th 0 cell now, please add them on v3:

interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING 0>,
	     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING 0>,
...

Thanks,
Neil

> +			interrupt-names = "csid0",
> +					  "csid1",
> +					  "csid2",
> +					  "csid_lite0",
> +					  "csid_lite1",
> +					  "csiphy0",
> +					  "csiphy1",
> +					  "csiphy2",
> +					  "csiphy3",
> +					  "csiphy4",
> +					  "csiphy5",
> +					  "vfe0",
> +					  "vfe1",
> +					  "vfe2",
> +					  "vfe_lite0",
> +					  "vfe_lite1";
<snip>


