Return-Path: <devicetree+bounces-57050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 756C289B85F
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 09:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFB001F22BDA
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 07:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A66C62375F;
	Mon,  8 Apr 2024 07:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rxzfYrcW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66516846D
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 07:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712561149; cv=none; b=DROLQQrqxRMJ4XW47x253cwuukee3m/dZihl+hZ/n26ifd0KioI/iK3uInz3ZkEPCou2TPgvXhYz99qsOLqfpcBT+IPLrY0gB5uqBq4+K3nYP4ZqJbYw7sA4vxIUtfKuWvIkWuFnb6TlgeYv/b/HsWw3lc437sor6HDIFJvqc2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712561149; c=relaxed/simple;
	bh=VbT/A40Ubo7g7MabIvxJKDydnfh8Vdxmhzgse+IHSR8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=k5eIi9/5T+utMmwITKP/h9xygmjTh50vOXdprEx5M/w1PDnLfmD8/AdO6IU2Vxq/Bi3LEvien0b0IbCfOf1VNOMMaIsf2bWXo1N0975557RvJG+oa7Xo5swGB0Z9B5G9rb3WQMrHjX45gc0HHl9GZ6aC6H4bTQXHPCzMW8wOcRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rxzfYrcW; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d895138ce6so4988421fa.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 00:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712561146; x=1713165946; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dXMkQ2zcoMNxNvEVqKP1HSxUwToLynCHZCFHwNRa77M=;
        b=rxzfYrcWk8ybmdTGSyydUVSRNRdlSI4HSLFF8u4fYOPfkUUxgBbI0CCiwH88Iwe04T
         WyqhRRKCB0DHqg79fyxrrXsypX5vmv6rp+Zlp9lniNOJpjU3vZtmCzIb6Z9CGX2cvPBh
         xQ5bKQCibHP6riXzx1QJ1/nXEUb/qcz3YWSnELKIkK9xEKJREDXQhAoqFweyGO4rNsqY
         JXcgaXWty2z8JTaDpv1MYyTLw+N3amyKgrp59wCpswtZOjB1RBGK6gJTa7Tp6qrC7lgd
         /WLgjfCNiapCRNQigFZdoIfuU5++efOmCdWl9s1yGii+xs1NQFAzYbtneNcZEflvS1Vz
         KwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712561146; x=1713165946;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dXMkQ2zcoMNxNvEVqKP1HSxUwToLynCHZCFHwNRa77M=;
        b=OJefz0/eIu6NEuN/GAOQzVCFn/2SSEwWYG7BGhYVyvOzmVDk5NuFlf4kUaZBs9ibse
         /viyR9OBiJRG5chX5bJ9/m2WCtmH6tQfWkw71Sk7eMzec7p9pLD3pm8AGrISbWFws9qh
         Usp5zE7auFfWUYDjJlyeaG2X6QFndEuBJ84zyu67fbXLT11fLLo5zFVzF7T2TxV0wJZL
         l5B46dUPrVDQ7qtQXN+/arD8fxy3m0PASpuzTtPANWameATi2M4LINdcdmH0U2sIQVt/
         m4kCWW+ne+r1zGMeLWhDZBFs5AeOnqAYnTWe1LQzYbZB+vKApsfTzBkmdrFnpYFquskG
         mZCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi/hqNL/eA9htnKWe1Q4qL0nRAG7wpYukyWDjpmwW0gxzRphJSfRwbCKM9gaPXHUTwqUzXQLYWiK9bvFEGiEPprnhQdVRtd+rNmA==
X-Gm-Message-State: AOJu0YyBJIxPmHKUw27Q3u+INfodiM/IIMozR43dYfIN1doLHAtzzCbP
	EjRFvSc9uFggCb7SczzlEuQ+lu/fS4dn90tl6kCxe3SrDKlx6Ba9aTqgrO84PKs=
X-Google-Smtp-Source: AGHT+IEH9OEtqRgXnnlh5lI3WDQNzMdno2gWXaVziNOe/zFGBAa7BDTURbCXKMKSChrhts+2vpt4Sg==
X-Received: by 2002:a2e:be91:0:b0:2d8:f3b:d026 with SMTP id a17-20020a2ebe91000000b002d80f3bd026mr6482907ljr.14.1712561145408;
        Mon, 08 Apr 2024 00:25:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b0c8:7091:4315:491e? ([2a01:e0a:982:cbb0:b0c8:7091:4315:491e])
        by smtp.gmail.com with ESMTPSA id f10-20020adff58a000000b0034349225fbcsm8188638wro.114.2024.04.08.00.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 00:25:45 -0700 (PDT)
Message-ID: <ed8ab2f0-92d7-4ff1-a020-bf3696b32c58@linaro.org>
Date: Mon, 8 Apr 2024 09:25:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/4] arm64: dts: qcom: add USB-C orientation GPIOs
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
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
In-Reply-To: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/04/2024 04:33, Dmitry Baryshkov wrote:
> Populate orientation GPIOs for some of the PMIC-GLINK-based devices.
> This leaves only FairPhone5, RB3Gen2, SC8180X Primus and SC8280XP CRD
> without the orientation GPIOs declared.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Dmitry Baryshkov (4):
>        arm64: dts: qcom: sm8350-hdk: add USB-C orientation GPIO
>        arm64: dts: qcom: sm8450-hdk: add USB-C orientation GPIO
>        arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s: add USB-C orientation GPIOs
>        arm64: dts: qcom: sc8180x-lenovo-flex-5g: add USB-C orientation GPIOs
> 
>   arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts        | 2 ++
>   arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 2 ++
>   arch/arm64/boot/dts/qcom/sm8350-hdk.dts                    | 1 +
>   arch/arm64/boot/dts/qcom/sm8450-hdk.dts                    | 1 +
>   4 files changed, 6 insertions(+)
> ---
> base-commit: 8568bb2ccc278f344e6ac44af6ed010a90aa88dc
> change-id: 20240408-hdk-orientation-gpios-141bc7fd247d
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks !

Neil

