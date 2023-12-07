Return-Path: <devicetree+bounces-22513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EACE9807FC7
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 05:43:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4D83281B02
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 04:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58EF7099E;
	Thu,  7 Dec 2023 04:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PICozpIg"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0850E9;
	Wed,  6 Dec 2023 20:43:13 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B74gs2D012674;
	Wed, 6 Dec 2023 22:42:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701924174;
	bh=Kv7NwkC/Z42YLzXZ+MHWTh/Tmd1UIQuMwlwAq7O7h8c=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PICozpIgB+2PejfqGivgzXk2sVnkeQ/0GEJHB0fOKcUrWpBJ/JZoDll8/LyrPr801
	 p2y8gv2izOxrgdVPd2pZ57l0M7HxcwxWlNFmAA8hGJY7Yn12WYfW9jjfsIzu0hwSog
	 fU4YGYP329kwOh078YsVi+7IZ6c0QEEzE/9h4G/w=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B74gsQP003183
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 6 Dec 2023 22:42:54 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 6
 Dec 2023 22:42:54 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 6 Dec 2023 22:42:54 -0600
Received: from [172.24.20.156] (lt5cd2489kgj.dhcp.ti.com [172.24.20.156])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B74f6Y0093945;
	Wed, 6 Dec 2023 22:42:49 -0600
Message-ID: <5e22f8cb-1004-4bcc-9bd0-2c30180ba10e@ti.com>
Date: Thu, 7 Dec 2023 10:12:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/7] arm64: dts: ti: k3-j721e-sk: Add TPS6594 family
 PMICs
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>, Neha Malcom Francis <n-francis@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <a-nandan@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <eblanc@baylibre.com>, <jneanne@baylibre.com>,
        <aseketeli@baylibre.com>, <jpanis@baylibre.com>, <j-luthra@ti.com>,
        <vaishnav.a@ti.com>, <hnagalla@ti.com>, <devarsht@ti.com>
References: <20231205093439.2298296-1-n-francis@ti.com>
 <20231205093439.2298296-7-n-francis@ti.com>
 <20231205151647.vh6rlhro7qlwoerc@knelt>
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20231205151647.vh6rlhro7qlwoerc@knelt>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180


On 12/5/2023 8:46 PM, Nishanth Menon wrote:
> On 15:04-20231205, Neha Malcom Francis wrote:
>> This patch adds support for TPS6594 PMIC family on wakeup I2C0 bus.
>> These devices provide regulators (bucks and LDOs), but also GPIOs, a
>> RTC, a watchdog, an ESM (Error Signal Monitor) which monitors the SoC
>> error output signal, and a PFSM (Pre-configurable Finite State Machine)
>> which manages the operational modes of the PMIC.
>>
>> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j721e-sk.dts | 158 +++++++++++++++++++++++++
>>   1 file changed, 158 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
>> index 42fe8eee9ec8..e600825f7e78 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
>> @@ -459,6 +459,13 @@ J721E_IOPAD(0x234, PIN_INPUT, 7) /* (U3) EXT_REFCLK1.GPIO1_12 */
>>   };
>>   
>>   &wkup_pmx0 {
>> +	pmic_irq_pins_default: pmic-irq-default-pins {
>> +		bootph-pre-ram;
>> +		pinctrl-single,pins = <
>> +			J721E_WKUP_IOPAD(0x0cc, PIN_INPUT, 7) /* (G28) WKUP_GPIO0_7 */
>> +		>;
>> +	};
>> +
>>   	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
>>   		pinctrl-single,pins = <
>>   			J721E_WKUP_IOPAD(0x84, PIN_INPUT, 0) /* (B24) MCU_RGMII1_RD0 */
>> @@ -560,6 +567,157 @@ eeprom@51 {
>>   		compatible = "atmel,24c512";
>>   		reg = <0x51>;
>>   	};
>> +
>> +	tps659413: pmic@48 {
>> +		bootph-pre-ram;
> only for the leaf nodes. See
> https://libera.irclog.whitequark.org/armlinux/2023-10-19


AFAIK, please correct me, u-boot still needs in all nodes ?

>
>> +		compatible = "ti,tps6594-q1";
>> +		reg = <0x48>;
>> +		system-power-controller;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_irq_pins_default>;
>> +		interrupt-parent = <&wkup_gpio0>;
>> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
>> +		ti,primary-pmic;
>> +
>> +		gpio-controller;
>> +		#gpio-cells = <2>;
>> +
>> +		buck123-supply = <&vsys_3v3>;
>> +		buck4-supply = <&vsys_3v3>;
>> +		buck5-supply = <&vsys_3v3>;
>> +		ldo1-supply = <&vsys_3v3>;
>> +		ldo2-supply = <&vsys_3v3>;
>> +		ldo3-supply = <&vsys_3v3>;
>> +		ldo4-supply = <&vsys_3v3>;
>> +
>> +		regulators {
>> +			bootph-pre-ram;
>> +			bucka123: buck123 {
>> +				bootph-pre-ram;
>> +				regulator-name = "vdd_cpu_avs";
>> +				regulator-min-microvolt = <600000>;
>> +				regulator-max-microvolt = <900000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			bucka4: buck4 {
>> +				regulator-name = "vdd_mcu_0v85";
>> +				regulator-min-microvolt = <850000>;
>> +				regulator-max-microvolt = <850000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			bucka5: buck5 {
>> +				regulator-name = "vdd_phyio_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa1: ldo1 {
>> +				regulator-name = "vdd1_lpddr4_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa2: ldo2 {
>> +				regulator-name = "vdd_mcuio_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa3: ldo3 {
>> +				regulator-name = "vdda_dll_0v8";
>> +				regulator-min-microvolt = <800000>;
>> +				regulator-max-microvolt = <800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa4: ldo4 {
>> +				regulator-name = "vda_mcu_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +		};
>> +	};
>> +
>> +	tps659411: pmic@4c {
>> +		compatible = "ti,tps6594-q1";
>> +		reg = <0x4c>;
>> +		system-power-controller;
>> +		interrupt-parent = <&wkup_gpio0>;
>> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
>> +
>> +		gpio-controller;
>> +		#gpio-cells = <2>;
>> +
>> +		buck1234-supply = <&vsys_3v3>;
>> +		buck5-supply = <&vsys_3v3>;
>> +		ldo1-supply = <&vsys_3v3>;
>> +		ldo2-supply = <&vsys_3v3>;
>> +		ldo3-supply = <&vsys_3v3>;
>> +		ldo4-supply = <&vsys_3v3>;
>> +
>> +		regulators {
>> +			buckb1234: buck1234 {
>> +				regulator-name = "vdd_core_0v8";
>> +				regulator-min-microvolt = <800000>;
>> +				regulator-max-microvolt = <800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			buckb5: buck5 {
>> +				regulator-name = "vdd_ram_0v85";
>> +				regulator-min-microvolt = <850000>;
>> +				regulator-max-microvolt = <850000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldob1: ldo1 {
>> +				regulator-name = "vdd_sd_dv";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldob2: ldo2 {
>> +				regulator-name = "vdd_usb_3v3";
>> +				regulator-min-microvolt = <3300000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldob3: ldo3 {
>> +				regulator-name = "vdd_io_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldob4: ldo4 {
>> +				regulator-name = "vda_pll_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +		};
>> +	};
>>   };
>>   
>>   &mcu_uart0 {
>> -- 
>> 2.34.1
>>

