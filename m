Return-Path: <devicetree+bounces-159928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EB5A6D12F
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8EF9B7A6B92
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 21:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE9D1A5BBF;
	Sun, 23 Mar 2025 21:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="mgysPT3+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4342C80
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 21:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742764641; cv=none; b=Lnwzy/14jHYLj2lBS5f6Hqf6lWJZecpi6sf3eV7QBw0jwqMRPnGnpEnnXgLRNZzBCDrfL0XKIkstVDtZotexKa1sWErJRz66ARBisUI6bhO3stI9wGo0Tz5Urji3Bsd2DMRXBBSCKIUOZf+22cGrSu85ZEVGH0HNj9jGcGnjjtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742764641; c=relaxed/simple;
	bh=7IImylV0F4v8FI1Dv/2wWlt+sdNgnHLJdESQV9VV8cU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=orWxI0erufV4QzkiqN7qQLN5axlKIGC0neduTvoVvjqJK6U9IiGvsl786tCBGIxjtAMyLzae7UNg3xuUaksNYnqUb7URVh75BhLh0Y6D3qh85CY3VNthcCFm98p7oJPb9G053vsR56YcFvmx/qxzVXtSkrcZOqobUJGedP6i1Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=mgysPT3+; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742764636;
 bh=6kdDEqFsGGIe5/LOChdFvMjVPWd6p1qWvu1crnxu6WE=;
 b=mgysPT3+dpaRa7uwewS23nPTgmvsJIQ/NFWd+S5ef3ikM3vUZ1JNMuH7ukjKw1AkXvm7tQ4K/
 rkUpQOxzoi0um5YyodMBh7IrGuJDf9eALDDTXDWIfuBIBaP6tKNa3+M8ia6b/9EsEK+HyeOAli8
 3h97DgD8EGYpiCIhAiPtlPWIHmnDkrUqkOPtCPxKoTupmQiUOLZbFVrFjzTmH1BonXx45B5ASRs
 VxOZbpQHLO/PMggMyEJnIHRqTxsHaiFr+KJIDoNvHB9jMozgIRQovUNekwwtc/Qh1ppysMqpvW8
 AggpjNcDhfPBTiMguJetyHUeRBTDiKKlxFtkpN8sCDwg==
X-Forward-Email-ID: 67e07a56bd529871d5f807f9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <432b6705-4d97-4d47-bbc2-196f9b84da05@kwiboo.se>
Date: Sun, 23 Mar 2025 22:17:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Enable regulators for Radxa
 E20C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Yao Zi <ziyao@disroot.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250318120003.2340652-1-amadeus@jmu.edu.cn>
 <20250318120003.2340652-3-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250318120003.2340652-3-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chukun,

On 2025-03-18 13:00, Chukun Pan wrote:
> Enable pwm and fixed regulators for Radxa E20C. The pwm regulator is
> used to power the CPU and GPU. Note that the LPDDR4 voltage is 1.1V.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index 57a446b5cbd6..159b55aa970d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -100,6 +100,16 @@ vcc_3v3: regulator-3v3-vcc {
>  		vin-supply = <&vcc5v0_sys>;
>  	};
>  
> +	vcc_ddr: regulator-vcc-ddr {

Since we know the voltage for this regulator please name the node
regulator-1v1-vcc-ddr and place it above the regulator-1v8 to keep node
order by node name (not label name).

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_ddr";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1100000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
>  	vcc5v0_sys: regulator-5v0-vcc-sys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_sys";
> @@ -108,6 +118,56 @@ vcc5v0_sys: regulator-5v0-vcc-sys {
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
>  	};
> +
> +	vdd_0v9: regulator-0v9-vdd {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_0v9";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};

This node is out of node name order, please place it before the
regulator-1v1-vcc-ddr node.

> +
> +	vdd_arm: regulator-vdd-arm {
> +		compatible = "pwm-regulator";

Suggest we add the pinctrl props here instead:

 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1m0_pins>;

> +		pwms = <&pwm1 0 5000 1>;

This should use the PWM_POLARITY_INVERTED flag not 1.

Will require include of dt-bindings/pwm/pwm.h.

> +		pwm-supply = <&vcc5v0_sys>;
> +		regulator-name = "vdd_arm";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <746000>;
> +		regulator-max-microvolt = <1201000>;
> +		regulator-settling-time-up-us = <250>;
> +	};
> +
> +	vdd_logic: regulator-vdd-logic {
> +		compatible = "pwm-regulator";

Same here, suggest we add the pinctrl props here instead:

 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2m0_pins>;

> +		pwms = <&pwm2 0 5000 1>;

Same here, this should use the PWM_POLARITY_INVERTED flag not 1.

> +		pwm-supply = <&vcc5v0_sys>;
> +		regulator-name = "vdd_logic";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <705000>;
> +		regulator-max-microvolt = <1006000>;
> +		regulator-settling-time-up-us = <250>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_arm>;
>  };
>  
>  &pinctrl {
> @@ -132,6 +192,18 @@ wan_led_g: wan-led-g {
>  	};
>  };
>  
> +&pwm1 {
> +	pinctrl-0 = <&pwm1m0_pins>;
> +	pinctrl-names = "default";

For consistency please put the pinctrl-names before the pinctrl-X props.
And as stated above, I suggest we move this to the regulator node.

> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	pinctrl-0 = <&pwm2m0_pins>;
> +	pinctrl-names = "default";

Same here.

Regards,
Jonas

> +	status = "okay";
> +};
> +
>  &saradc {
>  	vref-supply = <&vcc_1v8>;
>  	status = "okay";


