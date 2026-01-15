Return-Path: <devicetree+bounces-255439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1CBD22FC0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA1A430069A9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2807332D0DA;
	Thu, 15 Jan 2026 08:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gJFesSkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65A332E150
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768464127; cv=none; b=K03bXX4fFzp6u6WFfnkGTt1iQcmwy9BLhhJrkFkvh3w20YZTOddkFVBwBae6PMFWi50PeFKiq9BPoecDw2rX4vRFeFN3nb9igeRcA+4/fG4IFq0FFla0n1TjP9uX68px0Gb9pw4c+DrTLD8RsHo1MFC781ew2035HCLB71revQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768464127; c=relaxed/simple;
	bh=0B2vzOQRUnKhP12Ws6mqxaIBZ35RCGbC7+dDHLgYeNA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=CVfiOfgVGTiXDeRoP2lry20VkPYUb89FUpE2B4ptLZuISag5zFWRg1QHwnkqCjcJaUHDxr9rCOZaqIq0mHcpYGcez2teXpx6QN+FDhjMNV+rnyV2o8mv3UaoeqQsaOYvGawour5oFeFpccfUVUooCnrAiqB1FscUoVmV/joLA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gJFesSkq; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-42fb6ce71c7so505422f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768464124; x=1769068924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zYwWw8VV+pZ5kRe2p0etswhnBCYm9kWmCY4NPdnKmVQ=;
        b=gJFesSkqfzldeEb70lNXNXU4MVB/WOaR3Aay+PyUaYsknXWFWLGu5se5NWKyj0aJPf
         fvhA/o2cIZZy4GzdMqCTW2NDPNCayIKadd1I2sDyEcYTG0sVg+OgC17P+NShoMtVwDWo
         RKEEnZDLX+dFy14n3QiWjcLh2M01s1o7gxeHcI7s/xvtaK72QzCSMamUcuvwsHl74bnl
         NEdjkLmBFRkNtOa1iOfbUyrRKDPj7gyLJxe+7GgXNokZFpFeLiVKvDrlZZ5GUnjyNZbS
         uuZrhuzMrw8PbuAThP9BobFoPTd1yGF5vYYuwo10eY6+UKq1CuXevty6pe33tMfPq+I0
         cSug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768464124; x=1769068924;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYwWw8VV+pZ5kRe2p0etswhnBCYm9kWmCY4NPdnKmVQ=;
        b=iI1rNHV8DZCRIAocsSCStajzvfCC4PRlRs9IeBA62zHccFpOSmjM4E7Kyi3pQlWoOb
         2iNrYsOVfW+5mTjyd9VxYvc15sysqHoCw1OZjFCdIEtCUi7/NJG0q7PEocOWOI28lT8D
         PA2rkYao3iqMDnxhG9IkTrlfujA8IsdPJs1FtVNw/4jkNuUpQlYHToROGe0OG/Yff0sX
         HB3O23WlmTI6zON3RZbbQ1a8ffPRcaPhv+NqfD4KfZYxbXT1hNGlzpAyzY3XgnOi0vpV
         Qp7jo6VpdvpnzvCx4e1vWfr57qE2pPZSuGnHxtrJ/tomRH73V0onnBiDD0sMiH88yKoK
         zLdw==
X-Forwarded-Encrypted: i=1; AJvYcCUzqEHInpFUKw5taWZF3QL+8FYfMEVVap0DaY/cHJFK1VeFkPumzgQ62W8L+1JfBDpA/uU8Mz0Cccrf@vger.kernel.org
X-Gm-Message-State: AOJu0YyQoEvpuRP0SjikGqRqTkb4Bd0uZULQsaU5C3Bpz9wyel5fV7a/
	WwTtKfxH9A3H3IkFPxeryNC6SpwQABntaPTmiqhMIUURV/OnhMpXoHDHVs8LM7abjt0=
X-Gm-Gg: AY/fxX5be1YiNUlkjuzIo+y+VHa8i6fHX7beQNE47K5ELh6HlpCHGF1AP1d1+4UbDjq
	Erv2cD83H4pKswIyIHOf7RJa2jCOYGbTNeUuR/U16t5ng+QeV4uSmi7X1v9SV0mQzvkQUVsfUWv
	SFrHSD4Q4HsRNy1we8da6yd4ZRqpuc3F+YM2XMC1a70//1dmkrNGeXXHtr0dMeDkjces2GCbBBP
	Jsj3xKS5n4mVjq/rEHxaN/PxQS/HARz/nhnfjiz+xojoFPQqcvio8p7Itb7wHDQFPVeUDaoAfKw
	z3pvhBczZPbnA1rGWF9V5lGmRfDlPXYHEitXIPgzfWPZITsAo4Qp4L+n1sch/KFCd/MaEEPK7rK
	KDVbay5MWUm+K1vnwfLz87OqpWf3/R/AjI3csRlYvUPrymtHheNZrgQ34MVTnMkaKsJkdiG2UKu
	bMTnHpGfeTRt5cSFPOaDFWrdywIbfkkFfQ4qZHtLoOp6K7n/HS7kdgBqWo4+Z/5vc=
X-Received: by 2002:a05:6000:1a87:b0:42b:396e:2817 with SMTP id ffacd0b85a97d-4342d5c3abemr6883834f8f.40.1768464123399;
        Thu, 15 Jan 2026 00:02:03 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a650sm4300283f8f.4.2026.01.15.00.02.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 00:02:02 -0800 (PST)
Message-ID: <00960678-8907-4e84-8b24-e5cbe18d39f5@linaro.org>
Date: Thu, 15 Jan 2026 09:02:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/6] arm64: dts: amlogic: assign the MMC signal clocks
To: Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman
 <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>,
 Yixun Lan <yixun.lan@amlogic.com>, Nan Li <nan.li@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
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
In-Reply-To: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/14/26 18:08, Jerome Brunet wrote:
> The amlogic MMC driver operate with the assumption that MMC clock
> is configured to provide 24MHz. It uses this path for low
> rates such as 400kHz.
> 
> Assign the clocks to make sure they are properly configured
> 
> This fix has been split into multiple changes to get the Fixes tag
> right and help stable pick up the change.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
> Jerome Brunet (6):
>        arm64: dts: amlogic: c3: assign the MMC signal clocks
>        arm64: dts: amlogic: a1: align the mmc clock setup
>        arm64: dts: amlogic: axg: assign the MMC signal clocks
>        arm64: dts: amlogic: gx: assign the MMC signal clocks
>        arm64: dts: amlogic: g12: assign the MMC B and C signal clocks
>        arm64: dts: amlogic: g12: assign the MMC A signal clock
> 
>   arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi       | 7 +++++++
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi         | 5 +++--
>   arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 6 ++++++
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 9 +++++++++
>   arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi       | 9 +++++++++
>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 9 +++++++++
>   6 files changed, 43 insertions(+), 2 deletions(-)
> ---
> base-commit: cd3b654a413c14648d0074ca160da62e4e29ac88
> change-id: 20260114-amlogic-mmc-clocks-followup-a0733cc59283
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

