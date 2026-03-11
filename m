Return-Path: <devicetree+bounces-274055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Jb4J+tfsWl/uQIAu9opvQ
	(envelope-from <devicetree+bounces-274055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:28:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FB02639AC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15F623041A48
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D602B3DF01A;
	Wed, 11 Mar 2026 12:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="IQUVnrCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973183.qiye.163.com (mail-m1973183.qiye.163.com [220.197.31.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872393E024B;
	Wed, 11 Mar 2026 12:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232014; cv=none; b=V3iEYQJf5UeyXRfD+HRnniKT7Z32BlP48CJkfy09gBRZf3eq/Haoz5AhIWy7uudSkDJC7Fo4J7FLeADgRC1GL7F0a7qcJUWWiFu1vln6Bz20SnHnL/a4geI/IUPxq2vzTPjP7R2hXaApzBAra1Bv5ZQT897PUCQnGdXjcaLDXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232014; c=relaxed/simple;
	bh=XQGI1ENCwuEsPGc3+yLRVIrFnw6gSrt8SqSKFjTUaWc=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=k+tyHX5VoUejNZzj7x5v9pEB+HM8lHS15mBTvAkSznaEFUKkZyRVwlgb+Aycluj17DA0d0+trEKSbudhj67XCcKMJW/FjyVopUPug9AWACZjglQcUqr5W9ktqWFtF601l6o1/rjvn1FY943lU4X6hEyBjrN5DCmwqDlnfX0P/SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=IQUVnrCs; arc=none smtp.client-ip=220.197.31.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3690f1e4f;
	Wed, 11 Mar 2026 20:26:39 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
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
References: <20260311115502.7353-1-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
Date: Wed, 11 Mar 2026 20:26:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260311115502.7353-1-linux.amoon@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cdcdd0ba109cckunm09c8cc8ab954
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgZSlYdSxpISh1LTB1PT01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IQUVnrCsWYuho2lAfthZKL7Tx1mLOdYa2UM6uQxSpFDizuhj5MMFCWy7hk+dGUUxUUWaqnKPshtkP+u/hNQdQV6byz/osrnoW38z6uqZsakvA7mHOwR3dPnFkNBvPO+wwZbzHh7Z/y8o7uhuPrmKRId2rLj+N3ADyvqKuOGnJJ8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iUYM2B+qv2inDj3WitR8Iuse9o1Siv8UF7Rqo5SG/P4=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 02FB02639AC
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-274055-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,radxa.com:url]
X-Rspamd-Action: no action

在 2026/03/11 星期三 19:54, Anand Moon 写道:
> Add supports-clkreq and the corresponding pinmux configurations for PCIe
> ASPM L1 substates on the Rock 5B, 5B+, and 5T.
> The supports-clkreq flag informs the PCIe controller that the hardware
> routing for the CLKREQ# sideband signal is present. This enables support
> for PCIe ASPM (Active State Power Management) L1 substates, allowing for
> better power efficiency.
> 
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---

It would be better if you could put the link to the schematic here(under
"---") for folks easy to review. I paste it here for reference：

https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf

>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> index b3e76ad2d869..668b19c05f7e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
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

Isn't it m1(PCIE20_1_2_CLKREQn_M1_L in the schematic)?

> +	supports-clkreq;
>   	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
>   	status = "okay";
> @@ -488,7 +490,8 @@ &pcie30phy {
>   
>   &pcie3x4 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3_rst>;
> +	pinctrl-0 = <&pcie3_rst>, <&pcie30x4m1_clkreqn>;

The pin is correct but I don't think it would support
L1 substates because the refclk is out of control. For
any refclk coming from external clock generator, clkreq#
should connect to the enable pin of the clock generator.

> +	supports-clkreq;
>   	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&vcc3v3_pcie30>;
>   	status = "okay";
> 
> base-commit: b29fb8829bff243512bb8c8908fd39406f9fd4c3
> 

