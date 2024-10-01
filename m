Return-Path: <devicetree+bounces-106739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7275C98B7E0
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3463E2853CF
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 09:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB0519E7E0;
	Tue,  1 Oct 2024 09:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+GR6vBy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7626719D072
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 09:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727773486; cv=none; b=E9icVmcj6dNHpP1dkp+FYkLY+hSmQTDxkBdGjKoIMrsEsQomY3k9TfKNIC6dSB20phkZomjnug5dZNZuu7FPqUmNY6Gc9UiKg5fd8wegPkffWrfHcyHwwpt++sfW9szwhpn0CiWRrr5zFlvqQxlKG2lQ3Ch4Zj7xJIaitXlGX8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727773486; c=relaxed/simple;
	bh=pqMjjkjt5K+KvXsZn2P4udFNhVmUR8QRNVoiTGhjFsw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=edNfAhxWwwdEGJfcZLdE/2fha/MYExAcfdzgtN4JW1DkrNla8t1FGfGojOB+96MzMB77Yt0vqxN/TG6ev6TAWAO6QVjaCfdoLjesiONbrLNdfk0+Eo2odKVJ1OHC9Eu0PKKuKadqqDtfkAuAcToVsfJlSZSvM5ieBiAh28Gyx+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K+GR6vBy; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42cb0f28bfbso40935945e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 02:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727773482; x=1728378282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iwpzm2KnHc5En/e78r3n2ETfrHl9LgjH5EzFgMnUnXc=;
        b=K+GR6vBylQbECOAkfbPhuqEWIROTe260XK3DfqJ5qTo74UIzXQgq73/TBbtC3z2WvD
         dc97by6eNVXkEKiqtShicCwmECh1+zp1O0JD392ysr31atSDULWNMjnhspBVUfQ+YIaL
         aoMwxqqzLSLTG2XebigXl+y07kNkmUZZXrcvL+252wNlNpxHGxU416Tt7OFannSmWCNV
         4W7uQVyOjBSmBHW0le9CTHG7i3NvP55w/gBA/1k54IruIZngwhiO4JFkuzV1fAWmAgpi
         OZEiSyTSdas13io8ArsgPt6Jaj8eLenvUnwiBFm14CnZ4SnAGHkyMJltOjv6PyMDoSEn
         Jucw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727773482; x=1728378282;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Iwpzm2KnHc5En/e78r3n2ETfrHl9LgjH5EzFgMnUnXc=;
        b=YhHUMvOY6Vbe1bKyfDucClB6HtVOfgxu5gNzIUaWqdGI7NVnpUInSEwnPzqYBFQr4y
         szswUfrYCVl6a6HvQEEYBwW/iZOkRhoKLiffpwzvTEcQA2VoGuDuSWRxH2Dwe21QK98m
         ZZreMUTUDWZuVqmGPEPhY6jQQ0khF3WlfkLgRDCD1OBEIQ8102m1qJfa6IgBoHR7StUN
         wagrcki/Pr6/c5xRu+vbRV5u63Q1bSwmvn9z5890XaP9PszkL85UHVXjShqCu8nxn4XF
         qJeA4iwBHIP5CAMspnt9bqWE7lsezokTsk2CT5ewxFYlpaylUacxmIciu1AC1Hp9H7pM
         tDSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKnnkOFKfP8j/Cu0wE6Fek6A22U7/lUAZWGaI2/NVFppFYY2jv9BcJOyIhUacf5OYUlAHdQSIFQVsy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl1Zcs52o/DGMTW7XpehTbmOzM5LlOP7vDEtCk5MNCRT+unJTQ
	p0lID0vDDC9AF1/CrzdlFItQNgk8dUNwPe+8VJ5fI4p0DIzeUJHDZK7v/VqYH/s=
X-Google-Smtp-Source: AGHT+IFbfr4kqMuq+z3unZenzsZ7NXIlfK7AZreyki8GnXg4bT7oP2lEskit3sj6XQCm/fcqhqsC1A==
X-Received: by 2002:a05:600c:4e0e:b0:42c:bcc8:5877 with SMTP id 5b1f17b1804b1-42f58415f31mr96088305e9.13.1727773481620;
        Tue, 01 Oct 2024 02:04:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ec13:4c0:b08d:b067? ([2a01:e0a:982:cbb0:ec13:4c0:b08d:b067])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd57429e5sm11281395f8f.98.2024.10.01.02.04.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2024 02:04:41 -0700 (PDT)
Message-ID: <e09e9782-7a60-4ed9-82f4-fb84a32879f3@linaro.org>
Date: Tue, 1 Oct 2024 11:04:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v7 1/2] arm64: dts: qcom: sm8650: extend the register
 range for UFS ICE
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Om Prakash Singh <quic_omprsing@quicinc.com>,
 Gaurav Kashyap <quic_gaurkash@quicinc.com>
References: <20241001-wrapped-keys-dts-v7-0-a668519b7ffe@linaro.org>
 <20241001-wrapped-keys-dts-v7-1-a668519b7ffe@linaro.org>
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
In-Reply-To: <20241001-wrapped-keys-dts-v7-1-a668519b7ffe@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2024 10:35, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> The Inline Crypto Engine (ICE) for UFS/EMMC supports the Hardware Key
> Manager (HWKM) to securely manage storage keys. Enable using this
> hardware on sm8650.
> 
> This requires us to increase the register range: HWKM is an additional
> piece of hardware sitting alongside ICE, and extends the old ICE's
> register space.
> 
> Reviewed-by: Om Prakash Singh <quic_omprsing@quicinc.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
> Co-developed-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 01ac3769ffa6..5986a33ddd8b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2595,7 +2595,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   		ice: crypto@1d88000 {
>   			compatible = "qcom,sm8650-inline-crypto-engine",
>   				     "qcom,inline-crypto-engine";
> -			reg = <0 0x01d88000 0 0x8000>;
> +			reg = <0 0x01d88000 0 0x18000>;
>   
>   			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
>   		};
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

