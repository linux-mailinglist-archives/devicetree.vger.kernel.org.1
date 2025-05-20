Return-Path: <devicetree+bounces-178735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E18ABD05E
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 09:24:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 293973A90E4
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 07:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B724E25D53E;
	Tue, 20 May 2025 07:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jM6Fiesq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0882550D0
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 07:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747725882; cv=none; b=SMq2pWhlppbocAozTlX8tYrWqlOmmRaIoiFpF3Aaff09DoN2PNbaMltJMfTo9gFIWo0bP3xDSuqWG/H6UdPGpkOcLEBJLlVKtz+OG+Z+bNFrgjMo9WkUiGu9e89YJIDFrm+yw22p3Spe6FQII5H2jx9GUNBhXJkejlsnK5bv/zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747725882; c=relaxed/simple;
	bh=G1B58w74Z1XkHuGdOpqL9iJd92w5jOmvfrWD/wVaWpQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=fLeBTB69/sTKsYRoAN9iWyxLepzzrrCA51ldxbalP3rX1+c7pjUu1LZyhQOicAPmI7esINiAZdGBRMM1+MZqFgg5c76lOUu1WETs4kxBkF59gTyj6sYwx+WYL3Ss+ySJEReNsDpcFXAKEhRN3N4f2x/kg4F+BWd2Vevm9SGVQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jM6Fiesq; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-442eb5d143eso52136865e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 00:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747725878; x=1748330678; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjtwVIeb8KP7j4LUHx7LL745xRZ8BRrZvz5Uu55XH1M=;
        b=jM6FiesqIgn0beC/u7iIPnPaHqvv2ex6Guf7XWLH+1MFYv1km+od2tGfT7G0eVSyJ2
         aR5gsUNTEefV/IbOFWiwcdunJh45A1qDy/Qfspi1a9YzzYubxdGtdq4IuUTID/I7rD9G
         ooJ1VryI51bcurWpKQTPFdl1QzsPRvC/+tg1fXtfHMhl0zyzsw3+l6Qp0hApTh7zBAA7
         UoyxzqIbigZbk5THCckkpZvEXdWKbA9brXLI9PNFRIsmPx5stXIbIOZOlPguBsJL2wiD
         GG0X2tvqXbbxPGauhZgr9JeADFeJNUe2KxaR24sTRpBY7eCAXIfaGawhlntXPlqVnKvK
         dDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747725878; x=1748330678;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NjtwVIeb8KP7j4LUHx7LL745xRZ8BRrZvz5Uu55XH1M=;
        b=hQ/s3/INopibCD4JbWzBcrc5pFG9azrXknHXjKm8+Yo8jKNI8yh5DSDmmfx7/XXYTD
         rfvAtJkq9DouUbIrpEATm5HZJOjn/KiilEMhK1X3YHEwcFdTL9gFuVl/wYuHtq5J8USM
         9ndNDEB9hVRc7pH2wRBO31qpRWSfX0OkP/HrFpbAojHCLPEulFgLlsNc+ew6uMvRAtIj
         lE7edvKPvCZnJqm3DOy6+B8ymsRUhqKrE3Qhs5314lqhNR1lWQvJC2pob0R3e4JB85zW
         4hIAD4albfZj4s4CuszrGqpVOrUbpYAZchN1Q7xld7GftRBhP4wXm9bWnitIUbT8eNDL
         oFUw==
X-Forwarded-Encrypted: i=1; AJvYcCVj3Igp5n1EnxEHA5ow1pbXKB6YA25Xg30d6w6gqAuQ4Hv5eatpTXD8wZ0Rl/W5IdHZpHzYVqQcD4vk@vger.kernel.org
X-Gm-Message-State: AOJu0YziJzrThibN2FgfLwoCw1zGehWTLjXI7OuyQ0xL0kwjDPm9S/Lc
	39o6YfW6d6P/gbPODyTRuTg4AEZA+ur0YGFhfU3n6SvBOKq34R6SjbbLjBVWqREH7uo=
X-Gm-Gg: ASbGncvWlBA7jyS7J80U4WnoXxXfVNpIiZCykndEMHHJ0GltvQe1PYBr1hJklQC9nYF
	RenRLjZrfaSKGofFtCBwXnYQCBZqKiFoH9c51ItRdoCHMMYn/9cLgjgvII4TmhpNuycHhAprRzH
	tHmjlOOBgNl4b5LbvzlkpnZmdjtOWAh2i4FtmRMfF9drMfLcx+jss4InPeA+cifnO6URQwDErEa
	WxLz/n4OZ+k+hs8OEWeh6peSU8T2sLqfeEUJufAOmLrZOVoQwBazFuxXRVMqP3BzIq8MMS7xcjY
	wKyOB8Cj86Aln7MTHrdAlkEQjDTXkvQmKhYJ61NGJAnfBYFz6+IcS78VHHSrphMAlWgx4/xb50A
	180/y04IIqjNNi/Uh8iTZFYcvwfyH
X-Google-Smtp-Source: AGHT+IEJpZSEMv+5rch7EvwPkXN0SGph1lLlO3XlZnPDxQO4judg+KNufcAsGR1YU4k0/O2TJFSGrQ==
X-Received: by 2002:a05:600c:1d8d:b0:43c:f44c:72a6 with SMTP id 5b1f17b1804b1-442fd60a41cmr161114225e9.2.1747725877694;
        Tue, 20 May 2025 00:24:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fb2e:6266:4e39:ce68? ([2a01:e0a:3d9:2080:fb2e:6266:4e39:ce68])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7ca2de7sm18762645e9.35.2025.05.20.00.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 00:24:37 -0700 (PDT)
Message-ID: <ab2692a5-e428-40bf-8071-cad6ae96dc3b@linaro.org>
Date: Tue, 20 May 2025 09:24:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/5] phy: rockchip: naneng-combphy: Add SoC prefix to
 register definitions
To: Yao Zi <ziyao@disroot.org>, Diederik de Haas <didi.debian@cknow.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250519161612.14261-1-ziyao@disroot.org>
 <20250519161612.14261-4-ziyao@disroot.org>
 <DA0DU2P8UWSV.3U07EFFLKBPXQ@cknow.org> <aCv8vRu8gjrvK8wr@pie.lan>
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
In-Reply-To: <aCv8vRu8gjrvK8wr@pie.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/05/2025 05:53, Yao Zi wrote:
> On Mon, May 19, 2025 at 09:26:05PM +0200, Diederik de Haas wrote:
>> On Mon May 19, 2025 at 6:16 PM CEST, Yao Zi wrote:
>>> All supported variants of naneng-combphy follow a register layout
>>> similar to the RK3568 variant with some exceptions of SoC-specific
>>> registers.
>>>
>>> Add RK3568 prefix for the common set of registers and the corresponding
>>> SoC prefix for SoC-specific registers, making usage of definitions clear
>>> and preparing for future COMBPHY variants with a different register
>>> layout.
>>>
>>> Signed-off-by: Yao Zi <ziyao@disroot.org>
>>> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>>> ---
>>>   .../rockchip/phy-rockchip-naneng-combphy.c    | 560 +++++++++---------
>>>   1 file changed, 288 insertions(+), 272 deletions(-)
>>>
>>> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>>> index ce91fb1d5167..1d1c7723584b 100644
>>> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>>> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>>> @@ -21,78 +21,80 @@
>>>   #define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
>>>   
>>>   /* COMBO PHY REG */
>>> <snip>
>>> -#define PHYREG33_PLL_KVCO_VALUE_RK3576	4
>>> +#define RK3568_PHYREG6				0x14
>>> +#define RK3568_PHYREG6_PLL_DIV_MASK		GENMASK(7, 6)
>>> +#define RK3568_PHYREG6_PLL_DIV_SHIFT		6
>>> +#define RK3568_PHYREG6_PLL_DIV_2		1
>>> +
>>> +#define RK3568_PHYREG7				0x18
>>> +#define RK3568_PHYREG7_TX_RTERM_MASK		GENMASK(7, 4)
>>> +#define RK3568_PHYREG7_TX_RTERM_SHIFT		4
>>> +#define RK3568_PHYREG7_TX_RTERM_50OHM		8
>>> +#define RK3568_PHYREG7_RX_RTERM_MASK		GENMASK(3, 0)
>>> +#define RK3568_PHYREG7_RX_RTERM_SHIFT		0
>>> +#define RK3568_PHYREG7_RX_RTERM_44OHM		15
>>> +
>>> +#define RK3568_PHYREG8				0x1C
>>> +#define RK3568_PHYREG8_SSC_EN			BIT(4)
>>> +
>>> +#define RK3568_PHYREG11				0x28
>>> +#define RK3568_PHYREG11_SU_TRIM_0_7		0xF0
>>> +
>>> +#define RK3568_PHYREG12				0x2C
>>> +#define RK3568_PHYREG12_PLL_LPF_ADJ_VALUE	4
>>> +
>>> +#define RK3568_PHYREG13				0x30
>>> +#define RK3568_PHYREG13_RESISTER_MASK		GENMASK(5, 4)
>>> +#define RK3568_PHYREG13_RESISTER_SHIFT		0x4
>>> +#define RK3568_PHYREG13_RESISTER_HIGH_Z		3
>>> +#define RK3568_PHYREG13_CKRCV_AMP0		BIT(7)
>>> +
>>> +#define RK3568_PHYREG14				0x34
>>> +#define RK3568_PHYREG14_CKRCV_AMP1		BIT(0)
>>> +
>>> +#define RK3568_PHYREG15				0x38
>>> +#define RK3568_PHYREG15_CTLE_EN			BIT(0)
>>> +#define RK3568_PHYREG15_SSC_CNT_MASK		GENMASK(7, 6)
>>> +#define RK3568_PHYREG15_SSC_CNT_SHIFT		6
>>> +#define RK3568_PHYREG15_SSC_CNT_VALUE		1
>>> +
>>> +#define RK3568_PHYREG16				0x3C
>>> +#define RK3568_PHYREG16_SSC_CNT_VALUE		0x5f
>>> +
>>> +#define RK3568_PHYREG18				0x44
>>> +#define RK3568_PHYREG18_PLL_LOOP		0x32
>>> +
>>> +#define RK3568_PHYREG32				0x7C
>>> +#define RK3568_PHYREG32_SSC_MASK		GENMASK(7, 4)
>>> +#define RK3568_PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
>>> +#define RK3568_PHYREG32_SSC_DIR_SHIFT		4
>>> +#define RK3568_PHYREG32_SSC_UPWARD		0
>>> +#define RK3568_PHYREG32_SSC_DOWNWARD		1
>>> +#define RK3568_PHYREG32_SSC_OFFSET_MASK	GENMASK(7, 6)
>>> +#define RK3568_PHYREG32_SSC_OFFSET_SHIFT	6
>>> +#define RK3568_PHYREG32_SSC_OFFSET_500PPM	1
>>> +
>>> +#define RK3568_PHYREG33				0x80
>>> +#define RK3568_PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
>>> +#define RK3568_PHYREG33_PLL_KVCO_SHIFT		2
>>> +#define RK3568_PHYREG33_PLL_KVCO_VALUE		2
>>> +#define RK3576_PHYREG33_PLL_KVCO_VALUE		4
>>> +
>>> +/* RK3588 COMBO PHY registers */
>>> +#define RK3588_PHYREG27				0x6C
>>> +#define RK3588_PHYREG27_RX_TRIM			0x4C
>>
>> Would it be better if RK3588_PHYREG* comes after RK3576_PHYREG*?
>>
>> Cheers,
>>    Diederik
> 
> It's intended to keep RK3576 definitions below RK3588 ones. The RK3576
> driver makes use of a register introduced for RK3588 variant
> (RK3588_PHYREG27). Since similar reusing doesn't happen reversely, I
> consider the design of RK3576 a superset of the RK3588 one, and put
> RK3576 definitions later in the file.

Sound logic, RK3576 was announced after RK3588, thus the order makes sense.

Add my:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

> 
>>> +
>>> +/* RK3576 COMBO PHY registers */
>>> +#define RK3576_PHYREG10				0x24
>>> +#define RK3576_PHYREG10_SSC_PCM_MASK		GENMASK(3, 0)
>>> +#define RK3576_PHYREG10_SSC_PCM_3500PPM		7
>>> +
>>> +#define RK3576_PHYREG17				0x40
>>> +
>>> +#define RK3576_PHYREG21				0x50
>>> +#define RK3576_PHYREG21_RX_SQUELCH_VAL		0x0D
>>> +
>>> +#define RK3576_PHYREG30				0x74
>>>   
>>>   struct rockchip_combphy_priv;
>>> <snip>
> 
> 
> Thanks,
> Yao Zi
> 


