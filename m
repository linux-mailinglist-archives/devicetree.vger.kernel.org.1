Return-Path: <devicetree+bounces-167292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 003D4A89CE2
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 880F43A8B54
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94C929291E;
	Tue, 15 Apr 2025 11:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W+dB13UZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D110D274647
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 11:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744717976; cv=none; b=pRSfWlQadx47qCXnKXoXmWtUVrlAVkDishgoAY1eWF004JZ/I4p173m6ACTmdhG8pJFD+IbK/XAZx29nqmMReQm97+s2N4F6emFqmxLaHoo6OR8l5Fl9nCvLxD9rsSBftJNc7XOLNB1Tw3DyezDdtpakhWNrW4NVtIMVnSuqiNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744717976; c=relaxed/simple;
	bh=R3KMat6dpKT9P5kR2aCefHM9mxZLRXgE/GXM8IoI4sU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=uzg8FMy9pvzIm13OCwa+YgYc0YK0+/x4KYSoq4WYQ3K2NRp09NZWinrZglpy+NFyWQez7xPRAil/eeqBIOZ0niaPB7sidENp3+B+35kZsd6OsmJE7lkRbOK2Nhup2Sux4VNjCiItY5bDG2mxKDE0xMVzf5NKl5nWmVaZv71VwvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W+dB13UZ; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso38863195e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 04:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744717973; x=1745322773; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0q6CvIAOqvdoFuFnFaI55m1HCBtuutJvTP70+YwinaI=;
        b=W+dB13UZ3El4Akd3Us2uE9TCU/H2ANma/Nl+FhXEhfbvzG3BV9d95/e4mGiX90uj79
         hniSZoZ3BKEmPHFefh+so9kr9BqfF/okfWqu4a85fJeCFnma1XU+c8xoGWJp4hQIMwaC
         5LYiml7ISxSBkflxe4gxFj8Xa9Yij/EIn3X/oVO9w4cZ0cWVvTGsMVvC0fTHothK8XAC
         xTUItyQ6GUXKZt8ptv/vx8p65bHoYgDmeQduFhX37ELhjgPr+QJwugYszYuwab5dfWzR
         vOc0ROZYRUCpOVjgAlm6nk465LHGnvEs5GzgTgl0TFTpw0bP3C6bGwV2iN0xPLyr5dD0
         ZWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744717973; x=1745322773;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0q6CvIAOqvdoFuFnFaI55m1HCBtuutJvTP70+YwinaI=;
        b=Iza8LHva6i7yO5VoHpIB9Fd1cW8wmHwR6+kRZcb6eUCz+qv7P7aMhZ6nGv8r5ry1aF
         p+qDjnXrV1cCV2EwDwllixHr62S9p45I7h/yKbvf7c8ywJKqi8Wl1liWgxwdyfe5x0fx
         WViZFizaCT0vWswYOO8VfopXZG/ytYDLQKPKvEuCA5J1WJzrICK7Ky4ZpW+2GHHji5M1
         9weewwztyQ3JlaSfpwrjPHmWRDv6cYVSTb+pzRacLfmRwzRTnAhpGZ2dwJYC9kCItx/D
         5LI7Y84fSN2uY8zBaDmTN5YGcn13lbvOAtclJcwRb+QfUfGuWDiRjP3+0L96fsCESc3t
         65qA==
X-Forwarded-Encrypted: i=1; AJvYcCWfeP7pWJdSSs92Sk8N6zrFsErbalLhV2tnSYyI3eDR4FUWmoCvds3aim7jfS35igeElSmL3jugAZz9@vger.kernel.org
X-Gm-Message-State: AOJu0YwzcqK2eQ59n3EdJmceKrXKxQuetxDqV49cPErY4rvJOIvic0C4
	nVH49owgI3CVzz890ErxrfYrvOAFjwtnzcRvHpYFuQv9zXb4JgsFJDmbPxrpnPJsX+db0GpDniK
	u
X-Gm-Gg: ASbGnctCZ7BtSPUxtVP91Z1mds1RGgota3/bONcCFxJhtR7LmQFWl3CJcR47yIexOyB
	DVEbZfPO9zQYBqlNlsFNZ2I9vsyTsHFEMTboIKtTndgFhuRR8dgXMedw9Zp2ExDaCvVGA4N2oCA
	pJ90Ct1cCabyaKStuE1WNUC4iu+ch5/5IvlqTESIoj8xChswCKq43pNuEf3PNTInoajg3OHO3oP
	VM8OY0JVjlyvrZcBGSJCcCguNrvvOg//Yt9wVgRjyZtGJQijFmCGaBC+VMq5+kgXQflVcn7HApG
	pCRgpNCIBxlATycW1lnzCtdrBw1gix9MsmB60fsx/a1U10HmJmWy8rIs2eKLdV3lffcwGfBDzsS
	aeuSc+354fX2h2C8RRw==
X-Google-Smtp-Source: AGHT+IE5nwejIgvC2Ltw6gUj8FCuwb3YjBXFaTOX+Dz9gTa5ZqYd0rDdubWjKg3rjaStCA3lp98AdQ==
X-Received: by 2002:a05:600c:1e14:b0:43d:ea:51d2 with SMTP id 5b1f17b1804b1-43f3a93f681mr142360485e9.14.1744717973191;
        Tue, 15 Apr 2025 04:52:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ac71:de35:af4b:b8fb? ([2a01:e0a:3d9:2080:ac71:de35:af4b:b8fb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f235a5d31sm206454475e9.35.2025.04.15.04.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 04:52:52 -0700 (PDT)
Message-ID: <5e023e72-7c02-49c7-82bf-09dd549ef00f@linaro.org>
Date: Tue, 15 Apr 2025 13:52:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 19/20] arm64: dts: qcom: sm8550: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-19-90cd91bdd138@oss.qualcomm.com>
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
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-19-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/04/2025 12:26, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index a2732e04896e2f6dcdcd019d90d23731ad0d15a7..82cabf777cd2c1dc87457aeede913873e7322ec2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3374,7 +3374,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   			mdss_mdp: display-controller@ae01000 {
>   				compatible = "qcom,sm8550-dpu";
>   				reg = <0 0x0ae01000 0 0x8f000>,
> -				      <0 0x0aeb0000 0 0x2008>;
> +				      <0 0x0aeb0000 0 0x3000>;
>   				reg-names = "mdp", "vbif";
>   
>   				interrupt-parent = <&mdss>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

