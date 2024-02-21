Return-Path: <devicetree+bounces-44260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D737685D50A
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 11:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 781031F27D75
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 10:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589324CE12;
	Wed, 21 Feb 2024 09:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="i9xXFb9q"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A4F4CB51
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708509295; cv=none; b=GsSukSelrXQ+ELKaIVFpNi+xF1UoKJwJpAk81eqd95DUsxXDyJ1HitcWl2OPmxLhzAWx1gaB4oFknyyqqXkwEWnC6r6kutg0U6hStqz9+0S6I1z65yw5U01bZlUSsWOfa+0fDktQeb6URl2turqINpItJ3n4wgpnNcxw6ri6swQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708509295; c=relaxed/simple;
	bh=Ov6Fr48gl0NfzJDJ/3C8ImGoCw/m3Sy0KlaKo63UvA0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pa0grUVrHOep7sDX+gBel10HF8Nx/vjys9Z5SVB5DY41/E9PIn2DpEETn95vR9glha6EGTBx+uvGFj9zOzy/LDETnqmq3z3DjI8egAny/uoC2AlFSoK5E4OnJfHg+aZaCFYiXr7WQ7XAwH8Ijk+gbA/FBlac8Xw5pB/1L6zNA5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=i9xXFb9q; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708509291;
	bh=Ov6Fr48gl0NfzJDJ/3C8ImGoCw/m3Sy0KlaKo63UvA0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i9xXFb9q0JzKtrzxylejHMKSnQdr4rUNu8Vk3cyb427BHDXNE5X1BEqUHjulJvCLZ
	 53455+nsw0zZejSSnILF/Q6zL6khL9mBJ9S9RL1MKxxCdfBiEhd5hrMZX1GUXEwGor
	 /AGcg94WEeRsNALZ5xepKTsOH1o+XyxapBKaDy5+4RzczD6zXaNTJOHyps/dyJtuM0
	 I2Ztqe2S7+TxrtCboEFRNd5IVaM5L2+upCWKQZNjlEVDf6olFJ7ygfUENFoL6GyAFj
	 6gtA3LM8IvPf/OVUJze1FGNKYwO6BV5TDXfEwoOGoSaWDC53moFCwPazB8qi9xjlBh
	 nq7HLWSRyw4sw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C52F6378107C;
	Wed, 21 Feb 2024 09:54:50 +0000 (UTC)
Message-ID: <7a623f15-02cc-4508-88e2-da12aaeee242@collabora.com>
Date: Wed, 21 Feb 2024 10:54:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581
 Evaluation Board
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, nbd@nbd.name,
 john@phrozen.org, devicetree@vger.kernel.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org
References: <cover.1708473083.git.lorenzo@kernel.org>
 <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 21/02/24 01:04, Lorenzo Bianconi ha scritto:
> From: Daniel Danzberger <dd@embedd.com>
> 
> Introduce the Airoha EN7581 SoC's dtsi and the Airoha EN7581 Evaluation
> Board's dts file, as well as the required Makefiles.
> 
> Signed-off-by: Daniel Danzberger <dd@embedd.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   arch/arm64/boot/dts/Makefile              |   1 +
>   arch/arm64/boot/dts/airoha/Makefile       |   2 +
>   arch/arm64/boot/dts/airoha/en7581-evb.dts |  27 +++++
>   arch/arm64/boot/dts/airoha/en7581.dtsi    | 137 ++++++++++++++++++++++
>   4 files changed, 167 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/airoha/Makefile
>   create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
>   create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi
> 
> diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
> index 30dd6347a929..21cd3a87f385 100644
> --- a/arch/arm64/boot/dts/Makefile
> +++ b/arch/arm64/boot/dts/Makefile
> @@ -1,5 +1,6 @@
>   # SPDX-License-Identifier: GPL-2.0
>   subdir-y += actions
> +subdir-y += airoha
>   subdir-y += allwinner
>   subdir-y += altera
>   subdir-y += amazon
> diff --git a/arch/arm64/boot/dts/airoha/Makefile b/arch/arm64/boot/dts/airoha/Makefile
> new file mode 100644
> index 000000000000..ebea112ce1d7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +dtb-$(CONFIG_ARCH_AIROHA) += en7581-evb.dtb
> diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> new file mode 100644
> index 000000000000..4eaa8ac431c3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/dts-v1/;
> +
> +/* Bootloader installs ATF here */
> +/memreserve/ 0x80000000 0x200000;
> +
> +#include "en7581.dtsi"
> +
> +/ {
> +	model = "Airoha EN7581 Evaluation Board";
> +	compatible = "airoha,en7581-evb", "airoha,en7581";
> +
> +	aliases {
> +		serial0 = &uart1;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200 earlycon";
> +		stdout-path = "serial0:115200n8";
> +		linux,usable-memory-range = <0x0 0x80200000 0x0 0x1fe00000>;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x80000000 0x2 0x00000000>;

Is your bootloader really not filling the size for the memory node?

Can you please verify?
If it doesn't, it's not a problem of course.

> +	};
> +};
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> new file mode 100644
> index 000000000000..7a3c0a45c03f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		npu_binary@84000000 {

npu-binary@...

> +			no-map;
> +			reg = <0x0 0x84000000 0x0 0xA00000>;
> +		};
> +
> +		npu_flag@84B0000 {
> +			no-map;
> +			reg = <0x0 0x84B00000 0x0 0x100000>;
> +		};
> +
> +		npu_pkt@85000000 {
> +			no-map;
> +			reg = <0x0 0x85000000 0x0 0x1A00000>;
> +		};
> +
> +		npu_phyaddr@86B00000 {
> +			no-map;
> +			reg = <0x0 0x86B00000 0x0 0x100000>;
> +		};
> +
> +		npu_rxdesc@86D00000 {
> +			no-map;
> +			reg = <0x0 0x86D00000 0x0 0x100000>;
> +		};
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-0.2";

Not the first time I comment that (in general - not specifically to you): are you
sure that your platform supports PSCI v0.2 and not a later version?

Please check your kernel log, you should see a message like

[    0.000000] psci: PSCIv1.1 detected in firmware.

(with the right version)

...then use the right compatible string :-)

> +		method = "smc";
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +				core1 {
> +					cpu = <&cpu1>;
> +				};

Your cluster contains only two cores, this means that the other two are in a
parallel reality? :-P :-P

Jokes apart, this cpu-map looks wrong.

Check what the topology is supposed to be for real, clusterized or DynamIQ?
In the first case, you get X clusters with Y CPUs each - in the second case,
you get *one* single cluster with all CPUs inside.

> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			clock-frequency = <80000000>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x1>;
> +			enable-method = "psci";
> +			clock-frequency = <80000000>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		cpu2: cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x2>;
> +			enable-method = "psci";
> +			clock-frequency = <80000000>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		cpu3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x3>;
> +			enable-method = "psci";
> +			clock-frequency = <80000000>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		L2_0: l2-cache0 {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;

Do you know what is the l2 cache size, line size, sets?
cache-size = < ... >
cache-line-size = < ... >
cache-sets = < ... >

> +		};
> +	};
> +

All iospace addressable nodes must go into a soc node, others go in the root node.

soc {
	gic: interrupt-controller@9000000 {
		....
	}

	uart0: serial@ ....

};

> +	gic: interrupt-controller@9000000 {
> +		compatible = "arm,gic-v3";
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <0x0 0x09000000 0x0 0x20000>,
> +		      <0x0 0x09080000 0x0 0x80000>,
> +		      <0x0 0x09400000 0x0 0x2000>,
> +		      <0x0 0x09500000 0x0 0x2000>,
> +		      <0x0 0x09600000 0x0 0x20000>;
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	uart1: serial@1fbf0000 {
> +		compatible = "ns16550";
> +		reg = <0x0 0x1fbf0000 0x0 0x30>;
> +		reg-io-width = <4>;
> +		reg-shift = <2>;
> +		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <1843200>;
> +		status = "okay";

status is okay by default, you don't need that.

> +	};
> +};

Cheers,
Angelo

