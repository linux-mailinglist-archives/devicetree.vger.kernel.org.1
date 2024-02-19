Return-Path: <devicetree+bounces-43358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E0085A109
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 11:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D3E7B207D2
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFAB2134A;
	Mon, 19 Feb 2024 10:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="ZhMJkIDa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126A21103
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708338747; cv=none; b=idciknSjjui+cpRb69Oa6S27Rcp54/8nrLoTo8WO9czDRC9c58WSUhjjnehHS/B3a4GQlzJ+gFdWQIgtvPdoXlmRdLKXWdURgxzOr2ZBb6uLV5UbqEL9HagjOTtZ5qQ1KkWzga+S/Y3jYomQWoo4OYSmhkhbYK2jot+zjUjZ19w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708338747; c=relaxed/simple;
	bh=lzbmDbyLgGOXIgpo1wVS8JJdJ3HwZU7g2kzqQJevbec=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lh0ZvY10ZsrRIRrH7yNPmvOOavJok0znUWxnqXbowuw4wMxvXxAaUUAyixyNiTKA/RPQkcJya/2bquU2K1PiSl+2qtKNuMU4CacCmsJI8Fhs1OruaC/mSUTM+UGsEqNZ5FVcjKf5Jkg6ITxNodaLvZiV/o8DB9qx1YzXAnguYJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=ZhMJkIDa; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41243d19ecaso19671305e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 02:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1708338742; x=1708943542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2zw7/XBaMc7MFJFGgdoFUnkBYvbNQYnhQTaj8fjHTmo=;
        b=ZhMJkIDa5NKmpyLKZA2O2nd1tADmHYPSjMiENsONCRcK75S4uMWGpDnHkGXVj2iUXM
         Na3SnkBQf79AVSzD1Kdgr1Zy+88UfUsBzdfL5hPRbG91Qfxi9mA0+ax6yHVbjuIqo5zA
         +rXfxjepowTVacfvLP6LNuDCGOQqIMsu8R5JS/uEJtmyFGEjb+j2QfKi8c+QV6Xlc1rJ
         R9GKQow24JDnF50olDxCkl2e9uGWPX3Ne2TcYWxZP3tgWd3aNw4VJSyMo6ok+/y02z1c
         HxXxH5kHmbA5wKhqLPkPA+sM0tryEnSt0lhAUUcbTueEAK4nkbwG47VuQeAFOB728zmS
         bj8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708338742; x=1708943542;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2zw7/XBaMc7MFJFGgdoFUnkBYvbNQYnhQTaj8fjHTmo=;
        b=ks6Q7vfc2m+eNZPn7O8/ft0Fo0HPLv/FTPOSgjqh892e6sizL0MsD24qjvaGYMUmQd
         IbvyDybmPrTVa/d0icXYvSy8i7mx6YzvNadu36MrOXpvKcdOCX1z8T9FYXXcq8Cm4LlO
         6e/ySnaMZA7x4Mp3TPtS0kVxRbL2YXa7+yMGSgLiI5JuIQjZWbZXhVFql+DJSb1LMeDl
         DhDjrOWX9D3ddTjwQNv0aoq/5lkkPSImw3V7XjGE1vj3FSpjbelAybEBzc0mstvfsueX
         w+EN/2WSNnqJsq25bA5rWIuVd30xhqv6cj/K46B1R6CP5weC0Ww9gzVNhTo22hlaIZQ1
         A5wg==
X-Gm-Message-State: AOJu0Yydma4pjWJ5kdm1txhG8PbeTbcBSqCm99TUtp+jYHgQjGzxTYIv
	qSJHvzrE3adEuae8LXzz8wCpxf5S44AFBT8GfMhQMxmdNw/p0hOV7usVkodkxhcBqJMVCTkD8AA
	x
X-Google-Smtp-Source: AGHT+IFE0+9Jgnkp9agPS6QS2SGbk0FJ5Z7jOlUjDlyXqIACVcPCVM4Buec+LPfJXA2IUTX71GturA==
X-Received: by 2002:a5d:5148:0:b0:33d:374f:83e9 with SMTP id u8-20020a5d5148000000b0033d374f83e9mr3497049wrt.45.1708338742405;
        Mon, 19 Feb 2024 02:32:22 -0800 (PST)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ay5-20020a5d6f05000000b0033d1ef15821sm9563900wrb.25.2024.02.19.02.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 02:32:22 -0800 (PST)
Message-ID: <15fcafb2-4b4a-40a1-8ef5-ee3aef9b3b9d@freebox.fr>
Date: Mon, 19 Feb 2024 11:32:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US
To: DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
 <79ba726d-d02c-44b9-b6f6-59b17ba9755c@freebox.fr>
 <54b4e810-754e-481a-bbc8-984f859b116d@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <54b4e810-754e-481a-bbc8-984f859b116d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/02/2024 10:47, Neil Armstrong wrote:

> On 13/02/2024 18:14, Marc Gonzalez wrote:
>
>> Add support for two variants of the fbx8am board.
>>
>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>   arch/arm64/boot/dts/amlogic/Makefile                       |  6 ++++++
>>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
>>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
>>   3 files changed, 66 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>> index cc8b34bd583d8..1ab160bf928ae 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -8,6 +8,8 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j100.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-2.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-3.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtb
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12a-radxa-zero.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>> @@ -80,3 +82,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
>> +
>> +# Overlays
>> +meson-g12a-fbx8am-brcm-dtbs	:= meson-g12a-fbx8am.dtb meson-g12a-fbx8am-brcm.dtbo
>> +meson-g12a-fbx8am-realtek-dtbs	:= meson-g12a-fbx8am.dtb meson-g12a-fbx8am-realtek.dtbo
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
>> new file mode 100644
>> index 0000000000000..ed79809b15859
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
>> @@ -0,0 +1,35 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +// Copyright (c) 2024 Freebox SAS
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
>> +
>> +/ {
>> +	compatible = "freebox,fbx8am-brcm", "freebox,fbx8am", "amlogic,g12a";
> 
> This looks fine but I'm unsure if those new compatible should be documented or not,
> since they are in an overlay

Rob, Krzysztof, Conor,

Just want to make sure this was done "right".

Is it acceptable for an overlay (DTSO) to define a more specific compatible prop?

Regards



