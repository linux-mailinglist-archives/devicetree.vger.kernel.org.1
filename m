Return-Path: <devicetree+bounces-255016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A31D1EA67
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85A44304487B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67231393DC0;
	Wed, 14 Jan 2026 12:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cKwCU2/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0206396D3A
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392471; cv=none; b=u20FkRhXqisrLQGdylS7DA+OQYTNAqvudzM3uo5kr6FAQHGS4G3Lr/XA4qQV5qpCI4PIEWXddQX7bFYQf38kgX6Bj6oQucWitRIXhx/85KGeHIM2z7b2R3JAiWUUdBgMxnc88oGJXgVeJVR45CK2IGrC0y1t55nbTseXZExOEm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392471; c=relaxed/simple;
	bh=MQTu0v924KgUeLBiqNsarmjMV9Y7rjIQ7CHr5enGXOA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZkNcGO/NzHeIuuiS9y1Z6B+9AcOxnlrLZ3+2t3Tak4GUSptdqWMzbZf/BVGNrrDSUUzsreKZ/mDpHPEo/Af/+7o6uGn11Imd8tiJw9ZlPeFx1/xZuJ8QsH23VPTjwvJcfILUX3pxALP5hG/I1RLunjfNeMTfF8g1smGJxEMa9pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cKwCU2/j; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ee3da7447so4273485e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768392461; x=1768997261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3BIAKEVNAk9w++/Pw/AkpPOpkkgEFQigQGBuRd+nh0=;
        b=cKwCU2/jRgxPejlgSFt2RDrkY/KEG17xAWtqaRRh8WN4YvyTzZqPXaFpM6BdyAtuy9
         GCxl82kSS5EN1bwcZ57dkGYDHaAdZnN1+xldIaGHnF36l6tZlmhNjWutT4i4b4tcCJV2
         lp7OPVwfuM45KUbHFRwZJfAp7ykyWbJx1sXVj0veixljVEPuefYl0NL4G+bYt+0OvI+R
         mQnm24ghiMpOvptFC9LsDLeh4iJ1H29DpP1U21rxDEeyhu1IsryTw/RdhzoWTpt1zstL
         f/uBase0j/F6eI199PX//MNpSQ7IEu4/Jf14diW6A/bekoeYsp/lUd85A2XusHqfU9Gd
         xDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768392461; x=1768997261;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U3BIAKEVNAk9w++/Pw/AkpPOpkkgEFQigQGBuRd+nh0=;
        b=ViBgHvigmD7QrPLdx6zCKlzfbvzHTZAUn9Ne8HkhCcHNl6PZn1gf2Ylc+OhsLTDo41
         qv/+9QyOQl1I1K5Y/qvawhBq/enZoe17ae/S48Axap8m/qxfQE1iqMBm2Wv/JTv1M3JE
         ZvbYC/FENmqQS0wb4eGjJcytLV8OjudBLFMVaH4MbRils1kifZSRbv1zCnxO/io7jkrI
         i+tQWphAduyst52sCccVKVQ/Ja9tEa/sL8QCcn/FIbgHqmaEUMC72ZjPZ7eSx0JGef/F
         apBazJC2zh4T6wuoDhBxfGyIz5qnx2iRjMueEK5MFi0NcmruzFalVD8Svbq81biO25gD
         niDQ==
X-Gm-Message-State: AOJu0YyRV3Ia30sNKBywYy/kj2KOT/rZ0qUNp6ods/OWcbyEMBRmottm
	9wMtl5yMoBfuGA0bPQBl2dPkPbC6iJ9k7glfUvPff5QslBaQLEHRqFgkbgvEpMfw96Y=
X-Gm-Gg: AY/fxX7fH3BtplLR73IbCvRbsZTUxlNBKvTD+dZZ5TQx7jtBFcKr1UTq2pNzb3Y6Zam
	Bvj6X2aUiflshLk/duvJ3ULJvwYiBUr1Rlu2SfRPX5MEEqrqWZk0LxkkrHPJK8rwXU0pzew+4An
	rxDdrkcWbIz5trI0BQ/NlERZaaRdwKI3szyFwhff37ERsrtxUgKwRDG223Lppmvf9eXfQNgQzyZ
	Y2C7VdT7gIzhTJxSIZigwsO21xxnjEw0+ZWwa8bYf7q7c5Ng5TWP4AHVvnn6eYeffDvfz3L39SD
	AB/X8gV6WZwnMKTjK3j+9sG5B0YCp1nIbjXfmAwiKa9LyX84B9q8QzYZiH2aMCvwfeCs5qG23Zg
	owF1Ziq00NyNabUVZhVlFt6CBmAg1jRgUtRPu7WdBz1LBuV2jtEXd2UybCEP8rLFrSXvJAu+joV
	R1u5c8LJVYTE8aUCGSxE2z09pM7nZ/KEAP++tgpxCa/cv8plrqRn+ZfcugRnFMmAE=
X-Received: by 2002:a05:600c:c4a6:b0:47d:3690:7490 with SMTP id 5b1f17b1804b1-47ee47c8db0mr22733155e9.9.1768392461180;
        Wed, 14 Jan 2026 04:07:41 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee54b8c9bsm24625715e9.3.2026.01.14.04.07.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 04:07:40 -0800 (PST)
Message-ID: <695594a6-9c7b-4c9c-8134-f42e8729b0cd@linaro.org>
Date: Wed, 14 Jan 2026 13:07:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 0/2] arm64: dts: amlogic: s4: mmc clock fixups
To: Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
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
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/14/26 11:43, Jerome Brunet wrote:
> The patchset aims to address the issue raised here [1] for MMC B.
> 
> While checking this issue, I've found that MMC A and C also appear to be
> improperly described in this platform's DT. The 2nd change fixes that.
> 
> To be on the safe side, the MMC clock should also be assigned on the other
> SoCs. More changes will follow once things are sorted out for s4.
> 
> [1]: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/
> 
> Changes in v3:
> - Dropped useless assigned-clock-parents
> - Link to v2: https://lore.kernel.org/r/20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com
> 
> Changes in v2:
> - Collect Tested-by from Nick
> - Fix some typos in the commit description
> - Link to v1: https://lore.kernel.org/r/20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
> Jerome Brunet (2):
>        arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
>        arm64: dts: amlogic: s4: fix mmc clock assignment
> 
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

