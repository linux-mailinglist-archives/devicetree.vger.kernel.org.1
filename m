Return-Path: <devicetree+bounces-134700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C14CE9FE518
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7322216237C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B8A1A7253;
	Mon, 30 Dec 2024 09:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="utgezJyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E161A264A
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 09:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735552620; cv=none; b=olcyTBEUK3Ag+bHZk0Kx7gpvVWTEHVYN7+oQ1Bgh1KH2Gavrc+aUFfe0fF77Jd+UUUj/MZr/l39iodkUHi5VZ7MZ2ZvumDymtVkWhKdu5wJZ1zL219wVPHEQRo18L4OWyXoXodFX0C9JOQNfjEdRTcZkHOtgD4/9odXqyWPZfEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735552620; c=relaxed/simple;
	bh=bpyPmzy7EU69ZZrQFeXjNMMP0TEu4tny5lzf4yx24FM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SWQzx4BYHKjbd38ytMx/0rkg5NENqvrfNHAocul1ckM1eZLDAMTeNCiXlYDHemBtCmQgpkGi4AgUj42NTGgU/ko5G45V3s+EGT2ZbBQ8lgPwKCMOp8coq7Qv3oueIPRwursJBGdoFyGX4EHRKwaf3aZQZVYOH2CuyGhqMRUFbJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=utgezJyr; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-436341f575fso94677555e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 01:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735552617; x=1736157417; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5I15+dY+aIukWIWhqchquvXUi0oT/lsxucwaaW3b9T4=;
        b=utgezJyr0tZDOaTh6VudraDNasRvmpGQUmp7RyZeJe+QWT9NQnwp7IZOizIalxtGH2
         pkPioy9tzIbOoViyToHU4Rf95/J6GtJAPWEGvG4A9dxq138fxXviDm28jDwV3xHku+Og
         xjMHx0hCQRrLFoICN2iWm4VIFBdK/4oeMQd4oVYqwT+fqLfjLk3CVqHF1a927IR7uYVg
         yfbHGILPRq9iowwGPhpqyz1+Uypk28KbXHHfZQC4QZ0fKIwqi8YS7vBkmbgtft93h72V
         7/gcslKJ6wy/kjcMoTnONqfAwABEzfrIB2M/TAVxHZF118gV0o+/18Ik5QbUlwNVgq4K
         RDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735552617; x=1736157417;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5I15+dY+aIukWIWhqchquvXUi0oT/lsxucwaaW3b9T4=;
        b=ScF3s02ObsCQDz8FWUF0bkQygYkHUhUh+yb0ZcBC3Pl9ccG2fPJlBM537Jwwa2ZEe/
         3fHJ9gAQrxjYTsWYDs1D6A9hp+Uez6UKUstamkVIGf3gdtn7QDRJcd1evHXu/Eg+INde
         EYEp3RNqYY43e9DL2MzAy1gydBf7aifSgPW4Pc7Bs31sISRgWuabb93TADcvedUUb4gm
         A5Fwbc2CnoIGZUduNCy4cjetvqPQEGvzPUuGJL2G04hlwkhQdmkI+WRwnLeoSNRr1/Ta
         rZrDiKaQ5pJ5jmuK8jFV9rC72v6t4rgqnFM09xKSPCxUlUwTsXOCoYOJY6NUDN/K+AZG
         Wp3A==
X-Forwarded-Encrypted: i=1; AJvYcCVxG0Aw7zp7ZsDHlV6udSPZfU/4vnqX3FAEIj3jmeB+68bmlVWcDYnVnWYPiWEg78CJ55PX5ayGWLau@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1tXgU4d9CVqM12l62D2o5Im5k61bNJ6DnGjL/N9IO013SEcJQ
	44ln8lA1zz2I+a5O3RQh7osQYZ5G09krQG0dtTIaZ2PgAapmFBDZFsD6QYg82DM=
X-Gm-Gg: ASbGncuUFWDdUgWfNxDjR5X8gabbLkrXirFwRsGz2Q9OQ7agn0u8Gx61jW+AjCogEU+
	TkTktk6Fb0u0vRS14DHQRRmOUmIoLKwVWtFFn2iuD1ju+SlQV4Q1Mf//vExSYA8zpsEIY1K4D+z
	L6Y1iteUqxOmbpQCmLXp5RPclLTJ2w8iwtGR+Ua21co0voaKIuxarW6X88o0o2tFsSQIAWMTEl/
	s2heG3zWqRa7p51HY52nyJPDqz88rH423EKtbFsq4CG09j3alEJPPtDrQIGcasG/MbWnNfwYg8M
	HVNc2rzouMAUJBY2AHtOYIu85p62CLcCrA==
X-Google-Smtp-Source: AGHT+IEBE78/HeRDA/F7+TamaKKbELYqVuNJpyUAMgc9BzN9CCa+wQXxK+QSy+ywq+gUvsq3dokZUw==
X-Received: by 2002:a05:600c:350c:b0:434:9ec0:9e4e with SMTP id 5b1f17b1804b1-43668b5f6f7mr315772855e9.30.1735552616872;
        Mon, 30 Dec 2024 01:56:56 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:883b:3c16:2465:ad55? ([2a01:e0a:982:cbb0:883b:3c16:2465:ad55])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366128a3c9sm352128265e9.40.2024.12.30.01.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 01:56:56 -0800 (PST)
Message-ID: <da394f9e-e1f7-432d-871d-e0ae400e38ca@linaro.org>
Date: Mon, 30 Dec 2024 10:56:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/5] dts: amlogic: switch to the new PWM controller
 binding
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, jbrunet@baylibre.com
References: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
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
In-Reply-To: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/12/2024 22:25, Martin Blumenstingl wrote:
> This series switches all Amlogic SoCs to use the new PWM controller
> binding. The main benefits of the new binding are:
> - the pwm controller driver now picks the best possible clock to
>    achieve the most accurate pwm output
> - board.dts don't have to know about the pwm clock inputs anymore (as
>    the driver picks the best one automatically)
> - new SoCs only need a new compatible string but no pwm-meson driver
>    changes, assuming only the clock inputs differ from older IP
>    revisions
> 
> This silences the following warning(s) at boot (for each pwm
> controller instance):
>    using obsolete compatible, please consider updating dt
> 
> I have tested this on two devices:
> - meson8b: odroidc1 (boots fine and cycling through all CPU
>    frequencies and thus voltages works fine)
> - meson-sm1: x96-air-gbit (boots and the rtw8822cs SDIO card is
>    detected, so the 32kHz clock for the SDIO card works)
> 
> Since I cannot test all devices I'm asking for this series to be
> applied so the Kernel CI board farm can help verify it works on all
> boards available there.

Ack I'll appply them for the next release so it stays in -next for a while.

For the serie:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks!
Neil

> 
> 
> Martin Blumenstingl (5):
>    ARM: dts: amlogic: meson8: switch to the new PWM controller binding
>    ARM: dts: amlogic: meson8b: switch to the new PWM controller binding
>    arm64: dts: amlogic: gx: switch to the new PWM controller binding
>    arm64: dts: amlogic: axg: switch to the new PWM controller binding
>    arm64: dts: amlogic: g12: switch to the new PWM controller binding
> 
>   arch/arm/boot/dts/amlogic/meson8.dtsi         | 18 ++++++++--
>   arch/arm/boot/dts/amlogic/meson8b-ec100.dts   |  2 --
>   arch/arm/boot/dts/amlogic/meson8b-mxq.dts     |  2 --
>   .../arm/boot/dts/amlogic/meson8b-odroidc1.dts |  2 --
>   arch/arm/boot/dts/amlogic/meson8b.dtsi        | 18 ++++++++--
>   arch/arm64/boot/dts/amlogic/meson-axg.dtsi    | 24 +++++++++++---
>   .../boot/dts/amlogic/meson-g12-common.dtsi    | 33 ++++++++++++++++---
>   .../boot/dts/amlogic/meson-g12a-fbx8am.dts    |  4 ---
>   .../dts/amlogic/meson-g12a-radxa-zero.dts     |  4 ---
>   .../boot/dts/amlogic/meson-g12a-sei510.dts    |  4 ---
>   .../boot/dts/amlogic/meson-g12a-u200.dts      |  2 --
>   .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  4 ---
>   .../amlogic/meson-g12b-a311d-libretech-cc.dts |  2 --
>   .../dts/amlogic/meson-g12b-bananapi-cm4.dtsi  |  4 ---
>   .../boot/dts/amlogic/meson-g12b-bananapi.dtsi |  4 ---
>   .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   |  4 ---
>   .../boot/dts/amlogic/meson-g12b-odroid.dtsi   |  4 ---
>   .../dts/amlogic/meson-g12b-radxa-zero2.dts    |  8 -----
>   .../boot/dts/amlogic/meson-g12b-w400.dtsi     |  6 ----
>   .../dts/amlogic/meson-gx-libretech-pc.dtsi    |  6 ----
>   .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  2 --
>   arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |  8 ++---
>   .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  2 --
>   .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  2 --
>   .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  2 --
>   .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |  2 --
>   .../boot/dts/amlogic/meson-gxbb-wetek.dtsi    |  2 --
>   arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 25 ++++++++++++++
>   .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  2 --
>   .../meson-gxl-s905w-jethome-jethub-j80.dts    |  2 --
>   .../meson-gxl-s905x-hwacom-amazetv.dts        |  2 --
>   .../amlogic/meson-gxl-s905x-khadas-vim.dts    |  2 --
>   .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  2 --
>   .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |  2 --
>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    | 25 ++++++++++++++
>   .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  4 ---
>   .../boot/dts/amlogic/meson-gxm-rbox-pro.dts   |  2 --
>   .../amlogic/meson-libretech-cottonwood.dtsi   |  6 ----
>   .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     |  6 ----
>   .../boot/dts/amlogic/meson-sm1-bananapi.dtsi  |  2 --
>   .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  2 --
>   .../boot/dts/amlogic/meson-sm1-odroid.dtsi    |  2 --
>   .../boot/dts/amlogic/meson-sm1-sei610.dts     |  6 ----
>   43 files changed, 132 insertions(+), 135 deletions(-)
> 


