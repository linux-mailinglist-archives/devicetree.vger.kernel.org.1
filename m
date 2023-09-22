Return-Path: <devicetree+bounces-2293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E057AA7B7
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:25:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 77E5A1C2094C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7703A17E2;
	Fri, 22 Sep 2023 04:25:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A0C80D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 04:25:07 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91DC1198;
	Thu, 21 Sep 2023 21:25:04 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38M4Or3E124790;
	Thu, 21 Sep 2023 23:24:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695356693;
	bh=VonG57fbqNjCppvnIT/oI0EDaHNzBKkijr2y/vpYeQo=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bGmh01tMFDrT4ahuOXyw2MetUWH/9hPwzUMwD3Okw665BjhY/jbcp2xrh/P+WeDjO
	 tgsAzsE9jy1RSDJedXrMvxgbeCIG7abjIzGFgbdgW0UAx/5Q/ioSFIpol0Yz9NstbP
	 wc+5WDBpL2OSQH6qMwgjiikyWtLpuY2akICujuQQ=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38M4OrVe018284
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Sep 2023 23:24:53 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Sep 2023 23:24:53 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Sep 2023 23:24:53 -0500
Received: from [10.24.69.199] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38M4OnOY021300;
	Thu, 21 Sep 2023 23:24:49 -0500
Message-ID: <cd2408af-55c4-6f59-dd0e-165fbf1a1c51@ti.com>
Date: Fri, 22 Sep 2023 09:54:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: k3-am654-idk: Add ICSSG Ethernet
 ports
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Nishanth
 Menon <nm@ti.com>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Tero
 Kristo <kristo@kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <r-gunasekaran@ti.com>
References: <20230921060913.721336-1-danishanwar@ti.com>
 <20230921060913.721336-4-danishanwar@ti.com>
 <ca832fe3-d5cf-b075-324b-50da40794bb7@ti.com>
From: MD Danish Anwar <danishanwar@ti.com>
In-Reply-To: <ca832fe3-d5cf-b075-324b-50da40794bb7@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 21/09/23 23:03, Andrew Davis wrote:
> On 9/21/23 1:09 AM, MD Danish Anwar wrote:
>> The IDK application board has 4 Gigabit Ethernet ports.
>>
>> This patch adds support for the 4 Gigabit Ethernet ports
>> which are provided by ICSSG0 and ICSSG1.
>> The IEP0 SYNC_OUT0 pins are used for PPS out on the IDK card.
>>
>> Signed-off-by: MD Danish Anwar <danishanwar@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/Makefile          |   2 +
>>   arch/arm64/boot/dts/ti/k3-am654-idk.dtso | 296 +++++++++++++++++++++++
>>   2 files changed, 298 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am654-idk.dtso
>>
>> diff --git a/arch/arm64/boot/dts/ti/Makefile
>> b/arch/arm64/boot/dts/ti/Makefile
>> index 85c91f5e832e..ff3f90bf0333 100644
>> --- a/arch/arm64/boot/dts/ti/Makefile
>> +++ b/arch/arm64/boot/dts/ti/Makefile
>> @@ -51,6 +51,7 @@ dtb-$(CONFIG_ARCH_K3) +=
>> k3-am6548-iot2050-advanced-m2.dtb
>>   dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-pg2.dtb
>>   dtb-$(CONFIG_ARCH_K3) += k3-am654-common-board.dtb
>>   dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
>> +dtb-$(CONFIG_ARCH_K3) += k3-am654-idk.dtbo
> 
> You'll want to apply this at build time to the base-board so this
> overlay can be tested, no more orphan DTBO files[0]. So instead do:
> 

I was not aware about having orphan DTBO files. I will do the suggested
change.

> k3-am654-idk-dtbs := k3-am654-base-board.dtb k3-am654-idk.dtbo
> dtb-$(CONFIG_ARCH_K3) += k3-am654-idk.dtb
> 
> Then you can drop the extra "+= -@" line below too, symbols
> will be added for you.
> 
> Andrew
> 
> [0]
> https://lore.kernel.org/all/CAL_Jsq+GR3hP6hFvFn2z5aXvSXnh9butD3aKZ-y_XJgx0_YPTw@mail.gmail.com/
> 
>>   dtb-$(CONFIG_ARCH_K3) += k3-am654-gp-evm.dtb
>>     # Boards with J7200 SoC
>> @@ -79,3 +80,4 @@ DTC_FLAGS_k3-am62-lp-sk += -@
>>   DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
>>   DTC_FLAGS_k3-j721e-common-proc-board += -@
>>   DTC_FLAGS_k3-j721s2-common-proc-board += -@
>> +DTC_FLAGS_k3-am654-common-board += -@
>> diff --git a/arch/arm64/boot/dts/ti/k3-am654-idk.dtso
>> b/arch/arm64/boot/dts/ti/k3-am654-idk.dtso
>> new file mode 100644
>> index 000000000000..7aa10827ed65
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-am654-idk.dtso
>> @@ -0,0 +1,296 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/**
>> + * DT overlay for IDK application board on AM654 EVM
>> + *
>> + * Copyright (C) 2018-2023 Texas Instruments Incorporated -
>> https://www.ti.com/
>> + */
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/net/ti-dp83867.h>
>> +#include "k3-pinctrl.h"
>> +
>> +&{/} {
>> +    aliases {
>> +        ethernet3 = "/icssg0-eth/ethernet-ports/port@0";
>> +        ethernet4 = "/icssg0-eth/ethernet-ports/port@1";
>> +        ethernet5 = "/icssg1-eth/ethernet-ports/port@0";
>> +        ethernet6 = "/icssg1-eth/ethernet-ports/port@1";
>> +    };
>> +
>> +    /* Dual Ethernet application node on PRU-ICSSG0 */
>> +    icssg0_eth: icssg0-eth {
>> +        compatible = "ti,am654-icssg-prueth";
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&icssg0_rgmii_pins_default>;
>> +        sram = <&msmc_ram>;
>> +        ti,prus = <&pru0_0>, <&rtu0_0>, <&tx_pru0_0>, <&pru0_1>,
>> <&rtu0_1>, <&tx_pru0_1>;
>> +        firmware-name = "ti-pruss/am65x-sr2-pru0-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-rtu0-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-txpru0-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-pru1-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-rtu1-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-txpru1-prueth-fw.elf";
>> +
>> +        ti,pruss-gp-mux-sel = <2>,    /* MII mode */
>> +                      <2>,
>> +                      <2>,
>> +                      <2>,    /* MII mode */
>> +                      <2>,
>> +                      <2>;
>> +
>> +        ti,mii-g-rt = <&icssg0_mii_g_rt>;
>> +        ti,mii-rt = <&icssg0_mii_rt>;
>> +        ti,iep = <&icssg0_iep0>,  <&icssg0_iep1>;
>> +
>> +        interrupt-parent = <&icssg0_intc>;
>> +        interrupts = <24 0 2>, <25 1 3>;
>> +        interrupt-names = "tx_ts0", "tx_ts1";
>> +
>> +        dmas = <&main_udmap 0xc100>, /* egress slice 0 */
>> +               <&main_udmap 0xc101>, /* egress slice 0 */
>> +               <&main_udmap 0xc102>, /* egress slice 0 */
>> +               <&main_udmap 0xc103>, /* egress slice 0 */
>> +               <&main_udmap 0xc104>, /* egress slice 1 */
>> +               <&main_udmap 0xc105>, /* egress slice 1 */
>> +               <&main_udmap 0xc106>, /* egress slice 1 */
>> +               <&main_udmap 0xc107>, /* egress slice 1 */
>> +
>> +               <&main_udmap 0x4100>, /* ingress slice 0 */
>> +               <&main_udmap 0x4101>, /* ingress slice 1 */
>> +               <&main_udmap 0x4102>, /* mgmnt rsp slice 0 */
>> +               <&main_udmap 0x4103>; /* mgmnt rsp slice 1 */
>> +        dma-names = "tx0-0", "tx0-1", "tx0-2", "tx0-3",
>> +                "tx1-0", "tx1-1", "tx1-2", "tx1-3",
>> +                "rx0", "rx1";
>> +
>> +        ethernet-ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            icssg0_emac0: port@0 {
>> +                reg = <0>;
>> +                phy-handle = <&icssg0_phy0>;
>> +                phy-mode = "rgmii-id";
>> +                ti,syscon-rgmii-delay = <&scm_conf 0x4100>;
>> +                /* Filled in by bootloader */
>> +                local-mac-address = [00 00 00 00 00 00];
>> +            };
>> +            icssg0_emac1: port@1 {
>> +                reg = <1>;
>> +                phy-handle = <&icssg0_phy1>;
>> +                phy-mode = "rgmii-id";
>> +                ti,syscon-rgmii-delay = <&scm_conf 0x4104>;
>> +                /* Filled in by bootloader */
>> +                local-mac-address = [00 00 00 00 00 00];
>> +            };
>> +        };
>> +    };
>> +
>> +    /* Dual Ethernet application node on PRU-ICSSG1 */
>> +    icssg1_eth: icssg1-eth {
>> +        compatible = "ti,am654-icssg-prueth";
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&icssg1_rgmii_pins_default>;
>> +        sram = <&msmc_ram>;
>> +        ti,prus = <&pru1_0>, <&rtu1_0>, <&tx_pru1_0>, <&pru1_1>,
>> <&rtu1_1>, <&tx_pru1_1>;
>> +        firmware-name = "ti-pruss/am65x-sr2-pru0-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-rtu0-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-txpru0-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-pru1-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-rtu1-prueth-fw.elf",
>> +                "ti-pruss/am65x-sr2-txpru1-prueth-fw.elf";
>> +
>> +        ti,pruss-gp-mux-sel = <2>,    /* MII mode */
>> +                      <2>,
>> +                      <2>,
>> +                      <2>,    /* MII mode */
>> +                      <2>,
>> +                      <2>;
>> +
>> +        ti,mii-g-rt = <&icssg1_mii_g_rt>;
>> +        ti,mii-rt = <&icssg1_mii_rt>;
>> +        ti,iep = <&icssg1_iep0>,  <&icssg1_iep1>;
>> +
>> +        interrupt-parent = <&icssg1_intc>;
>> +        interrupts = <24 0 2>, <25 1 3>;
>> +        interrupt-names = "tx_ts0", "tx_ts1";
>> +
>> +        dmas = <&main_udmap 0xc200>, /* egress slice 0 */
>> +               <&main_udmap 0xc201>, /* egress slice 0 */
>> +               <&main_udmap 0xc202>, /* egress slice 0 */
>> +               <&main_udmap 0xc203>, /* egress slice 0 */
>> +               <&main_udmap 0xc204>, /* egress slice 1 */
>> +               <&main_udmap 0xc205>, /* egress slice 1 */
>> +               <&main_udmap 0xc206>, /* egress slice 1 */
>> +               <&main_udmap 0xc207>, /* egress slice 1 */
>> +
>> +               <&main_udmap 0x4200>, /* ingress slice 0 */
>> +               <&main_udmap 0x4201>, /* ingress slice 1 */
>> +               <&main_udmap 0x4202>, /* mgmnt rsp slice 0 */
>> +               <&main_udmap 0x4203>; /* mgmnt rsp slice 1 */
>> +        dma-names = "tx0-0", "tx0-1", "tx0-2", "tx0-3",
>> +                "tx1-0", "tx1-1", "tx1-2", "tx1-3",
>> +                "rx0", "rx1";
>> +
>> +        ethernet-ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            icssg1_emac0: port@0 {
>> +                reg = <0>;
>> +                phy-handle = <&icssg1_phy0>;
>> +                phy-mode = "rgmii-id";
>> +                ti,syscon-rgmii-delay = <&scm_conf 0x4110>;
>> +                /* Filled in by bootloader */
>> +                local-mac-address = [00 00 00 00 00 00];
>> +            };
>> +            icssg1_emac1: port@1 {
>> +                reg = <1>;
>> +                phy-handle = <&icssg1_phy1>;
>> +                phy-mode = "rgmii-id";
>> +                ti,syscon-rgmii-delay = <&scm_conf 0x4114>;
>> +                /* Filled in by bootloader */
>> +                local-mac-address = [00 00 00 00 00 00];
>> +            };
>> +        };
>> +    };
>> +};
>> +
>> +&main_pmx0 {
>> +
>> +    icssg0_mdio_pins_default: icssg0-mdio-default-pins {
>> +        pinctrl-single,pins = <
>> +            AM65X_IOPAD(0x0294, PIN_INPUT, 0) /* (AE26)
>> PRG0_MDIO0_MDIO */
>> +            AM65X_IOPAD(0x0298, PIN_OUTPUT, 0) /* (AE28)
>> PRG0_MDIO0_MDC */
>> +        >;
>> +    };
>> +
>> +    icssg0_rgmii_pins_default: icssg0-rgmii-default-pins {
>> +        pinctrl-single,pins = <
>> +            AM65X_IOPAD(0x0244, PIN_INPUT, 2) /* (AB28)
>> PRG0_PRU1_GPO0.PRG0_RGMII2_RD0 */
>> +            AM65X_IOPAD(0x0248, PIN_INPUT, 2) /* (AC28)
>> PRG0_PRU1_GPO1.PRG0_RGMII2_RD1 */
>> +            AM65X_IOPAD(0x024c, PIN_INPUT, 2) /* (AC27)
>> PRG0_PRU1_GPO2.PRG0_RGMII2_RD2 */
>> +            AM65X_IOPAD(0x0250, PIN_INPUT, 2) /* (AB26)
>> PRG0_PRU1_GPO3.PRG0_RGMII2_RD3 */
>> +            AM65X_IOPAD(0x0274, PIN_OUTPUT, 2) /* (AC25)
>> PRG0_PRU1_GPO12.PRG0_RGMII2_TD0 */
>> +            AM65X_IOPAD(0x0278, PIN_OUTPUT, 2) /* (AD25)
>> PRG0_PRU1_GPO13.PRG0_RGMII2_TD1 */
>> +            AM65X_IOPAD(0x027c, PIN_OUTPUT, 2) /* (AD24)
>> PRG0_PRU1_GPO14.PRG0_RGMII2_TD2 */
>> +            AM65X_IOPAD(0x0280, PIN_OUTPUT, 2) /* (AE27)
>> PRG0_PRU1_GPO15.PRG0_RGMII2_TD3 */
>> +            AM65X_IOPAD(0x0284, PIN_INPUT, 2) /* (AC24)
>> PRG0_PRU1_GPO16.PRG0_RGMII2_TXC */
>> +            AM65X_IOPAD(0x0270, PIN_OUTPUT, 2) /* (AB24)
>> PRG0_PRU1_GPO11.PRG0_RGMII2_TX_CTL */
>> +            AM65X_IOPAD(0x025c, PIN_INPUT, 2) /* (AB27)
>> PRG0_PRU1_GPO6.PRG0_RGMII2_RXC */
>> +            AM65X_IOPAD(0x0254, PIN_INPUT, 2) /* (AA25)
>> PRG0_PRU1_GPO4.PRG0_RGMII2_RX_CTL */
>> +
>> +            AM65X_IOPAD(0x01f4, PIN_INPUT, 2) /* (V24)
>> PRG0_PRU0_GPO0.PRG0_RGMII1_RD0 */
>> +            AM65X_IOPAD(0x01f8, PIN_INPUT, 2) /* (W25)
>> PRG0_PRU0_GPO1.PRG0_RGMII1_RD1 */
>> +            AM65X_IOPAD(0x01fc, PIN_INPUT, 2) /* (W24)
>> PRG0_PRU0_GPO2.PRG0_RGMII1_RD2 */
>> +            AM65X_IOPAD(0x0200, PIN_INPUT, 2) /* (AA27)
>> PRG0_PRU0_GPO3.PRG0_RGMII1_RD3 */
>> +            AM65X_IOPAD(0x0224, PIN_OUTPUT, 2) /* (AD27)
>> PRG0_PRU0_GPO12.PRG0_RGMII1_TD0 */
>> +            AM65X_IOPAD(0x0228, PIN_OUTPUT, 2) /* (AC26)
>> PRG0_PRU0_GPO13.PRG0_RGMII1_TD1 */
>> +            AM65X_IOPAD(0x022c, PIN_OUTPUT, 2) /* (AD26)
>> PRG0_PRU0_GPO14.PRG0_RGMII1_TD2 */
>> +            AM65X_IOPAD(0x0230, PIN_OUTPUT, 2) /* (AA24)
>> PRG0_PRU0_GPO15.PRG0_RGMII1_TD3 */
>> +            AM65X_IOPAD(0x0234, PIN_INPUT, 2) /* (AD28)
>> PRG0_PRU0_GPO16.PRG0_RGMII1_TXC */
>> +            AM65X_IOPAD(0x0220, PIN_OUTPUT, 2) /* (AB25)
>> PRG0_PRU0_GPO11.PRG0_RGMII1_TX_CTL */
>> +            AM65X_IOPAD(0x020c, PIN_INPUT, 2) /* (Y25)
>> PRG0_PRU0_GPO6.PRG0_RGMII1_RXC */
>> +            AM65X_IOPAD(0x0204, PIN_INPUT, 2) /* (Y24)
>> PRG0_PRU0_GPO4.PRG0_RGMII1_RX_CTL */
>> +        >;
>> +    };
>> +
>> +    icssg0_iep0_pins_default: icssg0-iep0-default-pins {
>> +        pinctrl-single,pins = <
>> +            AM65X_IOPAD(0x0240, PIN_INPUT, 2) /* (U24)
>> PRG0_PRU0_GPO19.PRG0_IEP0_EDC_SYNC_OUT0 */
>> +        >;
>> +    };
>> +
>> +    icssg1_mdio_pins_default: icssg1-mdio-default-pins {
>> +        pinctrl-single,pins = <
>> +            AM65X_IOPAD(0x0180, PIN_INPUT, 0) /* (AD18)
>> PRG1_MDIO0_MDIO */
>> +            AM65X_IOPAD(0x0184, PIN_OUTPUT, 0) /* (AH18)
>> PRG1_MDIO0_MDC */
>> +        >;
>> +    };
>> +
>> +    icssg1_rgmii_pins_default: icssg1-rgmii-default-pins {
>> +        pinctrl-single,pins = <
>> +            AM65X_IOPAD(0x0130, PIN_INPUT, 2) /* (AH24)
>> PRG1_PRU1_GPO0.PRG1_RGMII2_RD0 */
>> +            AM65X_IOPAD(0x0134, PIN_INPUT, 2) /* (AH23)
>> PRG1_PRU1_GPO1.PRG1_RGMII2_RD1 */
>> +            AM65X_IOPAD(0x0138, PIN_INPUT, 2) /* (AG21)
>> PRG1_PRU1_GPO2.PRG1_RGMII2_RD2 */
>> +            AM65X_IOPAD(0x013c, PIN_INPUT, 2) /* (AH22)
>> PRG1_PRU1_GPO3.PRG1_RGMII2_RD3 */
>> +            AM65X_IOPAD(0x0160, PIN_OUTPUT, 2) /* (AE20)
>> PRG1_PRU1_GPO12.PRG1_RGMII2_TD0 */
>> +            AM65X_IOPAD(0x0164, PIN_OUTPUT, 2) /* (AF19)
>> PRG1_PRU1_GPO13.PRG1_RGMII2_TD1 */
>> +            AM65X_IOPAD(0x0168, PIN_OUTPUT, 2) /* (AH19)
>> PRG1_PRU1_GPO14.PRG1_RGMII2_TD2 */
>> +            AM65X_IOPAD(0x016c, PIN_OUTPUT, 2) /* (AG19)
>> PRG1_PRU1_GPO15.PRG1_RGMII2_TD3 */
>> +            AM65X_IOPAD(0x0170, PIN_INPUT, 2) /* (AE19)
>> PRG1_PRU1_GPO16.PRG1_RGMII2_TXC */
>> +            AM65X_IOPAD(0x015c, PIN_OUTPUT, 2) /* (AC20)
>> PRG1_PRU1_GPO11.PRG1_RGMII2_TX_CTL */
>> +            AM65X_IOPAD(0x0148, PIN_INPUT, 2) /* (AG22)
>> PRG1_PRU1_GPO6.PRG1_RGMII2_RXC */
>> +            AM65X_IOPAD(0x0140, PIN_INPUT, 2) /* (AE21)
>> PRG1_PRU1_GPO4.PRG1_RGMII2_RX_CTL */
>> +
>> +            AM65X_IOPAD(0x00e0, PIN_INPUT, 2) /* (AE22)
>> PRG1_PRU0_GPO0.PRG1_RGMII1_RD0 */
>> +            AM65X_IOPAD(0x00e4, PIN_INPUT, 2) /* (AG24)
>> PRG1_PRU0_GPO1.PRG1_RGMII1_RD1 */
>> +            AM65X_IOPAD(0x00e8, PIN_INPUT, 2) /* (AF23)
>> PRG1_PRU0_GPO2.PRG1_RGMII1_RD2 */
>> +            AM65X_IOPAD(0x00ec, PIN_INPUT, 2) /* (AD21)
>> PRG1_PRU0_GPO3.PRG1_RGMII1_RD3 */
>> +            AM65X_IOPAD(0x0110, PIN_OUTPUT, 2) /* (AH20)
>> PRG1_PRU0_GPO12.PRG1_RGMII1_TD0 */
>> +            AM65X_IOPAD(0x0114, PIN_OUTPUT, 2) /* (AH21)
>> PRG1_PRU0_GPO13.PRG1_RGMII1_TD1 */
>> +            AM65X_IOPAD(0x0118, PIN_OUTPUT, 2) /* (AG20)
>> PRG1_PRU0_GPO14.PRG1_RGMII1_TD2 */
>> +            AM65X_IOPAD(0x011c, PIN_OUTPUT, 2) /* (AD19)
>> PRG1_PRU0_GPO15.PRG1_RGMII1_TD3 */
>> +            AM65X_IOPAD(0x0120, PIN_INPUT, 2) /* (AD20)
>> PRG1_PRU0_GPO16.PRG1_RGMII1_TXC */
>> +            AM65X_IOPAD(0x010c, PIN_OUTPUT, 2) /* (AF21)
>> PRG1_PRU0_GPO11.PRG1_RGMII1_TX_CTL */
>> +            AM65X_IOPAD(0x00f8, PIN_INPUT, 2) /* (AF22)
>> PRG1_PRU0_GPO6.PRG1_RGMII1_RXC */
>> +            AM65X_IOPAD(0x00f0, PIN_INPUT, 2) /* (AG23)
>> PRG1_PRU0_GPO4.PRG1_RGMII1_RX_CTL */
>> +        >;
>> +    };
>> +
>> +    icssg1_iep0_pins_default: icssg1-iep0-default-pins {
>> +        pinctrl-single,pins = <
>> +            AM65X_IOPAD(0x012c, PIN_INPUT, 2) /* (AG26)
>> PRG1_PRU0_GPO19.PRG1_IEP0_EDC_SYNC_OUT0 */
>> +        >;
>> +    };
>> +};
>> +
>> +&icssg0_mdio {
>> +    status = "okay";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&icssg0_mdio_pins_default>;
>> +    #address-cells = <1>;
>> +    #size-cells = <0>;
>> +
>> +    icssg0_phy0: ethernet-phy@0 {
>> +        reg = <0>;
>> +        ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>> +        ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>> +    };
>> +
>> +    icssg0_phy1: ethernet-phy@3 {
>> +        reg = <3>;
>> +        ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>> +        ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>> +    };
>> +};
>> +
>> +&icssg0_iep0 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&icssg0_iep0_pins_default>;
>> +};
>> +
>> +&icssg1_mdio {
>> +    status = "okay";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&icssg1_mdio_pins_default>;
>> +    #address-cells = <1>;
>> +    #size-cells = <0>;
>> +
>> +    icssg1_phy0: ethernet-phy@0 {
>> +        reg = <0>;
>> +        ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>> +        ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>> +    };
>> +
>> +    icssg1_phy1: ethernet-phy@3 {
>> +        reg = <3>;
>> +        ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>> +        ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>> +    };
>> +};
>> +
>> +&icssg1_iep0 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&icssg1_iep0_pins_default>;
>> +};

-- 
Thanks and Regards,
Danish

