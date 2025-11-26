Return-Path: <devicetree+bounces-242252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A42C88919
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4017B346BE6
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9069725A2DE;
	Wed, 26 Nov 2025 08:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TJ+W9jl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EF9F50F
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764144592; cv=none; b=Q3hRFilBW4h05I5xyynpwBELbz2x9duO4AOMHpexKtmYsKlOB96uhrDzuVsYe/4S/B+OLroGsa4FiT7gkYnHnPR+Z5VnqeUgEJzAOR/IAMF6wNgz1Iz9bJ/APKjcZcAc9AVIivu2o1MwLvQBi2y5FPtkKO93KcED9u3XTgkgtgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764144592; c=relaxed/simple;
	bh=IeMbbpnlVnsYBcWix9yzLXFky3NUhU8LGmPbJaUFcNg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gLTh8FKEJ9PAJI/l46NhIlncV42oeadXZQKVECKSY08Q3/wqZHTyyDvip++qjNB5mCP7uKZrPOsrRqoDgh8tkRvJBgrVbBeU5nFAJk//eu3yX1dQRV0nnGk02f/cySaUbie1qxMD6cIsLqBrattTkmogY6kkYlR/uaP0npngBvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TJ+W9jl9; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47118259fd8so55761515e9.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764144589; x=1764749389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WMYZkQkBRMd/dF+/H544XFHImHa36ZYoz9rEddqxts8=;
        b=TJ+W9jl9pbdbyqea1wTjXVOFr4y11xLSgKH8uYDk0UOadl7ndcxGNxtovm8CsJeI0J
         x+bpT7yoAZaaAp1++da9y0KTFfp1oI+XV5sf4Kl7RrQsR+KCG1Bs4fSNM6xUP+CCZ5HG
         XK0nE2cnTXS9+d4dlhFgYot3vDZsW5OchpmRLybGC9s3rMTEEK85h66Hrq2+J6b9FW9J
         zmF5que2QHZwwc+gRbGRTDirOPt5zUPtfWQw4Yepzdn/3Cg3w3NjEWTbcVpb7jG8je7o
         Q0kXyPnhWh5J3ZubkkAWN3S4kYzhUhY1y4KA5m1hWGQmONuS2GCrBFZiVl4GkMd1DZ/z
         HNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764144589; x=1764749389;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WMYZkQkBRMd/dF+/H544XFHImHa36ZYoz9rEddqxts8=;
        b=NJsCeb1bOuE1yys4w8XGfIQdZJW3FG9+M3JhF4LzpbzqMkL6rll6J9JUDDWb8R1zLz
         6QTr0kPRNPugDipfB/zmqz5+Bo3EIR5Ljq1FS1SGJPDbQza6AZxQSpMm3oXHw8MuLSpW
         kVbor5l21VSDfD1QT1ER8SWEE3raUNqPShlzZyI+J1lzNOKHxoePfILNqZ2YtEV8RrAy
         t+EHq9mFyuqZ8gGP6o+2pKlUf7wGUtxxBBxRdAubukMJuKDn7LCbZLuDVVgDRc87fUMF
         ONlqpwSwcqtSMm2KEkvunPQMzTEg/pywF/ZKDCB52+90PutW3gbbSZ1EhR0EcBQewWl1
         k0/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUKV5qZr/uZECwU94kBGYH2CYnzsLmAiA67O5VGREvO2bIFQYJ00W4kuNfdmYbOAhFBGS3tOwqFU7ex@vger.kernel.org
X-Gm-Message-State: AOJu0YzlvrJvb4E1Y5TeFydcWGdg2Y9878mr6aEOh5Ml++Cdd+TwKMUA
	ZDMgK2eJH5v3312+7oi4fTgzUcJpOnTwz/ZYZ7O2bQcPGt8Ys3A6OARVANgvobzlezg=
X-Gm-Gg: ASbGncuKmvSfYvxpnss/WacIaFQntgbgpCM49y2mYn9lNdZqK7cX4MtXcO6+8vcV8qo
	uto1/nnFtyowQ+6yE8CAOl4aRHw8cM/uOgjzHtRaZWEjXVIo+YfuFWQw6A4UPChcs7x4d6J7sjM
	yQ+nnK2UpBxExq3WHOypXn9l3UzhLKrz5YFWXzL013QTg5wUwLp4jZsG0jUgieE+jfQZqMs+413
	3o9udPT6bT3MhDXiOYnYggA3AcChLV3Z8uiGrBeTWX1Qy8dGa8Plu05ONwe7dEMBeFXjzYi485N
	zevfw50b2mDamKvBIICOiG2xXrXthAf+55WZT9j+oUyVe1fT5Llx98BaYdVu7DOYZbveJCx5ZGQ
	rkBF2q+3f09IV1127TFSj3POHV1uB9T86cUwkhhqhx/4sXB0eakpn69rvMNahqbngJIYm4GT1BN
	KA/JEhe5tsID1SjHis47SHQ+elM9kAjkUN8w/e3SkqtQxJb4IkqqFCP/BuRc6b
X-Google-Smtp-Source: AGHT+IHQO1Jvw6D39xfN4htjYayf6vccSLzS+EPe3iemxI2n0pq5Ds9oeZj9Dd0I9lsF/edrhT+nkg==
X-Received: by 2002:a05:600c:6287:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-47904ad0724mr48315515e9.10.1764144588939;
        Wed, 26 Nov 2025 00:09:48 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:91ba:3a5e:334:4534? ([2a01:e0a:3d9:2080:91ba:3a5e:334:4534])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa7affsm39058233f8f.23.2025.11.26.00.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 00:09:48 -0800 (PST)
Message-ID: <efb215f5-d555-4ce4-8904-d1de395a8f84@linaro.org>
Date: Wed, 26 Nov 2025 09:09:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8450: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-2-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20251126012043.3764567-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 02:20, Vladimir Zapolskiy wrote:
> The reported problem of some non-working UHS-I speed modes on SM8450
> originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
> for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
> platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
> SDHCI SDR104/SDR50 on all boards").
> 
> The tests show that the rootcause of the problem was related to an
> overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
> ("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").
> 
> Since then both SDR50 and SDR104 speed modes are working fine on SM8450,
> tested on SM8450-HDK:
> 
> SDR50 speed mode:
> 
>      mmc0: new UHS-I speed SDR50 SDHC card at address 0001
>      mmcblk0: mmc0:0001 00000 14.6 GiB
>       mmcblk0: p1
> 
>      % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>      1024+0 records in
>      1024+0 records out
>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 24.6254 s, 43.6 MB/s
> 
> SDR104 speed mode:
> 
>      mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
>      mmcblk0: mmc0:59b4 USDU1 28.3 GiB
>       mmcblk0: p1
> 
>      % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>      1024+0 records in
>      1024+0 records out
>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 12.3266 s, 87.1 MB/s
> 
> Remove the restrictions on SD card speed modes from the SM8450 platform
> dtsi file and enable UHS-I speed modes.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 23420e692472..fc4b7bc04532 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -5404,9 +5404,6 @@ sdhc_2: mmc@8804000 {
>   			bus-width = <4>;
>   			dma-coherent;
>   
> -			/* Forbid SDR104/SDR50 - broken hw! */
> -			sdhci-caps-mask = <0x3 0x0>;
> -
>   			status = "disabled";
>   
>   			sdhc2_opp_table: opp-table {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

