Return-Path: <devicetree+bounces-242250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D33BFC88910
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BC743B355B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7724B29A9F9;
	Wed, 26 Nov 2025 08:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q8nmB1PA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9639125A2DE
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764144520; cv=none; b=BCCII0acX3WqEeHe8q9hNhw7n/9LSOWekno+y+b94pAOiLGeuD26QVaUqiOknkpSV/X/zr9mmEkXaNviaDN4mKkVbDBzGJoA9B6TGGZ3oJBS68eZ47QYT5rdpfC/ne723U6c+rHLTFZeO7EK9wILsU/mDxR6IcLblCeosCPcdOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764144520; c=relaxed/simple;
	bh=Y3DZwH4wQNW6ZCXzLVBb5g9SjNIwLzdnUvZ4ZZbilh8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=dE6AGTZVgELV7yFTtKi4tD5YXBKlcwv874G81EFfBNygTnTq3KdBBmhB9ZuaPhHBIIIP8wakQqjBTNxaNYMJl35q0GXwpF5jq9257vwKPIDlNkF2WhHVYjid28LrR04aKVARd6DJVfcW5pXCBHSjCMAgV9IjDnscmibRtnnnDSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q8nmB1PA; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b3d4d9ca6so5236451f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764144517; x=1764749317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kMBT6ufqdiKigFwfC5lSjc1WjSTWZPknJeKYXrCMFTk=;
        b=q8nmB1PAACNjDjP8fAij9s5qD+0e+9TuB51amZ3hus+pT2/uKVvhiMEd/JZCLhK0aX
         KK48Y/3n1gMbhZOtFgS/5xkLFZFgqOsGrpRT/okC6noLutpTD0xe1b0vvEjHVQ/vInHN
         RmvNZYzY2Qjx+oaM8akFwZwo+qGSv3vHffYC3T8eCfxAlAZ4nHDx558JKoxlHEzGEun4
         RyjRlw4tGZP2VYvRSr2L0NiS329SP9iRm49YXqqkwMvqAhIJJasMqPg+Ov30tOE0NG6x
         LbnNVPBUC/SGT66sPgcM7/hAEvd2yd9iI9XO7Esw2OyQUMzz1i+V+IH3JtuzyRgk6B6L
         abEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764144517; x=1764749317;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMBT6ufqdiKigFwfC5lSjc1WjSTWZPknJeKYXrCMFTk=;
        b=osxSID3ZG2cxZWh+6UajbJaXQWAN4IemBN/+WabxL0uvU32DX0LZfBsDXTOHwdi370
         4T6Ffui04yWFd3yLfNaix6eO5eFdvDPtfOaNRHKsKGQ7deRflKaMzhWKBCnjGdLOa+/v
         sDe5myfvcv99/9Bzy9LGH7+BCY88GoVgCg2Oe0zUMcY5Ub3dMGkZJGSI0fqcpyVqTXPY
         tKOc2r6j5RS8KksVazdkfohfrqhMgWKHFhYGVBiV06nNxnelsXUWl4LHpq22dXZia0/b
         dx98Lbd70u0vCiS7QDOldbU/YEHg1tepwENVIcjyFEonBpDnHdxhM5GlHgjh9nPGaanK
         abXA==
X-Forwarded-Encrypted: i=1; AJvYcCVEwiZNPQFfkHkHLVsAmatrRMKYisM6I+G88FPinSzZ9LAK6uL42wC7Qw77N7WCn7K6N8GAG5B+XVoF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9jGrrE90QUfS8wlrQBoksNdoYxs25eUs3wkAplpLGZiXRY3iP
	e5dqwe0rrf8lJpS0BFV9OZgy55080dwuZ9+417sItZr8cfCmAURJ6UVx8669kXO2/3s=
X-Gm-Gg: ASbGncshmlRY9nSFnpeVq6Bix+WxxOAlKUMFtINzu5HZdITUic+YyXNFo11029FLe1w
	FTUpyUIRhjDk+r8IBYgOgeMUpV0Di8RzjxX2Wfabq5yAcdpdzNvYqGmrI1nbCH1XuT7+eyix1ii
	OOCR+ZY03cq3njmiT14qpYdqs0p225GtoCtD5KcP/vhuZzpkw+cklcaSTXeKS5HsCLy/Cx75yCV
	SW/q+zz6ApoxAknrhKaGMwfO31A7quIb9+eZaIcaK1h/QRpEJgU/0cmtBP8wptCxcrLmpVWvuHd
	6Nv9jeUIBefPS1YDFH1Rm+y6aVxQqCjN5OTpoWfEOWaCpDYcTweoRlKdkdHR1RV7qfoHThdQ1dj
	7iJlEIURJsF9vKKf2hT+E4tbX0dekIc4E3+3nITPQtVKBzrmXC1oDFfJvBynt3tEyl9+36jLCKv
	XMODWDvWseP+X6ifr89eB0O9tSzOE90kPq2sE0HqGaIvL1veHAef+3SF3T8XiSzQOumhH+Ol4=
X-Google-Smtp-Source: AGHT+IHjfbt2NMgknp8EKDWNmV8tJel1fdvH04IUMrmTwSwdfT6KKC6tg7aeiRN+/uELctAbtAcCpQ==
X-Received: by 2002:a05:6000:2681:b0:42b:41a6:a670 with SMTP id ffacd0b85a97d-42cc1d51b98mr19663398f8f.54.1764144516579;
        Wed, 26 Nov 2025 00:08:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:91ba:3a5e:334:4534? ([2a01:e0a:3d9:2080:91ba:3a5e:334:4534])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa35b7sm39634975f8f.20.2025.11.26.00.08.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 00:08:36 -0800 (PST)
Message-ID: <701a16c0-6dba-4526-ad4b-8159fc065fa0@linaro.org>
Date: Wed, 26 Nov 2025 09:08:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 02:20, Vladimir Zapolskiy wrote:
> The restriction on UHS-I speed modes was added to all SM8550 platforms
> by copying it from SM8450 dtsi file, and due to the overclocking of SD
> cards it was an actually reproducible problem. Since the latter issue
> has been fixed, UHS-I speed modes are working fine on SM8550 boards,
> below is the test performed on SM8550-HDK:
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
>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 23.5468 s, 45.6 MB/s
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
>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9819 s, 89.6 MB/s
> 
> Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
> file, there is no indication that the SDHC controller is broken.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 7724dba75db7..7f5a8574059f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3191,9 +3191,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   			bus-width = <4>;
>   			dma-coherent;
>   
> -			/* Forbid SDR104/SDR50 - broken hw! */
> -			sdhci-caps-mask = <0x3 0>;
> -
>   			status = "disabled";
>   
>   			sdhc2_opp_table: opp-table {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

