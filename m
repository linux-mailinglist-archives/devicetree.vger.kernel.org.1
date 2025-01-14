Return-Path: <devicetree+bounces-138410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC4FA10465
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 785C21885D5A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF9A1ADC75;
	Tue, 14 Jan 2025 10:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bK3YiFMb"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817E22963C;
	Tue, 14 Jan 2025 10:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736851107; cv=none; b=bN7EoMoC7tZQPt4OXHTWm2+AtQPkYnPeDI1TViDFdWnNK20IOVGvqhcYsMoX5lhKri67tK3Nkq1oyKXK5OphI6yGtq1UZ0np9sPwVyM2UwVrz4D/HffFm93HAa3L49xIppZwqlYKAdtZVmy4Uv6c9hqDAqU1y5NXg2jKHmP/WU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736851107; c=relaxed/simple;
	bh=B+LNGJoxm+2ZW+2zkFsa63Rt6e6ValKEjmMu+3Ps3uM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rYHBLR14vb893SIzDaLW1N+warSDVVzVmtSyIT3d/y8I9dBc9xoI95h2Ur+T10UM8sNbz7N8XpsjdqfCWBhxhxU9MfC9oXm3c2Rg3RPGu9Kn/tsHRgiUPWV8uhZ1UBX7l6M4heprllaBtgWJuH22D3ye5gIOZIISNjluyhBg+II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=bK3YiFMb; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736851103;
	bh=B+LNGJoxm+2ZW+2zkFsa63Rt6e6ValKEjmMu+3Ps3uM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bK3YiFMbI4ErOnyOl2Px+n/9/cs5S8qo0bWabVA4U52QgrvPsaNtTIiiZSnhzf6Wa
	 hE+kkN2oepDtoaHq1a+0k4zzG3OyglKrxQXdgKaxNSQC+2XbdRsSvqoKCGKXRbHqk3
	 es/GP4cSpxAY/EZKcVkLzUMv6CiJ993BfXq4zutma0evuapWmsLzjdJv6OAazQYIUk
	 OpYFw+Vdzida0LD3hYbnwV/yLIoDaS3hntF7yv9m84+FTv7D6tTwodIsufLDW42OsW
	 GIgHaV95HysTN62KcVFMIQWGN/sBqDUIBztuDWeACTs0cyDjk9LP2u3Mqb9UxaYNGA
	 ofZ0CtzX/k/2Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C206A17E0239;
	Tue, 14 Jan 2025 11:38:22 +0100 (CET)
Message-ID: <91ac34bf-e184-486d-9af7-f9ddaf8f26ed@collabora.com>
Date: Tue, 14 Jan 2025 11:38:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: add mmc2 support for mt8365-evk
To: Alexandre Mergnat <amergnat@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 macpaul.Lin@mediatek.com
Cc: vsatoes@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20250109-mmc2-support-v1-1-9b9d1b1ae35d@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250109-mmc2-support-v1-1-9b9d1b1ae35d@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 10/01/25 12:10, Alexandre Mergnat ha scritto:
> Adds support for the MMC2 interface on the MT8365 EVK board.
> It introduces a fixed regulator for the MMC2 VDD33 supply and configures
> the MMC2 node with a 4-bit bus width, high-speed capabilities, UHS
> modes, and appropriate power supplies. Enabled SDIO IRQ, wakeup source,
> and kept power during suspend for wireless chip functionality.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>   arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 85 +++++++++++++++++++++++++++++
>   1 file changed, 85 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> index 7d90112a7e27..309dc76322d4 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> @@ -53,6 +53,15 @@ memory@40000000 {
>   		reg = <0 0x40000000 0 0xc0000000>;
>   	};
>   
> +	mmc2_vdd33: mmc2_vdd33-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "mmc2_vdd33";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pio 121 0>;
> +		enable-active-high;
> +	};
> +
>   	usb_otg_vbus: regulator-0 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "otg_vbus";
> @@ -197,6 +206,28 @@ &mmc1 {
>   	status = "okay";
>   };
>   
> +&mmc2 {
> +	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL>;
> +	assigned-clocks = <&topckgen CLK_TOP_MSDC50_2_SEL>;
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	hs400-ds-delay = <0x12012>;
> +	keep-power-in-suspend;

Why keep-power-in-suspend?

> +	max-frequency = <200000000>;
> +	non-removable;
> +	pinctrl-0 = <&mmc2_default_pins>;
> +	pinctrl-1 = <&mmc2_uhs_pins>;
> +	pinctrl-names = "default", "state_uhs";
> +	sd-uhs-sdr104;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	vmmc-supply = <&mmc2_vdd33>;
> +	vqmmc-supply = <&mt6357_vcn18_reg>;
> +	wakeup-source;
> +	status = "okay";
> +};
> +
>   &mt6357_pmic {
>   	interrupts-extended = <&pio 145 IRQ_TYPE_LEVEL_HIGH>;
>   	interrupt-controller;
> @@ -410,6 +441,60 @@ cmd-dat-pins {
>   		};
>   	};
>   
> +	mmc2_default_pins: mmc2-default-pins {
> +		clk-pins {
> +			pinmux = <MT8365_PIN_81_MSDC2_CLK__FUNC_MSDC2_CLK>;

pinmux is always first, but then:

b ias-pull-....
d rive-strength

Alphabetical order please :-)

Cheers,
Angelo


