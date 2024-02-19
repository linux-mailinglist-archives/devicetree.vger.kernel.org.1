Return-Path: <devicetree+bounces-43313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B654859F0B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23309282D73
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A132225D4;
	Mon, 19 Feb 2024 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bYosG2s5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B08922063
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 09:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708333394; cv=none; b=HBYX3RfyU6NKJJHB1k95r4ei0SrRYbM1c7mzznJM/LLZe5DgfEqegtu9XCoy5OjAFJPnE6fKp0P0zrg7+EUzf/2Nx5SiOOMr+eHl9TiDt1xwHZKf0O9cWrG+tnxRuyXv94dU4IzFTrI76lfK7NiG5IxOw1ivR0irYpkFLIqtp6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708333394; c=relaxed/simple;
	bh=supS137BEbrkWMx77inIqmxYZQa26wtLw2LnH1dL8UM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QTji5EuVWEjOg47dvBvYtKy9b0c4XnIrZS6s7hRp+8LZtvMKHm4mIphxL0Eys6+ugqYxHZ7ykJ1YO0NuKHYM2SXFBdhhXLW2+8HMZI6QsUh3IXIXn0Q1vLVcYfLC9cQn1irM3SX7QOY8bsvG+EvNUlADPZLh2MGCQIaPWkSSZGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bYosG2s5; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33d118a181fso1905602f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 01:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708333391; x=1708938191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dphbX/WyDO4e7TPBlwr19thHMEzqUsosZRWFYKji1tE=;
        b=bYosG2s5PVzJAlD/weECDERhT1IgMz8Tckrbt3zhkhHjMJ20Ub7H8m2Oc8+eAkBr9w
         MgxmZs435YDGS+KG8gTqd5Xj2eRIKvp4eG/CGk8+nW9sjDv3k7R7F9F+IwToWs1PzyAy
         63dlDH7tBnOWYa0WqwJEEKEL2cFN/XCLbHP7z/rCwnrWTF8VqiyJu+0hB9KXzMc9n3z9
         ij9NXgg0WW12bWxbDwEqmTQjbuvQ4+1f7UBVk6STjvQxojIdZ2tg5dGGyQHF/4KTTcpZ
         uoylkCdUd85Y6TIf2L+cDBsfVgvWUzC0hIFGgISVZpW16GHuIwesvqs2tPtmWPYizF86
         JN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708333391; x=1708938191;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dphbX/WyDO4e7TPBlwr19thHMEzqUsosZRWFYKji1tE=;
        b=lFfDvi/MwIN7lKYvZ4xvDdl69OqtzqSfLgxevl5FfFsDvvTDJYXZqpWqFdWLH+KTng
         IpKgBYBmsPWNwiei+V0Ujj6JRjYNrWNOh1Cp7OitOGu/XUcKSp0eQ4wBCaQIjUNoQOyp
         oO0c8VwGX+jwiDBBDZ9Wqfryjk+rRwB76+wWRkae6n3yVFgMbin89+ePZ95eRTWeEek/
         kNVqTgbHgvO7Fp5pKWDuUCPOXOxNc+pEV64UbEjVQ371MaGhzu+CRQInK414USAtRBYj
         37VX3xwz/Gtg8PyOFBsiSQ5Ht4ckYJp90SiatWYYVEIKPIHPTLrPtlq1H/ee/P8Y+yuJ
         GvBA==
X-Forwarded-Encrypted: i=1; AJvYcCU9HKuJIueLFXMhFtUrSqQlO9mepjbvAJbCEjuwx0J6VViZK6taNRAaigpRs1DKnRfbOD46Io7IieLATZNgoTo1QJuAlgLXQotlOw==
X-Gm-Message-State: AOJu0YyolylyDs5zSOodHRdlWFPjb1Tb175Y7JnuvFCRah204sWOqBQ8
	yP3R9o8JG7FYKri8YS9GZXe/UvM5ku3iA/RrpzAn8yo8OF2oxDeKSrvixLwRjww=
X-Google-Smtp-Source: AGHT+IEKS/bCl+ubeLbfsocn7QtR7AXxJWgqkUbrPSQsNSFLn7wYIf2ELzHw6UDodru2l2Lt9Del/g==
X-Received: by 2002:a5d:590e:0:b0:33d:3f2a:63a9 with SMTP id v14-20020a5d590e000000b0033d3f2a63a9mr2170608wrd.22.1708333390802;
        Mon, 19 Feb 2024 01:03:10 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id x4-20020adff644000000b0033b792ed609sm9744481wrp.91.2024.02.19.01.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 01:03:10 -0800 (PST)
Message-ID: <3788091c-0f22-45bd-bf61-1b26ac177e93@linaro.org>
Date: Mon, 19 Feb 2024 10:03:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US
To: Marc Gonzalez <mgonzalez@freebox.fr>, Rob Herring <robh@kernel.org>
Cc: AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <5ac4741d-766d-4b6d-95ac-669474d05e6a@freebox.fr>
 <20240213135115.GA1090963-robh@kernel.org>
 <c7a88346-8221-4098-8112-a5e2c3eb5e98@freebox.fr>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <c7a88346-8221-4098-8112-a5e2c3eb5e98@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 15:58, Marc Gonzalez wrote:
> On 13/02/2024 14:51, Rob Herring wrote:
> 
>> On Mon, Feb 12, 2024 at 06:53:01PM +0100, Marc Gonzalez wrote:
>>
>>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>>
>>> Add support for two variants of the fbx8am board.
>>>
>>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>>> ---
>>>  arch/arm64/boot/dts/amlogic/Makefile                       |  7 +++++++
>>>  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
>>>  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
>>>  3 files changed, 67 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>>> index e9baa2cf02273..2fd7c7a18126f 100644
>>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>>> @@ -81,3 +81,10 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
>>> +
>>> +# Overlays
>>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtbo
>>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtbo
>>> +
>>> +# Enable support for DT overlays
>>> +DTC_FLAGS_meson-g12a-fbx8am += -@
>>
>> Overlays need to be applied to something in the kernel at build time.
>> Applying is done the same way as composing object files for modules.
> 
> Hello Rob,
> 
> I don't quite understand your remark.
> I copied what other platforms do:
> 
> $ git grep DTC_FLAGS_ arch/arm64/boot/dts/

You copied only parts of the solutions...

> arch/arm64/boot/dts/amlogic/Makefile:DTC_FLAGS_meson-g12a-fbx8am += -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra210-p2371-2180 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra210-p3450-0000 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra186-p2771-0000 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra186-p3509-0000+p3636-0001 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra194-p2972-0000 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra194-p3509-0000+p3668-0000 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra194-p3509-0000+p3668-0001 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3737-0000+p3701-0000 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3740-0002+p3701-0008 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3768-0000+p3767-0000 := -@
> arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3768-0000+p3767-0005 := -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am625-beagleplay += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am625-sk += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am62-lp-sk += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am62a7-sk += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am642-tqma64xxl-mbax4xxl += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-j721e-common-proc-board += -@
> arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-j721s2-common-proc-board += -@
> 
> 
> Are you saying that is NOT the way it should be done?

Yeah, you miss DTB targets, so your overlay is not applied anywhere.

Best regards,
Krzysztof


