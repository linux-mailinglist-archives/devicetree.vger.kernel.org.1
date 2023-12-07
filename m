Return-Path: <devicetree+bounces-22514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB244807FE4
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 05:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00E92817A6
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 04:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C647101FD;
	Thu,  7 Dec 2023 04:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="QBHDw4tL"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB971A4;
	Wed,  6 Dec 2023 20:59:18 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B74x81e075216;
	Wed, 6 Dec 2023 22:59:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701925148;
	bh=Jr4UH8F+DE3ArwYzmkfUUv7q7YfLA+j7gzUA2z+yBXY=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=QBHDw4tLr0+GlfN5DA3hRvi3UTfXobLlHFecQk30bJcOE2bWdyQEIKs6kfq9DMj9X
	 zG1fHV6aOVzAtidPjKDlMWjP8BrrD9S3RxfVMX6WBLBQg8etxmiBpZJjka33sd6QL8
	 5qKDYm1VJEx4BqpISx0s7Yrd3mzXigiGo+msA2Dc=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B74x8AD117346
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 6 Dec 2023 22:59:08 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 6
 Dec 2023 22:59:08 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 6 Dec 2023 22:59:08 -0600
Received: from [172.24.20.156] (lt5cd2489kgj.dhcp.ti.com [172.24.20.156])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B74x27E113972;
	Wed, 6 Dec 2023 22:59:03 -0600
Message-ID: <5eecd094-bc14-4257-bbe9-1e20aabd38f7@ti.com>
Date: Thu, 7 Dec 2023 10:29:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/7] arm64: dts: ti: k3-am69-sk: Add support for
 TPS6594 PMIC
Content-Language: en-US
To: Neha Malcom Francis <n-francis@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <a-nandan@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <eblanc@baylibre.com>,
        <jneanne@baylibre.com>, <aseketeli@baylibre.com>,
        <jpanis@baylibre.com>, <j-luthra@ti.com>, <vaishnav.a@ti.com>,
        <hnagalla@ti.com>, <devarsht@ti.com>
References: <20231205093439.2298296-1-n-francis@ti.com>
 <20231205093439.2298296-6-n-francis@ti.com>
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20231205093439.2298296-6-n-francis@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180


On 12/5/2023 3:04 PM, Neha Malcom Francis wrote:
> This patch adds support for TPS6594 PMIC on wkup I2C0 bus. This device
> provides regulators (bucks and LDOs), but also GPIOs, a RTC, a watchdog,
> an ESM (Error Signal Monitor) which monitors the SoC error output
> signal, and a PFSM (Pre-configurable Finite State Machine) which manages
> the operational modes of the PMIC.
>
> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
> Tested-by: Manorit Chawdhry <m-chawdhry@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am69-sk.dts | 100 ++++++++++++++++++++++++++
>   1 file changed, 100 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> index 9868c7049bfb..dec27acb4e96 100644
> --- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> @@ -431,6 +431,17 @@ J784S4_IOPAD(0x000, PIN_INPUT, 7) /* (AN35) EXTINTN.GPIO0_0 */
>   	};
>   };
>   
> +&wkup_pmx1 {
> +	status = "okay";
> +
> +	pmic_irq_pins_default: pmic-irq-default-pins {
> +		pinctrl-single,pins = <
> +			/* (AA37) MCU_ADC1_AIN4.WKUP_GPIO0_83 */
> +			J784S4_WKUP_IOPAD(0x12c, PIN_INPUT, 7)
> +		>;
> +	};
> +};

Could you re check this pin mux

wkup_pmx1 is defined as reg = <0x00 0x4301c038 0x00 0x02c>;

LTM, this is above wrt given size


> +
>   &wkup_pmx2 {
>   	bootph-all;
>   	wkup_uart0_pins_default: wkup-uart0-default-pins {
> @@ -631,6 +642,95 @@ eeprom@51 {
>   		compatible = "atmel,24c512";
>   		reg = <0x51>;
>   	};
> +
> +	tps659413: pmic@48 {
> +		compatible = "ti,tps6594-q1";
> +		reg = <0x48>;
> +		system-power-controller;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_irq_pins_default>;
> +		interrupt-parent = <&wkup_gpio0>;
> +		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
> +		ti,primary-pmic;
> +
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		buck12-supply = <&vsys_3v3>;
> +		buck3-supply = <&vsys_3v3>;
> +		buck4-supply = <&vsys_3v3>;
> +		buck5-supply = <&vsys_3v3>;
> +		ldo1-supply = <&vsys_3v3>;
> +		ldo2-supply = <&vsys_3v3>;
> +		ldo3-supply = <&vsys_3v3>;
> +		ldo4-supply = <&vsys_3v3>;
> +
> +		regulators {
> +			bucka12: buck12 {
> +				regulator-name = "vdd_ddr_1v1";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			bucka3: buck3 {
> +				regulator-name = "vdd_ram_0v85";
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <850000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			bucka4: buck4 {
> +				regulator-name = "vdd_io_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			bucka5: buck5 {
> +				regulator-name = "vdd_mcu_0v85";
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <850000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldoa1: ldo1 {
> +				regulator-name = "vdd_mcuio_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldoa2: ldo2 {
> +				regulator-name = "vdd_mcuio_3v3";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldoa3: ldo3 {
> +				regulator-name = "vds_dll_0v8";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldoa4: ldo4 {
> +				regulator-name = "vda_mcu_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
>   };
>   
>   &wkup_gpio0 {

