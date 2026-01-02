Return-Path: <devicetree+bounces-251088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEC3CEE80D
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 13:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C42A30080C4
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 12:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DB330F55A;
	Fri,  2 Jan 2026 12:22:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334112D7DC4
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 12:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767356538; cv=none; b=LwBSj+geFKwDFnzacuPvklcN1BBnbi9YGTvku13W2M1JL9KhSpeE0gbw6mijRBDl+2SEt/a/Ql4GCrGJU0epV410jNeyVIUOzt79UVH//oeFn291SW0ZAGWpEXMHritlm3R4YiPk8K+WO7gCB8pbAyW3L2aiBa0HSybaNUpxdCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767356538; c=relaxed/simple;
	bh=N/3ag8PDh4QKoMOrxT4SoxnO7gYRxZSl+ziExCM79ds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H73UUQXwc5IzIHNAioxZrPA4+2Glcl4i4QszG6Opa9IsCN2J3Us11FnaRpyS971N7+z3iMB6KQdB5kC9u9WETPzfV3zDxhm1AO3vrZWt//eT+1znpSxHTeuYJkpm7817NkLYTYsoOwInEOzEnrtMyhjU6yf18v0BPPzo8z4i+q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpsz6t1767356458t5fcba08d
X-QQ-Originating-IP: Ayds/8A1YveSLFt2cgvOK9/WokTop4Ihr+EA4NhAefI=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 02 Jan 2026 20:20:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15471507593968518145
Message-ID: <BDDA8BCAC5E40754+f8a6f461-6f79-4ba3-b77e-a7664896799d@radxa.com>
Date: Fri, 2 Jan 2026 21:20:55 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add USB Type-C support for Radxa
 ZERO 3W
To: Ke Sun <sunke@kylinos.cn>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Alvin Sun <sk.alvin.x@gmail.com>
References: <20260101083415.1327341-1-sunke@kylinos.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20260101083415.1327341-1-sunke@kylinos.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NyAagKVozfn5v0hb6uyMXmLzpL2tCiEsp6JETTFHFsz6Nn8j8X4IMgvM
	ZwaNfdVd/5YjKNEjYL4oir4rq9xu0XKOd1TbkGPwIHa4j7F2pecdsb6N1OE36yLnDp2wYUP
	326eX4uD/R43DI/7rsZdRQ4AYpfAqL1gdkydvrEGDZdU1XwecZs628IC1yrqiM4X94CCCj9
	6nKHLXjpbS5nzPZcFUDZB5ngssr8iwRVMhrGN10S1T9r+SNAgG0VRKzBzae++pOKsR3swoF
	cUaKHQKCdb4/n5YKXJeCT+xe9EdXbOGkNiMMK2QnLErkKo9vHv5FfgvIQbg3XAyBHfT4Wtj
	3+gvJDr7sZmStmT6gzlXLRRcAVc3iOZ/p7Aj9tPdSUCJoUL1eaRlOgre8q9LBshGpBUggHb
	DuieSGtF0rSVSQiTLwEwL9Wi3XkOYk7cMDCpoM2saRotmga4cSYdp+X9l1fUrownz7FD7gO
	zW6W33imYpS9qOxbLKu3/UgwgFKFbSBmwEC7JFZpthfG3XnmkdtDDGmZYxbiPaFzeYULm4R
	3kYk/GJQoLkyhLwcnyY5ChD7dNx5Bqxp6QqSkhuw7N6q/bfW0MGdRLEr7LZ4hlzfI0T2BSj
	kCOvDdytJKAXssSRgijc0iw2rSzLKurImHnUl0WsN34btX4yn6IX0Koys8Dit0UrViOdnf2
	G8t3fVSpaNe+8LG3pac9MNsRgRQn7PnbOgy6lLnyQV8iPXiRW6KVBoLMkCTtv/wBrTyZcWh
	zRObLQ48CyPMk/dLxbvNLnsnkRNvjvZM6l8DXlM2Mg5StuYwLlmOT2XqGNPnXlQytnDD66s
	nZGeoPrKgLcY4GVjHBAhtjD3T6bg3iHV6AsSqmXEaDOzNyBh6tchDL0FOpGV/y6DBRdBM5J
	ZAVrOulpEB1Rv8SHvyMVyCeDccuMB+BithMi0Aanjuj60bL832bE+uVZePeBS661dDHf0Qj
	3BEbkQL5WbRLs50AerGQp/T0CuKrJ5aG2tlggXPlStc1wb3sAzsKhTEyl2vKjzG8E3I0509
	a7Y5b1Bw==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0

Hi Ke,

On 1/1/26 17:34, Ke Sun wrote:
> Add vbus_typec regulator and fusb302 Type-C controller configuration
> for Radxa ZERO 3W board.
> 
> Link: https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
> Signed-off-by: Ke Sun <sunke@kylinos.cn>
> ---
>   .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 10 +++++++++
>   .../dts/rockchip/rk3566-radxa-zero-3w.dts     | 22 +++++++++++++++++++
>   2 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> index 1ee5d96a46a1b..79448016ab490 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> @@ -35,6 +35,16 @@ led-green {
>   		};
>   	};
>   
> +	vbus_typec: vbus-typec-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vbus_typec";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
>   	vcc_1v8: regulator-1v8-vcc {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc_1v8";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> index f92475c59deb4..54f20856bcfc6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> @@ -50,6 +50,12 @@ wifi_wake_host_h: wifi-wake-host-h {
>   			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
> +
> +	usb-typec {
> +		usbc0_int: usbc0-int {
> +			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
>   };
>   
>   &sdhci {
> @@ -90,3 +96,19 @@ &uart1 {
>   	uart-has-rtscts;
>   	status = "okay";
>   };
> +
> +&i2c3 {
> +	status = "okay";
> +	pinctrl-0 = <&i2c3m1_xfer>;
> +
> +	usbc0: fusb302@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <RK_PC7 IRQ_TYPE_LEVEL_LOW>;
> +		sel-gpios= <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;

Where is "sel-gpios" defined or handled?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_typec>;
> +	};
> +};


