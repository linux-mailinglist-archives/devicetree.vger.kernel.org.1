Return-Path: <devicetree+bounces-230400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0B3C023FE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C76903A5481
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6263223A9AC;
	Thu, 23 Oct 2025 15:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pTvIhknK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0E523D7EF
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761234733; cv=none; b=frh+f/4AyBiezmXXEvvzQd1XwsNGd6tQZXGcqj8vzYak3Y1FGP/q3o98+NvqffQr3MB+K+XVzJhcb4dxNSGcY8OzY04jHyvK31+0kHxfCLcUsy4crboa+4AVln+qv1Q/+EopC5D3JhqJyeiXFV1csujH5V4hAG7FRrg/iSCRIso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761234733; c=relaxed/simple;
	bh=o/ObKfJs1u+k+n/V8h2T8GuVLfRhlMGlSmnt5OWlrr4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=olhVxCgVJlysJevWu+0NzMk85KZhP0WIjTmbUjfSc6Ba1Pry1blI3VBhPJKRoTaMazaAZwZ4GC05aGUczU2WCwUWlV40f59jf5WDXkb24jqQ0DKsmZTbmdGVWfL8n6aiIDDpUexaYnyHIevV1qVB4gyRF4IHxMJjXh4sQC+Mz2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pTvIhknK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-475c9881821so7615635e9.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761234730; x=1761839530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UChMKfgFtqIr8C5VjfJGvJdjam8gw8lOEidIOKoATQc=;
        b=pTvIhknKKHEs3w8mAk7sEqBsU5k68pIXeWcCcxJtqEJ8LWZwxfL9536muI4Nw/ChRW
         CYz4k8WqFxOC2dPQ5uqA4fAE6dxOQBfTRMAh+bq58m5Y8RVJArrZHKzjAnyRzIP8SD4T
         vvziks005IjvY+apNz9raRYzJDINi4F5u0UEtKNpga1lPGDSswdY5IEBJkBlUxvHcUjf
         f3LCSK9MzzHDY7REEwG0+W7RnUNaL/hLGuwH/mCqdWg2EdU61vIxOUCVc5XjCm4Sc0UG
         QHvDZ+TYLqHpt4KHnlD1eeVQMbu5ig6paGUMakWetzNy1/RVVjN8EPty7IGCTFe5x1Pz
         eYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761234730; x=1761839530;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UChMKfgFtqIr8C5VjfJGvJdjam8gw8lOEidIOKoATQc=;
        b=rbXZCzgJXESA+Z15qzxpFsD26XXe+Pxrm6VPlc+8eGgoFBemjiPjmaAGWVaowaXEmi
         rkF1vekbjP+fwunFRxbUwPHNidBRE6Xy/+qahAJqxEsLRhib5wpdoxfYHI7wey8is3ho
         r6/sdZ8L4glDQAQ0ZK+6c8ICxU5HhyxcNpzEpdJ0VdtiuAn9NcOPSc8qu/xBEvsDyaGo
         TLmzQPONECXbIMb17DBviXGXyfZO4Bfl69+G+DNCe4y3oAhqoGu3W9Hpbi1dHfrGcIF+
         7k8AHoOlbg71OlrVj/+yLTLzZ3A8e3k/jvJUJhdpaFOHE4Y6u9X/1OsFQGmuRSiwFe2H
         eRbw==
X-Forwarded-Encrypted: i=1; AJvYcCW52kgaqULU5ZPH5yHXs5g89gdJP0osypbvuLVfdkXbTOIpDup6+XxWd2R78WIsEaBA8xxFqI4rk5ow@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1uWhcJfScdS62VcUbQZHQsum+yerJARiCB6rucf0l+/jXF5/Q
	rIlQA0dV53QX14pxdjpBgDuZSUw5gs31mbZtYYvis2NK5UgK23L9N7bF7TszoiJDxjc=
X-Gm-Gg: ASbGncvuWHLjKqxvXA/ktTzQAVw9FpKAG9KerVm3LqPwj65ECe8xZPlrrOeZyCqJyzu
	0EThwAYN8SCVsbNaP6MT+coAy2rZcNDb0N/tw54neqqjYAj4Kw4X+oAx7mEnNJ0WBk3t4xTiQJ4
	3hYTYFNVBGKqARgaMtuWs3KXHkWTtUA6g3c2CJNEaT3FFlMXberjIT+IIp4t3QeJIo0rK+QfPLD
	6A8O+96k9qhyEMfht+s0n2ZEq8utmMxTKdSdikHXsAATLkVCKoe0AByshdApwwIdeVVdDdTJr/1
	NVkrhPUQ9qSjsxvGmqXLbiCDHaCncybawS8ZulcC2fblFeAI/QwvuJu3BYtVbNNulwiy7R5dqPs
	aCTqoABGO8nbYgDks8PMPcsxsYVSClXHyv0QJSaRU4/Z9gFwMytgS6xXEhG8yAvGplhiwCXIS1w
	RcoyOU0wTLoXBH5OASRQ4KEujunPSaFpon6XSuG1EVRiYy4UNJ/CVx66lgrJNd
X-Google-Smtp-Source: AGHT+IEeXCjVGjQn+CRC9e2WBC8gwIVLfsNALGO5dHURe/8h9psZVHO1TzAQxTL7ilIHF4+f2I9Ogg==
X-Received: by 2002:a05:6000:4603:b0:429:8a71:d5d with SMTP id ffacd0b85a97d-4298a711334mr1920460f8f.9.1761234729694;
        Thu, 23 Oct 2025 08:52:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a1bd:ad6d:e81:795e? ([2a01:e0a:3d9:2080:a1bd:ad6d:e81:795e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897f5696sm4885535f8f.14.2025.10.23.08.52.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 08:52:09 -0700 (PDT)
Message-ID: <3e5bb40d-b8de-4f6f-967f-1cdd3db4710e@linaro.org>
Date: Thu, 23 Oct 2025 17:52:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sm8650: Enable S5KJN1 image sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/25 04:59, Vladimir Zapolskiy wrote:
> Enable Samsung S5KJN1 image sensor on SM8650-QRD and SM8650-HDK/RCC boards.
> 
> The changeset is based and tested on v6.18-rc2 and it has two dependencies:
> 1) added Qualcomm SM8650 CAMSS support:
> - https://lore.kernel.org/linux-media/20251017031131.2232687-1-vladimir.zapolskiy@linaro.org
> 
> 2) a new Samsung S5KJN1 camera sensor driver:
> - https://lore.kernel.org/linux-media/20251023025356.2421327-1-vladimir.zapolskiy@linaro.org
> 
> The SM8650 MCLK change has been reviewed in v2 of SM8650 CAMSS changeset.
> 
> Thus the displayed updates to SM8650-QRD and SM8650-HDK board files can
> be used for testing these two media driver changes given above.
> 
> Vladimir Zapolskiy (3):
>    arm64: dts: qcom: sm8650: Add description of MCLK pins
>    arm64: dts: qcom: sm8650-qrd: Enable CAMSS and Samsung S5KJN1 camera sensor
>    arm64: dts: qcom: sm8650-hdk: Add support for the Rear Camera Card overlay
> 
>   arch/arm64/boot/dts/qcom/Makefile             |   4 +
>   .../dts/qcom/sm8650-hdk-rear-camera-card.dtso |  90 +++++++++++
>   arch/arm64/boot/dts/qcom/sm8650-qrd.dts       |  45 ++++++
>   arch/arm64/boot/dts/qcom/sm8650.dtsi          | 144 ++++++++++++++++++
>   4 files changed, 283 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/sm8650-hdk-rear-camera-card.dtso
> 

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

