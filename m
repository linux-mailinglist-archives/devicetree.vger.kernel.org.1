Return-Path: <devicetree+bounces-228036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F3968BE6E7F
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7ADAD5024BE
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 07:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AC9221F06;
	Fri, 17 Oct 2025 07:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xy4csbes"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019B510F2
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760685372; cv=none; b=jr7Mhx60bs0LHKEmfbUI1UVwzVqsLV39tkG4Zz+J5VGHZAlyib/DRCSQu30wgSJuLxVXyrSkwTcxc75/jqPb63qQDZh7FO9+KH9DYxt3OUIsleI2JULP4BTlNpLu5TetrSS7fmhm3uY7q3gQRCxEp4o9zll0phtL1z1qf4IlkaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760685372; c=relaxed/simple;
	bh=31nASrMlEYhjgquLurvUbraovx4gJmOk1TIzPuG4tJo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U9TL2Gu61KiRmPalLK71N/kE6eIl6RkIAa8i7xbQ3IsqRSHwWiFatBlbmfpHRfKVdwBpJvQCBeAW+c7xfDq89tTxkdHajlYoV1ndnKGbDgFwaeDEJEAyUAsY/qgAbSleNvlVvQQnm0s5SCwNO9w8X6pN4uDcrDtq+mR/XEaskI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xy4csbes; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47106fc51faso16441245e9.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760685369; x=1761290169; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AVXbG5CCxVfM6hnx09YFhTKic442YEoyyW/cetRSyDM=;
        b=xy4csbeslMAdKa9FtqLMz5JyNJNRMOtOh3lgbzuXjVgHZyFyaHQRJjbxmRMuk0zjk7
         x17Rxf0CAIP2FUXNEdi5wDGv8y3MJz+2T0ckf5s5kDiVkCC3fdWwohe3egyeS+NFtPKo
         wuRjlUzO+oOZtV8nhI+nkHwzmcHKhdLgdusL3s+QXAU1+c+vMUQzMT9c0AMVZ6ab97Bn
         Lm6jNur2MxWz3svGBBCZDdRU3Ax85tnKChmql+RunzLgyPhWWOh5iFfgr1W36uJEW+mB
         Y91UqH4JXe/0f8LocOs3nWrJNZtp0G1hmynHvaS1+SXf1BOCPTJjVTXm9n+a6noov4fR
         UQsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760685369; x=1761290169;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AVXbG5CCxVfM6hnx09YFhTKic442YEoyyW/cetRSyDM=;
        b=bT4nBI/Ap2fzgqpFr0HDYP+IjCxPBZXmDOBHKKdiF/50Aw96tyTspDWJ+HtnCedIK5
         wM8L3pc5JWp7fmjYls++QEvC7Q763lq3mGuObwJdU/MUpDxAAxN3ffk1t7eMVcGnVZqm
         DjjdxxO56dbPUTSFeyhkHz19p/OGK+Iephal5802VlGFLJFfaJHvsKwfNaaBn5NFK2qK
         665QUJx12Xvd0/vtFsODaPsEgyvEGt9ASWSr27uUE7b4+SAHJ+ZH4//OKO/KKKkD33Dd
         N5Y6xspaN/7gqcR27LHXhkuqsPZHvuzAno73RLilyR3vs4lRJOKf/Qb72UKBb6TvCQm2
         hPVA==
X-Forwarded-Encrypted: i=1; AJvYcCW5TazLEwTm5tX9gzgYIbuTbI5nAiuJW5jlwVcTHzwzcSU7CjDIt/BTiMkXlyWirEjk+TgLh8iLvSmn@vger.kernel.org
X-Gm-Message-State: AOJu0YxLO2SIFDvL845NxBtRtxrN8+dBbx7ouX49FABBeqt5d8PIVkiE
	PNWmzdi17qGkUOPGWPMIFUDXMkT6ce00HPI1NokKSH2LKviApq+olYQhRPSuAhNJg+E=
X-Gm-Gg: ASbGnctDx8OhifnODd+3Cvz7Lmi4UgJnr1ByEzV/S7bP0OJDccLUJLG/cC79XF4Nw8A
	P08t4f3V1nYR7Q1uZjLHprQQXJmiLhN4VhlvpCiT0bBmCRmI27dPBclc5RqsHCc302fHJfTggvd
	mOlnXjQsImlNI3b3hLGWlkcbPXbmqK8RGFMfeIPlbD1CluG3X71m7juAPP4BFHdyfT88ro/Ru5T
	ykWvkdhfKPH40NuOcBkTXhqN2jkZk7eCwm+LtV4TZfpX5HlnmtrbrHzqsKNDoWjcUYD8MKC9ZY8
	FuCBN7nFaJJWKcJFtKB9EvKAaK3fQkxh8lHUF3KyC0hKel/8nZLhOi+67moKpbRJAB2pWQIeMAl
	wsY1pIvimlP+I+TFgrvWmnPVjcpZ0BHfSwZuDSeXBpz9WUj93bIanxo5JMjJDwI0u7gSoquD2+S
	pIsnBStywKpI3zAcKF9+PlAdkrP7R8LEHJ/57IxCZKAet2aagu3eT5UkxGLDip7eFo5hsKM0oLH
	g==
X-Google-Smtp-Source: AGHT+IFkD17oo+usX5kpsOF/sHUM1VRDulZyCLwFUAsMU9A/TQDJb3xLY6V6voxUAp7hqzT/TMO5XQ==
X-Received: by 2002:a05:600c:3b8d:b0:46d:27b7:e7e5 with SMTP id 5b1f17b1804b1-47117917572mr24984885e9.32.1760685369119;
        Fri, 17 Oct 2025 00:16:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5849:4623:6b2a:2be9? ([2a01:e0a:3d9:2080:5849:4623:6b2a:2be9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144b5d48sm67532085e9.9.2025.10.17.00.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 00:16:08 -0700 (PDT)
Message-ID: <ff687b51-5f47-4edf-9611-d3730397c830@linaro.org>
Date: Fri, 17 Oct 2025 09:16:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sm8550: Enable S5K3M5 image sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 01:54, Vladimir Zapolskiy wrote:
> Enable Samsung S5K3M5 image sensor on SM8550-QRD and SM8550-HDK boards.
> 
> The compatible property of the S5K3M5 image sensor along with the driver
> is added in a recent changeset:
> * https://lore.kernel.org/linux-media/20251012231102.1797408-1-vladimir.zapolskiy@linaro.org
> 
> Vladimir Zapolskiy (3):
>    arm64: dts: qcom: sm8550: Add description of MCLK pins
>    arm64: dts: qcom: sm8550-qrd: Enable CAMSS and S5K3M5 camera sensor
>    arm64: dts: qcom: sm8550-hdk: Add SM8550-HDK Rear Camera Card overlay
> 
>   arch/arm64/boot/dts/qcom/Makefile             |   4 +
>   .../dts/qcom/sm8550-hdk-rear-camera-card.dtso |  91 +++++++++++
>   arch/arm64/boot/dts/qcom/sm8550-qrd.dts       |  46 ++++++
>   arch/arm64/boot/dts/qcom/sm8550.dtsi          | 144 ++++++++++++++++++
>   4 files changed, 285 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
> 

For the serie:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

