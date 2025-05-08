Return-Path: <devicetree+bounces-175008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1434FAAF8D3
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F3691C0480F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 11:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BBA221FB6;
	Thu,  8 May 2025 11:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="weWreSGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B2D1F7075
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746704257; cv=none; b=B8wI0/JGoVQbQqE6EHduWbv6gYpA+Gp8wRY/32xjmdmJUCeXQxh0HHJv6pkcHhv9tp2Vulqsd1sQR4GttQVnqfratNcWtVwfYfnv7yffXuWiogz19vFRU1Dcf1duJBlhcAk1Qb0Z1SWFc5bKVe2lUBtAJzKnZMYEhOiuJrzR7Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746704257; c=relaxed/simple;
	bh=Gld9bO5UZHsxrcS7dtAgIiV7rnHI7vEtpstol+3c7Zk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V1UUCDkrk4oBKyS9Lgvy3mftYMLSH5Q0Q8FM4WFlJLDqNBtlaB1NQBfA2YJj31YDlv7OcVZEspEdNixMNGNql5bF2gdK3xk7R0FDkNKdOHVzaZihTeDR2T/zINImB7kXXbg79FSLhwzjfjUHBmDPecFP6Obil5DAboffi4fql9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=weWreSGS; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-72fffa03ac6so659811a34.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 04:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1746704254; x=1747309054; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cg8NwDyNFyKWIP/c9rQXDiR1cnoY6h6ESpb3NTgHnZE=;
        b=weWreSGSqZFZ8sqkbaKek9+5Ssb8pL9j6NP8MatkJA1W3Bx5FK6S9nayOuXKdXAMKD
         +6thFAGRLxggw+4FeRNq38zBqInYeYtQDylfcYuR5vkrgbab2VwpQCGf9M8t9WCcsCi8
         dC2D6c5lGSHVV23/ijPu4SFT2qHA7+QpJVat7JlwVnycHGNG69LOrI7RHvR/LdJdcmMq
         Dre2CLOqbaBXx5hxWAhkP5YteHCbHJ5zfHATeHIADlbo4Cbl1Pz0O891M/FAMmXHpY36
         kZSu7IUM7B0EzRp9+TNgvw2dUp+vogfuG9+mXiTCnk5E3mH9oPHNDPrPOEXMvM67znO7
         ittA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746704254; x=1747309054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cg8NwDyNFyKWIP/c9rQXDiR1cnoY6h6ESpb3NTgHnZE=;
        b=B4vvnQTyt+L34pKD8tCZbjZB85ElGhD9wI0kWlS/ocvh8eTMBZXh5LaF/KxXPkkPCC
         KqGEYdIxA6P3PwNAxKurbx+vM1DLgorL/JrVi0j4LZ7FtJXqKl94GBltM1ZE40Aw75v/
         caH8JJQaItQ1tGwxKjdDKsj8EiKUAXNdgsHYRvMRWhbKa+l/yx8Bud7pwrwR2+Y1FkBg
         dldvmQqPUZOLvvHRUM4jPle762ml99ix67ZVmA+Vy2ZXtzYDhVw6b+lqPQn6FCdW2lYc
         ng1EvP2QTBOhKP+9JvLmPvY+ZLGxd6UWj+a3tcL7wdl2V3JwZnPvdfOz9TCU3NvC5p9M
         Cu4A==
X-Forwarded-Encrypted: i=1; AJvYcCW0jHn0aYeYzj2prjHbBiMvFCUF9abmchsT9dDqvFyZ/qwB53MMl+OwQ5RrW7X8nJtkhsBorvrHWQkv@vger.kernel.org
X-Gm-Message-State: AOJu0YzOm7s1m0YWIs+c/UGYStQuN24SL+jrlHMv5BLeYPv5kfg5wmiu
	lXKYr8Y/Fsvs7jIhTjA1281doJ13T+SCBO3NGcJT0ZbU/GgwrviSUTa08MCBqpY=
X-Gm-Gg: ASbGncvUOzNgGyz3sLbBcph4EayEOXxX91pmejv7a44KUBQ/lok6XRngbAyHTsMMu1K
	WLFUPw8haLtVot3d8LijZNV9HfIrQkzzn8JPyOdk4p5O9Cdc3HrMkE9deM83aVqNX9FunH+ouwH
	EvsRG5/PGk5rY5Kwf644WqvoeY8s58oCnmgr84JZ4S3pprbOcFottCfxouDON7Cpy7484ea5ICT
	Uq+9mq808qqhlZoA3Euyn9HQ3wam7sTIV9kjNRYQGYOEIg0oxASNaLPE6g5MFyMnj73IoSmdbWe
	zzC21Sb4WUU0S0JJec6ASOlEah+RhiVy1Fgb7GACnP1Y4cvKtXoFo0FxhgU+v+QAsWPbiI+v43W
	b8Avp
X-Google-Smtp-Source: AGHT+IGJREoSnG46P/t20ngqdhpSB9tC4Fc2vmNOvK3IyD1PhX98abqWUE9cRzQMmElSLNeoAKXG8Q==
X-Received: by 2002:a05:6870:e24e:b0:2b7:f58d:6dcf with SMTP id 586e51a60fabf-2db5bee487fmr3754145fac.18.1746704253907;
        Thu, 08 May 2025 04:37:33 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2db5d0e551asm1394614fac.42.2025.05.08.04.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 04:37:33 -0700 (PDT)
Message-ID: <63f0d0c0-94cc-4397-9c8a-b8d117514fd9@riscstar.com>
Date: Thu, 8 May 2025 06:37:31 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9] riscv: dts: spacemit: Add clock tree for SpacemiT K1
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250508111528.10508-2-heylenay@4d2.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250508111528.10508-2-heylenay@4d2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/8/25 6:15 AM, Haylen Chu wrote:
> Describe the PLL and system controllers that're capable of generating
> clock signals in the devicetree.
> 
> Signed-off-by: Haylen Chu <heylenay@4d2.org>
> Reviewed-by: Alex Elder <elder@riscstar.com>
> Reviewed-by: Yixun Lan <dlan@gentoo.org>
> ---
> 
> This originates the 5th patch from previous "Add clock controller
> support for SpacemiT K1" series[1] with node names of system
> controllers and PLL reworked[2].
> 
> The patch is based on linux-spacemit/k1/clk-for-6.16. Yixun, please drop
> the previous version and pick this patch instead. Thanks for your work!
> 
> [1]: https://lore.kernel.org/spacemit/20250416135406.16284-1-heylenay@4d2.org/
> [2]: https://lore.kernel.org/spacemit/aBxF81yqPgHP5oA_@ketchup/

What you changed was that previously you used "system-control" for
syscon_apbc, pll, and syscon_apmu.  In this version, you name them
all "system-controller", consistently.  Meanwhile syscon_mpmu had
"system-controller" already.

For example:
     syscon_apbc: system-control@d4015000 {
is now:
     syscon_apbc: system-controller@d4015000 {

This looks good to me.  Thanks for updating it.

Reviewed-by: Alex Elder <elder@riscstar.com>

>   arch/riscv/boot/dts/spacemit/k1.dtsi | 75 ++++++++++++++++++++++++++++
>   1 file changed, 75 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
> index c670ebf8fa12..85c9730dd082 100644
> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> @@ -3,6 +3,8 @@
>    * Copyright (C) 2024 Yangyu Chen <cyy@cyyself.name>
>    */
>   
> +#include <dt-bindings/clock/spacemit,k1-syscon.h>
> +
>   /dts-v1/;
>   / {
>   	#address-cells = <2>;
> @@ -306,6 +308,36 @@ cluster1_l2_cache: l2-cache1 {
>   		};
>   	};
>   
> +	clocks {
> +		vctcxo_1m: clock-1m {
> +			compatible = "fixed-clock";
> +			clock-frequency = <1000000>;
> +			clock-output-names = "vctcxo_1m";
> +			#clock-cells = <0>;
> +		};
> +
> +		vctcxo_24m: clock-24m {
> +			compatible = "fixed-clock";
> +			clock-frequency = <24000000>;
> +			clock-output-names = "vctcxo_24m";
> +			#clock-cells = <0>;
> +		};
> +
> +		vctcxo_3m: clock-3m {
> +			compatible = "fixed-clock";
> +			clock-frequency = <3000000>;
> +			clock-output-names = "vctcxo_3m";
> +			#clock-cells = <0>;
> +		};
> +
> +		osc_32k: clock-32k {
> +			compatible = "fixed-clock";
> +			clock-frequency = <32000>;
> +			clock-output-names = "osc_32k";
> +			#clock-cells = <0>;
> +		};
> +	};
> +
>   	soc {
>   		compatible = "simple-bus";
>   		interrupt-parent = <&plic>;
> @@ -314,6 +346,17 @@ soc {
>   		dma-noncoherent;
>   		ranges;
>   
> +		syscon_apbc: system-controller@d4015000 {
> +			compatible = "spacemit,k1-syscon-apbc";
> +			reg = <0x0 0xd4015000 0x0 0x1000>;
> +			clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>,
> +				 <&vctcxo_24m>;
> +			clock-names = "osc", "vctcxo_1m", "vctcxo_3m",
> +				      "vctcxo_24m";
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
>   		uart0: serial@d4017000 {
>   			compatible = "spacemit,k1-uart", "intel,xscale-uart";
>   			reg = <0x0 0xd4017000 0x0 0x100>;
> @@ -409,6 +452,38 @@ pinctrl: pinctrl@d401e000 {
>   			reg = <0x0 0xd401e000 0x0 0x400>;
>   		};
>   
> +		syscon_mpmu: system-controller@d4050000 {
> +			compatible = "spacemit,k1-syscon-mpmu";
> +			reg = <0x0 0xd4050000 0x0 0x209c>;
> +			clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>,
> +				 <&vctcxo_24m>;
> +			clock-names = "osc", "vctcxo_1m", "vctcxo_3m",
> +				      "vctcxo_24m";
> +			#clock-cells = <1>;
> +			#power-domain-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		pll: clock-controller@d4090000 {
> +			compatible = "spacemit,k1-pll";
> +			reg = <0x0 0xd4090000 0x0 0x1000>;
> +			clocks = <&vctcxo_24m>;
> +			spacemit,mpmu = <&syscon_mpmu>;
> +			#clock-cells = <1>;
> +		};
> +
> +		syscon_apmu: system-controller@d4282800 {
> +			compatible = "spacemit,k1-syscon-apmu";
> +			reg = <0x0 0xd4282800 0x0 0x400>;
> +			clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>,
> +				 <&vctcxo_24m>;
> +			clock-names = "osc", "vctcxo_1m", "vctcxo_3m",
> +				      "vctcxo_24m";
> +			#clock-cells = <1>;
> +			#power-domain-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
>   		plic: interrupt-controller@e0000000 {
>   			compatible = "spacemit,k1-plic", "sifive,plic-1.0.0";
>   			reg = <0x0 0xe0000000 0x0 0x4000000>;


