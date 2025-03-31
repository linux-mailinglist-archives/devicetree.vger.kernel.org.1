Return-Path: <devicetree+bounces-161914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70998A75EED
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 08:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C55553A80E5
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 06:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C7451922C0;
	Mon, 31 Mar 2025 06:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tSurU/6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1A118C011
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 06:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743403329; cv=none; b=tEV6gpKSMBhgLPk4UAdWascs2qnSsT6v99gxQg1TxSiyR8fCHkBFqROyuW3ngl3Ayxn21j62+XkRFTkLVEskOkHrNnXJGnceBBCxVn8QspJe9ve0wKehciNvWo6FoIVYTu0OTlgQSsu5jjxv8ctUEBwTWQHL/BUNoVrfQNF43Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743403329; c=relaxed/simple;
	bh=+2rhNhl4SB84aYUqvJfZumo57DfkJ75LYelGCFBJ7Bc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=adEpOkdGXUnntaaX1SHZ1VfKSo4QbSkApr4CXo8f2sR+xD/NHtW8AEeONcNbezF9TZN9KYkfDr42Nd8MG0LqYG45SPtDLfxMG4xlfD5gY46R72ish1+L5QOaRZeg1/nOyCC1JlYI5kCmscQVe+au/6mL2szN7mGmFDkWjJtXi4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tSurU/6I; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so67237f8f.0
        for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 23:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743403325; x=1744008125; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pSZWvc98awNxNS7sUp2CK9I3oZgb0IYq+6Zaom/DnwM=;
        b=tSurU/6IpnpamumyLYHJjLYEtuQv8MUAl5iapyedqqKHiOuznymvN8a2hU3y/Vlc3w
         oWSRN8/6Apu6OOkM8Sy0lKHVFKKNHB5hzGQ/2L05cKkNhSRqCnc5UeGTn4kAAU4WoZq7
         PqbKOobLEzh6wKe7ssxAA941RrXSE9T4qQ+9UWnEw/r0O2iHxzzoezxY4WGnUhRi7+aM
         QowigQ2v3C90GJj2zp0lbKzDqLtAd5YT/QwNnlwkAllkUeYCpQ+H9k6L1Gjow14piL10
         vAwSwcgEV8b+iLgZl4nz/vL/rWIoPv+/KsBGmIGRgC2o9zrWGshx49eoSbNUzKPUqnNA
         NkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743403325; x=1744008125;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pSZWvc98awNxNS7sUp2CK9I3oZgb0IYq+6Zaom/DnwM=;
        b=ZFLSB2mYuXVA3TMe0ThpDYmyx9ilCQ3C1F57RMLlMC7mLgNjaWYWdmpsPSFiBCNVTY
         +kX79HjIUGMlQDeXs9sQgsUCvOo0k6PiIpH3guxDa0ZTFt3VLK9lMQNhSe0vnmdq3HOr
         atpPTv3n76sNuh1URNQ7Nl3F/tdGUifSaJENlNlT3LVMUKjSaH+zKBdRqqTn/CcPSWO6
         BZZm1bHJOYPz8saBXwTvt0ffdTh1Tp3LLKD42XbSe27ln6y7CnrHJ4Ke7wIxGVmpJhtj
         MeIBDRqi4KP/J7qsmV3aHEfhOPGiscO1cQo17b0UUpHJ5T5KlKshdXKxa+6zQKC1ZM5z
         LK1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVazrDh70FU/n4+AV3Itw6ooyBA7R0CPMh1DyVtwGxQ+sPDEo0OEkAc+ZGhxMGm4G8mf75JlaJGzHOx@vger.kernel.org
X-Gm-Message-State: AOJu0YyLbsz0t5FfKOznwLVukFJTV3Jzm2/dXJA1cS5Gp2kyTM8UkcTl
	hrvmjtGBP3HihXxorKocIZA9SoTtn6RX3A5H4aNjAZnjuOtbbAoRgW5TY3n9fuY=
X-Gm-Gg: ASbGncuD+C5HscO9JWZczpWDvLgGTeNpi7nI4wGbOsvmoMI7y5YKOfQfrj1t3VmuJFS
	ss+8r4UY2Y6z4yVj6fmxApcT7CX3MfGBCb0afEuAhYEGA2n2+eBPjuAZNbgvfyq7/ZmGLurEOyj
	C2v6PmS+uskPVct2q2SoiHAxAQt4PFRWpREqlUSy4UIUbDfmSkWFKpNUapedKFWyVHO1VSi9/rV
	doAmm9177lfIUZLnkmDbNMplGvXKLuS6sKMGDGPOyLQZQrxQHv3iiq6cobbWBLP8XzX1UCCox9v
	dMt2OqVzcvh1juBfM4/MYzyP0wdEdcuvN1iUqSCL4OYQ6Y1MO33EBgQg6rYXISv2VC2LIe4gDDS
	rZHmkvJ2pqEvMeQkbDQTUyp/GKaM=
X-Google-Smtp-Source: AGHT+IFaaiFJvSkuFgpzRjmFl4ky713HsFznh//e5XklchpgjCOz6VUhATdj7MkI4kwAKPb/DPGB1g==
X-Received: by 2002:a05:6000:178c:b0:391:29f:4f87 with SMTP id ffacd0b85a97d-39c1211c8f4mr5516473f8f.49.1743403325590;
        Sun, 30 Mar 2025 23:42:05 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:143:2e3d:45f1:fd2? ([2a01:e0a:3d9:2080:143:2e3d:45f1:fd2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d8fccf0a9sm111590335e9.17.2025.03.30.23.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Mar 2025 23:42:05 -0700 (PDT)
Message-ID: <04c47466-b1a3-4eb2-8f28-95faa29ff45f@linaro.org>
Date: Mon, 31 Mar 2025 08:42:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/7] dts: amlogic: enable UART RX and TX pull up by
 default
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, jbrunet@baylibre.com, khilman@baylibre.com,
 christianshewitt@gmail.com
References: <20250329185855.854186-1-martin.blumenstingl@googlemail.com>
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
In-Reply-To: <20250329185855.854186-1-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/03/2025 19:58, Martin Blumenstingl wrote:
> On the LibreELEC forum there have been reports that Odroid-C2 does not
> boot when UART is left disconnected [0]. It turns out that this can be
> solved by enabling the SoCs pull-up resistor on the UART RX and TX
> pads [1].
> It's not clear whether that specific Odroid-C2 board has a broken
> resistor, the resistor is not populated (either by accident or on
> purpose) or if there's another reason.
> 
> Testing on an SM1 X96-Air shows that pull-ups being enabled on UART
> RX and TX is actually the default (either set in vendor u-boot or an
> actual hardware default).
> 
> This series enables the UART RX and TX pull up resistors in the
> default pin configuration on all supported SoCs.
> 
> Testing has been done on:
> - GXBB Odroid-C1 on u-boot by a user in the LibreELEC forums [2]
> - Meson8b Odroid-C1 on Linux (with vendor u-boot)
> - SM1 X96-Air on Linux (with vendor u-boot)
> 
> Please include this early so the various CI systems can test these
> patches.
> 
> 
> [0] https://forum.libreelec.tv/thread/28586-odroid-c2-gxbb-s905-and-le-11-06-or-12-does-not-boot/?postID=195481#post195481
> [1] https://forum.libreelec.tv/thread/28586-odroid-c2-gxbb-s905-and-le-11-06-or-12-does-not-boot/?postID=195667#post195667
> [2] https://forum.libreelec.tv/thread/28586-odroid-c2-gxbb-s905-and-le-11-06-or-12-does-not-boot/?postID=195674#post195674
> 
> 
> Martin Blumenstingl (7):
>    ARM: dts: amlogic: meson8: enable UART RX and TX pull up by default
>    ARM: dts: amlogic: meson8b: enable UART RX and TX pull up by default
>    arm64: dts: amlogic: gxbb: enable UART RX and TX pull up by default
>    arm64: dts: amlogic: gxl: enable UART RX and TX pull up by default
>    arm64: dts: amlogic: g12: enable UART RX and TX pull up by default
>    arm64: dts: amlogic: axg: enable UART RX and TX pull up by default
>    arm64: dts: amlogic: a1: enable UART RX and TX pull up by default
> 
>   arch/arm/boot/dts/amlogic/meson8.dtsi             |  4 ++--
>   arch/arm/boot/dts/amlogic/meson8b.dtsi            |  4 ++--
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi         |  1 +
>   arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 12 ++++++------
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 10 +++++-----
>   arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi       | 10 +++++-----
>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 12 ++++++------
>   7 files changed, 27 insertions(+), 26 deletions(-)
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

I'll apply them now so they can be tested on -next for this whole cycle.

Thanks,
Neil

