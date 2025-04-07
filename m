Return-Path: <devicetree+bounces-163583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F50A7D5C4
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2726A1895A2C
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AEC22B8C0;
	Mon,  7 Apr 2025 07:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vSENOmfC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDB5226D0B
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744010485; cv=none; b=YDtbcGeQ8W40seNAvF+GPl0rfDBJVWrj5zr1VSCfgBi3PYpPy2+p0i8GKjmjBvEQYdVz2nEWouUTGvJEMbuTm4+xnCj3V5gnPdf51xr7X2pVYz9ssMgg5TH3q+nqn+1ZjAqoJOgdmx8RLl2oDwcC8y76oOXt7N5iNhbXAjYzuxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744010485; c=relaxed/simple;
	bh=/F/iBzjj16HR5A1tU/0Iqh0+C6+AwZaA15eTTFZRf+Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LRsL74r7CqMmrmjukHgRqFQFbeU0opBnEuPZlOZAS8+UvIQHfjeQ/KYinjJXGUGhJXfTp45TkIDAqLRI5/rF1OqlV3eOzAhF2BZM3wruMjRhJDghu0v8TYMSr/JD3uM+s1cDz4TeECW0j1O7jW8Bji+7di6Nu1zTPAoIYANV/0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vSENOmfC; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so44932045e9.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 00:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744010481; x=1744615281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MPzcXHfwhTdJf1G6SrL4mmAYOzD/PgqXyH9Vw5LY4tI=;
        b=vSENOmfCIvh+7wAIvBberLDCOLdppjpMMnI53wSCNAXAym6V6wGWOm3zVLadGBvfnt
         vg5TVxaZvgmSkm+wRqtP0wHaskqoCgflLeMR3IaYtuYfAPhmCAMuUXWEYanqe2eFbTY0
         CfHiroY2uvrdvONpwxEQDlmjqfV5WQKh97v0IK/hWjkd8aD1E0/ZZsSlIIDiK+sJcvEE
         nu2QP7xMYa0C5LPy0Dz0yP/OiwG0UeRNnQcUfXh7NI/YfRVdaXmpDBAp2hbQGKyAuNBE
         /AG5WyPqBr5dQnhIhkD1ALZ6h3wmViA9b5pmXv2U9HvGuuURoxwMnVE8bpA2d4iXO1DY
         ckAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744010481; x=1744615281;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MPzcXHfwhTdJf1G6SrL4mmAYOzD/PgqXyH9Vw5LY4tI=;
        b=rqlJSbY6I24GtUr3Uh9GcOuphFrUIRB2h/6IXxtzZVSyDh414pB96siUsk/EDCK4pl
         n05iMEU/rfjZkgqpvYbvbvCdFWARh8RxZ6/cIMNfynrMAcwEp5qY7I3fX5dSSuZ/arqs
         NvmLZ4RUOeR2T0O/p15T1BH5e7lwYgvH7MJRH34yyI07fbRJYUrHjkI+NWRRmfI9qmA0
         xkJoMip7l5IyLySEib5RbtQIUC/5hLn7cSdkyOz9gcxUFjS0fC7Qy7OhExWtc9QBkizL
         XCCLbjcZKhpKWnhQ9IiXSPRsfchKeylieRChLVQcykWqjZMy9kJVnvIDWYcYg6XNnhxI
         u8pQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOpjLZHYUGfjkPjJ1zKWmfEQku3eShd4hZ6Gr6JD7D5EEprW0D8mIudbhQuBcFbnviqDW/m8ed8uj4@vger.kernel.org
X-Gm-Message-State: AOJu0YyZUKUX0RiAyz4wNz8EomPCp6X/rwz0J2o2CU3Ym3xWs/c4i9yS
	63/vI5CSr+BLRCJAzDX9FF5EURhVmRL6Bz3UDMhycZB6t0ER1oh9T7ikq8k54wI=
X-Gm-Gg: ASbGncsbfwqVfPwYdAVjDrcGuauySF/fMa2OLSkvqOT+1xki8bObaOpUd3z3vo8cmYS
	U8ZoNaZgB8tQn5oKVJXfthK0869nRkTfWzg2FdpY+PaPKojNZiMHg/SMXt92eW5tHy4jNAWnNh3
	w4t6MOaImmZUPWrkgyC/YsBp/T4R6vSDwva6Qyl6vuWvEKu95LmxUUYdPZdZXjXMOfNfzYhX6bz
	we5y8QT3VzydnKFt+3uMtIIUOby+goJcMju+RUTAzvZeZAC4zHB4i0rPWVvn3Qgd+EbFjoPYSRK
	TScIkn6Vnq8deo9gN/IqdRvQAygHNWk/2ePVbQQxSkcn19YnZi1gTSDGPJC12BicjZVEc8QcztG
	k3WOkYuSUkNNkEs9ERK4UkQ==
X-Google-Smtp-Source: AGHT+IFJ3CMu84fXDTqeLnCZf0ZAv7p6xftmF7goGvJ/KQTlLSUGGhXyq2rtRBXb/kV7Ak897AXDFg==
X-Received: by 2002:a05:600c:3b08:b0:43c:fb5b:84d8 with SMTP id 5b1f17b1804b1-43ed0c50883mr87435595e9.16.1744010480636;
        Mon, 07 Apr 2025 00:21:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f2a4:b974:cba3:a605? ([2a01:e0a:3d9:2080:f2a4:b974:cba3:a605])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec36699e0sm120966035e9.35.2025.04.07.00.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 00:21:20 -0700 (PDT)
Message-ID: <3ab630f4-8b1e-46ea-a8c6-a2878cfff78b@linaro.org>
Date: Mon, 7 Apr 2025 09:21:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add the missing l2 cache node
To: Pengyu Luo <mitltlatltl@gmail.com>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250405105529.309711-1-mitltlatltl@gmail.com>
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
In-Reply-To: <20250405105529.309711-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/04/2025 12:55, Pengyu Luo wrote:
> Only two little a520s share the same L2, every a720 has their own L2
> cache.
> 
> Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index a2b3d97ab..f47f29ec8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -187,7 +187,7 @@ cpu3: cpu@300 {
>   			power-domain-names = "psci";
>   
>   			enable-method = "psci";
> -			next-level-cache = <&l2_200>;
> +			next-level-cache = <&l2_300>;
>   			capacity-dmips-mhz = <1792>;
>   			dynamic-power-coefficient = <238>;
>   
> @@ -203,6 +203,13 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
>   					 &epss_l3 SLAVE_EPSS_L3_SHARED>;
>   
>   			#cooling-cells = <2>;
> +
> +			l2_300: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-unified;
> +				next-level-cache = <&l3_0>;
> +			};
>   		};
>   
>   		cpu4: cpu@400 {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

