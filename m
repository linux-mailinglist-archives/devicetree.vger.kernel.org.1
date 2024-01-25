Return-Path: <devicetree+bounces-35043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD4A83C2FB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85AE21C21A96
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14F24F60D;
	Thu, 25 Jan 2024 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FaKzqJX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5D94F5EF
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706187753; cv=none; b=DINBRWbC4WF3sRzx8HqiCS9FLzZ7FB9aEo2lKt8QnvQ9Q5wMVsqqoV7rNm9QTUvOPHKFTcAL3XA9AGTK9hWaNxzxYwi24rNfEeF3B/IJjJtruoJc3mhG0J5eHW1aHbsA6IMTkmPVCadAZcIk/lftZxVA81wqOldKhv3ez/LbHEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706187753; c=relaxed/simple;
	bh=PZPsDeOUYJ7EtQLwyftW+lZtXWNvaLtesplMzpUyyko=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=GfXZR8XTGCznqKgye/0Cox52wGgzatzK1bnFcwy2embPIC6cw4xHGjq3xXgRKCWFX0OXxtJFOOI12twu+ztWVeShaZonp/RmZtchjs0X/3zcSqibmyuUvf91BYsgn+ghVpcEvcpt/2CrWE+gi23phsCYFQ3cqTZGLRy+biSSwDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FaKzqJX5; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-337d58942c9so6728505f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 05:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706187750; x=1706792550; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lD7MpcluacecXxxZv9ArcTx8OSTRjs7uHyYBIQhdwSc=;
        b=FaKzqJX5IHPFBcHq0aQvQbvPrEC6mmd8Pxrr++bfWsiR+rk04svbGYPTLspTZ6aqjK
         0hLu0nghB/guK9OOqB/Vm89L4GfW1o/Vd166JMwlXB+lm+SPHCGZPUuLDulBr4xpPgdm
         4d9gtBSrFJe6rIaAPQOEg4ys0YQnrIJJHTxDRSM3y2nm0YSuUJQSyyiOnxA5P43Lo7I+
         MmC0Zb2+NqiktcHRgPePMvQxWyiIp3Ypep1NraaYLTaYVfZSpyBLVLwiJQ/0eCdEaenL
         +vvLNM8a0LYLd+RVcA76Vj/bT/QEsLkUfhpL4NO7cDIA6UsYyp0hqlzS6AnRglpgAIaj
         tmZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706187750; x=1706792550;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lD7MpcluacecXxxZv9ArcTx8OSTRjs7uHyYBIQhdwSc=;
        b=sLE69tabCfG1GnIrmO5RWFcyRbvpmGJkrJNK2ofwLLxSLDBSSZvl4GsQPm5ycYxhIe
         MyN/LxsZj3soagZX58VGOkqsslAhUTBWS0PCeg1z005iYK5xwGOZzgUC5W3P6TBH3SBp
         EcEPxWRqejGqBONiDm9CcQ26DYQiVspKlOqme46NHxpR4jgcLtqvtbo0c125XSD+4FaG
         8BTyjBBUJjFeZJAA1Yf/FTrvocRCHLDeLXhO0G3zbjyaG2XP+4w3wb6lVMLD057kYCTx
         gvKswpvMA2wALzzoHgBLVZtufLfnxyM1or2T+jy1MWvdQyD/ExT2igHDoCat92SWJH8p
         xegw==
X-Gm-Message-State: AOJu0YxPRuQepIQrsueCpK1vvIt7t/Y+cQkCdPiNBTF5SvEwmTXfeQcx
	E0tNaiE9O2xouaTlOJWyHGBYnuxoazK4SApwKoCdlAL3AbhMXWJw2KLuhgps79M=
X-Google-Smtp-Source: AGHT+IFK75HBq7zxUuz9aUzgsUFZfiLdUDqY+LTZBe5ZRzSInHA5BXiA1XLvnXCCrqTaXarVaVR51Q==
X-Received: by 2002:a05:6000:70a:b0:337:c693:dc06 with SMTP id bs10-20020a056000070a00b00337c693dc06mr513915wrb.19.1706187750183;
        Thu, 25 Jan 2024 05:02:30 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1a7d:7b36:3842:9bc3? ([2a01:e0a:982:cbb0:1a7d:7b36:3842:9bc3])
        by smtp.gmail.com with ESMTPSA id a17-20020a5d5091000000b003392d3dcf6dsm11781877wrt.0.2024.01.25.05.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 05:02:29 -0800 (PST)
Message-ID: <320eeed2-af8c-4a83-b0d6-301ceb74f532@linaro.org>
Date: Thu, 25 Jan 2024 14:02:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sm8550-mtp: correct WCD9385 TX port
 mapping
Content-Language: en-US, fr
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org
References: <20240124164505.293202-1-krzysztof.kozlowski@linaro.org>
 <20240124164505.293202-2-krzysztof.kozlowski@linaro.org>
 <d1cde782-c223-4400-a129-18e63a10a415@linaro.org>
 <3f03ebc4-c67a-40cb-8863-d9c800af54fa@linaro.org>
 <8819b406-34a4-48ba-8d69-25cb4cbcf3e1@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <8819b406-34a4-48ba-8d69-25cb4cbcf3e1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/01/2024 11:47, Konrad Dybcio wrote:
> 
> 
> On 1/25/24 11:43, Krzysztof Kozlowski wrote:
>> On 25/01/2024 10:59, Konrad Dybcio wrote:
>>>
>>>
>>> On 1/24/24 17:45, Krzysztof Kozlowski wrote:
>>>> WCD9385 audio codec TX port mapping was copied form HDK8450, but in fact
>>>> it is offset by one.  Correct it to fix recording via analogue
>>>> microphones.
>>>>
>>>> The change is based on QRD8550 and should be correct here as well, but
>>>> was not tested on MTP8550.
>>>
>>> Would this not be codec-and-not-board-specific, anyway?
>>
>> Yes, indeed, it should be.
> 
> Should we move this to the driver and drop the then-uselesss
> dt property?

Actually it's codec-and-soc specific, so I'm against dropping this.

On the sc8280xp & sc7280 it requires a different mapping because the
TX macro changed the way to map the soundwire channels since (at least) SM8450.

Neil

> 
> Konrad
> 


