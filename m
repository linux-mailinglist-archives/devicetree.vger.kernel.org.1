Return-Path: <devicetree+bounces-110800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A46F799BF4E
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 07:16:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C871D1C2132C
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 05:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DB74E1CA;
	Mon, 14 Oct 2024 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="b/YYsSY4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BCA4C7E;
	Mon, 14 Oct 2024 05:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728882993; cv=none; b=KH6EexmOb7wuPXOQixR0PmkQPo6JKTlrU+w65eRsx7mQP+p8eE2wpsdltntpXlT0cgtxwi9T2aYajg586SIfiRsQfHBHh3sah5I2tMXw7kf0MzXHgk7YuEPE/+/5T5dJASaMPN8rqq7PXu1bTAL+oGKowGqsq4auGS7JLazG+Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728882993; c=relaxed/simple;
	bh=Mppu4XGdH1KEFAc61VT93mc1hYhP1t/WRc06WBcMlGQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lH/PfEXA/F5EFKuRyZnP1iBtd6qYbryfFGhrv5g9kOgrIJkT2f5Tq3Wvdl0PU7FrzAWSlW3Q90KSAlbBLfR05DsuZAVCPVnxonrt92I71qAR3FZzR1cuJPGkRV9oOSU7htICs4afy3Zq+HIaSltFcOKlzGCd4UeWRwOXftFKEco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=b/YYsSY4; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728882987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rTZ5SBr1aEj+jNtSS5ZlaOSl6XDMcU4TwFNZd5pPd78=;
	b=b/YYsSY4IanecYhJieTrtOr6zdEhNOIXgUd/6V0rlqydp+O+EGwHxDEdLS5alyf8QVjVyD
	SHg1UB93Z7LiUOWluV69EiWAHlm+x+jYJOKainudQPYGBlcL+aESdrvou6Fyk0JPbXlb6O
	n/4HjXDEWlBYS6g9uo8AwfYN8kmgFazE9ws036T9l12Ga5wMZQRiD3IrlyZ4TuC7Xr0uNe
	zu0KhnRV5wpZEi6lGAvZUNadeYNvY3oSR+Rr1v9l4wQuWEj3tFvCJMEbQUj5pKKVv0jrC7
	uH2lTz9x6cnueutTeMF+qjYaGXb4vwKRYmlo4j+67gJJ7W+a+yIqzmwC1TcRwQ==
Date: Mon, 14 Oct 2024 07:16:26 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, TL Lim <tllim@pine64.org>, Marek Kraus
 <gamiee@pine64.org>, Tom Cubie <tom@radxa.com>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add new SoC dtsi for the
 RK3566T variant
In-Reply-To: <CE605641E53903DC+0f0ea6b2-9423-4aa2-ac9d-652a9ac5c237@radxa.com>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <95fc64aaf6d3ac7124926bcb0c664406b4e5fe3d.1728752527.git.dsimic@manjaro.org>
 <CE605641E53903DC+0f0ea6b2-9423-4aa2-ac9d-652a9ac5c237@radxa.com>
Message-ID: <ce54f171dfb145ce85d9a0192562e174@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-10-14 06:38, FUKAUMI Naoki wrote:
> On 10/13/24 02:04, Dragan Simic wrote:
>> Add new SoC dtsi file for the RK3566T variant of the Rockchip RK3566 
>> SoC.
>> The difference between the RK3566T variant and the "full-fat" RK3566 
>> variant
>> is in fewer supported CPU and GPU OPPs on the RK3566T, and in the 
>> absence of
>> a functional NPU, which we currently don't have to worry about.
>> 
>> Examples of the boards based on the RK3566T include the Pine64 
>> Quartz64 Zero
>> SBC, [2] the Radxa ROCK 3C and the Radxa ZERO 3E/3W SBCs.  
>> Unfortunately,
>> Radxa doesn't mention the use of RK3566T officially, but its official 
>> SBC
>> specifications do state that the maximum frequency for the Cortex-A55 
>> cores
>> on those SBCs is lower than the "full-fat" RK3566's 1.8 GHz, which 
>> makes
>> spotting the presence of the RK3566T SoC variant rather easy. 
>> [3][4][5]  An
>> additional, helpful cue is that Radxa handles the CPU and GPU OPPs for 
>> the
>> RK3566T variant separately in its downstream kernel. [6]
>> 
>> The CPU and GPU OPPs supported on the RK3566T SoC variant are taken 
>> from the
>> vendor kernel source, [1] which uses the values of the 
>> "opp-supported-hw" OPP
>> properties to determine which ones are supported on a particular SoC 
>> variant.
>> The actual values of the "opp-supported-hw" properties make it rather 
>> easy
>> to see what OPPs are supported on the RK3566T SoC variant, but that, 
>> rather
>> unfortunately, clashes with the maximum frequencies advertised 
>> officially
>> for the Cortex-A55 CPU cores on the above-mentioned SBCs. [2][3][4][5] 
>>  The
>> vendor kernel source indicates that the maximum frequency for the CPU 
>> cores
>> is 1.4 GHz, while the SBC specifications state that to be 1.6 GHz.  
>> Unless
>> that discrepancy is resolved somehow, let's take the safe approach and 
>> use
>> the lower maximum frequency for the CPU cores.
>> 
>> Update the dts files of the currently supported RK3566T-based boards 
>> to use
>> the new SoC dtsi for the RK3566T variant.  This actually takes the CPU 
>> cores
>> and the GPUs found on these boards out of their earlier overclocks, 
>> but it
>> also means that the officially advertised specifications [2][3][4][5] 
>> of the
>> highest supported frequencies for the Cortex-A55 CPU cores on these 
>> boards
>> may actually be wrong, as already explained above.
>> 
>> The correctness of the introduced changes was validated by decompiling 
>> and
>> comparing all affected board dtb files before and after these changes.
>> 
>> [1] 
>> https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> [2] https://wiki.pine64.org/wiki/Quartz64
>> [3] 
>> https://dl.radxa.com/rock3/docs/hw/3c/radxa_rock3c_product_brief.pdf
>> [4] 
>> https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_product_brief.pdf
>> [5] 
>> https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_product_brief.pdf
>> [6] 
>> https://github.com/radxa/kernel/commit/2dfd51da472e7ebb5ef0d3db78f902454af826b8
>> 
>> Cc: TL Lim <tllim@pine64.org>
>> Cc: Marek Kraus <gamiee@pine64.org>
>> Cc: Tom Cubie <tom@radxa.com>
>> Cc: FUKAUMI Naoki <naoki@radxa.com>
>> Helped-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>> Helped-by: Jonas Karlman <jonas@kwiboo.se>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>   .../dts/rockchip/rk3566-radxa-zero-3.dtsi     |  2 +-
>>   .../boot/dts/rockchip/rk3566-rock-3c.dts      |  2 +-
>>   arch/arm64/boot/dts/rockchip/rk3566t.dtsi     | 90 
>> +++++++++++++++++++
>>   3 files changed, 92 insertions(+), 2 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566t.dtsi
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
>> index de390d92c35e..1ee5d96a46a1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
>> @@ -3,7 +3,7 @@
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/leds/common.h>
>>   #include <dt-bindings/soc/rockchip,vop2.h>
>> -#include "rk3566.dtsi"
>> +#include "rk3566t.dtsi"
> 
> could you drop this change for now?

This patch is also going to be used for the upcoming board dts
for the Pine64 Quartz64 Zero, so there's no need for dropping it.
The Quartz64 Zero definitely uses the RK3566T.

> We (Radxa) think we use RK3566.

Well, the available documentation for the Radxa ROCK 3C and ZERO
3E/3W boards doesn't say so; instead, everything points to the
RK3566T being used.  The referenced commit in the Radxa downstream
kernel also indicates that RK3566T is used at least on some boards.

Also, some independent testing, by reading the efuses, has showed
that at least some ROCK 3C and ZERO 3E/3W boards actually have the
RK3566T, which means that we should handle them all as having the
RK3566T, to avoid overclocking the CPU cores and the GPU.  I'll
get back to this below.

> and vendor kernel[6] refers efuse value to determine it's -T or not.
> can you do similar way?

Unfortunately not at the moment, because that would require major
changes to the way OPPs are handled in the upstream kernel.  Maybe
we can do that at some point in the future, as part of my planned
work on supporting SoC binning.

With that in place, hopefully, we could handle any ROCK 3C and ZERO
3E/3W boards that actually have the "full-fat" RK3566 variant as
such, but until then, it's much safer to treat them all as having
the RK3566T, and avoid the possible overclocking.

>>   / {
>>   	chosen {
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
>> index f2cc086e5001..9a8f4f774dbc 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
>> @@ -5,7 +5,7 @@
>>   #include <dt-bindings/leds/common.h>
>>   #include <dt-bindings/pinctrl/rockchip.h>
>>   #include <dt-bindings/soc/rockchip,vop2.h>
>> -#include "rk3566.dtsi"
>> +#include "rk3566t.dtsi"
> 
> same here.
> 
> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>>   / {
>>   	model = "Radxa ROCK 3C";
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566t.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
>> new file mode 100644
>> index 000000000000..cd89bd3b125b
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
>> @@ -0,0 +1,90 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +#include "rk3566-base.dtsi"
>> +
>> +/ {
>> +	cpu0_opp_table: opp-table-0 {
>> +		compatible = "operating-points-v2";
>> +		opp-shared;
>> +
>> +		opp-408000000 {
>> +			opp-hz = /bits/ 64 <408000000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-600000000 {
>> +			opp-hz = /bits/ 64 <600000000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-816000000 {
>> +			opp-hz = /bits/ 64 <816000000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +			opp-suspend;
>> +		};
>> +
>> +		opp-1104000000 {
>> +			opp-hz = /bits/ 64 <1104000000>;
>> +			opp-microvolt = <900000 900000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-1416000000 {
>> +			opp-hz = /bits/ 64 <1416000000>;
>> +			opp-microvolt = <1025000 1025000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +	};
>> +
>> +	gpu_opp_table: opp-table-1 {
>> +		compatible = "operating-points-v2";
>> +
>> +		opp-200000000 {
>> +			opp-hz = /bits/ 64 <200000000>;
>> +			opp-microvolt = <850000 850000 1000000>;
>> +		};
>> +
>> +		opp-300000000 {
>> +			opp-hz = /bits/ 64 <300000000>;
>> +			opp-microvolt = <850000 850000 1000000>;
>> +		};
>> +
>> +		opp-400000000 {
>> +			opp-hz = /bits/ 64 <400000000>;
>> +			opp-microvolt = <850000 850000 1000000>;
>> +		};
>> +
>> +		opp-600000000 {
>> +			opp-hz = /bits/ 64 <600000000>;
>> +			opp-microvolt = <900000 900000 1000000>;
>> +		};
>> +
>> +		opp-700000000 {
>> +			opp-hz = /bits/ 64 <700000000>;
>> +			opp-microvolt = <950000 950000 1000000>;
>> +		};
>> +	};
>> +};
>> +
>> +&cpu0 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>> +};
>> +
>> +&cpu1 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>> +};
>> +
>> +&cpu2 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>> +};
>> +
>> +&cpu3 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>> +};
>> +
>> +&gpu {
>> +	operating-points-v2 = <&gpu_opp_table>;
>> +};

