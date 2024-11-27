Return-Path: <devicetree+bounces-124896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E489DA4A5
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7531EB25A3B
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 09:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6F51922F8;
	Wed, 27 Nov 2024 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="QS1Ga9rs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4726190685
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 09:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732699054; cv=none; b=HDRFXmKQU3X00YP8cgY4tmrQnF3yTs2kTwfPh0HZiWLzS4bPukNINJ8lrOXNgVmd8B/nb0DIlT6VqWdy1eXuaTkdNinyjSrRhGzCFgiFWCQj1cLFulaI7L2YGB9sHLcBxfsUdrPCLXHE7gVrX41sQ9lcqJZB61rbQe2PLTTFVHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732699054; c=relaxed/simple;
	bh=SnVhtZ1p4yeEVYL2tFjMBwc85AXYWLdsD6exlupbTuk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YWEv5TRZM/qifnvbCfCzOz69H3jFaippcDJur3jM2CCs9EJuAYqUefMrziCMi6uYVuPMb+WXzzSPdV/0RvcKmfxJeM9wqBB0GzLrwsEL0Idt0JI8fgRH/RwvDku3bRZ+KgazG3fEOT7XyJFiyTB+PHG0LFyIb+LrZj4Wl2mCAaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=QS1Ga9rs; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3824a089b2cso3943905f8f.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 01:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1732699049; x=1733303849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GAFheFVkotLm3wy7t+46i/2OSexrdWJFGKeEH7J88WI=;
        b=QS1Ga9rs5VKMgOFNRL/DnihZIsAIkwO/u7P6iiSvmXNjoFUMGet4uITerRtVsCjTbf
         ze6lIKpYoZ47ugyISmaKhcegN3EmRSTDbz0U69zt7rMp70fbz3cFFcii+/9xc+ZWZZWr
         PbPZeg4/CWd8q3bdy2ZVLaH1T7lPwFnwGVNc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732699049; x=1733303849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GAFheFVkotLm3wy7t+46i/2OSexrdWJFGKeEH7J88WI=;
        b=TPalKFKPXdvkbvYiIKBuFppUY45DqNNoatbg/2ZTVkn2uPYY5i8LGMuj5RUp85ALRe
         tYvoMi1/U4zDWQ07UfoBkKkC9LQcsPxKyhVes8P26/9DhVCo9xxQw/unkBw6Rdyaxjgo
         N8rYTCEg7SiI43BGFuhMddyKRAzwvvAvnWvniF4AxsqSE0M9EA1VT91TVvBtmFfyZiaB
         NIoeono+86kiM2CYYLd2vsq8beFucDk0hATZt1K1pI910Snkx9Za52l0d4MAlc2RzxFz
         VCdDvAain575GAbKpNGqwmgqwidHGxwrV0uSAaZg5Y90s8iFCy0NObA5WA77e/5nmUWE
         PngA==
X-Forwarded-Encrypted: i=1; AJvYcCW+PMTua9WxR75cAU3Js3BtFP3P9OWd37av0/E2W+Q0CFbv0E/XYqhgIL+AJBrCwtbp/OJSUGQHUwQP@vger.kernel.org
X-Gm-Message-State: AOJu0YyW0u761ZPt4G8ZiGiiTCB7NmlRNeflE3Ic8PgvQOo5VoEHGVw5
	w61bCP27ylc6wY7okvlJNZDlMCeftH3bRKE7a67Nl57RlM69RmDCZ0oFpqYwjFY=
X-Gm-Gg: ASbGnctpsAiIL91aK1/LmzmYX/KVx3ngOqc7Vv9AW416ygnuzCUMQXdHwS0Vdhn58E8
	tRW0jVfBTZ76kocJ+eVwyy6z3ilxVkbWvLU20ECk0EjHJvRPsA0o1R4fa9RzjfhbC9NK5xKoOUs
	lxNDUnrmzN9C+JHM06MY+C4McxTAnFdbItYvY9BrgsDeq0tT0xNvS9WrjX1pmo8mm2oh2o3p5xN
	LbShK2vY+fUMxIANKQKHURcGEZWWJ3h4uXE2RrXzncwYRg4p5goi6VQ82UUxb7ZF89nJxNR8v0A
	rIEfKsyT1bkBqP7qRkQCeFrnP5KM8yCS8CGvlg==
X-Google-Smtp-Source: AGHT+IHMfWTM2iJ94uv0iDMqL2dLO7VcGnFqdboNj1Fdq2fH3veFKQ+TuqEWJS1JJOImhanrQYAJIw==
X-Received: by 2002:a5d:47cb:0:b0:382:22c6:7bcb with SMTP id ffacd0b85a97d-385c6eb4c32mr1924315f8f.3.1732699049143;
        Wed, 27 Nov 2024 01:17:29 -0800 (PST)
Received: from [10.5.90.17] (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fd04ef5sm15685520f8f.111.2024.11.27.01.17.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 01:17:28 -0800 (PST)
Message-ID: <32e81174-8a17-4f29-b338-0dbd0d7e498b@smile.fr>
Date: Wed, 27 Nov 2024 10:17:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE
 output for PCIe1
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kristo@kernel.org,
 vigneshr@ti.com, nm@ti.com, Romain Naour <romain.naour@skf.com>
References: <20241126173307.4054601-1-romain.naour@smile.fr>
 <5e2d2174-44a7-4143-8562-4dcdb5ad6c94@kernel.org>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <5e2d2174-44a7-4143-8562-4dcdb5ad6c94@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

Le 26/11/2024 à 20:04, Krzysztof Kozlowski a écrit :
> On 26/11/2024 18:33, Romain Naour wrote:
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
>> Signed-off-by: Romain Naour <romain.naour@skf.com>
>> ---
>> With this patch, we can remove "HACK: Sierra: Drive clock out" patch
>> applied on vendor kernel for BeagleBone AI-64:
>> https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b
>> ---
>>  arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts |  4 ++++
>>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 10 ++++++++--
>>  2 files changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
>> index fb899c99753e..681e3af7ce6e 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
>> @@ -859,6 +859,10 @@ &pcie1_rc {
>>  	num-lanes = <2>;
>>  	max-link-speed = <3>;
>>  	reset-gpios = <&main_gpio0 22 GPIO_ACTIVE_HIGH>;
>> +	/* There is no on-board or external reference clock generators,
> 
> Please use generic style comments, not netdev.

Fixed.

> 
>> +	 * use refclk from the ACSPCIE module's PAD IO Buffers.
>> +	 */
>> +	ti,syscon-acspcie-proxy-ctrl = <&acspcie0_proxy_ctrl 0x3>;
>>  };
>>  
>>  &ufs_wrapper {
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index 0da785be80ff..9f47e7672922 100644
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
>> +		acspcie0_proxy_ctrl: acspcie0-ctrl@18090 {
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

I updated to: "acspcie0_proxy_ctrl: acspcie-ctrl@18090"

> 
> 
>> +			compatible = "ti,j784s4-acspcie-proxy-ctrl", "syscon";
> 
> I am not familiar with naming, so is this j784s4 or j721e or K3 SoC?
> Compatible should be SoC specific.

Me neither.

"ti,j784s4-acspcie-proxy-ctrl" compatible is the only one available in the
syscon devicetree binding. Should we add a new "ti,j721e-acspcie-proxy-ctrl"?

This patch is adapted from a recent commit on the TI's kernel for the j784s4 Soc:
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/?h=ti-rt-linux-6.6.y&id=bb4442cd523d6e34c5db43fd78c9f579d6937f6a

There is another example with "ti,j784s4-pcie-ctrl" compatible used from
k3-j722s-main.dtsi:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi?h=v6.12.1#n240

Though?

Best regards,
Romain

> 
> Best regards,
> Krzysztof


