Return-Path: <devicetree+bounces-98013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC5996455A
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 14:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 558A1284D58
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466501B8E9E;
	Thu, 29 Aug 2024 12:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PxiNpTYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB601B86E2
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 12:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724935527; cv=none; b=FnJhmMhLNdTZbcfpg7/gmQYlonTvSoWmRdNyiOOvgpvplZRJKhH2LTZ5/gmm7sJcPjGDcSauJbTwGoHnZRpbusUx5BPqWDBIA+8Uyi1CQTQh0aWtR9PscXIGgQArhtU9y1qCxpr8PnRbsnejTZGQH8B1NQE6ZJCEisnZdjJO5I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724935527; c=relaxed/simple;
	bh=NXTqYoaWa5ODrmReOn7m+hsJ3VAZOfcmaKGZMjn0eDY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=UDKgLp2wn0WUlk3PI2PhQCPBTBnnXJn1osg6YWBlS7NrSUyvXDE5D5qnAgvpse2eKn0eVBn730WFo4BvBC505LxZ6hRaedwr2ZgexHBMPcL/0G8sf8fSNgZBPS1huns8RDSAQzByE/sWh5WZ6TkZ+xIjCvamthmxfdCu4ENRq/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PxiNpTYC; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-429ec9f2155so5481355e9.2
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 05:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724935524; x=1725540324; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fw7GLxhLCO6fbROkpV/yXnp/I8CJLgF4HIAvHSYpAZM=;
        b=PxiNpTYC3OeBKpnlW/+QhjhGNiHvRIJZ0q9qK7ZbjHioO3fDCMmznf2otxK6qkoj0p
         VAMYsZKr290BYU1pVI2TVSQwucFtXAIGKBChg0FDz6NMGmRimrhmmlGAfIySKJVzuvNY
         hqIKVInyuSjeUNbnKitaR/uqYHYMT+QKPw1bfDTXp3dEkQHR9fen1N5S2W1klpu0PObH
         559cdhgHmtRsXZ0Do/mVVrQ0VCPrNvbuoDbHuk/abMgWCCeQbqc/EqAHYWf7tTZnpcq+
         0ylj4EimOQ/F1p6wbLTl4QxJPa8vDYPG9r5bmrYiVVos+2zQEPJT+pq7CEoeWEn4LDyv
         6WrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724935524; x=1725540324;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Fw7GLxhLCO6fbROkpV/yXnp/I8CJLgF4HIAvHSYpAZM=;
        b=D8WXtOMTlOGaXgo18dtCKAD9HN5gxBlaNIlRQbVoSJTokjMZYJeOghc+utzRsdfsB3
         0aE50q1IvjR1zY/l3mPGCtCZkimMBt0gEXnP7lqMMHYP8LtQRvWgpbZdG99VSGtWIl05
         +RgDthoRc2HXVA8oMXIkzTjaZEj5f078xcCZbva//utYPQIzbwU5xVZ0/LzSpNPnVlPa
         xXoWoJ7QRrJAI6zTIXY7jTcZjAFmb8sZLGPjMqHfeGPOaxw1jh+xmpvRrfgs5ChrYzvf
         ccvRcwLdpN4RhWlDRqNzLa1aGUIG0BzozyFePMIvCOZUQMQWkh4w9Ez8sQ+txV2d7PVN
         g0qQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDEgPQkaK10jg0YPXsAinkXhTWu5OJaaTgxDiLZs7q+EafEbgzoaV9X4q0sqXp7Hdp26/kG69+s3s7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuhe9fYEJiCnjHxm6CoGnpOaQYJ/gPNRkaijW0H0ZA7WI3cTpT
	HmT0gimvgHrDhQ1bSbLkCr/LupMxAuKqTuISvTWFsHM9fJNJOX1oboGOWB6R0osoFr4Tf+8UvTF
	9
X-Google-Smtp-Source: AGHT+IHev3K3SVQgkLP2RgPaTq1Lxy2HYm4oMTRmYoYyUw2Nw6EW3ANpfnFU/wTxuFK1F2XWUw2zgQ==
X-Received: by 2002:a5d:5988:0:b0:367:9ce3:1667 with SMTP id ffacd0b85a97d-3749b543c5dmr2788225f8f.15.1724935523424;
        Thu, 29 Aug 2024 05:45:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:12f5:c9c:a0e1:6915? ([2a01:e0a:982:cbb0:12f5:c9c:a0e1:6915])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749efbf86esm1347152f8f.116.2024.08.29.05.45.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2024 05:45:23 -0700 (PDT)
Message-ID: <70e1197d-b3be-4986-bae0-80e08c8a0eae@linaro.org>
Date: Thu, 29 Aug 2024 14:45:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 12/17] arm64: dts: qcom: sm8450: change labels to
 lower-case
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240829-dts-qcom-label-v2-0-5deaada3e6b2@linaro.org>
 <20240829-dts-qcom-label-v2-12-5deaada3e6b2@linaro.org>
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
In-Reply-To: <20240829-dts-qcom-label-v2-12-5deaada3e6b2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/08/2024 14:34, Krzysztof Kozlowski wrote:
> DTS coding style expects labels to be lowercase.  No functional impact.
> Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 160 +++++++++++++++++------------------
>   1 file changed, 80 insertions(+), 80 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 9bafb3b350ff..4126224c1679 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

