Return-Path: <devicetree+bounces-271062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO9gFBs8qGl6rQAAu9opvQ
	(envelope-from <devicetree+bounces-271062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:05:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52918200F20
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:05:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D08C30107FB
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B5D3168EE;
	Wed,  4 Mar 2026 13:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Ktf65g5f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3281.qiye.163.com (mail-m3281.qiye.163.com [220.197.32.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3CC31813A
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772632656; cv=none; b=ElTAvJsh0h5jV8oLlcOLXjCELJ92PyxGfCbfE5u8Z+EoM4STmzZ0RRKpAkSlZChmnpekCr9C562nFp7eEw6OPI0otaHfZT9a4jbEBf8tWnOWWaUwO2N64Ledsqbva1ey0QXRT8LrXqvuy9Ub8QX0ZTM8FZ5MoUtSTdeIdzGs/tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772632656; c=relaxed/simple;
	bh=hB04xjJTpsWT814j7jrbWKAghwTr8oRztbxRdcCrF7I=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=pD8jNFl3tyzZa4IRybAAqky1zTyauMsxpWGMO50y66a4QcTxluzLpAPzna+VacLpyypug0NjpUXs1hBUEtDiv/rWAVn4T+JTtPMtrF90Y4xE9wMKw+Z2CKUcoDk+QyIiUcQ3dpxMSRNC0eI2te8iCLggSyS+RxOH20XmPPnnqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Ktf65g5f; arc=none smtp.client-ip=220.197.32.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35bf2f09e;
	Wed, 4 Mar 2026 21:57:28 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 Claude <noreply@anthropic.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: MidG971 <midgy971@gmail.com>, linux-rockchip@lists.infradead.org
References: <20260213151452.535527-1-midgy971@gmail.com>
 <20260304132957.684616-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <7008e941-e4b0-a060-1cd7-55070fd5831f@rock-chips.com>
Date: Wed, 4 Mar 2026 21:57:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260304132957.684616-1-midgy971@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cb923aba109cckunm391357bd122b677
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhhOTFYdHhpLTx9PQ0IfShlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ktf65g5fYYif+jmoKTPl+TFmIitwgG8hTrUcgGlxKEahlcwdTROmEuIxYNX4z1HYZJf8N5bUku/XmysBMoLD/Ox5/h7rzbSo/hKOOXLnXdL7nhB7tAGBmz3hsTRmQbu0MwVUTDAx1HSE1zegxhhNvLc984dud6RVqTaRnFuzGJA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wnGfWYNz/B8Z/STQ+nxDMrIaxkLZdCmgqwbc8lykD5c=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 52918200F20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271062-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,infradead.org:url,infradead.org:email,anthropic.com:email,lwn.net:url]
X-Rspamd-Action: no action

在 2026/03/04 星期三 21:29, MidG971 写道:
> The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
> provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
> This chip is currently modeled only as a fixed regulator
> (vcc3v3_pi6c_03), with no clock output representation.
> 
> The PI6C20100 is a clock generator, not a power supply. Model it
> properly as a gated-fixed-clock, following the pattern established
> for the Rock 5 ITX and other boards with similar PCIe clock buffer
> chips.
> 
> The regulator node is kept as-is since it controls the power supply
> to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node
> references this regulator as its vdd-supply and provides a proper
> 100MHz clock output. The pcie3x2 node is updated to include the
> reference clock, matching the approach used in rk3588-rock-5-itx.dts.
> 
> Signed-off-by: Claude <noreply@anthropic.com>

IIUC, you are using Claude to help generate this patch, please
describe it properly, for example,

Co-developed-by: Claude claude-opus-4-20250514  [1]
or
Assisted-by: Claude:claude-3-opus [2]

[1] https://lwn.net/Articles/1031473/
[2] https://docs.kernel.org/process/coding-assistants.html	

> Signed-off-by: MidG971 <midgy971@gmail.com>
> ---
> 
> Changes since v1 [1]:
>   - Drop phy-supply approach entirely (Jonas, Shawn)
>   - Model PI6C20100 as gated-fixed-clock instead
>   - Wire reference clock to pcie3x2 controller
>   - Follow pattern from rk3588-rock-5-itx.dts
> 
> [1] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971@gmail.com/
> 
>   .../arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 18 +++++++++++++++++-
>   1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> index 69001e4..24befc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> @@ -56,7 +56,16 @@
>   		};
>   	};
> 
> -	/* pi6c pcie clock generator */
> +	/* PI6C20100 PCIe reference clock buffer (100MHz) */
> +	pcie30_refclk: pcie-clock-generator {
> +		compatible = "gated-fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +		clock-output-names = "pcie30_refclk";
> +		vdd-supply = <&vcc3v3_pi6c_03>;
> +	};
> +
> +	/* PI6C20100 power supply - active-high GPIO0_D4 */
>   	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
>   		compatible = "regulator-fixed";
>   		enable-active-high;
> @@ -553,6 +562,13 @@
>   };
> 
>   &pcie3x2 {
> +	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
> +		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> +		 <&cru CLK_PCIE30X2_AUX_NDFT>,
> +		 <&pcie30_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "ref";

There is a missing pipe clock which should be fixed. Please
refer to David's patch[3].

[3] 
https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1

>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pcie30x2m1_pins>;
>   	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
> --
> 2.39.5
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

