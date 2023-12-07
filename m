Return-Path: <devicetree+bounces-22748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BC38089CF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53F6C1F21116
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BDC341235;
	Thu,  7 Dec 2023 14:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YM+0tg+W"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9449122;
	Thu,  7 Dec 2023 06:06:25 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B7E6FWc048727;
	Thu, 7 Dec 2023 08:06:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701957975;
	bh=UVf72UUERcWlViJwKC0vMINpbv2mXfaejmfFXRLmRSA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=YM+0tg+W5isfEedVad7Npl8sEMD2wPpiF8C/g4E/B4I2PISxFv3yW4TCJ4fDpvgP0
	 uovvp6pApuPshNIPP6pBie2u5TCRV/Y67Npb+rgiqfrHXleiRVfM1BqIsqg5GDAGyc
	 MmTuB+PcerAsGCLRfrEin5yfXUxdd/h+UOzGdrKI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B7E6Fxl026038
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 7 Dec 2023 08:06:15 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 7
 Dec 2023 08:06:14 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 7 Dec 2023 08:06:14 -0600
Received: from [10.249.135.225] ([10.249.135.225])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B7E6Atu088059;
	Thu, 7 Dec 2023 08:06:11 -0600
Message-ID: <7323e86b-939a-4fd0-aac8-07fa47e00c9d@ti.com>
Date: Thu, 7 Dec 2023 19:36:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: ti: k3-am642-evm: add overlay for icssg1
 2nd port
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>, MD Danish Anwar <danishanwar@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Tero
 Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>
References: <20231207081917.340167-1-danishanwar@ti.com>
 <20231207081917.340167-4-danishanwar@ti.com>
 <20231207132758.wbfn7timsqevdjpu@mortuary>
From: "Anwar, Md Danish" <a0501179@ti.com>
In-Reply-To: <20231207132758.wbfn7timsqevdjpu@mortuary>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 12/7/2023 6:57 PM, Nishanth Menon wrote:
> On 13:49-20231207, MD Danish Anwar wrote:
>> The am642-evm doesn't allow to enable 2 x CPSW3g ports and 2 x ICSSG1 ports
>> all together, so base k3-am642-evm.dts enables by default 2 x CPSW3g ports
>> and 1 x ICSSG1 ports, but it also possible to support 1 x CPSW3g ports and
>> 2 x ICSSG1 ports configuration.
>>
>> This patch adds overlay to support 1 x CPSW3g ports and 2 x ICSSG1 ports
>> configuration:
>> - disable 2nd CPSW3g port
>> - update CPSW3g pinmuxes to not use RGMII2
>> - disable mdio-mux-1 and define mdio-mux-2 to route ICSSG1 MDIO to the
>>   shared DP83869 PHY
>> - add and enable ICSSG1 RGMII2 pinmuxes
>> - enable ICSSG1 MII1 port
>>
>> Signed-off-by: MD Danish Anwar <danishanwar@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/Makefile               |  2 +
>>  .../dts/ti/k3-am642-evm-icssg1-dualemac.dtso  | 80 +++++++++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  2 +-
>>  3 files changed, 83 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso
>>
>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>> index 5ef49b02c71f..99a4dce47f02 100644
>> --- a/arch/arm64/boot/dts/ti/Makefile
>> +++ b/arch/arm64/boot/dts/ti/Makefile
>> @@ -35,12 +35,14 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-csi2-imx219.dtbo
>>  dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-hdmi-audio.dtbo
>>  
>>  # Boards with AM64x SoC
>> +k3-am642-evm-icssg1-dtbs := k3-am642-evm.dtb k3-am642-evm-icssg1-dualemac.dtbo
> 
> Why not handle this for CONFIG_OF_ALL_DTBS alone? See commit
> b0044823a6607e535fdb083c89f487fbf183b171
> 

I'll have to look into this.

I am merging this k3-am642-evm-icssg1-dualemac.dtbo with
k3-am642-evm.dtb because when I had posted patches for AM65x DTS, Andrew
had commented [1] saying we should not leave orphan dtbos and every dtbo
should be applied over some dtb by using `dtb- +=`.

Due to this I am applying the overlay on k3-am642-evm.dtb and creating
new dtb k3-am642-evm-icssg1.dtb which can be used when both ICSSG1 ports
are needed to be enabled.

[1] https://lore.kernel.org/all/ca832fe3-d5cf-b075-324b-50da40794bb7@ti.com/

>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
>>  dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
>> +dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-icssg1.dtb
>>  
>>  # Boards with AM65x SoC
>>  k3-am654-gp-evm-dtbs := k3-am654-base-board.dtb k3-am654-base-board-rocktech-rk101-panel.dtbo
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso b/arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso
>> new file mode 100644
>> index 000000000000..6f33290c1ad6
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm-icssg1-dualemac.dtso
>> @@ -0,0 +1,80 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/**
>> + * DT overlay for enabling 2nd ICSSG1 port on AM642 EVM
>> + *
>> + * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
>> + */
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include "k3-pinctrl.h"
>> +
>> +&{/} {
>> +	aliases {
>> +		ethernet1 = "/icssg1-eth/ethernet-ports/port@0";
>> +		ethernet2 = "/icssg1-eth/ethernet-ports/port@1";
> 
> I don't understand what you are overriding here. isn't patch #2 in your
> series already introducing this in the base dts?
> 

Sorry, My bad. I will remove this in v2.

>> +	};
>> +
>> +	mdio-mux-2 {
>> +		compatible = "mdio-mux-multiplexer";
>> +		mux-controls = <&mdio_mux>;
>> +		mdio-parent-bus = <&icssg1_mdio>;
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		mdio@0 {
>> +			reg = <0x0>;
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			icssg1_phy2: ethernet-phy@3 {
>> +				reg = <3>;
>> +				tx-internal-delay-ps = <250>;
>> +				rx-internal-delay-ps = <2000>;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&main_pmx0 {
>> +	icssg1_rgmii2_pins_default: icssg1-rgmii2-default-pins {
>> +		pinctrl-single,pins = <
>> +			AM64X_IOPAD(0x0108, PIN_INPUT, 2) /* (W11) PRG1_PRU1_GPO0.RGMII2_RD0 */
>> +			AM64X_IOPAD(0x010c, PIN_INPUT, 2) /* (V11) PRG1_PRU1_GPO1.RGMII2_RD1 */
>> +			AM64X_IOPAD(0x0110, PIN_INPUT, 2) /* (AA12) PRG1_PRU1_GPO2.RGMII2_RD2 */
>> +			AM64X_IOPAD(0x0114, PIN_INPUT, 2) /* (Y12) PRG1_PRU1_GPO3.RGMII2_RD3 */
>> +			AM64X_IOPAD(0x0120, PIN_INPUT, 2) /* (U11) PRG1_PRU1_GPO6.RGMII2_RXC */
>> +			AM64X_IOPAD(0x0118, PIN_INPUT, 2) /* (W12) PRG1_PRU1_GPO4.RGMII2_RX_CTL */
>> +			AM64X_IOPAD(0x0134, PIN_OUTPUT, 2) /* (AA10) PRG1_PRU1_GPO11.RGMII2_TD0 */
>> +			AM64X_IOPAD(0x0138, PIN_OUTPUT, 2) /* (V10) PRG1_PRU1_GPO12.RGMII2_TD1 */
>> +			AM64X_IOPAD(0x013c, PIN_OUTPUT, 2) /* (U10) PRG1_PRU1_GPO13.RGMII2_TD2 */
>> +			AM64X_IOPAD(0x0140, PIN_OUTPUT, 2) /* (AA11) PRG1_PRU1_GPO14.RGMII2_TD3 */
>> +			AM64X_IOPAD(0x0148, PIN_OUTPUT, 2) /* (Y10) PRG1_PRU1_GPO16.RGMII2_TXC */
>> +			AM64X_IOPAD(0x0144, PIN_OUTPUT, 2) /* (Y11) PRG1_PRU1_GPO15.RGMII2_TX_CTL */
>> +		>;
>> +	};
>> +};
>> +
>> +&cpsw3g {
>> +	pinctrl-0 = <&rgmii1_pins_default>;
>> +};
>> +
>> +&cpsw_port2 {
>> +	status = "disabled";
>> +};
>> +
>> +&mdio_mux_1 {
>> +	status = "disabled";
>> +};
>> +
>> +&icssg1_eth {
>> +	pinctrl-0 = <&icssg1_rgmii1_pins_default &icssg1_rgmii2_pins_default>;
> 
> Grrr... No! I have been cleaning up after you folks and you folks should
> take notice.
> 
> pinctrl-0 = <&icssg1_rgmii1_pins_default>, <&icssg1_rgmii2_pins_default>;
> 

Sorry, I was not aware of this. I will change it in v2.

> 
>> +};
>> +
>> +&icssg1_emac1 {
>> +	status = "okay";
>> +	phy-handle = <&icssg1_phy2>;
>> +	phy-mode = "rgmii-id";
>> +};
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
>> index 04d1c0602d31..90867090e725 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
>> @@ -203,7 +203,7 @@ mdio_mux: mux-controller {
>>  		mux-gpios = <&exp1 12 GPIO_ACTIVE_HIGH>;
>>  	};
>>  
>> -	mdio-mux-1 {
>> +	mdio_mux_1: mdio-mux-1 {
> 
> Commit message doesn't warn me for this change.

Sure. I will add details of this in commit message saying `Add label
name 'mdio_mux_1' for 'mdio-mux-1' node so that the node 'mdio-mux-1'
can be disabled in the overlay using the label name.`

>>  		compatible = "mdio-mux-multiplexer";
>>  		mux-controls = <&mdio_mux>;
>>  		mdio-parent-bus = <&cpsw3g_mdio>;
>> -- 
>> 2.34.1
>>
> 

-- 
Thanks and Regards,
Md Danish Anwar

