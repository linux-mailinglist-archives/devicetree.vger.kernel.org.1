Return-Path: <devicetree+bounces-240545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F37EC72ABE
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 64AEA34C7CC
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 07:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C013093C6;
	Thu, 20 Nov 2025 07:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xWBthFAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED80026ED40
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763625290; cv=none; b=Eu/FDgV2PGU/yHrI20W310dDQ6vs2YBUvB7O5+P8ISus+C2vElnHzilPz9moT8gTBTKOrcRrsloqtr/Dmk16CArl4BKhbI9p8sLWlBtuMILUsbT5XVUb8aOUpzWIxZW4KtGQUsRjF84pnbdb2rscOAHE15YRzu/BkeGGXjpdsOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763625290; c=relaxed/simple;
	bh=Pk3w2x5fuEEyv98mwUg8i/RuAgq/Hzl0T/cPqiM9qt0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=HzmyxOTTRnXaXkM8QhPf1fPqwbkTGMn88Qblc+BN8+NuG5xp6Ab7q2D+6tUL5+tNZjYrj3T7C0EEdd8rjHgXYLAMcvoBV4wonb7lCDFn+oZCROayXxe9qkbdskWOLZf4C90Zvg7PtdCLeKPVmh93zKty0nR58ITWivair+EpcR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xWBthFAp; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-429c82bf86bso324742f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 23:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763625287; x=1764230087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iSz2GctBw2xvU5PntnomhhO4auUxq6yMHRLtbTex4HM=;
        b=xWBthFApSXZtB2ygXrOYfrCE6AG0Kt/3nOi+cqbSuzPEga7Hcr7SvbA2L6cq2QMOBq
         gA7RCMojmIjo1KnL2BKcB0QlbV8h7RejfBG/kcOvooV2imImYzjmXFxAjPnefuNHu3In
         75apmKEQEkfHnw9qyzgHiXUzd8w4j65E1W5niJYml5fifQSf6ACwK5OaA7tjxfOrjkdV
         6/nBACdUl493Jj7gj0pbu+yOvt7pM2OZPnlXCGurzc0DDUeHeW+n/5VLisEY/n/fRqMK
         HyRJbCTBkzmFf/QahWSQ3smKS4OSMi6v5ypjzhAhlJjo9o+pcC3ZJoPgogbOBGfE5MXE
         636A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763625287; x=1764230087;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSz2GctBw2xvU5PntnomhhO4auUxq6yMHRLtbTex4HM=;
        b=DOomnx8n+ZtVqqziJkZZjG8QHEehov56VHgCTNZ9AE9kEgkvZhVq2Vv55dX1+cMLyT
         VB7/MEEyv8PJkSQuF/H+wDfnJNFrSDafK25K2JdWNDXM+WJraYwD1TVgNWf/a8maQLfJ
         VbF3pIPN0aRA1F2gYIITwB2dLlNTv3OLoGQD9M6SKSlxsclhMiMiajhxiaaJtrAwvfu/
         oLzpHWioxQMSX3BNCVvK4VcXhjoq0wwRjED7mYEZMEUZgOd9HnwYXKtp2j3uziiEJ340
         qQEXcgUcMmDXNK8bt8dK8FwjScPROhPhTRZNjIOqiY2f+uRPurlXdhA1otrf9ULNKBFn
         HXOg==
X-Forwarded-Encrypted: i=1; AJvYcCWP1AYZN2sR4CEw2ykbqOD48ajwWB3F4iK8q4GtM9rpqYB9TJz4r4/2Y/pGIJ5tosVkWZbx6wHZclpb@vger.kernel.org
X-Gm-Message-State: AOJu0YxgP35sqP8I00UW8USP4D/O+76B8VZyA4Mp3Zx913gtLmsMOMt1
	2ovEBoA8dbmOZ8Mqlkm/U7z3flUwvGazU6GULWdT/z76aAKXCFmqhRevXehHLFe8HJE=
X-Gm-Gg: ASbGnctAN3o2KzyKF0HEhFcct7oVB3WL4juQE4qpHJGO+GEqUrP7lZa5GoKcQ977Ao4
	38ViyoxQClN/gB+ct5fT7IMH1Mg2Cpwwepbf0eHK7TWCpTdgjj4bJil8CDTwbAQTu/B8oSW2QCn
	94bO3X7cye/v4PIIKrdt7QrDviPfGFKqPDX6iRyaaSY6UEHoX0X8a/PC+RasUXFdrImJMogq5jG
	5g4tBgi9Yw3Z2gkJ1S7lmmGB0UJQ18bUOZHalVT5Gq/UOq7F+M6XDJI6biCDpIK6KGfHR8Wdcoo
	kfocSnFXpKYFPl92KW/sfCcXGTq8+D6A8vdjWwtC90V4OTjv4HTeWgcpwuctd2Y3TPhkjRbBqxh
	lYoaLgDFoBKEBWUHkhs84d0Q5sZY7SmaV1C1eAArNZPoOySaE1sMbP7jBQB44cdusf2fbUW2paq
	vUZ/KryOsRZMIf8iEMm9PxCmoXStqg55y+ztmdAkNP73k5tkU6IlZDAroTsQBEGUI=
X-Google-Smtp-Source: AGHT+IGZkigYvVipOkjCsohA+H+g4xgNMAhJfXWPt674Fr40MBEpp5RlEgS30L/W6WyTzBeuC+Bnmg==
X-Received: by 2002:a05:600c:35c7:b0:46e:49fb:4776 with SMTP id 5b1f17b1804b1-477b8954523mr18503715e9.11.1763625287187;
        Wed, 19 Nov 2025 23:54:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:f6e4:d897:2b4d:1bc7? ([2a01:e0a:3d9:2080:f6e4:d897:2b4d:1bc7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b83200f1sm34221015e9.15.2025.11.19.23.54.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 23:54:46 -0800 (PST)
Message-ID: <d2b2807a-285a-40bb-8aa8-eacba97b1f14@linaro.org>
Date: Thu, 20 Nov 2025 08:54:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/5] Add GPIO interrupt support for Amlogic S6 S7 and S7D
To: xianwei.zhao@amlogic.com, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
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
In-Reply-To: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Thomas,

On 11/5/25 10:45, Xianwei Zhao via B4 Relay wrote:
> This patch adds GPIO interrupt support for Amlogic S6 S7 and S7D SoCs.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> Xianwei Zhao (5):
>        dt-bindings: interrupt-controller: Add support for Amlogic S6 S7 and S7D SoCs
>        irqchip: Add support for Amlogic S6 S7 and S7D SoCs
>        arm64: dts: Add gpio_intc node for Amlogic S6 SoCs
>        arm64: dts: Add gpio_intc node for Amlogic S7 SoCs
>        arm64: dts: Add gpio_intc node for Amlogic S7D SoCs

Coud you drop the DT changes from the tip irq/drivers tree ?

Thanks,
Neil

> 
>   .../interrupt-controller/amlogic,meson-gpio-intc.yaml         |  3 +++
>   arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi                   | 10 ++++++++++
>   arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi                   | 10 ++++++++++
>   arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi                  | 10 ++++++++++
>   drivers/irqchip/irq-meson-gpio.c                              | 11 +++++++++++
>   5 files changed, 44 insertions(+)
> ---
> base-commit: cb718411c4c05a4a424c2b73790a1648be97a4af
> change-id: 20251105-irqchip-gpio-s6-s7-s7d-9eb2ce7fccc6
> 
> Best regards,


