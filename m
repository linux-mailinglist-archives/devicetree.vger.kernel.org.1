Return-Path: <devicetree+bounces-276413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Uu5vOUmjuGmxgwEAu9opvQ
	(envelope-from <devicetree+bounces-276413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:41:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE512A2509
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11086301F1A5
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 00:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D3F221264;
	Tue, 17 Mar 2026 00:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cUT7gP9v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15596.qiye.163.com (mail-m15596.qiye.163.com [101.71.155.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79915168BD;
	Tue, 17 Mar 2026 00:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.96
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773708074; cv=none; b=DgmpRKtpWCqFM8xYu3SUT2lUnjbfIqkuj9Wu3lm/B9tTpyIqDStzLW29LZYbMiwnj4E6gCB+nS3UtvRw+6osPPEjfgqIq9pHJYhPlFmnsJQp/muy5euEBJIsklVjx12m43e3p7F2jO6gfmHW6lzFEECLkewjPvX9PArCEhWGFY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773708074; c=relaxed/simple;
	bh=lilTe0bvS3Uc+NqmL9ZMXFwkYh1qGomQvuDOl1Vm6vo=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=Wnvks9LEsk6br8iJjLKA71p+8i1WpgHqWoXd8X+P6mULQNnuD+xiHvzWwh4W7oN6dLw1ONqJFuJqunZjGaTsPydgQLY6vGN9ghWqvLDxw5OoELo2N1TQh2wcibh1prhas5kV7Phyqx/12BVNjXgrlqKMSOKQzuYdP2ume4g3lng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=cUT7gP9v; arc=none smtp.client-ip=101.71.155.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372d36eb6;
	Tue, 17 Mar 2026 08:35:52 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20260316073621.39027-1-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <96d6664a-5d6d-64b3-1999-b15579ff1aa4@rock-chips.com>
Date: Tue, 17 Mar 2026 08:35:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260316073621.39027-1-linux.amoon@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cf938725f09cckunma9077e0e407f16
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUweGlYZGBpOTRhNSBlKTU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cUT7gP9v69WpsBFTtIuAAaSFK2LHAQxbA+b2qLMh5V3b08DXBWksI99YAkTl4qAKFBFgbF3BMx24jBTLDkK4x7kJuBAzLSuzOJaLT4auWIChio3RSuJQwLnGfhpRvmREAh7bdr4wWNjm8e3D1rKTonbw4iTmRWLDThf3hVqLJdk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uFg8XXcHtxFALcYZA+0V2jzBhaeA7BFfLpChxVZJYMw=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276413-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,sntech.de,radxa.com,collabora.com,cknow.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,radxa.com:url]
X-Rspamd-Queue-Id: 4AE512A2509
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

在 2026/03/16 星期一 15:33, Anand Moon 写道:
> Add supports-clkreq and the corresponding pinmux configurations for PCIe
> ASPM L1 substates on the Rock 5B, 5B+ and 5T.
> The supports-clkreq flag informs the PCIe controller that the hardware
> routing for the CLKREQ# sideband signal is present. This enables support
> for PCIe ASPM (Active State Power Management) L1 substates, allowing for
> better power efficiency.
> 
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Rock5b schematics.
> [1]  https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf
> v2: drop the clkreq pinctrl for pcie3x4 as suggeested by Shwan Lin.
> [2] https://lore.kernel.org/all/20260311115502.7353-1-linux.amoon@gmail.com/
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> index b3e76ad2d8694..bf4a1d2e55ca3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

Thanks.

> @@ -468,7 +468,8 @@ map1 {
>   
>   &pcie2x1l0 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie2_0_rst>;
> +	pinctrl-0 = <&pcie2_0_rst>, <&pcie30x1m1_0_clkreqn>;
> +	supports-clkreq;
>   	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
>   	status = "okay";
> @@ -476,7 +477,8 @@ &pcie2x1l0 {
>   
>   &pcie2x1l2 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie2_2_rst>;
> +	pinctrl-0 = <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>;
> +	supports-clkreq;
>   	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
>   	status = "okay";
> 
> base-commit: f338e77383789c0cae23ca3d48adcc5e9e137e3c
> 

