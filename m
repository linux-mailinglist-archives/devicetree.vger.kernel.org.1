Return-Path: <devicetree+bounces-137119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA33DA0782B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEAA0161C20
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2BCE1FFC4E;
	Thu,  9 Jan 2025 13:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="SQNeILdH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32602213E8F
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736430689; cv=none; b=MOU/RiE3koKCS/6IkCsti/woEA1l6gNf1zgXWim7ZqTn+1HD4qrZydLxQTkOkUMdJ0XqzPNkMGGKnI4gZf6SUOuCRaJ86mkmhFg02y7JQ6XSdP/ETN2035i5nFgGg3R1d9p2/hxkrAyg1Kwk+80owUHQw6ipYg4JJYz4tR4KgYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736430689; c=relaxed/simple;
	bh=nPPGU/5i0/4rNcuCnNSlIB/B0EGtcfFTfauQ9U1+gFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aBOi4PtCsj7e1BDC6Y7uvtlrbqEt5mj3tjYWa6ELDz1w+KlAjKZm0xBgi1XPNCg+b6B5icQdoJdXDpiti48wzDCzlsEVYbXU10TOmYLrUt3uVdH88JEh/YJSSJtNT/bpXp9aMdUp0Q7D11ux+zMDBg1r+DxikVBf4kgP8XPS+tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=SQNeILdH; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so10010245e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736430684; x=1737035484; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QqXsToV0HiRvEsZnF5hoveg3aYzeGpkKlIECOe2VD8g=;
        b=SQNeILdH1JpkQ4jbPX0rCNfwsW7egxtJqMZYCHxxfnI8JyVE1vT+BCusXDs6S1yrC5
         Iib27BOp0TdkycfknITzCa0IGs2c4k16zuoIa3qmcUjXI4ntu/Cs9wG4ogluHF3V1mZk
         xPIM3wk+Hnybozdz5jRcTd4OkEb7eTeEe9SIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736430684; x=1737035484;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QqXsToV0HiRvEsZnF5hoveg3aYzeGpkKlIECOe2VD8g=;
        b=jSq/atTpuVLyjvNPH7bLEFCan745ohHhm8cfjrB9jsiXZt854xsck9rwAlOOmfOGte
         k/Fxmuc144sekRfy02sklrGKMhVtJEfVjFn1bePEgOK93u8fetaIwWUILTzkIZmSM2j6
         opxK/byDls4E/TyWoTitQCvWULXH1Bm0XACpsHNSds+q1F+VP80ChU8NMa4DzV9vyAIr
         UVvC/rXvcA9BqNbLODRD6TKAlkgm3dWXid0MRm2l8UBn7VVRS2r3fHiGYwQmPq1LXBDo
         k//CFQdzB8aaRfM+wrJbCNbGWtTcp6M0M3X2cIjTEyoO+4hK48FeRmSzI+sfkUQzXeKN
         J6kQ==
X-Gm-Message-State: AOJu0YwhcrUPe2fiwuTXXwNopKeRKRzLweUYkN4Rq1yHhEkvdXpzm0fF
	37iWR+eNjfMf3KwRwpvy/X5W3LucrGKmfJXpfec9Wwu5ZGA7pvLrpfWnn8AzBVM=
X-Gm-Gg: ASbGncsJ3W9mAgjViNBjwCsZ124gXspXe8DJjZPpFdQL0UgHWYx/fI4XcdwxPXli/Qk
	Y4bkqS5CGEUdtF19DEj834dSVc5DQpT81F1FiEafPqLjUuz66EQGaqK2uIv0TYFCmB07ERrFX1S
	EO9YpVJH0/CybmEWqIutHHg5XzbpnvjlptSLxuCR7i/lpLaP5AQTfKxO40v5cWHw65qIPo7kdqi
	KcyFCDd3gEkvq4qMZB2aFaa7LCgtv2TITaAW992XzvYA3HmWRLb4bGAsEGNmc2j2RXNSG22Dpv4
	P+S/G3SPRCorRGZHyeCa/ZGSTFzznySLdr04qzW0qdqlIWEQ73HARNaO/RR8qL719rBzHjLi45t
	3M0hAom0H0e82i8UK
X-Google-Smtp-Source: AGHT+IGCwLti8xz/uAXqjvFyEfZu8OW3NVEiOzPgOAaQKlMAAsxOUKHoSy2tGbVe3mXX1vMem7j5oQ==
X-Received: by 2002:a05:600c:1d1f:b0:434:f99e:a5b5 with SMTP id 5b1f17b1804b1-436e271cf4amr47062045e9.28.1736430684252;
        Thu, 09 Jan 2025 05:51:24 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2dc0f69sm55525035e9.13.2025.01.09.05.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:51:23 -0800 (PST)
Message-ID: <8ff7ca4f-227d-40c5-867d-497e03bef72a@smile.fr>
Date: Thu, 9 Jan 2025 14:51:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable
 ACSPCIE output for PCIe1
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, kristo@kernel.org, vigneshr@ti.com, nm@ti.com, afd@ti.com,
 Romain Naour <romain.naour@skf.com>
References: <20250109102627.1366753-1-romain.naour@smile.fr>
 <20250109102627.1366753-2-romain.naour@smile.fr>
 <eu5xmihnffmqas2x2ioleuzzvyfbffl5eqlwuqfe4mh6qa2rzy@7mmuxsbkmz4o>
Content-Language: en-US
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <eu5xmihnffmqas2x2ioleuzzvyfbffl5eqlwuqfe4mh6qa2rzy@7mmuxsbkmz4o>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Siddharth, All,

Le 09/01/2025 à 12:49, Siddharth Vadapalli a écrit :
> On Thu, Jan 09, 2025 at 11:26:27AM +0100, Romain Naour wrote:
> 
> Hello Romain,
> 
>> From: Romain Naour <romain.naour@skf.com>
>>
>> Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
>> (CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
>> provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
>> provide refclk through PCIe_REFCLK pins.
>>
>> Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
>> module's PAD IO Buffers.
>>
>> Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
>> Signed-off-by: Romain Naour <romain.naour@skf.com>
>> ---
>> With this patch, we can remove "HACK: Sierra: Drive clock out" patch
>> applied on vendor kernel for BeagleBone AI-64:
>> https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b
> 
> [trimmed]
> 
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index af3d730154ac..32a232a90100 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -5,6 +5,7 @@
>>   * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
>>   */
>>  #include <dt-bindings/phy/phy.h>
>> +#include <dt-bindings/phy/phy-cadence.h>
>>  #include <dt-bindings/phy/phy-ti.h>
>>  #include <dt-bindings/mux/mux.h>
>>  
>> @@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
>>  			reg = <0x4140 0x18>;
>>  			#clock-cells = <1>;
>>  		};
>> +
>> +		acspcie0_proxy_ctrl: syscon@18090 {
>> +			compatible = "ti,j721e-acspcie-proxy-ctrl", "syscon";
>> +			reg = <0x18090 0x4>;
> 
> 0x_0011_8090 is probably *not* the "PROXY" register i.e. it could be
> locked with the help of "CTRLMMR_LOCK0_KICK0" and "CTRLMMR_LOCK0_KICK1"
> registers, in which case the CTRL_MMR region needs to be unlocked to write
> to that register. On J784S4, that happens to be true, which is why the
> proxy register 0x_0011_a090 was used at [0]. Please test with 0x_0011_a090
> which is the "PROXY" register on J721E as well, i.e. it can be written to
> unconditionally.
> 
> [0]:
> https://lore.kernel.org/r/20240930111505.3101047-1-s-vadapalli@ti.com/

Thanks for the review!

Actually the Proxy0 vs Proxy1 choice is not really clear for me. We have two
proxy to reach the same register:

  CTRLMMR_ACSPCIE0_CTRL Register (Proxy0 Offset = 18090h; Proxy1 Offset = 1A090h)

From my testing both addresses works (maybe since my SoC is a general purpose one).

When and why Proxy1 must be used?

Otherwise I'm fine to use  0x_0011_a090.

Best regards,
Romain


> 
> [trimmed]
> 
> Regards,
> Siddharth.


