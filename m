Return-Path: <devicetree+bounces-257697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH8ZCc82cGl9XAAAu9opvQ
	(envelope-from <devicetree+bounces-257697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:15:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAFC4F9BA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:15:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D67B9944E8C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8C632B9A8;
	Wed, 21 Jan 2026 02:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="OTnBNxqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32112.qiye.163.com (mail-m32112.qiye.163.com [220.197.32.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA96304BB7;
	Wed, 21 Jan 2026 02:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.112
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768961700; cv=none; b=lqkJbvoIw8xLgKE7kqnbmHMtK6VzXX/whxG+YOuB1RZoPzK1qKcNgrkbRt/pVDGLcWKlMtFczHKluuMVKFhFpccDPc05MsNP6WcSdrEsGitJACEpHHLOjFEY8p1flZ/ZbBESm9pegGTF/ZLdcGbZtrhI7xKqQcRTKqprd/0LvCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768961700; c=relaxed/simple;
	bh=VET+e4ln1HatbE0t82L/8LFCdan/ablhML9MEN8ZOkg=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=itr8+ip+QkGSzRpmoono+ieN4zHV4N14A0kZxoIbP9WJ9LsYRgCgrTTE64ltjf4b8f8cAS/RWWGEruLBzjnELUKNdXCVfPHwo/vJIlZYAEvJMRg1/4tgRzu1MhsnQgCDlhqSWsSImgBVWnx36abQMupuu+3Cqx80hJPaGbnRDH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=OTnBNxqL; arc=none smtp.client-ip=220.197.32.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3160079c9;
	Wed, 21 Jan 2026 10:09:36 +0800 (GMT+08:00)
Message-ID: <07082578-f56a-4ad2-9ea0-a4ef20a86cfe@rock-chips.com>
Date: Wed, 21 Jan 2026 10:09:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Hsun Lai <i@chainsx.cn>,
 John Clark <inindev@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20260121015357.291-1-kernel@airkyi.com>
 <20260121015357.291-3-kernel@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260121015357.291-3-kernel@airkyi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bde507f6a09cckunm61165221ae686c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ08eHVZCSRlLT01LTUoeSBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OTnBNxqLyT/ATGNdjWCVeQIbbGmNGD7G2Ag2Ri6UofQbwdtTkPS4Zr3WTt/ADmgt3INO+I0u/ui36nmRIORe5sDY3KtB3nBbGrFJRMP5ssqP23UuNzAa/k/bgDT5u+rIUl+6rHblHuYH/D4F/2Lae628Bq6b6Yo/ynvPGPHzKyE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=px66oAjk4XaqMxJ6LP/bn8wEYOzMSxyTszaBJt3RpgU=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[airkyi.com,kernel.org,sntech.de,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257697-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[rock-chips.com,none];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,rock-chips.com:email,rock-chips.com:dkim,rock-chips.com:mid,0.0.0.1:email]
X-Rspamd-Queue-Id: 6AAFC4F9BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

在 2026/01/21 星期三 9:53, Chaoyi Chen 写道:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> General features for rk3576 evb2 board:
>      - Rockchip RK3576
>      - LPDDR4/4X
>      - eMMC5.1
>      - RK806-2x2pcs + DiscretePower
>      - 1x HDMI2.1 TX / HDMI2.0 RX
>      - 1x full size DP1.4 TX (Only 2 Lanes)
>      - 2x 10/100/1000M Ethernet
>      - 5x SATA3.0 7Pin Slot
>      - 2x USB3.2 Gen1 Host
>      - 3x USB2.0 Host
>      - WIFI/BT
>      - ...
> 
> Tested with eMMC/SDMMC/HDMI/USB/Ethernet/WIFI/BT module.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> Reviewed-by: Alexey Charkov <alchark@gmail.com>
> ---

---8<----

> +
> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	disable-wp;

disable-wp is not used for SDIO case, could be removed.


> +	keep-power-in-suspend;
> +	max-frequency = <150000000>;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	no-sd;
> +	no-mmc;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1m0_bus4 &sdmmc1m0_clk &sdmmc1m0_cmd>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		compatible = "brcm,bcm4329-fmac";
> +		reg = <1>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_host_wake>;
> +	};
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	full-pwr-cycle-in-suspend;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	no-sdio;
> +	no-sd;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	no-sdio;
> +	no-mmc;
> +	sd-uhs-sdr104;
> +	vqmmc-supply = <&vccio_sd_s0>;

Should use vmmc-supply to contrl the power, the same as EVB1[1].

[1] 
https://lore.kernel.org/linux-rockchip/1768524932-163929-5-git-send-email-shawn.lin@rock-chips.com/T/#u

> +	status = "okay";
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +};
> +



