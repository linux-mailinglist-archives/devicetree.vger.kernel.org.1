Return-Path: <devicetree+bounces-167291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D2A89CDD
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:52:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2506B1886977
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36B5029290C;
	Tue, 15 Apr 2025 11:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVDDlG20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E38C292915
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 11:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744717963; cv=none; b=Cd2IRafJxSfEx9IXb0GVHCGjs/iBxqqjLQAI6cp1AZLsFCwMORhL8gfrfEMmWZL8jaYY5yirnOCHH3Xo6hqNTKwWGEgrYoj/2JckO/WtQrkSP8NW/g1e3YP9dwCYH1GtLOa1576AiH6LJuap/cBy6kn4Q723jbcXhtVV+nk4ic8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744717963; c=relaxed/simple;
	bh=N39zlva4rGEydJ4R1obsAWWjLX8+CXL+STsM2zqK9LQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=g7CuMmSkMJFNARaQ2Ca8jZ/W5x/1f8KZWaSFiYoO2FZlBk4vpyklYXBDR7SMZoUTq95NCxMT+rS/KJGgd0+M1+U8n5kaJEKjUob5n2g1VoJCNTAUv7tE30SAKLuqGN+qcgaPY4W6uJofPcguwuzzRZv1YtgrQK8+dWMTWePBHkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVDDlG20; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cf257158fso38701415e9.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 04:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744717959; x=1745322759; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WFV6AY0gNtoiY/khiDevM34vbqNUaJXDuiOFAztSkvE=;
        b=FVDDlG20LScS+djJmWVPkPNXjNR5EVqnQ1a3cLincSXfaK2arF8l49kBr8T7ECMABr
         Ty2NeW+Z0pskymDEuJw3fOJ8ryYa1mXHfncYD2bBl1zvZvsWh2jUPnPZuGZySyq8d///
         GTM8S/fvFrftToDXy0S62Z4ZeJX4oivQqTThttKyWg2XLLZEBPbwFWuP7ZkiEMPfap+u
         l/JrZ4JFdV1OtpQFWCO/tAi9vRFAu998SEEM6U5uMNNu3pRZl6mWvHP8+uJcwmLoLHoA
         Uuds9cPsERgojDks9M0Q7q4hqGiSIt24+5eusdgIYeeWkqqyQuC6lnugKcaw3Mz1kq12
         o1hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744717959; x=1745322759;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WFV6AY0gNtoiY/khiDevM34vbqNUaJXDuiOFAztSkvE=;
        b=D4Mdm5MrFYk/Kt6TzOTLrRUDycF/2+vqIaLaDIKo4IrtoK0ytL7VFKOGZjl2B+zkxr
         fN1USxUWcVVUThwW+0F6jjMgUZhWgf/SAdsiId1TKGdZvDBzeGjgAwFUvBnX9KBAFoiK
         cFeD0oylkrPEaYl68Gna+MSiSNQecV2UBFcKSvwicWqQqgMg9NrTCSL24JmoUkYZsoTK
         pNRo/2ZkmrirzWSyNAAwVWfdtQ52JJFvJ/KVQRa0x9jvbshpXBFsp/6KJiRCSR5wgvxD
         FOFW3ibg3151W6J5PFG/bUbxbv54FxUFnw2AZfIDggSozG1rvpSpHRu4iTkHw6OQqcs/
         ACNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcXyP+OaLzxdZOak/RtIM1CG7f0JhSLKqGEmD8CIUu2SOv/LVDjCiGAiJesQsed5uNJ7D8nKr324qB@vger.kernel.org
X-Gm-Message-State: AOJu0YzoDjlFGnB/B6ed1tU7wKK7mbPLH7T/XUp72Es8aJ1CWqrHzV6u
	uzsHyhmiCcHzm2GlQ3CfAefC4FWM6+0YAOzVenU39sE2TO1ciiHAfOT9ZbCy2G/BaojIy/g7rZW
	k
X-Gm-Gg: ASbGncuP1ahfG3smP2SBKM9p+J8rEJgQwR1zNCCNEkyuq/jatgnB777VwO1ROXXbS62
	aklF8YSEW6jKRqYqQuE7V4+H4tpQUuen/3VRK24s3I6N2NScjgYo738rExp8NJSR4FnoDUBqULU
	BdE8nmwV9l3BJ8ZJTSVvnwdZUso07kR7350bebn5r/IRp5jJPnUnFRhUnZdm6p3kfqDw8IQqRrJ
	7bEmZDdRvNR17wVr1G42q3t75A2EiGCSn8IyHwkgbrq806CuIdTb104Vk/Bky06ivv6/VnMZWKv
	sB/iOp9KeDvo5L3Q8ATSaS7IYkp1xYYK3hTbVIPDp8+IDeZJb2Bq5nNKIpzNQLbClPZLSsIIyqK
	mV1zXGGipwTHpakASnHARxiz338DF
X-Google-Smtp-Source: AGHT+IEvZxpNiPNrWYfaMsaKM4zpNOYNJ2i4kus7WjGFPKnNvz9Doi7yjR1Wwzrz4sm8bfjD3vPi3Q==
X-Received: by 2002:a05:600c:3baa:b0:43d:fa58:8378 with SMTP id 5b1f17b1804b1-43f3a9afbb2mr103698805e9.33.1744717959494;
        Tue, 15 Apr 2025 04:52:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ac71:de35:af4b:b8fb? ([2a01:e0a:3d9:2080:ac71:de35:af4b:b8fb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2066d6e8sm215407845e9.23.2025.04.15.04.52.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 04:52:39 -0700 (PDT)
Message-ID: <25501441-96c5-4a85-a633-163e8aea2ff4@linaro.org>
Date: Tue, 15 Apr 2025 13:52:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 20/20] arm64: dts: qcom: sm8650: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-20-90cd91bdd138@oss.qualcomm.com>
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
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-20-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/04/2025 12:26, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 437daccca1bbe72bf8179e5d4b2f7c097a330360..c2937f7217943c4ca91a91eadc8259b2d6a01372 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5114,7 +5114,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   			mdss_mdp: display-controller@ae01000 {
>   				compatible = "qcom,sm8650-dpu";
>   				reg = <0 0x0ae01000 0 0x8f000>,
> -				      <0 0x0aeb0000 0 0x2008>;
> +				      <0 0x0aeb0000 0 0x3000>;
>   				reg-names = "mdp",
>   					    "vbif";
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

