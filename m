Return-Path: <devicetree+bounces-40839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC32F8517B7
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:14:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0FF71C21662
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640E63C06A;
	Mon, 12 Feb 2024 15:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pFQxFIx+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E95D1DFD9
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707750865; cv=none; b=ExpXxdFSxygz8X0Nd+4l4pooeDyWlWbxSUzo47OXSbqw+nn9ykCkPqXnr2rbJaP8FooPleFgLgZOxzqExbuniKuM0S5kgU+myINvDXHwFKT+lCKsyE+ftKeTY3WB+wNc4eJWYKbFqke+8f8fIBc6SFMQilENd7d8wNwNtFqzZKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707750865; c=relaxed/simple;
	bh=pvKdDt8s9anXs6xW00dcEe09x3GhqPeeBSqkEF+b44o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=bema8xDC/kjPZTuBOKMTAPr1ZX/ie+dZHYFJB1FpO4pLTt8napFssTZKCbFo7gSrCome7UFB98IbmKRlpdrdXGsCsyATlllnuQzKwzmkZ5/QhY32s5zCk1tVlwIPCX5AoXMdDBIPJFVRAoY7a0VM0IibZeyrgyyKjafXvX2n1Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pFQxFIx+; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e0a37751cbso1200977b3a.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707750863; x=1708355663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fo7GgUNx9ydjQzWR0ClnCW5Nedm4isNUqdPpt3M6CaM=;
        b=pFQxFIx+MBL4ycjfRMdzJBGpVbVvLP8zHVRT2HNt+othj6jM7qXS9gUHXYGsHtWxNE
         NfTSKgwhyJPpjGxKsUgTSM5WJeKUGH2cAGMLLXmgqc3r+YminUwyJHvELLfBmhzjZehe
         mcdJjDTMdbUdxHAg9xPqxgZKMtsOYJ08COsYMwNDdKUQ4Hp8O4+ZnPEDpoZ9CrPgYvxb
         MWSKgalHhZyj4krRF+EDORBpEo1LNV+gFd1uKZ8zO0jqRUIImEBuFdu6udTGwoQ/EbOd
         4jDvPjIycC/TMwFRuLx/gpm0wX/qkGLyqgrY30Y0jsubM8logmy+6LaxBm2DPlhSjh13
         Vo6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707750863; x=1708355663;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Fo7GgUNx9ydjQzWR0ClnCW5Nedm4isNUqdPpt3M6CaM=;
        b=ptpG1ETQgqo9P3CWH2b2wB7NRrMCq9Ryq6NfkqgLpQAuUClWYSv3+XHCd++BLauXqT
         9A+foobE8KBQoipA9w90X1c+fSrXjNZAo+RwSaFSbeqzyku2+kHgZ9kjlD3JkAK62s9E
         HWzo0zrvHLpU4Z+eNoj3HnFoYteiL2g7aSXLtM60o0WS2NNpiqJ3eAt2GM/lI1ndN9ob
         yYDVOSimUj9jtubvR+b8vZgqNpXAnabAbSYlWUTZ9MMQmoYkDwn48/bpIgWIcR6TjNIq
         qA45fIzHvpELnngD7CnppYb6feyeZikD50wD4sj9sbPZWHgZEU2GXKO6DuXbcFBU+of7
         25Aw==
X-Forwarded-Encrypted: i=1; AJvYcCV4bT+kzkyBVnUY7J9m6zDmknwH99OO0PT2/7AZUtZyVw+TGwu6mRX31U4MApZP3GB36eTgF9Oq3M/PLmP5VOQv6Fejmo3JJ9s6yQ==
X-Gm-Message-State: AOJu0YymraBPksreYHheESZsaAjo+1q7QNdGhiwuohBRL6aV58SMmERm
	Ppf4pOhn7VyAuke+jknJRDnoh8QzVteuNITZU+Cym0gJEeULUG703HxxJ3G95+8=
X-Google-Smtp-Source: AGHT+IHZFQ1gA2Br7l0kHmCeNRREXr7+PW+FYYzXcX1LKsgCqC0HdWTh+TovunJV+oTtwl52+0i1/Q==
X-Received: by 2002:a05:6a20:a398:b0:19c:8fa7:7198 with SMTP id w24-20020a056a20a39800b0019c8fa77198mr3510628pzk.32.1707750862636;
        Mon, 12 Feb 2024 07:14:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUT5NTuuUKac2tvKRjKhglViO84V5ztddluhtiMeliNFAJk0wp1NF7ym6c0FcuLgw/pYavMN4xBL1FAbE4TAq82xF03EvMmTYEqe8byqKLgCZ7XibmP7/soUYCdd6F92Rx1+3YQmijyXYJuYOt2ufsQAtcCfuXxy84hhTGl+akRE4ALIbhkHophtHUrvJJmznCK6NrkqJaM/Br5eTLiQHUz6UVt6DnsWRybvGhb0TSExJURBRijQJmGD1CybolMzn/9Vf5k8ADugLjHSAV8ipFUCs2hrHmfoyvb8Le1n42uxJr29yPVqsgn+zzecua0k/50n77+WO2fury4DrfDrT8QTjD4Ke9MigI=
Received: from ?IPV6:2a01:e0a:982:cbb0:fcee:f026:296d:135f? ([2a01:e0a:982:cbb0:fcee:f026:296d:135f])
        by smtp.gmail.com with ESMTPSA id y8-20020aa79e08000000b006e0949b2548sm5568101pfq.209.2024.02.12.07.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 07:14:22 -0800 (PST)
Message-ID: <08b1ac0e-76a5-4daf-a944-091c42eb9e55@linaro.org>
Date: Mon, 12 Feb 2024 16:14:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [RFC PATCH v1] arm64: dts: amlogic: Add Freebox fbx8am boards
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
References: <8c865c62-cd80-4c78-9fc5-c85491c037ca@freebox.fr>
 <2149edc1-e19d-4aae-851d-df35b91bcd98@linaro.org>
 <091c3f9c-6bd2-42c5-a9b0-9257387b9455@freebox.fr>
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
In-Reply-To: <091c3f9c-6bd2-42c5-a9b0-9257387b9455@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/02/2024 19:37, Marc Gonzalez wrote:
> On 06/02/2024 14:38, Neil Armstrong wrote:
> 
>> Hi Marc, Pierre-Hugues,
>> On 06/02/2024 14:12, Marc Gonzalez wrote:
>>
>>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>>
>>> The fbx8am boards are based on the Amlogic Meson G12A S905X2 SoC,
>>> and the SEI510 board design.
>>>
>>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>>> ---
>>> Request For Comments to spot obvious mistakes before formal submission
>>> NB: on IRC, narmstrong mentioned:
>>>> adding dtbos for variants seems to be the new preferred way to handle such case
>>>> the fdtoverlay utility works well for this case
>>
>> Thanks for this RFC, first please split it in at least 4 patches:
>> - vendor prefix
>> - bindings
>> - _base_ dt
>> - variant DT
>>
>> For the variant DT, indeed I think DTBOs should be the new preferred way
>> to handle that, for reference I pushed a patch for the DSI panel support
>> of the Khadas VIM3 as a DTBO:
>> https://lore.kernel.org/all/20240205-amlogic-v6-4-upstream-dsi-ccf-vim3-v10-6-dc06073d5330@linaro.org/
>>
>> It would greatly simplify your handling of current and future variants,
>> reduce the size of builds DTs and make it more flexible.
> 
> Below is my current patch (which still needs to be split in 4) for reference.
> 
> We're not quite sure how to apply the DTBO at run-time.
> 
> PH mentioned passing a -@ option to dtc?

Yes, but the kernel build system can apply it at build time, for ex you could have:

meson-g12a-fbx8am-brcm-dtbs := meson-g12a-fbx8am.dtb meson-g12a-fbx8am-brcm.dtbo
meson-g12a-fbx8am-realtek-dtbs := meson-g12a-fbx8am.dtb meson-g12a-fbx8am-realtek.dtbo

dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtb
dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtb

or you can add:
DTC_FLAGS_meson-g12a-fbx8am += -@

if you want to apply it manually at boot time or a flash time.

Neil

> 
> $ fdtoverlay -i meson-g12a-fbx8am.dtb -o dt.img meson-g12a-fbx8am-brcm.dtbo
> Failed to apply 'meson-g12a-fbx8am-brcm.dtbo': FDT_ERR_NOTFOUND
> 
> 
>   Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
>   Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +
>   arch/arm64/boot/dts/amlogic/Makefile                       |   5 +
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    |  35 +++
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso |  25 ++
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts          | 469 +++++++++++++++++++++++++++++++++
>   6 files changed, 537 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index caab7ceeda45a..fce12e44c00af 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -148,6 +148,7 @@ properties:
>                 - amlogic,u200
>                 - radxa,zero
>                 - seirobotics,sei510
> +              - freebox,fbx8am
>             - const: amlogic,g12a
> 
>         - description: Boards with the Amlogic Meson G12B A311D SoC
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 1a0dc04f1db47..4f5a1f4e6689a 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -500,6 +500,8 @@ patternProperties:
>       description: FocalTech Systems Co.,Ltd
>     "^forlinx,.*":
>       description: Baoding Forlinx Embedded Technology Co., Ltd.
> +  "^freebox,.*":
> +    description: Freebox SAS
>     "^freecom,.*":
>       description: Freecom Gmbh
>     "^frida,.*":
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index cc8b34bd583d8..b10958e3837fe 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j100.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-2.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-3.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-g12a-radxa-zero.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
> @@ -80,3 +81,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
> +
> +# Overlays
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtbo
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtbo
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
> new file mode 100644
> index 0000000000000..ed79809b15859
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2024 Freebox SAS
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
> +
> +/ {
> +    compatible = "freebox,fbx8am-brcm", "freebox,fbx8am", "amlogic,g12a";
> +};
> +
> +&uart_A {
> +    bluetooth {
> +        compatible = "brcm,bcm43438-bt";
> +        shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
> +        max-speed = <2000000>;
> +        clocks = <&wifi32k>;
> +        clock-names = "lpo";
> +        vbat-supply = <&vddao_3v3>;
> +        vddio-supply = <&vddio_ao1v8>;
> +    };
> +};
> +
> +&sd_emmc_a {
> +    /* Per mmc-controller.yaml */
> +    #address-cells = <1>;
> +    #size-cells = <0>;
> +    /* NB: may be either AP6398S or AP6398SR3 wifi module */
> +    brcmf: wifi@1 {
> +        reg = <1>;
> +        compatible = "brcm,bcm4329-fmac";
> +    };
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
> new file mode 100644
> index 0000000000000..5da88fb94fb98
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2024 Freebox SAS
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
> +
> +/ {
> +    compatible = "freebox,fbx8am-realtek", "freebox,fbx8am", "amlogic,g12a";
> +};
> +
> +&uart_A {
> +    bluetooth {
> +        compatible = "realtek,rtl8822cs-bt";
> +        enable-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
> +        host-wake-gpios = <&gpio GPIOX_19 GPIO_ACTIVE_HIGH>;
> +        device-wake-gpios = <&gpio GPIOX_18 GPIO_ACTIVE_HIGH>;
> +    };
> +};
> +
> +&sd_emmc_a {
> +    /* No explicit compatible for rtl8822cs sdio */
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
> new file mode 100644
> index 0000000000000..750322c295133
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
> @@ -0,0 +1,469 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2024 Freebox SAS
> +
> +/*
> + * SEI codename: SEI530FB (based on SEI510)
> + * Freebox codename: fbx8am
> + * Commercial names: Freebox Pop, Player TV Free 4K
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-g12a.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> +
> +/ {
> +    compatible = "freebox,fbx8am", "amlogic,g12a";
> +    model = "Freebox Player Pop";
> +    chassis-type = "embedded";
> 
> [ snip ]
> 


