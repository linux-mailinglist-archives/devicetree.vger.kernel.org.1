Return-Path: <devicetree+bounces-41187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF8F852B4C
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC9D128202C
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A37218021;
	Tue, 13 Feb 2024 08:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F90KYP6d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11BC182A1
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813498; cv=none; b=LlYuckfEomIWyyOZ7URgla9UvLh6aEk2trqPMGhZgNomYSIxUQtPkxk7eHrgmkpMcwdQ95+NVws/7pNWKQb+d/pyBaVi1PQ2jpX8mtp1r5a1uTQI5yOOUUgbEcWGkvI7BXqR/AiV8WmnrE6JeMnmLsFZ0vodYyTO44A31CdOJZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813498; c=relaxed/simple;
	bh=I9jBnYIWhipEV/qzDjWRu5VpS4nxIslJQA/mnywgwSY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=sM5dWwClNVzzDlYzQa0QMkEaV5ITACC9THQJlpMSGhx+gw5lqpcHYWF0KaOA2YMxUcOekd6NqurJ7GuYEa/HvpE7puPeGOXxO7KmKjOta5kWL+opyLLely54+off1bbxget/ZwoWwdb6+FuNDdqbebOxb+h1Sr80S5jq3sQ0+w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F90KYP6d; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51197ca63f5so699641e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813494; x=1708418294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RXPlfNasOUmNVQN5Xo/0NoJYpOYXgb4I9baD/+RaFaM=;
        b=F90KYP6dr7YtG5gg2hWYmzZ0haWE/zC+H/yzrI6z9Hpbt0pSgmhOJjEIbQtzMiEX6d
         7t90OAN3axutyKNvJJn1MAGt5br2EMC4JKqie9xuRAxU+8r1wPLhgRiRhCj1fBgfXLWm
         xUMPZCCgWiFdFjPMEIRTCCAqFtDHvDdS6AfW7VFmdGd5zUym5UoPEdFHW2qxEjOGzbMz
         PS/vGjLSd0a3Eee3/TPgwW9s3ptn3gIRpoK8JDGvvm0FjhbL4klMw5iV1Nz1NRHvb0A/
         FQvVvJlgu2nGy/wmsfFQW5WsW9L383RAAXQ6j36+1mG7skRYL9cQF7zMYwjzmqgMtcpj
         hpmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813494; x=1708418294;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RXPlfNasOUmNVQN5Xo/0NoJYpOYXgb4I9baD/+RaFaM=;
        b=VcUt8Qx4+xDF6A0OAJoKacgcMTNAS+L6tLdxZNcAhpV/qPNOXLsMgXzwDKT7c2pY3W
         52Jkid5wLdBP2T6B388Y+4cNfaMRCtorMucxNjDQctrqNez0J/8UwhJ6ZMC2DopBWnlg
         5MiwrJvHw1cumMKY7BwiCoEF8PL8bcJCZ5pE5bTMmkA69oTK90HccLGpXAtECid7TOxa
         mZjOQ8Dkvw0i+TCL4m/yufhSNvNBO68fEEdCRp5IcycLmjg/jI3v6O2XWn1em0J2qHlh
         R84v50SEwz4J+6GXaC+AfMUnkyQMPowBWMm4aFdP7FfzvHYI4YwGPcNvVnYKmnQkEe/g
         g7iQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTBIkXhaP3rV/JvcdlxPpJe+1kGM1cacbnLYEEJY8hp4TzjgmFIi56kAxjOcE2gZfVpgOSjyyQoQoXCFhBM52RDJ4tXvMBXtNU1w==
X-Gm-Message-State: AOJu0YzhLDLjnGAPxQPCKsY8yeYqGLE3ZNRWegwXXpFulCHhyPTrVW4K
	Rg29yHVWgVZMVmILPFMznnDyKJlFmSLrQTyWxfmENRIlsWPfu/21uStlV8Wse6Y=
X-Google-Smtp-Source: AGHT+IExvEWxCnsYH2h23+wvPh84TZru8K3RC4vkEiVnBHm0PLoJE0tb1kZ5gA//qpfMe0NC+XOpoA==
X-Received: by 2002:ac2:5201:0:b0:511:66f0:8287 with SMTP id a1-20020ac25201000000b0051166f08287mr5401868lfl.28.1707813494190;
        Tue, 13 Feb 2024 00:38:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWYT2BT3oYdNDLBy/GiXKTfN/0dA5ipW2YNTEJc8pvwG+5wpL7oncwzp2v8kNOIbJdFxL/Y2OzEkiv7P+A5EgGrMuMtTJfKnY66sBL8HQWua9UHqywNnKoPcOOScP5fWsMLCdzxyV6reUAbZXUtnkBog/4pIKX6g/xhjfuQf3b9u9z5z6hSTzGNPmFAAn/fZ3lU5Gn43CNMJGytg8+GB9skgS0abVd6eNMaPu1cBGnLZcygtEiEz/r2Psxbgo04HIlyqYwAw3iN/y+58WccH7EqJQJI+pszS2B7+f3cvoPFM07Pda3eWv3uKakSMzKHyR0ls+3ANwAA5lJ/H9DjBdsFP7IbDPqMyOg=
Received: from ?IPV6:2a01:e0a:982:cbb0:6dfb:5e62:c51f:304b? ([2a01:e0a:982:cbb0:6dfb:5e62:c51f:304b])
        by smtp.gmail.com with ESMTPSA id 4-20020a05600c028400b00411a0477755sm2857827wmk.9.2024.02.13.00.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 00:38:13 -0800 (PST)
Message-ID: <64f65168-c7b0-4365-8d0a-e57b47797d95@linaro.org>
Date: Tue, 13 Feb 2024 09:38:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Content-Language: en-US, fr
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
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
In-Reply-To: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Marc,

On 12/02/2024 18:47, Marc Gonzalez wrote:
> Add support for Freebox fbx8am boards
> 
> Marc Gonzalez (4):
>    dt-bindings: vendor-prefixes: add freebox
>    dt-bindings: arm: amlogic: add fbx8am binding
>    arm64: dts: amlogic: add fbx8am board
>    arm64: dts: amlogic: add fbx8am DT overlays
> 
>   Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
>   Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +

This change doesn't apply on top of either v6.8-rc1 or linux-next, could you rebase on v6.8-rc1 ?

Thanks,
Neil

>   arch/arm64/boot/dts/amlogic/Makefile                       |   8 +
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    |  35 +++
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso |  25 ++
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts          | 462 +++++++++++++++++++++++++++++++++
>   6 files changed, 533 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
> 


