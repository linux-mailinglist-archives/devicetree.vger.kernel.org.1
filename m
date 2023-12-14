Return-Path: <devicetree+bounces-25214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0193B812A84
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C033B21273
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0107722F1C;
	Thu, 14 Dec 2023 08:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Jte1KoML"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3708BCF;
	Thu, 14 Dec 2023 00:37:50 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BE8bfwq044737;
	Thu, 14 Dec 2023 02:37:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702543061;
	bh=OJEfOnrpk2mQrWoOVcjnKwzA4s/qApq5Q16vd7MGXX4=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=Jte1KoMLTRLmfpPifGyzeDF9+v0Hye/Pef3cQo0wT/9rJyGY5s5xUv/BApSQGnXk2
	 p3YL50kfijfapR3SjVX64IFkNa1NmUQQUcl6mJoWoZGAi1KJENSgjB6xQHCopmqOf6
	 Eo1MfqjWA4YoRWniHS+eKB9IkXxd6SWqPWFfHfCc=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BE8bfL4113297
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 02:37:41 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 02:37:40 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 02:37:40 -0600
Received: from [10.24.69.141] ([10.24.69.141])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BE8bb3Z040182;
	Thu, 14 Dec 2023 02:37:37 -0600
Message-ID: <08eccba2-41df-91e7-c1e5-e03190402c23@ti.com>
Date: Thu, 14 Dec 2023 14:07:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/3] arm64: dts: ti: Introduce J722S family of SoCs
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <j-choudhary@ti.com>,
        <u-kumar1@ti.com>
References: <20231213124930.3012-1-vaishnav.a@ti.com>
 <20231213124930.3012-3-vaishnav.a@ti.com>
 <20231213202705.6tspycl5qicb6gwd@germproof>
From: Vaishnav Achath <vaishnav.a@ti.com>
In-Reply-To: <20231213202705.6tspycl5qicb6gwd@germproof>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Nishanth,

On 14/12/23 01:57, Nishanth Menon wrote:
> On 18:19-20231213, Vaishnav Achath wrote:
>> The J722S is a family of  application processors built for Automotive and
>> Linux Application development. Scalable Arm Cortex-A53 performance and
>> embedded features, such as multi high-definition display support,
>> 3D-graphics acceleration, 4K video acceleration, and extensive peripherals
>> make the J722S well-suited for a broad range of automation and industrial
>> application, including automotive digital instrumentation, automotive
>> displays, industrial HMI, and more.
> 
> Trim this down please
>>
>> Some highlights of J722S SoC are:
>>     * Quad-Cortex-A53s (running up to 1.4GHz) in a single cluster.
>>     * One Device manager Cortext-R5F for system power and resource
>>       management, two Cortex-R5F for Functional Safety or
>>       general-purpose usage and two C7x floating point vector DSPs
>>       with Matrix Multiply Accelerator(MMA) for deep learning.
>>     * One 3D GPU up to 50 GLFOPS
>>     * H.264/H.265, JPEG Video Encode/Decode.
>>     * Display support: 3x display support over OLDI/LVDS (1x OLDI-DL, 1x or
>>       2x OLDI-SL), DSI, or DPI. Up to 3840x1080@60fps resolution
>>     * Integrated Giga-bit Ethernet switch supporting up to a total of two
>>       external ports (TSN capable).
>>     * Vision Processing Accelerator (VPAC) with image signal processor
>>       and Depth and Motion Processing Accelerator (DMPAC).
>>     * 7xUARTs, 3xSPI, 5xI2C, 2xUSB2, 2xCAN-FD, 3xMMC and SD, GPMC for
>>       NAND/FPGA connection, OSPI memory controller, 5xMcASP for audio,
>>       4xCSI-RX for Camera, 1 PCIe Gen3 controller, eCAP/eQEP,
>>       ePWM, among other peripherals.
>>     * Dedicated Centralized Hardware Security Module with support for
>>       secure boot, debug security and crypto acceleration and trusted
>>       execution environment.
>>     * One 32-bit DDR Subsystem that supports LPDDR4 memory type.
> 
> Trim this down to what is different from AM62P?
> 

Thanks for the review, I will trim this down in next revision, but the above is
just a summary of the main features of this SoC, pointing to AM62P feature set
here seems confusing to me. why does a new user/developer using J722S need to be
aware of the existence of AM62P to just understand a high level summary about
this device?

>>
>> J722S family of SoCs is a superset of the AM62P SoC family and shares
>> similar memory map, thus the nodes are being reused from AM62P includes
>> instead of duplicating the definitions. Unused nodes with dependencies
>> are kept disabled and will be enabled later when the dependencies are
>> enabled.
>>
>> For those interested, more details about this SoC can be found in the
>> Technical Reference Manual here:
>> 	https://www.ti.com/lit/zip/sprujb3
>>
>> Co-developed-by: Jayesh Choudhary <j-choudhary@ti.com>
>> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
>> Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
>> ---
>>
>> checkpatch error is ignored for arch/arm64/boot/dts/ti/k3-pinctrl.h:
>> ERROR: Macros with complex values should be enclosed in parentheses
>>
>> However, we do not need parentheses enclosing the values for this
>> macro as we do intend it to generate two separate values as has been
>> done for other similar platforms.
>>
>> Depends on:
>> https://lore.kernel.org/all/20231211132600.25289-1-vaishnav.a@ti.com/
>> https://lore.kernel.org/all/20231213081318.26203-1-vaishnav.a@ti.com/
>>
>>  arch/arm64/boot/dts/ti/k3-j722s.dtsi | 275 +++++++++++++++++++++++++++
>>  arch/arm64/boot/dts/ti/k3-pinctrl.h  |   3 +
>>  2 files changed, 278 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-j722s.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j722s.dtsi b/arch/arm64/boot/dts/ti/k3-j722s.dtsi
>> new file mode 100644
>> index 000000000000..dbd762bfd779
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-j722s.dtsi
>> @@ -0,0 +1,275 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Device Tree Source for J722S SoC Family
>> + *
>> + * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
>> + */
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/soc/ti,sci_pm_domain.h>
>> +
>> +#include "k3-pinctrl.h"
>> +
>> +/ {
>> +	model = "Texas Instruments K3 J722S SoC";
>> +	compatible = "ti,j722s";
>> +	interrupt-parent = <&gic500>;
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	cpus {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		cpu-map {
>> +			cluster0: cluster0 {
>> +				core0 {
>> +					cpu = <&cpu0>;
>> +				};
>> +
>> +				core1 {
>> +					cpu = <&cpu1>;
>> +				};
>> +
>> +				core2 {
>> +					cpu = <&cpu2>;
>> +				};
>> +
>> +				core3 {
>> +					cpu = <&cpu3>;
>> +				};
>> +			};
>> +		};
>> +
>> +		cpu0: cpu@0 {
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x000>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			i-cache-size = <0x8000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <128>;
>> +			next-level-cache = <&l2_0>;
>> +			clocks = <&k3_clks 135 0>;
>> +		};
>> +
>> +		cpu1: cpu@1 {
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x001>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			i-cache-size = <0x8000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <128>;
>> +			next-level-cache = <&l2_0>;
>> +			clocks = <&k3_clks 136 0>;
>> +		};
>> +
>> +		cpu2: cpu@2 {
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x002>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			i-cache-size = <0x8000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <128>;
>> +			next-level-cache = <&l2_0>;
>> +			clocks = <&k3_clks 137 0>;
>> +		};
>> +
>> +		cpu3: cpu@3 {
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x003>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			i-cache-size = <0x8000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <128>;
>> +			next-level-cache = <&l2_0>;
>> +			clocks = <&k3_clks 138 0>;
>> +		};
>> +	};
>> +
>> +	l2_0: l2-cache0 {
>> +		compatible = "cache";
>> +		cache-unified;
>> +		cache-level = <2>;
>> +		cache-size = <0x80000>;
>> +		cache-line-size = <64>;
>> +		cache-sets = <512>;
>> +	};
> 
> ^^ this is a duplication of am62p5.dtsi? what about the spins with
> different CPUs enabled?
> 

Yes it is a duplicate, as of now we are not aware of plan for spins with cores
disabled, so just followed the pattern followed for other Jacinto devices
(J721e, J7200, J721s2, J784s4).

>> +
>> +	firmware {
>> +		optee {
>> +			compatible = "linaro,optee-tz";
>> +			method = "smc";
>> +		};
>> +
>> +		psci: psci {
>> +			compatible = "arm,psci-1.0";
>> +			method = "smc";
>> +		};
>> +	};
>> +
>> +	a53_timer0: timer-cl0-cpu0 {
>> +		compatible = "arm,armv8-timer";
>> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
>> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
>> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
>> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
>> +	};
>> +
>> +	pmu: pmu {
>> +		compatible = "arm,cortex-a53-pmu";
>> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>> +	};
>> +
>> +	cbass_main: bus@f0000 {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		bootph-all;
> 
> Nope.
> 

Sorry I missed this, will fix here and in all other places (including comments
in patch 3/3).

>> +
>> +		ranges = <0x00 0x000f0000 0x00 0x000f0000 0x00 0x00030000>, /* Main MMRs */
>> +			 <0x00 0x00420000 0x00 0x00420000 0x00 0x00001000>, /* ESM0 */
>> +			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00001100>, /* GPIO */
>> +			 <0x00 0x00703000 0x00 0x00703000 0x00 0x00000200>, /* USB0 debug trace */
>> +			 <0x00 0x0070c000 0x00 0x0070c000 0x00 0x00000200>, /* USB1 debug trace */
>> +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* Timesync router */
>> +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x01b28400>, /* First peripheral window */
>> +			 <0x00 0x08000000 0x00 0x08000000 0x00 0x00200000>, /* Main CPSW */
>> +			 <0x00 0x0e000000 0x00 0x0e000000 0x00 0x01d20000>, /* Second peripheral window */
>> +			 <0x00 0x0fd80000 0x00 0x0fd80000 0x00 0x00080000>, /* GPU */
>> +			 <0x00 0x0fd20000 0x00 0x0fd20000 0x00 0x00000100>, /* JPEGENC0_CORE */
>> +			 <0x00 0x0fd20200 0x00 0x0fd20200 0x00 0x00000200>, /* JPEGENC0_CORE_MMU */
>> +			 <0x00 0x20000000 0x00 0x20000000 0x00 0x0a008000>, /* Third peripheral window */
>> +			 <0x00 0x30040000 0x00 0x30040000 0x00 0x00080000>, /* PRUSS-M */
>> +			 <0x00 0x301C0000 0x00 0x301C0000 0x00 0x00001000>, /* DPHY-TX */
>> +			 <0x00 0x30101000 0x00 0x30101000 0x00 0x00080100>, /* CSI window */
>> +			 <0x00 0x30200000 0x00 0x30200000 0x00 0x00010000>, /* DSS */
>> +			 <0x00 0x30210000 0x00 0x30210000 0x00 0x00010000>, /* VPU */
>> +			 <0x00 0x30220000 0x00 0x30220000 0x00 0x00010000>, /* DSS1 */
>> +			 <0x00 0x30270000 0x00 0x30270000 0x00 0x00010000>, /* DSI-base1 */
>> +			 <0x00 0x30500000 0x00 0x30500000 0x00 0x00100000>, /* DSI-base2 */
>> +			 <0x00 0x31000000 0x00 0x31000000 0x00 0x00050000>, /* USB0 DWC3 Core window */
>> +			 <0x00 0x31200000 0x00 0x31200000 0x00 0x00040000>, /* USB1 DWC3 Core window */
>> +			 <0x00 0x40900000 0x00 0x40900000 0x00 0x00030000>, /* SA3UL */
>> +			 <0x00 0x43600000 0x00 0x43600000 0x00 0x00010000>, /* SA3 sproxy data */
>> +			 <0x00 0x44043000 0x00 0x44043000 0x00 0x00000fe0>, /* TI SCI DEBUG */
>> +			 <0x00 0x44860000 0x00 0x44860000 0x00 0x00040000>, /* SA3 sproxy config */
>> +			 <0x00 0x48000000 0x00 0x48000000 0x00 0x06408000>, /* DMSS */
>> +			 <0x00 0x60000000 0x00 0x60000000 0x00 0x08000000>, /* FSS0 DAT1 */
>> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00040000>, /* OCSRAM */
>> +			 <0x00 0x78400000 0x00 0x78400000 0x00 0x00008000>, /* MAIN R5FSS0 ATCM */
>> +			 <0x00 0x78500000 0x00 0x78500000 0x00 0x00008000>, /* MAIN R5FSS0 BTCM */
>> +			 <0x00 0x7e000000 0x00 0x7e000000 0x00 0x00200000>, /* C7X_0 L2SRAM */
>> +			 <0x00 0x7e200000 0x00 0x7e200000 0x00 0x00200000>, /* C7X_1 L2SRAM */
>> +			 <0x01 0x00000000 0x01 0x00000000 0x00 0x00310000>, /* A53 PERIPHBASE */
>> +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS0 DAT3 */
>> +
>> +			 /* MCU Domain Range */
>> +			 <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>,
>> +			 <0x00 0x79000000 0x00 0x79000000 0x00 0x00008000>,
>> +			 <0x00 0x79020000 0x00 0x79020000 0x00 0x00008000>,
>> +			 <0x00 0x79100000 0x00 0x79100000 0x00 0x00040000>,
>> +			 <0x00 0x79140000 0x00 0x79140000 0x00 0x00040000>,
>> +
>> +			 /* Wakeup Domain Range */
>> +			 <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00002400>,
>> +			 <0x00 0x2b000000 0x00 0x2b000000 0x00 0x00300400>,
>> +			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00020000>,
>> +			 <0x00 0x78000000 0x00 0x78000000 0x00 0x00008000>,
>> +			 <0x00 0x78100000 0x00 0x78100000 0x00 0x00008000>;
>> +
>> +		cbass_mcu: bus@4000000 {
>> +			compatible = "simple-bus";
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges = <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>, /* Peripheral window */
>> +				 <0x00 0x79000000 0x00 0x79000000 0x00 0x00008000>, /* MCU R5 ATCM */
>> +				 <0x00 0x79020000 0x00 0x79020000 0x00 0x00008000>, /* MCU R5 BTCM */
>> +				 <0x00 0x79100000 0x00 0x79100000 0x00 0x00040000>, /* MCU IRAM0 */
>> +				 <0x00 0x79140000 0x00 0x79140000 0x00 0x00040000>; /* MCU IRAM1 */
>> +			bootph-all;
>> +		};
>> +
>> +		cbass_wakeup: bus@b00000 {
>> +			compatible = "simple-bus";
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges = <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00002400>, /* VTM */
>> +				 <0x00 0x2b000000 0x00 0x2b000000 0x00 0x00300400>, /* Peripheral Window */
>> +				 <0x00 0x43000000 0x00 0x43000000 0x00 0x00020000>, /* WKUP CTRL MMR */
>> +				 <0x00 0x78000000 0x00 0x78000000 0x00 0x00008000>, /* DM R5 ATCM*/
>> +				 <0x00 0x78100000 0x00 0x78100000 0x00 0x00008000>; /* DM R5 BTCM*/
>> +			bootph-all;
> 
> Not in the bus nodes.. only in the leaf nodes please.
> 
> 
> Also what is wrong with expanding the am62p to include the
> missing bus segments instead of duplicating all of them?
> 

We can do that, but the same would be true for AM625, AM62A and AM62P families
and also for (J721E, J7200), since all these SoCs introduced new dtsi instead of
resuing existing ones, I thought there would be some valid reason to have
separate dtsi and just followed the same pattern, please let know if we need to
reuse from AM62P here also.

>> +		};
>> +	};
>> +
>> +	#include "k3-am62p-thermal.dtsi"
> 
> Is this correct?
> 

I think it would be preferred to have a duplicate for J722S here as users may
want to customize the trip points as per system and doing that without affecting
AM62P would be preferred, but the initial information here would be same for J722S.

>> +};
>> +
>> +/*
>> + * Include peripherals for each bus segment derived
>> + * from AM62P and overrides specific to J722S.
>> + */
>> +#include "k3-am62p-main.dtsi"
>> +#include "k3-am62p-mcu.dtsi"
>> +#include "k3-am62p-wakeup.dtsi"
>> +
>> +/* Main domain overrides */
>> +
>> +&cpsw3g {
>> +	status = "disabled";
> 
> 	here and rest: Why disabled?

These nodes seems to have dependencies that are not merged already and would
throw errors during boot, AM62P SoC dtsi seems to have these enabled by default
without these dependencies met and have errors like below during boot (seen on
AM62P with 6.7.0-rc4-next-20231211).

[   17.869092] platform 8000000.ethernet: deferred probe pending:
am65-cpsw-nuss: Failed to request tx dma channel

>> +};
>> +
>> +&inta_main_dmss {
>> +	ti,interrupt-ranges = <5 69 35>;
>> +};
>> +
>> +&mailbox0_cluster0 {
>> +	status = "disabled";
>> +};
>> +
>> +&mailbox0_cluster1 {
>> +	status = "disabled";
>> +};
>> +
>> +&mailbox0_cluster2 {
>> +	status = "disabled";
>> +};
>> +
>> +&mailbox0_cluster3 {
>> +	status = "disabled";
>> +};
>> +

[    7.198470] omap-mailbox 29020000.mailbox: no available mbox devices found
[    7.210411] omap-mailbox 29030000.mailbox: no available mbox devices found

>> +&oc_sram {
>> +	reg = <0x00 0x70000000 0x00 0x40000>;
>> +	ranges = <0x00 0x00 0x70000000 0x40000>;
>> +};
>> +
>> +/* MCU domain overrides */
>> +
>> +&mcu_r5fss0 {
>> +	status = "disabled";
>> +};

[    7.492406] platform 79000000.r5f: configured R5F for remoteproc mode
[    7.499887] platform 79000000.r5f: device does not have reserved memory
regions, ret = -22
[    7.508271] k3_r5_rproc bus@f0000:bus@4000000:r5fss@79000000: reserved memory
init failed, ret = -22
[    7.517549] remoteproc remoteproc0: releasing 79000000.r5f
[    7.523338] k3_r5_rproc bus@f0000:bus@4000000:r5fss@79000000:
k3_r5_cluster_rproc_init failed, ret = -22
[    7.532993] k3_r5_rproc: probe of bus@f0000:bus@4000000:r5fss@79000000 failed
with error -22

>> +
>> +/* wakeup domain overrides */
>> +
>> +&wkup_r5fss0 {
>> +	status = "disabled";
>> +};

[    7.576576] platform 78000000.r5f: configured R5F for IPC-only mode
[    7.605535] platform 78000000.r5f: device does not have reserved memory
regions, ret = -22
[    7.613942] k3_r5_rproc bus@f0000:bus@b00000:r5fss@78000000: reserved memory
init failed, ret = -22
[    7.635990] remoteproc remoteproc0: releasing 78000000.r5f
[    7.648639] k3_r5_rproc bus@f0000:bus@b00000:r5fss@78000000:
k3_r5_cluster_rproc_init failed, ret = -22
[    7.664043] k3_r5_rproc: probe of bus@f0000:bus@b00000:r5fss@78000000 failed
with error -22

>> diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
>> index 2a4e0e084d69..591be4489f37 100644
>> --- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
>> +++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
>> @@ -59,6 +59,9 @@
>>  #define J721S2_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>>  #define J721S2_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
>>  
>> +#define J722S_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>> +#define J722S_MCU_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
>> +
>>  #define J784S4_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>>  #define J784S4_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
>>  
>> -- 
>> 2.17.1
>>

0 - AM62P Boot logs (next-20231211) -
https://gist.github.com/vaishnavachath/7143da253bc708a1e60a13fe081d3914

To avoid these errors I am keeping these disabled, can we add support for these
also as part of the initial support addition series? then there is no need for
disabling these.

Thanks and Regards,
Vaishnav

> 

