Return-Path: <devicetree+bounces-221239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D15BB9DF6D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E7E53B4639
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECCDD26F28B;
	Thu, 25 Sep 2025 08:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UrjFwGpB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AD7266568
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758787415; cv=none; b=Y72qXXP1BK1LBqvjCTFroGcMGforbBFa9a/jlQZ6GCK2V6IJyGimKaftYAoN4+ggN+EThnkK3nMC9zzzpZ+WnYcAFzbKLB99h+TFJttQTRbc1argQy9EpKPgkBqJIF3zTyoAikc/kMo0bn0vDoMNk9VTtV3favveoc4QqgN879g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758787415; c=relaxed/simple;
	bh=jEltFQ42JR5Tiw11SguWlT73xUCWlEeKZtlF/9z3KVw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O7OiByqPegohlWwqsN5ru0+VKRrgOmMEcmoIc+7BSN1cVEuU4kwBw2QHKo+O8HvD/zSJvXQobZYG5unBQJNh4NOBp7yJlpjZEfSOFFIlWD7zqbz5oG24TMl1+dVziaLZmLe8v1GaMM6D0RIXxoMcGvk50VEXTXscpQXpODg4hoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UrjFwGpB; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3f42b54d1b9so770939f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758787411; x=1759392211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yWIHF3DU27gvkMl3/FezhSEgHbB77on/ODMohejV3z0=;
        b=UrjFwGpBBPvTUnjgcRHYClwltHBNEmwsKlrca6OEAUlY8b5g44KTJL93I4Zd9lert2
         XG9rHSbya6ut3gYSR17WS0UUy8a0DokBCh8GUg8OIJ6lKaWIQvXhsT56bAXzLVF3X0sy
         V08njdg5XE6K/m/Hq9EvA+TQuuSHNFppq4edIYXZUtPWMXn7V+FrwCp3ytJEpbZf+zkW
         iTt9t0PHfrW2WR5eH1zBYjVRnY7x8VAnj9RL2LNky8TedxAgrtffyjNvCr9TMk3EWd7z
         yXu56XDmao/G725XmPsuqxEvcx6cneXix36pzJht4LUSMJyLf9N8Jqgm8xNjn3VZcB4T
         1rug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758787411; x=1759392211;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yWIHF3DU27gvkMl3/FezhSEgHbB77on/ODMohejV3z0=;
        b=qN9qdg4+dzKRXRwBhoUZyc6pX95wgUpdAfONs8QhDNSOStQiGLk02SgnN7ceRUj9YT
         EKydkjCOJrOkDDAFku/vt63Vg9olcZtVcuOmI0vncyggQM+etsO9CLvj2b8DvEuHLtBv
         IaubmATmLI/KrTAY4FH8H/QADGsyN49jWMZK2eKK0nCDs1m6s748VQlEo9K3yxz6ZxhM
         cQOGbRtaWRihsbYxpfpOSbodYhIA6XylRRdVuMGG80I9azB14tojp3CGorwQYB0cy1YB
         rijFyGjxHkyHokglb3P4EBa13UdwaQ5XSaDuxCf1OUPhx2KGYnn56AYK8xh+vPOrjjAw
         FO1w==
X-Forwarded-Encrypted: i=1; AJvYcCVEA27bKcInftJ24PqYzhLqN6dHO1V4IpGdTLnb8D+vkOduKf2YuApO3II9IhwM8fPo9NaEl3Y1arWj@vger.kernel.org
X-Gm-Message-State: AOJu0YxMjxzYP0Ko3G6dpHR1bl2JizfooeAiUVo9SekOWK7PANgj81L4
	bhVqDcDEAgmm1jRVOFylL02x/N4RPh8EiFREs9KIcbuHjMAUMMuwseb4DWEztg2eoNo=
X-Gm-Gg: ASbGnctYnCDzTFcD8BS1efM1AnW77bL+FucHcpT6paroP6GDaggmW0XAr/B7SVVwbmv
	yKsP59UnPjFFJNTspsoZoYuE9GOX+Jem/xJqyjNfboXFY0/CYzC3ZHRldcym9vAMsXH6yK0ZWi9
	IuflFNGQpaUx0/7GJU/YsT9MovcYbf7Igk94M/aBo3sSHt4vXSRkD+UWsbBLAIuB7OQi0XsgSnk
	Kw/4opboKA1T+NSX4Qc9kTcExnHP/84YDU6pg/cxZqwzfDZfDghNhUrtDmN+kUT17da2ujyFAl1
	KkfPe7iBUJVgG/n0+XYX19iuusA3duhsFhNZ4KokN3XAdA5r8rXX4kr9H3ljEfFpDt2CjuqLbEc
	ZoWK0AGsb8+WylBsKVF1c9/Bi7ZCAMA==
X-Google-Smtp-Source: AGHT+IH7N0jdPd7FO1HjdmzREHhH0KvQufHfLlEkoa0bxYsRk5Zadh8sLeM7rRl98VvKhBFLaV1KzA==
X-Received: by 2002:a05:6000:400b:b0:3f9:7a96:5dc3 with SMTP id ffacd0b85a97d-40e451f9a3emr2633659f8f.24.1758787410695;
        Thu, 25 Sep 2025 01:03:30 -0700 (PDT)
Received: from [192.168.0.24] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc6921b7dsm1820146f8f.42.2025.09.25.01.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 01:03:30 -0700 (PDT)
Message-ID: <588a7b68-2e2e-4e65-9249-fe8b18b67927@linaro.org>
Date: Thu, 25 Sep 2025 11:03:28 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/25/25 03:17, Jingyi Wang wrote:
> Enable more features on Kaanapali MTP boards including PMIC peripherals,
> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
> 
> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 663 +++++++++++++++++++++++++++++
>  1 file changed, 663 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> index 9cf3158e2712..2949579481a9 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> @@ -5,9 +5,23 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/leds/common.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "kaanapali.dtsi"
>  
> +#define PMH0110_D_E0_SID 3
> +#define PMH0110_F_E0_SID 5
> +#define PMH0110_G_E0_SID 6
> +#define PMH0110_I_E0_SID 8
> +#define PMH0104_J_E1_SID 9
> +
> +#include "pmk8850.dtsi"
> +#include "pmh0101.dtsi"
> +#include "pmh0110.dtsi"
> +#include "pmh0104.dtsi"
> +
>  / {
>  	model = "Qualcomm Technologies, Inc. Kaanapali MTP";
>  	compatible = "qcom,kaanapali-mtp", "qcom,kaanapali";
> @@ -15,6 +29,7 @@ / {
>  
>  	aliases {
>  		serial0 = &uart7;
> +		serial1 = &uart18;
>  	};
>  
>  	chosen {
> @@ -52,6 +67,304 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
>  			clock-div = <2>;
>  		};
>  	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-0 = <&key_vol_up_default>;
> +		pinctrl-names = "default";
> +
> +		key-volume-up {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
> +			debounce-interval = <15>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +	};
> +
> +	thermal-zones {
> +		pmh0101-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmh0101_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmh0104-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmh0104_j_e1_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmh0110-d-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmh0110_d_e0_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmh0110-f-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmh0110_f_e0_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmh0110-g-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmh0110_g_e0_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmh0110-i-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmh0110_i_e0_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmd8028-thermal {
> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&pmd8028_temp_alarm>;
> +
> +			trips {
> +				pmd8028_trip0: trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				pmd8028_trip1: trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmih0108-thermal {
> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&pmih0108_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pmr735d-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmr735d_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pm8010-m-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pm8010_m_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +
> +		pm8010-n-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pm8010_n_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +	};
> +
> +	wcn7850-pmu {
> +		compatible = "qcom,wcn7850-pmu";
> +
> +		pinctrl-0 = <&bt_default>, <&sw_ctrl_default>, <&wlan_en>;
> +		pinctrl-names = "default";
> +
> +		bt-enable-gpios = <&pmh0104_j_e1_gpios 5 GPIO_ACTIVE_HIGH>;
> +		wlan-enable-gpios = <&tlmm 16 GPIO_ACTIVE_HIGH>;
> +
> +		vdd-supply = <&vreg_s2j_0p8>;
> +		vddio-supply = <&vreg_l2g_1p8>;
> +		vddio1p2-supply = <&vreg_l3g_1p2>;
> +		vddaon-supply = <&vreg_s7g_0p9>;
> +		vdddig-supply = <&vreg_s1j_0p8>;
> +		vddrfa1p2-supply = <&vreg_s7f_1p2>;
> +		vddrfa1p8-supply = <&vreg_s8f_1p8>;
> +
> +		clocks = <&rpmhcc RPMH_RF_CLK1>;
> +
> +		regulators {
> +			vreg_pmu_rfa_cmn: ldo0 {
> +				regulator-name = "vreg_pmu_rfa_cmn";
> +			};
> +
> +			vreg_pmu_aon_0p59: ldo1 {
> +				regulator-name = "vreg_pmu_aon_0p59";
> +			};
> +
> +			vreg_pmu_wlcx_0p8: ldo2 {
> +				regulator-name = "vreg_pmu_wlcx_0p8";
> +			};
> +
> +			vreg_pmu_wlmx_0p85: ldo3 {
> +				regulator-name = "vreg_pmu_wlmx_0p85";
> +			};
> +
> +			vreg_pmu_btcmx_0p85: ldo4 {
> +				regulator-name = "vreg_pmu_btcmx_0p85";
> +			};
> +
> +			vreg_pmu_rfa_0p8: ldo5 {
> +				regulator-name = "vreg_pmu_rfa_0p8";
> +			};
> +
> +			vreg_pmu_rfa_1p2: ldo6 {
> +				regulator-name = "vreg_pmu_rfa_1p2";
> +			};
> +
> +			vreg_pmu_rfa_1p8: ldo7 {
> +				regulator-name = "vreg_pmu_rfa_1p8";
> +			};
> +
> +			vreg_pmu_pcie_0p9: ldo8 {
> +				regulator-name = "vreg_pmu_pcie_0p9";
> +			};
> +
> +			vreg_pmu_pcie_1p8: ldo9 {
> +				regulator-name = "vreg_pmu_pcie_1p8";
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> @@ -674,6 +987,304 @@ vreg_l7n_3p3: ldo7 {
>  	};
>  };
>  
> +&pmh0110_d_e0 {
> +	status = "okay";
> +};
> +
> +&pmh0110_f_e0 {
> +	status = "okay";
> +};
> +
> +&pmh0110_g_e0 {
> +	status = "okay";
> +};
> +
> +&pmh0110_i_e0 {
> +	status = "okay";
> +};
> +
> +&spmi_bus1 {
> +	pmd8028: pmic@4 {
> +		compatible = "qcom,pmd8028", "qcom,spmi-pmic";
> +		reg = <0x4 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pmd8028_temp_alarm: temp-alarm@a00 {
> +			compatible = "qcom,spmi-temp-alarm";
> +			reg = <0xa00>;
> +			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> +			#thermal-sensor-cells = <0>;
> +		};
> +
> +		pmd8028_gpios: gpio@8800 {
> +			compatible = "qcom,pmd8028-gpio", "qcom,spmi-gpio";
> +			reg = <0x8800>;
> +			gpio-controller;
> +			gpio-ranges = <&pmd8028_gpios 0 0 4>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
> +	pmih0108: pmic@7 {
> +		compatible = "qcom,pmih0108", "qcom,spmi-pmic";
> +		reg = <0x7 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pmih0108_temp_alarm: temp-alarm@a00 {
> +			compatible = "qcom,spmi-temp-alarm";
> +			reg = <0xa00>;
> +			interrupts = <0x7 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> +			#thermal-sensor-cells = <0>;
> +		};
> +
> +		pmih0108_gpios: gpio@8800 {
> +			compatible = "qcom,pmih0108-gpio", "qcom,spmi-gpio";
> +			reg = <0x8800>;
> +			gpio-controller;
> +			gpio-ranges = <&pmih0108_gpios 0 0 18>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		pmih0108_eusb2_repeater: phy@fd00 {
> +			compatible = "qcom,pm8550b-eusb2-repeater";
> +			reg = <0xfd00>;
> +			#phy-cells = <0>;
> +			vdd18-supply = <&vreg_l15b_1p8>;
> +			vdd3-supply = <&vreg_l5b_3p1>;
> +		};
> +	};
> +
> +	pmr735d: pmic@a {

Hi,

The PMR735D is available in pmr735d_a.dtsi

Can we find a way to reuse that include file instead of duplicating it
here ?

> +		compatible = "qcom,pmr735d", "qcom,spmi-pmic";
> +		reg = <0xa SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pmr735d_temp_alarm: temp-alarm@a00 {
> +			compatible = "qcom,spmi-temp-alarm";
> +			reg = <0xa00>;
> +			interrupts = <0xa 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> +			#thermal-sensor-cells = <0>;
> +		};
> +
> +		pmr735d_gpios: gpio@8800 {
> +			compatible = "qcom,pmr735d-gpio", "qcom,spmi-gpio";
> +			reg = <0x8800>;
> +			gpio-controller;
> +			gpio-ranges = <&pmr735d_gpios 0 0 2>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +


[...]

