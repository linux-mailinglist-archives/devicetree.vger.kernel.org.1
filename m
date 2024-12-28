Return-Path: <devicetree+bounces-134522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 449029FDB9D
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 17:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0AF318829A4
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 16:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E68F1662EF;
	Sat, 28 Dec 2024 16:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1esKnso"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26913524F;
	Sat, 28 Dec 2024 16:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735401708; cv=none; b=iFnzdzSCVnajGBOJKht98e/joO7ksg8yFfKDVhwQQ+EZuQ/PiXqehbPH0xLzR2jm7DoIb1yffTArtKbdMSqjF9Zbrt4mKDvlw+OvdLrKSuJ5Cqzo7tyXdzOXgCZV2v3sNOdvbpZOJFvviGA1gTrt6b2Moy2NaJ9rF8OBS+cIFgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735401708; c=relaxed/simple;
	bh=18U5iz8pi3RBHmvQo2OtcOsNKBRj3kPVu7012TB52mo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gdXkA2SGOfTasqrvAswHjvt1Hjq/K3YGXIfoA9+E1St29NCStNIg7w2YnG0cf26x3oytkkS4Hjs1KZhMuqUjU9fBunQwYpktu3jPvBmJIpi5PeysQsmFCEtrNTyRl07FLoTNVqIVx9u3J1sJ/wmF2edsSCuMHtuzAuqy2LEIw14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1esKnso; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD0ADC4CECD;
	Sat, 28 Dec 2024 16:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735401707;
	bh=18U5iz8pi3RBHmvQo2OtcOsNKBRj3kPVu7012TB52mo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T1esKnsogL2iJCDq7cGur+PfySNB+HuMauEx3ha+nFmHI04vjq6kSh/ABDgFgDrc7
	 5xidS+d6tEJ1Nkzvi5JnmM/vWBd917TP+4Lr94DOQvJl42SB86lYS8KFs7SB1wmQYa
	 /nKdx6AXEpJPSE67Ym4zd9dRSnM2gCe6GLcPaK79Ps5LcQVfR+FYYj0ET2AR5qyYFV
	 2RRjCQZFWhQ9pz7e9UQr6V9TAhRlIkxd+j7dGLuw578IYozzLZRc4+cNm3wJaRf9P6
	 nYLyPRIqjxJMFJj8TCRFmo/6rRS5npcr36EpKR+i/0oyn+7zooGRy0TUhwE0KDFJaB
	 AzX0nOIuBQUOQ==
Message-ID: <5af2e2fa-3f60-419e-be3e-74771a993de6@kernel.org>
Date: Sat, 28 Dec 2024 18:01:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
To: Enric Balletbo i Serra <eballetb@redhat.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>
References: <20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Enric,

On 26/11/2024 12:08, Enric Balletbo i Serra wrote:
> From: Dasnavis Sabiya <sabiya.d@ti.com>
> 
> AM69 SK board has two stacked USB3 connectors:
>    1. USB3 (Stacked TypeA + TypeC)
>    2. USB3 TypeA Hub interfaced through TUSB8041.
> 
> The board uses SERDES0 Lane 3 for USB3 IP. So update the
> SerDes lane info for PCIe and USB. Add the pin mux data
> and enable USB 3.0 support with its respective SERDES settings.
> 
> Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
> Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>
> ---
> I've been carrying this patch for quite long time in my builds to have
> support for USB on my AM69-SK board without problems. For some reason this
> patch was never send to upstream or I couldn't find it. So I took the
> opportunity, now that I rebased my build, to send upstream.
> 
> I have maintained the original author of the downstream patch as is
> basically his work.
> ---
>  arch/arm64/boot/dts/ti/k3-am69-sk.dts | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> index 1e36965a14032ca07143230855e04b9549f1d0d1..72797f4b689c1d069bf395d6d4fe1846dc4e4297 100644
> --- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> @@ -484,6 +484,12 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
>  		>;
>  	};
>  
> +	main_usbss0_pins_default: main-usbss0-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_IOPAD(0x0EC, PIN_OUTPUT, 6) /* (AN37) TIMER_IO1.USB0_DRVVBUS */

address offset should be lower case?

> +		>;
> +	};
> +
>  };
>  
>  &wkup_pmx0 {
> @@ -1299,6 +1305,14 @@ serdes0_pcie_link: phy@0 {
>  		cdns,phy-type = <PHY_TYPE_PCIE>;
>  		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>, <&serdes_wiz0 3>;
>  	};
> +
> +	serdes0_usb_link: phy@3 {
> +		reg = <3>;
> +		cdns,num-lanes = <1>;
> +		#phy-cells = <0>;
> +		cdns,phy-type = <PHY_TYPE_USB3>;
> +		resets = <&serdes_wiz0 4>;
> +	};
>  };
>  
>  &serdes_wiz1 {
> @@ -1339,3 +1353,22 @@ &pcie3_rc {
>  	phy-names = "pcie-phy";
>  	num-lanes = <1>;
>  };
> +
> +&usb_serdes_mux {
> +	idle-states = <0>; /* USB0 to SERDES0 */
> +};
> +
> +&usbss0 {
> +	status = "okay";
> +	pinctrl-0 = <&main_usbss0_pins_default>;
> +	pinctrl-names = "default";
> +	ti,vbus-divider;
> +};
> +
> +&usb0 {
> +	status = "okay";
> +	dr_mode = "host";
> +	maximum-speed = "super-speed";
> +	phys = <&serdes0_usb_link>;
> +	phy-names = "cdns3,usb3-phy";
> +};

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger


