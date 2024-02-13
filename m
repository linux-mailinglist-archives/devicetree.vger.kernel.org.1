Return-Path: <devicetree+bounces-41352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C788533EC
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 16:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C78C1F2CE2A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 15:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E035F49A;
	Tue, 13 Feb 2024 14:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="TsO/TnvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137DA5F47C
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 14:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707836289; cv=none; b=qLdvmGkiI89qJQGhayC2VgRidm65Ac07vkrR6U9XDfVpMR80chSRKF+y07Cg94jR05ViFNhY08sFM2T6IV7tYl2l0QIb6U4Q5U1lzNlCvHA3cYSOsif/OLyuCY1IoLToazVpHj3wvThbMzQBHAx+OAG+OJF/pgiJMP2ZX1xce9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707836289; c=relaxed/simple;
	bh=N1JU1hwYOc0ttZcn0Phty74nfapJ1gxUs3qYcBsO0Sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BVF7u2nC5EvnwCmWPlFrl5VtNleIh2dkXMG8wh2HjhPjM7D5jspvAZCkjEFiAlQpRShW9VjG+hFs3ry+Ctnwx3G1LYwzHOoZbsuoIEaVKSEyeQkylQ68YRoMuDp1PNDpVAp/YisZ9cflZp4uZiwXpWHVdgXfP1DXVNA9FO2E6lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=TsO/TnvY; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4114e0a2978so12570645e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 06:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707836284; x=1708441084; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LUAbcsBTGnXuZrFl0zL+fom+b/QnzF91JdS1snsJMaU=;
        b=TsO/TnvYk8sLzy7dGqlXar3F7KogtoJ2GEkXPEmzzLUWAAXWTsNrZJm/nqiiEXVOOz
         HGt/skgUMXIPiBoNrRD6RvxXGB4IlUfto5KLaQuEtKkHFITSrqv+rSqTwt2kt9GBRjdp
         qMuGmYzv2RrCgI2udopVVSEjzbyRCrTyLkntNUoqu3jOtwROBHFO/vPJmG+eXzZTJIiG
         1kzcih/TRJj2gcn60Ac+ZwT1OZ40U3WguIeCdzYV8krrRuQebS+FsQHscqBaHW9JQlEN
         9ckuQcvwvdP33fIO/n8+WeoyUQM5CTCs/hYYfe40jb+FR3c/pdLu0TkeY74Wru+SFvVv
         dINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707836284; x=1708441084;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LUAbcsBTGnXuZrFl0zL+fom+b/QnzF91JdS1snsJMaU=;
        b=swsMC0vkt81hFV2B2nDtWEByoGfhb0a2AXLJDMEGptTmg5daohCFG3zpgt70kzLMpZ
         CLjvj8dpt/DV8iZPjzNd/JxM9jfsAo32YEsohIZxL71ZXryPg6ocr4sgTc2LjU57aJiz
         japl37tkQewjsUfmpQo9QLjDV5bf1FuWsF/hryeTlJWMb29YG48Hdt9VB+gK7Acid5+T
         730znzexsXTr93q5u+wUQGRrWGcKhCwC5KVIaZ3rXDA6KgmxY66rkhZE0iDUWzajvtWe
         ddkd9PqvMjysAzaxsPOWi1r/2GuAadoQI6AmgCkI5kPrh2wrDs2lNRo3eYLdMbUt6vac
         4gjw==
X-Forwarded-Encrypted: i=1; AJvYcCWcy7/Q+oBZ3+kvNTE61qJtQwiOTh8ARD7c/sCdJGn1wJev3Mbu4fXFDKnruw1+Q2AdBW97n+3ddSUGqSc6cRv2TKfRUhiDC/2hfQ==
X-Gm-Message-State: AOJu0Yxb+E7UALlZ8K2hxsJjNBJXo99SAYE2eLo9LSE8yQVwkOlYM2XE
	FSWHaqIkl1ZqI2gHDL7LZEp8WJGuzgdQBYRc69TlIlTHd158JlgXmiAC1c/IJec=
X-Google-Smtp-Source: AGHT+IGqfRF0yh6VsToHHlqtzgQWSF70JzdGHamH70Hi33pe3KApe0JmU4lCyALR1YdPeCC4MuCzvQ==
X-Received: by 2002:a05:600c:3552:b0:40f:d422:930d with SMTP id i18-20020a05600c355200b0040fd422930dmr8263822wmq.33.1707836284268;
        Tue, 13 Feb 2024 06:58:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXHCRGy++srjBDjMNAaQ800GvAvokm72yRTgdzlb6dzhi5HX7HLv05tgMClb8mblTILP3L7bFauUSHuphWdFjoky0Nsz6Lx+uyrSpzo7/4uv2XLprX5CpVBdmP7yZUjsVFete3Q1Yk78VP3+OHIFXt3ALbvspr2UPSYHv7tGUiAuztAvV74jjR32TOZjjVChusmt3SHfrku4jWOQJCCol9V1aY4XMLcjNfk1hCPuxQ434vIGhqfRT8F+B4u0pgTpQP7983WUUegcq9IzoL36+X3DvjL6IaolUvpKEyjM0wiizLuJa6pmOCabDqyNbn7cbPLSYm2dJgflaElFC6OoTB1NniaTdNgvJAmryH42klZCwW1Zga9mUes
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id r11-20020a05600c458b00b00410504b582csm12072435wmo.11.2024.02.13.06.58.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 06:58:03 -0800 (PST)
Message-ID: <c7a88346-8221-4098-8112-a5e2c3eb5e98@freebox.fr>
Date: Tue, 13 Feb 2024 15:58:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
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
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240213135115.GA1090963-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 14:51, Rob Herring wrote:

> On Mon, Feb 12, 2024 at 06:53:01PM +0100, Marc Gonzalez wrote:
>
>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>
>> Add support for two variants of the fbx8am board.
>>
>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>  arch/arm64/boot/dts/amlogic/Makefile                       |  7 +++++++
>>  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
>>  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
>>  3 files changed, 67 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>> index e9baa2cf02273..2fd7c7a18126f 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -81,3 +81,10 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
>> +
>> +# Overlays
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtbo
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtbo
>> +
>> +# Enable support for DT overlays
>> +DTC_FLAGS_meson-g12a-fbx8am += -@
> 
> Overlays need to be applied to something in the kernel at build time.
> Applying is done the same way as composing object files for modules.

Hello Rob,

I don't quite understand your remark.
I copied what other platforms do:

$ git grep DTC_FLAGS_ arch/arm64/boot/dts/
arch/arm64/boot/dts/amlogic/Makefile:DTC_FLAGS_meson-g12a-fbx8am += -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra210-p2371-2180 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra210-p3450-0000 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra186-p2771-0000 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra186-p3509-0000+p3636-0001 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra194-p2972-0000 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra194-p3509-0000+p3668-0000 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra194-p3509-0000+p3668-0001 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3737-0000+p3701-0000 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3740-0002+p3701-0008 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3768-0000+p3767-0000 := -@
arch/arm64/boot/dts/nvidia/Makefile:DTC_FLAGS_tegra234-p3768-0000+p3767-0005 := -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am625-beagleplay += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am625-sk += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am62-lp-sk += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am62a7-sk += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am642-tqma64xxl-mbax4xxl += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-j721e-common-proc-board += -@
arch/arm64/boot/dts/ti/Makefile:DTC_FLAGS_k3-j721s2-common-proc-board += -@


Are you saying that is NOT the way it should be done?

Regards



