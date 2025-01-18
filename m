Return-Path: <devicetree+bounces-139459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0D3A15D5B
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C11221609C1
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 14:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6976A18FC67;
	Sat, 18 Jan 2025 14:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lsCA1W1k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FFC184
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737211119; cv=none; b=ILQVbWfJpfscXKdBjOD5eEZ2Y90t/cRoj8zWyFT6Dfhd02KwJs8HDBemzcpSvdZ8quv25WV8I5VmonmFXeZFj8cxYcoiN8X8+uQWlqa/y8FvFEjThea6xm4s2nB4dbEzEFn7tf8gNgqLBtXGWKaUMRs90tD8IgnO87qqoBvVCcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737211119; c=relaxed/simple;
	bh=GNoid5KxBe3+GdKf5NctKJgX8xcKeDKM868AMkSVg80=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E6qSiD+e9kJX4Gop7P36oxpdRfX0vIWhRjUeL/8liYfEb0Bh41NGsDTGoPPEGhD6n0Gi6MUGBrtYBWX6nbGQDxdGamPPgRlMuHjxz67yEgpBJHEfYWAiTa2VDfYtloEL9ZfXoStZW/a8R998fjYA7+GlMr/Yc2XCcbomr9pjukU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lsCA1W1k; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso20559565e9.2
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 06:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737211115; x=1737815915; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8DKH120hIelNwj0rSdHKDYtGkboMj1pgTCFw2K5/B9U=;
        b=lsCA1W1kCNU5CgZbgsN+Gl33/eyhBGs97uD/T6Jix3p6aMRR3nGdLjxOF/+c3j1eeq
         /CkiasRUDOnbLgMRiGqMG+TEdo/sfWZiQQHbB7meHDqhNJCUHj4CosULbnPLB/Bp9QU4
         6fJLpnzPL1HOtFD9SLHY17y6xnc5pS/jfHbUfqv0I1ht14zLZVDkrtj7BDruWhscGF8h
         eNb0g0idp6Uh6BqQgnbYkUohII5gl5XwLnYAsMpIRB8h2SBMeQG0HyhiG0iH1sw4hpUU
         KbgGYZveENIg+0cIQzXtEaUPZV8uOfIlIStRwSSpJ3pitWSBqLUMgT0CEM4BX1sJd4s/
         CY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737211115; x=1737815915;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8DKH120hIelNwj0rSdHKDYtGkboMj1pgTCFw2K5/B9U=;
        b=wkksxx97XH7u5hUJqbVxIYBNV38h2bxhu1g8tbY58ckSZp3DNGsUJtckespy08LXeJ
         zuEEANj0mzRoGSlPC9FnEoPoovbkG2A1FzI03fZjh9s4Oz1b9g91T2IKgWnueqTyT58r
         m2oYGET7mnIxzHOPgmIWdNGfp4qYGHaOiYAOJMUSQkwq51I7M1+bBg0VQNlth6LLDJ1a
         FrwH4WhyBtRotYrIzhSTWm/0hRvAp8Sy66k0IWuk8bFpz3794BBuC9zGkXnO4aD79awG
         QAb+9M4jcoBA2vU43RpWw/3GJKWqw+tPI+xaPOD0Eutmq+SZO86uFwAjEHJoP2bBQfYz
         5V4w==
X-Gm-Message-State: AOJu0YzaGIVcENnQbHNQCkh8utt9ZNeCwT78dvIcGKary+L74v8JsoeR
	46GFI1QZxvAk1ebi6JebxDvxOj8+AKWoxLKI0P26SC6WsTBCnqAohv/t6iDav+o=
X-Gm-Gg: ASbGnctA+k2Vip0PREIusMBX66FR9xxrhuC6dwjGzXMyhcPZpnVWFHK9dlbth38JERZ
	8euPsM12Jiva+qodV0F4d1hZCHBY6duWfV44wtigMJktacjk4ZW4z822p3UeSQc4f78WBh35wwR
	gAJiGhCOALud7LHoJJXBkKM/K2Fs7h2svUQ4GscNhg5mrfCfeFM6jExa+Ye1Zi5jsu8m22nCrfL
	MXv0bDdGflboDtLmL7mRqEM5SrExPESIvQWK0o6nJRuQzeyReJthvX4pNYynTs9pvV6HVNJSJ8x
	Sg==
X-Google-Smtp-Source: AGHT+IFsJ3fdDCkUOB2Vev0Ey4B0aW+LUFAbHeIOXX3oCb5jfpBSdolr5fI/Pzhd7a/wQiVhk1QHQg==
X-Received: by 2002:a05:600c:3b94:b0:434:9934:575 with SMTP id 5b1f17b1804b1-438913e02f8mr77090705e9.16.1737211115420;
        Sat, 18 Jan 2025 06:38:35 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3214fc9sm5250124f8f.6.2025.01.18.06.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jan 2025 06:38:34 -0800 (PST)
Message-ID: <1c92e4ad-3aef-4eec-8f90-989884262415@tuxon.dev>
Date: Sat, 18 Jan 2025 16:38:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: at91-sam9x75_curiosity: Add PMIC
 suspend voltage configuration
To: Andrei Simion <andrei.simion@microchip.com>, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250113071710.40821-1-andrei.simion@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250113071710.40821-1-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Andrei,

On 13.01.2025 09:17, Andrei Simion wrote:
> Add missing essential configuration for the PMIC rails, which is necessary
> for proper low-power mode operation. This patch adds the required settings
> to ensure that the regulators behave correctly during Suspend-to-RAM and
> Standby states. Otherwise, after resuming, it receives: "No configuration"
> message.
> 
> Our driver implements the set_suspend_voltage and set_suspend_mode
> callbacks, which require the `regulator-suspend-microvolt` property to be
> specified in the device tree for each regulator node. This property defines
> the voltage level that the regulator should maintain during suspend mode.
> 
> Additionally, according to the datasheet, some regulators need to be turned
> on or off during suspend mode. This patch addresses these requirements by
> adding the `regulator-on-in-suspend` and `regulator-off-in-suspend`
> properties where appropriate.
> 
> Fixes: 371a47c9a58a ("ARM: dts: microchip: sam9x75_curiosity: add sam9x75 curiosity board")
> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
> ---
>  .../dts/microchip/at91-sam9x75_curiosity.dts   | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> index 1a6a909a5043..5514ad10cda5 100644
> --- a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> @@ -110,10 +110,12 @@ vdd_3v3: VDD_IO {
>  
>  				regulator-state-standby {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
>  					regulator-mode = <4>;
>  				};
>  
>  				regulator-state-mem {
> +					regulator-off-in-suspend;
>  					regulator-mode = <4>;
>  				};
>  			};
> @@ -128,11 +130,13 @@ vddioddr: VDD_DDR {
>  
>  				regulator-state-standby {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1350000>;
>  					regulator-mode = <4>;
>  				};
>  
>  				regulator-state-mem {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1350000>;
>  					regulator-mode = <4>;
>  				};
>  			};
> @@ -147,10 +151,12 @@ vddcore: VDD_CORE {
>  
>  				regulator-state-standby {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1150000>;
>  					regulator-mode = <4>;
>  				};
>  
>  				regulator-state-mem {
> +					regulator-off-in-suspend;

Is this correct? In the upstream kernel the SAM9X7 supports only standby
and ULP0 (see sam9x7_pm_init()). I don't think it is correct to turn off
the CPU while in ULP0.

Moreover, AFAICT, the MCP16502 will not transition out of active state
according to the FIGURE 4-2: Finite State Machine (FSM) States Diagram for
MCP16502AC from [1] and the schematics from Figure 3-6. Power Management
Integrated Circuit described in [2]. The LPM, HPM are tied to the ground
and SHDN is currently controlled (in the upstream kernel) only for backup
and self-refresh mode (see at91_backup_mode). Am I wrong?

Thank you,
Claudiu

[1]
https://ww1.microchip.com/downloads/aemDocuments/documents/APID/ProductDocuments/DataSheets/MCP16502-Data-Sheet-DS20006275.pdf
[2]
https://ww1.microchip.com/downloads/aemDocuments/documents/MPU32/ProductDocuments/UserGuides/SAM9X75-Curiosity-User-Guide-DS60001859.pdf

>  					regulator-mode = <4>;
>  				};
>  			};
> @@ -166,10 +172,12 @@ dcdc4: VDD_OTHER {
>  
>  				regulator-state-standby {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1150000>;
>  					regulator-mode = <4>;
>  				};
>  
>  				regulator-state-mem {
> +					regulator-off-in-suspend;
>  					regulator-mode = <4>;
>  				};
>  			};
> @@ -182,6 +190,11 @@ vldo1: LDO1 {
>  
>  				regulator-state-standby {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
>  				};
>  			};
>  
> @@ -192,6 +205,11 @@ vldo2: LDO2 {
>  
>  				regulator-state-standby {
>  					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
>  				};
>  			};
>  		};
> 
> base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc


