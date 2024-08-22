Return-Path: <devicetree+bounces-95946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B9D95C010
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 23:08:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DEC628239E
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 21:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC55A1C9ECE;
	Thu, 22 Aug 2024 21:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="Im6rq60i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB90EC5
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 21:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724360886; cv=none; b=MXHxrE69hIUs6PuVw1sQfVXznb2/1QqgDXTb8hWnFsx8PFqvC6ySyabxCFRyups+KrCUjSc7mHg2nWplc1rf6LXb/2VxoO/2XcQu1wyqQey3f9XKD/sZ/LaJmxXOkCj8JeBLd3CGt02h4PaO7NFQYZApuMA6nE10CIAxpgIlByY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724360886; c=relaxed/simple;
	bh=03N4/tGExftX2vMsr2+DXzPkGWqHMGM2nEZzRrdG9oU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YJn8jGzwv0YaxiFF0hSrdiMP1sDKCVQA0BUj6tF/PzoOCVUBgwdoySRNUDPFpL3GoOrkrJ4cbwLHzAXRG0on3bXks8473MbRbgC9KRnquCpuHn+gm0ROGo/J7Cv/Yhfig6jJAT1SbUIzzhmAtkkuGHaHmnz/GEG3EKdCW0ZaiPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=Im6rq60i; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724360879;
 bh=4tP9VmGTaewIrqRGDE2dhUdaQkLMhws7PNGMCn9dZtk=;
 b=Im6rq60iCckgkj8fiAKg8XHPHFA8Fe0AUmsSozLD/cOaxGePEBEXp7QEgI1aMughZ2jUGq+3k
 EmKLJSzsHHIjWOrYSZDl8wV+i8LUMHJj+LHEXhlFtf6PbJKcYPuyf3zZmKYbsAKe8OPJ206wayx
 tGAe6udP3FjXn5b3mO830ORINVuEn29ujHRBgIWpMIrxLIWsaijgLaVBJw3rtbRtlWnd171mJ+l
 S9crwX8nUkjYCnwA0LVjGyc6lJQp6IpQoTZgojX6IMtTGsieNl8zfqvtovjMhCD9Ow2Bg5CC5I4
 /izCi/pWxVxmzGKU7sFc3UbLaI/AWw/4J/VEem+5COvg==
Message-ID: <13942328-84bf-4b9f-a88f-287b233c1654@kwiboo.se>
Date: Thu, 22 Aug 2024 23:07:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: rockchip: enable USB-C on NanoPC-T6
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-7-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-7-892aebcec0c6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66c7a8ae9c6972850a4e9ce9

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> Enable the USB-C port on FriendlyELEC NanoPC-T6.
> 
> Works one way so far but still better than before.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index 74dc1b490ca3..e63b2faee3b5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -135,6 +135,8 @@ vbus5v0_typec: vbus5v0-typec-regulator {
>  		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&typec5v_pwren>;
> +		regulator-always-on;
> +		regulator-boot-on;

This should probably not be always-on/boot-on, the connector is
described as power-role = "dual" and try-power-role = "sink", so should
probably be possible to disable the vbus supply.

Regards,
Jonas

>  		regulator-name = "vbus5v0_typec";
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
> @@ -384,6 +386,32 @@ connector {
>  			source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
>  			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>  			op-sink-microwatt = <1000000>;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					usbc0_hs: endpoint {
> +						remote-endpoint = <&usb_host0_xhci_drd_sw>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					usbc0_ss: endpoint {
> +						remote-endpoint = <&usbdp_phy0_typec_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +					usbc0_sbu: endpoint {
> +						remote-endpoint = <&usbdp_phy0_typec_sbu>;
> +					};
> +				};
> +			};
>  		};
>  	};
>  
> @@ -927,6 +955,14 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
>  &u2phy2_host {
>  	phy-supply = <&vdd_4g_3v3>;
>  	status = "okay";
> @@ -944,6 +980,29 @@ &u2phy3 {
>  	status = "okay";
>  };
>  
> +&usbdp_phy0 {
> +	mode-switch;
> +	orientation-switch;
> +	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
> +	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		usbdp_phy0_typec_ss: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&usbc0_ss>;
> +		};
> +
> +		usbdp_phy0_typec_sbu: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&usbc0_sbu>;
> +		};
> +	};
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> @@ -952,6 +1011,18 @@ &usb_host0_ohci {
>  	status = "okay";
>  };
>  
> +&usb_host0_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +	usb-role-switch;
> +
> +	port {
> +		usb_host0_xhci_drd_sw: endpoint {
> +			remote-endpoint = <&usbc0_hs>;
> +		};
> +	};
> +};
> +
>  &usb_host1_ehci {
>  	status = "okay";
>  };
> 


