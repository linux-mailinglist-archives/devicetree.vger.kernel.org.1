Return-Path: <devicetree+bounces-118783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A619BB87C
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BC761C21DF3
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 974A01B85EB;
	Mon,  4 Nov 2024 15:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Le5ArvP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387602B9A2
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730732687; cv=none; b=WGEI/mRPCu+FsuMO9T7cc4QPi1vs1v7O41dDu9d4LJfuB2+SEHjdJ+nhoET+zdLVUXlqzIpPcYKvFsToeF2h/CKTmuHXQaA79UGJi5wvUDDKdtr+UWCmFsEqSi1CddhuDrDMyHRpu8jdl9fcpHQR/eDKB6S+AYH4ARoDRO8U4Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730732687; c=relaxed/simple;
	bh=b64hH3uC6UTPYvdLtiLvWZgQcvOdjgEny/RklsbEraA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=tOE2tfHTDxilsfdNeQUk0zqPe/ZALFkggVTSUNoLApTF78brZjEdYQrjgNjHixjdo0C6adSzArv7UCsWRy2Ubu+HMhfFL492v/LYW8TMFa8tWDr2o7xx6Qb7dHc/OBoOriWBILEK0BOgV4Jhw+EJ8w33diV4jJ9PteIa3HtFppc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Le5ArvP7; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so38420435e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 07:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730732683; x=1731337483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PkHezRVB5IW8ZGwe7184Mv0JG0GlE7Z/SJRIUFUBnn4=;
        b=Le5ArvP74jvJdKXH90AxXv6HvPiJv+vL2wfquIhu1fWYK1HNCsoq7GHVmz3g0r2oIu
         rIT3jbdTc6Cd2IUg+/Z+8ppvunX6rXQ8uPAkC5c9TGhgZIM2Gh4UxAF2Z+NRg7TqYG1f
         rF+a1JyCW0mSXsiNqFOU+9wp0vXzAo0GW+ceJMCnjnWzQQWHNHUuEVHnDKtBSp87egL3
         g5n8eY6g/o+QP9gnrOEmpp93I07W9yBWi040j88HD6kGiFWp9KURYbJS1ymgb5qGdOKG
         WLBEnn2sWQe8r1k1vAPyve/QOKHRN+IJPBg5UL2buYpcuSQFceBkDXV7/nsuEL2s0VIq
         kdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730732683; x=1731337483;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PkHezRVB5IW8ZGwe7184Mv0JG0GlE7Z/SJRIUFUBnn4=;
        b=w7yYE95l7Dwu6R4x9fafVzwp2zsDXW+scKyWQx/WVLTJ1z086Qb06+agDko9kKgZuD
         aPaCwDNun7r6YflxywDMsP/bHcAqSu1qwRZ0sdfzmQTCYSNmSzJqqtG1bXz/SfLcRgnD
         t3sjXD56xd18acbwLX8i4bDHx7cVwJS5XArldlmesWKmZ/F0nZWgO8H0iZpKD0ppimQn
         ED7guhB/y/b3h0USkxtJ70c0Ul1tTy+ELUTlUVuYkg6y1dO6tcnMh13FQJv6PHpRDDkA
         vQfw3nau5YWZ5emMSrjZZdAXDHUu7y65YvjQlNJ4J8YShULY4WITXia7k6YJADn1FOAo
         oBjA==
X-Forwarded-Encrypted: i=1; AJvYcCVv4652GOiWoT0mWEV1wgauav1be1j0QPClcMsv+IS9f4sYriAiymlzFK4aueqTT/NujVK7QrNulOwl@vger.kernel.org
X-Gm-Message-State: AOJu0YxxhshXoKMrssmyDzfnVfnFIiUcupqkLyZyglwOm2l1I91+MeZy
	+LNgiK6Lszcaqx0sLFjmsqyz5YnDNi0/TwSicAjLRalh7AUfsF4+Hw76jAqRvqo=
X-Google-Smtp-Source: AGHT+IHjmYRuVPaZFPEnmcnbEfj6qAKFYzc9mqwaUK54XQYXITaiaYcy6kaXUXlkJ5ui5oryxUMDYQ==
X-Received: by 2002:a05:600c:46cf:b0:431:58bc:ad5e with SMTP id 5b1f17b1804b1-4327b80c8bamr122885355e9.28.1730732683356;
        Mon, 04 Nov 2024 07:04:43 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5b00:c640:4c96:8a97? ([2a01:e0a:982:cbb0:5b00:c640:4c96:8a97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5c6623sm154916145e9.20.2024.11.04.07.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 07:04:42 -0800 (PST)
Message-ID: <8d7ab244-ca34-4b90-9d9f-39217d3335b5@linaro.org>
Date: Mon, 4 Nov 2024 16:04:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Fix CDSP context banks unit
 addresses
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ling Xu <quic_lxu5@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241104144204.114279-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20241104144204.114279-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/11/2024 15:42, Krzysztof Kozlowski wrote:
> There is a mismatch between 'reg' property and unit address for last
> there CDSP compute context banks.  Current values were taken as-is from
> downstream source.  Considering that 'reg' is used by Linux driver as
> SID of context bank and that least significant bytes of IOMMU value
> match the 'reg', assume the unit-address is wrong and needs fixing.
> This also won't have any practical impact, except adhering to Devicetree
> spec.
> 
> Fixes: dae8cdb0a9e1 ("arm64: dts: qcom: sm8650: Add three missing fastrpc-compute-cb nodes")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 3d8a807a81c9..367fdd090768 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5622,7 +5622,7 @@ compute-cb@8 {
>   
>   					/* note: secure cb9 in downstream */
>   
> -					compute-cb@10 {
> +					compute-cb@12 {
>   						compatible = "qcom,fastrpc-compute-cb";
>   						reg = <12>;
>   
> @@ -5632,7 +5632,7 @@ compute-cb@10 {
>   						dma-coherent;
>   					};
>   
> -					compute-cb@11 {
> +					compute-cb@13 {
>   						compatible = "qcom,fastrpc-compute-cb";
>   						reg = <13>;
>   
> @@ -5642,7 +5642,7 @@ compute-cb@11 {
>   						dma-coherent;
>   					};
>   
> -					compute-cb@12 {
> +					compute-cb@14 {
>   						compatible = "qcom,fastrpc-compute-cb";
>   						reg = <14>;
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

