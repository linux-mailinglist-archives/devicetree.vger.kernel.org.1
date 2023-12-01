Return-Path: <devicetree+bounces-20676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF38080083D
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 11:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAF94281388
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B377156C7;
	Fri,  1 Dec 2023 10:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="D6uXN3Pf"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAB5A1997;
	Fri,  1 Dec 2023 02:31:16 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B1AV8Fm126280;
	Fri, 1 Dec 2023 04:31:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701426668;
	bh=hNzeuVAlocK9vRJwpz2RfeOV5gfDZN0HvjzwUHJ4xhw=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=D6uXN3PfzTvBLkH0gajJCEWhpUiqYLJTCzWtP3syew2q2kOIxaMp/SxATSxbqJLFS
	 CIcPnjCfUApviwpA9wGBTKgVH4+kmmXUvUVTX6YC+FYq7OiIkL8pbqqgX2xL0+ur4C
	 JEDb5i4jh2Q0v2WGcMoxfyiJ4DgAZXmAAs4V/R/I=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B1AV8Dd058788
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 04:31:08 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 04:31:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 04:31:08 -0600
Received: from [10.249.139.5] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B1AUm4O005736;
	Fri, 1 Dec 2023 04:30:50 -0600
Message-ID: <e3b018c9-31d5-48c3-8327-be4dadcc505c@ti.com>
Date: Fri, 1 Dec 2023 16:00:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/7] arm64: dts: ti: k3-am69-sk: Add support for
 TPS6594 PMIC
To: Manorit Chawdhry <m-chawdhry@ti.com>
CC: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <a-nandan@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <eblanc@baylibre.com>, <jneanne@baylibre.com>,
        <aseketeli@baylibre.com>, <jpanis@baylibre.com>, <u-kumar1@ti.com>,
        <j-luthra@ti.com>, <vaishnav.a@ti.com>, <hnagalla@ti.com>,
        <devarsht@ti.com>
References: <20231128055230.342547-1-n-francis@ti.com>
 <20231128055230.342547-6-n-francis@ti.com>
 <20231201102645.u3embsudo55vm6pi@ula0497581>
Content-Language: en-US
From: Neha Malcom Francis <n-francis@ti.com>
In-Reply-To: <20231201102645.u3embsudo55vm6pi@ula0497581>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Manorit

On 01-Dec-23 3:56 PM, Manorit Chawdhry wrote:
> Hi Neha,
> 
> On 11:22-20231128, Neha Malcom Francis wrote:
>> This patch adds support for TPS6594 PMIC on wkup I2C0 bus. This device
>> provides regulators (bucks and LDOs), but also GPIOs, a RTC, a watchdog,
>> an ESM (Error Signal Monitor) which monitors the SoC error output
>> signal, and a PFSM (Pre-configurable Finite State Machine) which manages
>> the operational modes of the PMIC.
>>
>> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am69-sk.dts | 100 ++++++++++++++++++++++++++
>>   1 file changed, 100 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
>> index 9868c7049bfb..dec27acb4e96 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
>> @@ -431,6 +431,17 @@ J784S4_IOPAD(0x000, PIN_INPUT, 7) /* (AN35) EXTINTN.GPIO0_0 */
>>   	};
>>   };
>>   
>> +&wkup_pmx1 {
>> +	status = "okay";
>> +
>> +	pmic_irq_pins_default: pmic-irq-default-pins {
>> +		pinctrl-single,pins = <
>> +			/* (AA37) MCU_ADC1_AIN4.WKUP_GPIO0_83 */
>> +			J784S4_WKUP_IOPAD(0x12c, PIN_INPUT, 7)
>> +		>;
>> +	};
>> +};
>> +
>>   &wkup_pmx2 {
>>   	bootph-all;
>>   	wkup_uart0_pins_default: wkup-uart0-default-pins {
>> @@ -631,6 +642,95 @@ eeprom@51 {
>>   		compatible = "atmel,24c512";
>>   		reg = <0x51>;
>>   	};
>> +
>> +	tps659413: pmic@48 {
>> +		compatible = "ti,tps6594-q1";
>> +		reg = <0x48>;
>> +		system-power-controller;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_irq_pins_default>;
>> +		interrupt-parent = <&wkup_gpio0>;
>> +		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
>> +		ti,primary-pmic;
>> +
>> +		gpio-controller;
>> +		#gpio-cells = <2>;
>> +
>> +		buck12-supply = <&vsys_3v3>;
>> +		buck3-supply = <&vsys_3v3>;
>> +		buck4-supply = <&vsys_3v3>;
>> +		buck5-supply = <&vsys_3v3>;
>> +		ldo1-supply = <&vsys_3v3>;
>> +		ldo2-supply = <&vsys_3v3>;
>> +		ldo3-supply = <&vsys_3v3>;
>> +		ldo4-supply = <&vsys_3v3>;
>> +
>> +		regulators {
>> +			bucka12: buck12 {
>> +				regulator-name = "vdd_ddr_1v1";
>> +				regulator-min-microvolt = <1100000>;
>> +				regulator-max-microvolt = <1100000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			bucka3: buck3 {
>> +				regulator-name = "vdd_ram_0v85";
>> +				regulator-min-microvolt = <850000>;
>> +				regulator-max-microvolt = <850000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			bucka4: buck4 {
>> +				regulator-name = "vdd_io_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			bucka5: buck5 {
>> +				regulator-name = "vdd_mcu_0v85";
>> +				regulator-min-microvolt = <850000>;
>> +				regulator-max-microvolt = <850000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa1: ldo1 {
>> +				regulator-name = "vdd_mcuio_1v8";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa2: ldo2 {
>> +				regulator-name = "vdd_mcuio_3v3";
>> +				regulator-min-microvolt = <3300000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldoa3: ldo3 {
>> +				regulator-name = "vds_dll_0v8";
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
>>   };
>>   
> 
> With the full series applied:
> https://gist.github.com/manorit2001/7e794a7cbf58af4d7fbbee03eac88e86
> 
> [ For AM69-SK ]
> Tested-by: Manorit Chawdhry <m-chawdhry@ti.com>
> 
> Regards,
> Manorit
> 
>>   &wkup_gpio0 {
>> -- 
>> 2.34.1
>>

Thanks for testing!

-- 
Thanking You
Neha Malcom Francis

