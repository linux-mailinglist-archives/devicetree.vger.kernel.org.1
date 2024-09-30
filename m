Return-Path: <devicetree+bounces-106317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41523989CB7
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF85C281B56
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 08:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6318176AB5;
	Mon, 30 Sep 2024 08:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qix+cmrW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF62175D25
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 08:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727684735; cv=none; b=N80SBHCs6Oa497juS0d9RN1Dh/0hc+hRmfIX8jgv4hcMJ+aIW4sExO+RWxtcINbrkvxOP9iJk4o6CxyZp+JKetQZnAEUtM2sN6ABWdkMW+1VHLOMQ9QpIJQGHoBQBOU78sh81rSJFcZuaz6mIP8kdcx6Umwnaenq/O5+5dxhIPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727684735; c=relaxed/simple;
	bh=BfZEEmsOyOgIok+iSWm/w2ZshW+WyMtC25/JDe9ErKA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=F1Uixw7UtrTKWSsbL7ma/ylqC/SXDE1Uq/wzejYuk1d/I+IwVs3oAJangzmfVKIBv25Nv7HHLOMgzPfNeAYN7eksUEGdJTRilULhQXRqtrxEU2BYUji093He4iGGNX9GCHgLyMqiHCeA+8EvFrCencJhLhdd4AzT5cJh03pyBEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qix+cmrW; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37cd26c6dd1so3106296f8f.3
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 01:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727684732; x=1728289532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t+9R5h4iSSryv9VH/T6tcjQsVcqymidoiGYA7+n82eE=;
        b=Qix+cmrWW882KIKAhppFmr048geCrUwXlpYiCV3mlVzs6ewA4iLw5nIkxpvOfXgqTQ
         iQh86IhTwksNxwUT8hMpGlBKtPTukTeC+SHEK8VBH/Kt0Vuhuq6Y6hBdhtjk9cTpnSS4
         +L1hhMZQ00zi8cDPCm5MDuO0PQykqwuVDqsxUaY/EgpQn2zxuT/3j5xXvnFnAMRWkud0
         K6ITulA7iON4MgAWNQWJdIwtzqOxTwYb8fTZG3AXM3O1KMyXKJS0/UQaI1y0uElX+nCk
         s7AF+T7+11vm7Am+7wcQbjNfhwMy0tnqtT3C+FRemHH2qwbCu668WrGe7PuDqYDfKaPf
         umvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727684732; x=1728289532;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=t+9R5h4iSSryv9VH/T6tcjQsVcqymidoiGYA7+n82eE=;
        b=wiVWxbBcyIRBpfTioZjDdXbG8Q0qusXWAD1Q5sLpyshS24Q41bl3fAK6gXF1oYeenF
         YWxRCUIAh2V0MQpHWUgqbzO1AJVi3HzwZwetG3u2n/mdL5Z/o42y2HtPXOPEoS7IKECe
         jrzrKKr0e+b73fAtmyy3UE1oZCHkEVHDyUASkne/p1tkcZPWIpfhTpMxa8XyH1mpuCf8
         4krvPjwEx0sfKW52woW8zN72tvJZhBQmlMRgIsGdJxn58uM6k4zQ0adg7nWErrxFbm4B
         Pr/ZTImtkxqlb9SBfKJxbX+QDZECUi7ad4hZWle+hFwpGFVKDP6O8+uZtP0vSUi7pOpj
         zc/A==
X-Forwarded-Encrypted: i=1; AJvYcCUhyzYuK6hGU/GlScMGa/ZQi5IdUKh7kJAwZZuMhTe0RDBWCuNg1xjTpesGQN06Q08AQiUZ8QkQdmKV@vger.kernel.org
X-Gm-Message-State: AOJu0YyRQvz/CJXcnE6Iu73+Ot3FgJHu0yt7xuyQRyKR7VtYI/r2yQV7
	XgPtHPqSDTEP3RUhh5fhsQXXgs31OQWvAP0PxAsT4Zt1tDCDWyf1tsO7PxAs35I=
X-Google-Smtp-Source: AGHT+IFrRV8HvBX/whBQ9+RSDYAzDpM6iK+KlOcZfthQcc1Xgu0aNJd/phdvlZ+jhqDOtbabqelQCQ==
X-Received: by 2002:a5d:6886:0:b0:37c:cfa4:d998 with SMTP id ffacd0b85a97d-37cd5b1515amr9436611f8f.49.1727684732434;
        Mon, 30 Sep 2024 01:25:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:bdc6:abc9:5047:7828? ([2a01:e0a:982:cbb0:bdc6:abc9:5047:7828])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd5730fc6sm8384809f8f.76.2024.09.30.01.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 01:25:32 -0700 (PDT)
Message-ID: <9ebfd386-5aa6-430c-99fa-04a8025a311d@linaro.org>
Date: Mon, 30 Sep 2024 10:25:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sm8650-hdk: remove status property
 from dispcc device tree node
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
 <20240924100602.3813725-8-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20240924100602.3813725-8-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/09/2024 12:06, Vladimir Zapolskiy wrote:
> After a change enabling display clock controller for all Qualcomm SM8650
> powered board by default there is no more need to set a status property
> of dispcc on SM8650-HDK board.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> index 127c7aacd4fc..f00bdff4280a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> @@ -814,10 +814,6 @@ vreg_l7n_3p3: ldo7 {
>   	};
>   };
>   
> -&dispcc {
> -	status = "okay";
> -};
> -
>   &gpi_dma1 {
>   	status = "okay";
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

