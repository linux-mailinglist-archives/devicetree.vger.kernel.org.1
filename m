Return-Path: <devicetree+bounces-270150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UN93HDi/pWknFgAAu9opvQ
	(envelope-from <devicetree+bounces-270150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:47:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D451DD31F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5727F30AE27A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41ED35CBD7;
	Mon,  2 Mar 2026 16:40:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50156421880;
	Mon,  2 Mar 2026 16:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772469648; cv=none; b=j+HgGH1eolFdzGQVByPppoH3bXqyc78EL+QVhXz8flJ/1cCU8WfkfJyVL57jIiG4R4eEYb+cFjT/q5nPTkMMQ0PbVUCfBj8ZqrAr5blBxCCVQxxSdTGitT1NjaLVivs1dvvAGeMkQRtYtPWJkrh9J5VIVVeGOQ2ly6zkdsOQAaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772469648; c=relaxed/simple;
	bh=aLeU2VGMX0spqlbdN5NMxq7uHUsy5w0e39kuRVe1evw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bw05Uu8PUYoTNktOS2Cvwy7WFfhW7nWqIlOqOwfNfi0zipa7i/veZDpp/sDxC37AbTCCtxYaid3sJT2l3OfTlEPt0iV012NQlOJJEjstpbIRdFFt9QFrY/YQE5g9zzmbW5Z16SyrbEsKr2LWAy6h5C8MKfoAyQrJtG9fYu8i3cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F69914BF;
	Mon,  2 Mar 2026 08:40:39 -0800 (PST)
Received: from [10.57.82.202] (unknown [10.57.82.202])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D9363F694;
	Mon,  2 Mar 2026 08:40:42 -0800 (PST)
Message-ID: <1e2db927-6ffd-40a1-9ff5-6713631e989b@arm.com>
Date: Mon, 2 Mar 2026 17:40:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: zena: Add support for Zena CSS
To: Debbie Horsfall <debbie.horsfall@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Linus Walleij <linusw@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
 <20260212-zena-css-v2-2-d33ea23cb9c2@arm.com>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20260212-zena-css-v2-2-d33ea23cb9c2@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B0D451DD31F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.911];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-270150-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Hi Debbie,

On 2/12/26 12:16, Debbie Horsfall wrote:
> Introduce the Zena CSS Fixed Virtual Platform (FVP) dts. This is
> currently the only Zena CSS variant, however the common definitions are
> included in a common dtsi for extensibility.

Many thanks for the changes! I can confirm that the concerns I had on v1 
have all been addressed. The other changes you did are indeed 
cosmetical: upper case/lower case conversions, and moving of nodes and 
properties. Thanks for addressing those coding style issues proactively!

I checked the CPU nodes again: they match each other apart from the 
obvious differences due to the MPIDRs and cluster/cache numbers.
Also the rest looks as reasonable as one could expect.

> Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>   arch/arm64/boot/dts/arm/Makefile         |   1 +
>   arch/arm64/boot/dts/arm/zena-css-fvp.dts |  55 +++
>   arch/arm64/boot/dts/arm/zena-css.dtsi    | 777 +++++++++++++++++++++++++++++++
>   3 files changed, 833 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
> index f30ee045dc95..770fb145b4a9 100644
> --- a/arch/arm64/boot/dts/arm/Makefile
> +++ b/arch/arm64/boot/dts/arm/Makefile
> @@ -8,3 +8,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
>   dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
>   dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
>   dtb-$(CONFIG_ARCH_VEXPRESS) += morello-sdp.dtb morello-fvp.dtb
> +dtb-$(CONFIG_ARCH_VEXPRESS) += zena-css-fvp.dtb
> diff --git a/arch/arm64/boot/dts/arm/zena-css-fvp.dts b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
> new file mode 100644
> index 000000000000..b75204a91882
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (c) 2025, Arm Limited. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "zena-css.dtsi"
> +
> +/ {
> +	model = "Zena CSS Fixed Virtual Platform";
> +	compatible = "arm,zena-css-fvp", "arm,zena-css", "arm,vexpress";
> +
> +	chosen {
> +		stdout-path = &soc_serial0;
> +	};
> +};
> +
> +&soc {
> +	virtio@30020000 {
> +		compatible = "virtio,mmio";
> +		reg = <0x0 0x30020000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	virtio@30030000 {
> +		compatible = "virtio,mmio";
> +		reg = <0x0 0x30030000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	virtio@30040000 {
> +		compatible = "virtio,mmio";
> +		reg = <0x0 0x30040000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	virtio@30050000 {
> +		compatible = "virtio,mmio";
> +		reg = <0x0 0x30050000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	virtio@30060000 {
> +		compatible = "virtio,mmio";
> +		reg = <0x0 0x30060000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	virtio@30080000 {
> +		compatible = "virtio,mmio";
> +		reg = <0x0 0x30080000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/arm/zena-css.dtsi b/arch/arm64/boot/dts/arm/zena-css.dtsi
> new file mode 100644
> index 000000000000..9899d2883337
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/zena-css.dtsi
> @@ -0,0 +1,777 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (c) 2025, Arm Limited. All rights reserved.
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +	interrupt-parent = <&gic>;
> +
> +	soc_clk24mhz: clock-24000000 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "refclk24mhz";
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		/*
> +		 * The latency and residency numbers below are for illustrative
> +		 * purposes only and may vary on actual silicon. These values are
> +		 * considered just to demonstrate that the cpuidle governor logic
> +		 * works.
> +		 */
> +		idle-states {
> +			entry-method = "psci";
> +
> +			cpu_sleep: cpu-sleep {
> +				compatible = "arm,idle-state";
> +				arm,psci-suspend-param = <0x10000>;
> +				entry-latency-us = <800>;
> +				exit-latency-us = <3200>;
> +				local-timer-stop;
> +				min-residency-us = <4200>;
> +			};
> +
> +			cluster_sleep: cluster-sleep {
> +				compatible = "arm,idle-state";
> +				arm,psci-suspend-param = <0x1010000>;
> +				entry-latency-us = <1000>;
> +				exit-latency-us = <3200>;
> +				local-timer-stop;
> +				min-residency-us = <4500>;
> +			};
> +		};
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 { cpu = <&cpu0>; };
> +				core1 { cpu = <&cpu1>; };
> +				core2 { cpu = <&cpu2>; };
> +				core3 { cpu = <&cpu3>; };
> +			};
> +
> +			cluster1 {
> +				core0 { cpu = <&cpu4>; };
> +				core1 { cpu = <&cpu5>; };
> +				core2 { cpu = <&cpu6>; };
> +				core3 { cpu = <&cpu7>; };
> +			};
> +
> +			cluster2 {
> +				core0 { cpu = <&cpu8>; };
> +				core1 { cpu = <&cpu9>; };
> +				core2 { cpu = <&cpu10>; };
> +				core3 { cpu = <&cpu11>; };
> +			};
> +
> +			cluster3 {
> +				core0 { cpu = <&cpu12>; };
> +				core1 { cpu = <&cpu13>; };
> +				core2 { cpu = <&cpu14>; };
> +				core3 { cpu = <&cpu15>; };
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x0000>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl0_l2_0>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl0_l2_0: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl0_l3>;
> +			};
> +		};
> +
> +		cpu1: cpu@100 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x0100>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl0_l2_1>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl0_l2_1: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl0_l3>;
> +			};
> +		};
> +
> +		cpu2: cpu@200 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x0200>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl0_l2_2>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl0_l2_2: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl0_l3>;
> +			};
> +		};
> +
> +		cpu3: cpu@300 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x0300>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl0_l2_3>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl0_l2_3: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl0_l3>;
> +			};
> +		};
> +
> +		cpu4: cpu@10000 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x10000>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl1_l2_0>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl1_l2_0: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl1_l3>;
> +			};
> +		};
> +
> +		cpu5: cpu@10100 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x10100>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl1_l2_1>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl1_l2_1: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl1_l3>;
> +			};
> +		};
> +
> +		cpu6: cpu@10200 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x10200>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl1_l2_2>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl1_l2_2: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl1_l3>;
> +			};
> +		};
> +
> +		cpu7: cpu@10300 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x10300>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl1_l2_3>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl1_l2_3: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl1_l3>;
> +			};
> +		};
> +
> +		cpu8: cpu@20000 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x20000>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl2_l2_0>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl2_l2_0: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl2_l3>;
> +			};
> +		};
> +
> +		cpu9: cpu@20100 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x20100>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl2_l2_1>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl2_l2_1: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl2_l3>;
> +			};
> +		};
> +
> +		cpu10: cpu@20200 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x20200>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl2_l2_2>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl2_l2_2: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl2_l3>;
> +			};
> +		};
> +
> +		cpu11: cpu@20300 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x20300>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl2_l2_3>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl2_l2_3: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl2_l3>;
> +			};
> +		};
> +
> +		cpu12: cpu@30000 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x30000>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl3_l2_0>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl3_l2_0: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl3_l3>;
> +			};
> +		};
> +
> +		cpu13: cpu@30100 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x30100>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl3_l2_1>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl3_l2_1: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl3_l3>;
> +			};
> +		};
> +
> +		cpu14: cpu@30200 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x30200>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl3_l2_2>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl3_l2_2: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl3_l3>;
> +			};
> +		};
> +
> +		cpu15: cpu@30300 {
> +			compatible = "arm,cortex-a720ae";
> +			device_type = "cpu";
> +			reg = <0x00 0x30300>;
> +			enable-method = "psci";
> +
> +			clocks = <&scmi_dvfs 0>;
> +			cpu-idle-states = <&cpu_sleep &cluster_sleep>;
> +			next-level-cache = <&cl3_l2_3>;
> +
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			i-cache-size = <0x10000>;
> +
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			d-cache-size = <0x10000>;
> +
> +			cl3_l2_3: l2-cache {
> +				compatible = "cache";
> +				cache-level = <2>;
> +				cache-line-size = <64>;
> +				cache-sets = <0x400>;	/* 8-way set */
> +				cache-size = <0x80000>;	/* 512KB */
> +				cache-unified;
> +				next-level-cache = <&cl3_l3>;
> +			};
> +		};
> +
> +		cl0_l3: l3-cache0 {
> +			compatible = "cache";
> +			cache-level = <3>;
> +			cache-line-size = <64>;
> +			cache-sets = <0x1000>;		/* 16-way set */
> +			cache-size = <0x400000>;	/* 4MB */
> +			cache-unified;
> +		};
> +
> +		cl1_l3: l3-cache1 {
> +			compatible = "cache";
> +			cache-level = <3>;
> +			cache-line-size = <64>;
> +			cache-sets = <0x1000>;		/* 16-way set */
> +			cache-size = <0x400000>;	/* 4MB */
> +			cache-unified;
> +		};
> +
> +		cl2_l3: l3-cache2 {
> +			compatible = "cache";
> +			cache-level = <3>;
> +			cache-line-size = <64>;
> +			cache-sets = <0x1000>;		/* 16-way set */
> +			cache-size = <0x400000>;	/* 4MB */
> +			cache-unified;
> +		};
> +
> +		cl3_l3: l3-cache3 {
> +			compatible = "cache";
> +			cache-level = <3>;
> +			cache-line-size = <64>;
> +			cache-sets = <0x1000>;		/* 16-way set */
> +			cache-size = <0x400000>;	/* 4MB */
> +			cache-unified;
> +		};
> +	};
> +
> +	firmware {
> +		scmi {
> +			compatible = "arm,scmi";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			mbox-names = "tx", "tx_reply", "rx";
> +			mboxes = <&mbox_db_tx 0 0 0>,
> +				 <&mbox_db_rx 0 0 0>,
> +				 <&mbox_db_rx 0 0 2>;
> +			shmem = <&scmi_shmem_tx &scmi_shmem_rx>;
> +
> +			scmi_dvfs: protocol@13 {
> +				reg = <0x13>;
> +				#clock-cells = <1>;
> +			};
> +		};
> +	};
> +
> +	dsu-pmu-0 {
> +		compatible = "arm,dsu-pmu";
> +		cpus = <&cpu0 &cpu1 &cpu2 &cpu3>;
> +		interrupts = <GIC_SPI 184 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	dsu-pmu-1 {
> +		compatible = "arm,dsu-pmu";
> +		cpus = <&cpu4 &cpu5 &cpu6 &cpu7>;
> +		interrupts = <GIC_SPI 185 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	dsu-pmu-2 {
> +		compatible = "arm,dsu-pmu";
> +		cpus = <&cpu8 &cpu9 &cpu10 &cpu11>;
> +		interrupts = <GIC_SPI 186 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	dsu-pmu-3 {
> +		compatible = "arm,dsu-pmu";
> +		cpus = <&cpu12 &cpu13 &cpu14 &cpu15>;
> +		interrupts = <GIC_SPI 187 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2";
> +		method = "smc";
> +	};
> +
> +	soc: soc {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		timer@1a810000 {
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x0 0x1a810000 0x0 0x10000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			/*
> +			 * Map child space [0x0..0x30000) to parent @ 0x1a810000
> +			 */
> +			ranges = <0x0 0x0 0x1a810000 0x00030000>;
> +
> +			frame@20000 {
> +				reg = <0x20000 0x10000>;
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +			};
> +		};
> +
> +		gic: interrupt-controller@20800000 {
> +			compatible = "arm,gic-v3";
> +			#interrupt-cells = <3>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			#redistributor-regions = <16>;
> +			interrupt-controller;
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +			ranges;
> +
> +			/*
> +			 * With GIC-A720AE multiview enabled, GICR_TYPER.Last is
> +			 * always reported as 1 on redistributor views other than
> +			 * view 0. This breaks discovery of a single contiguous
> +			 * GICR frame region, so each core is described with its own
> +			 * redistributor region.
> +			 */
> +			reg = <0x0 0x20800000 0x0 0x10000>,	/* GICD */
> +			      <0x0 0x20880000 0x0 0x40000>,	/* 16 * GICR */
> +			      <0x0 0x208c0000 0x0 0x40000>,
> +			      <0x0 0x20900000 0x0 0x40000>,
> +			      <0x0 0x20940000 0x0 0x40000>,
> +			      <0x0 0x20980000 0x0 0x40000>,
> +			      <0x0 0x209c0000 0x0 0x40000>,
> +			      <0x0 0x20a00000 0x0 0x40000>,
> +			      <0x0 0x20a40000 0x0 0x40000>,
> +			      <0x0 0x20a80000 0x0 0x40000>,
> +			      <0x0 0x20ac0000 0x0 0x40000>,
> +			      <0x0 0x20b00000 0x0 0x40000>,
> +			      <0x0 0x20b40000 0x0 0x40000>,
> +			      <0x0 0x20b80000 0x0 0x40000>,
> +			      <0x0 0x20bc0000 0x0 0x40000>,
> +			      <0x0 0x20c00000 0x0 0x40000>,
> +			      <0x0 0x20c40000 0x0 0x40000>;
> +
> +			its: msi-controller@20840000 {
> +				compatible = "arm,gic-v3-its";
> +				reg = <0x0 0x20840000 0x0 0x40000>;
> +				msi-controller;
> +				#msi-cells = <1>;
> +			};
> +		};
> +
> +		/*
> +		 * UART is fixed at 24MHz, both UARTCLK and PCLK.
> +		 */
> +		soc_serial0: serial@1a400000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x0 0x1a400000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&soc_clk24mhz>, <&soc_clk24mhz>;
> +			clock-names = "uartclk", "apb_pclk";
> +		};
> +
> +		watchdog@1a420000 {
> +			compatible = "arm,sbsa-gwdt";
> +			reg = <0x0 0x1a420000 0x0 0x10000>,
> +			      <0x0 0x1a430000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		rtc@300d0000 {
> +			compatible = "arm,pl031", "arm,primecell";
> +			reg = <0x0 0x300d0000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&soc_clk24mhz>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		mbox_db_tx: mailbox@40020000 {
> +			compatible = "arm,mhuv3";
> +			reg = <0x0 0x40020000 0x0 0x30000>;
> +			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "combined";
> +			clocks = <&soc_clk24mhz>;
> +			#mbox-cells = <3>;
> +		};
> +
> +		mbox_db_rx: mailbox@40060000 {
> +			compatible = "arm,mhuv3";
> +			reg = <0x0 0x40060000 0x0 0x30000>;
> +			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "combined";
> +			clocks = <&soc_clk24mhz>;
> +			#mbox-cells = <3>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	sram: sram@104000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0x00104000 0x0 0x00001000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x0 0x00104000 0x00001000>;
> +
> +		scmi_shmem_tx: scpshmem-sram-section@0 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x0 0x100>;
> +		};
> +
> +		scmi_shmem_rx: scpshmem-sram-section@100 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x100 0x100>;
> +		};
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +
> +		/* ~2GB mapped at 2GB, another 2GB at 2TB */
> +		reg = <0x00000000 0x80000000 0x00000000 0x7f000000>,
> +		      <0x00000200 0x00000000 0x00000000 0x80000000>;
> +	};
> +};
> 


