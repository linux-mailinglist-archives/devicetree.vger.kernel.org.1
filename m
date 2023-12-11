Return-Path: <devicetree+bounces-23812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A45280C67B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A7881C20959
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E2B24B33;
	Mon, 11 Dec 2023 10:27:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D4E2A196
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:27:17 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8FFD13D5
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:28:03 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 10F613F738
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:27:16 -0800 (PST)
Date: Mon, 11 Dec 2023 10:27:06 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: juno: align thermal zone names with bindings
Message-ID: <ZXbj-jRJcpzam0wG@e110455-lin.cambridge.arm.com>
References: <20231209171612.250868-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231209171612.250868-1-krzysztof.kozlowski@linaro.org>

On Sat, Dec 09, 2023 at 06:16:12PM +0100, Krzysztof Kozlowski wrote:
> Thermal bindings require thermal zone node names to match
> certain patterns:
> 
>   juno.dtb: thermal-zones: 'big-cluster', 'gpu0', 'gpu1', 'little-cluster', 'pmic', 'soc'
>     do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Liviu Dudau <liviu.dudau@arm.com>

Thanks for fixing this!

Best regards,
Liviu

> ---
>  arch/arm64/boot/dts/arm/juno-base.dtsi | 12 ++++++------
>  arch/arm64/boot/dts/arm/juno-scmi.dtsi | 12 ++++++------
>  2 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
> index 8b4d280b1e7e..b897f5542c0a 100644
> --- a/arch/arm64/boot/dts/arm/juno-base.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
> @@ -747,7 +747,7 @@ scpi_sensors0: sensors {
>  	};
>  
>  	thermal-zones {
> -		pmic {
> +		pmic-thermal {
>  			polling-delay = <1000>;
>  			polling-delay-passive = <100>;
>  			thermal-sensors = <&scpi_sensors0 0>;
> @@ -760,7 +760,7 @@ pmic_crit0: trip0 {
>  			};
>  		};
>  
> -		soc {
> +		soc-thermal {
>  			polling-delay = <1000>;
>  			polling-delay-passive = <100>;
>  			thermal-sensors = <&scpi_sensors0 3>;
> @@ -773,28 +773,28 @@ soc_crit0: trip0 {
>  			};
>  		};
>  
> -		big_cluster_thermal_zone: big-cluster {
> +		big_cluster_thermal_zone: big-cluster-thermal {
>  			polling-delay = <1000>;
>  			polling-delay-passive = <100>;
>  			thermal-sensors = <&scpi_sensors0 21>;
>  			status = "disabled";
>  		};
>  
> -		little_cluster_thermal_zone: little-cluster {
> +		little_cluster_thermal_zone: little-cluster-thermal {
>  			polling-delay = <1000>;
>  			polling-delay-passive = <100>;
>  			thermal-sensors = <&scpi_sensors0 22>;
>  			status = "disabled";
>  		};
>  
> -		gpu0_thermal_zone: gpu0 {
> +		gpu0_thermal_zone: gpu0-thermal {
>  			polling-delay = <1000>;
>  			polling-delay-passive = <100>;
>  			thermal-sensors = <&scpi_sensors0 23>;
>  			status = "disabled";
>  		};
>  
> -		gpu1_thermal_zone: gpu1 {
> +		gpu1_thermal_zone: gpu1-thermal {
>  			polling-delay = <1000>;
>  			polling-delay-passive = <100>;
>  			thermal-sensors = <&scpi_sensors0 24>;
> diff --git a/arch/arm64/boot/dts/arm/juno-scmi.dtsi b/arch/arm64/boot/dts/arm/juno-scmi.dtsi
> index ec85cd2c733c..31929e2377d8 100644
> --- a/arch/arm64/boot/dts/arm/juno-scmi.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-scmi.dtsi
> @@ -76,27 +76,27 @@ scmi_sensors0: protocol@15 {
>  	};
>  
>  	thermal-zones {
> -		pmic {
> +		pmic-thermal {
>  			thermal-sensors = <&scmi_sensors0 0>;
>  		};
>  
> -		soc {
> +		soc-thermal {
>  			thermal-sensors = <&scmi_sensors0 3>;
>  		};
>  
> -		big-cluster {
> +		big-cluster-thermal {
>  			thermal-sensors = <&scmi_sensors0 21>;
>  		};
>  
> -		little-cluster {
> +		little-cluster-thermal {
>  			thermal-sensors = <&scmi_sensors0 22>;
>  		};
>  
> -		gpu0 {
> +		gpu0-thermal {
>  			thermal-sensors = <&scmi_sensors0 23>;
>  		};
>  
> -		gpu1 {
> +		gpu1-thermal {
>  			thermal-sensors = <&scmi_sensors0 24>;
>  		};
>  	};
> -- 
> 2.34.1
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

