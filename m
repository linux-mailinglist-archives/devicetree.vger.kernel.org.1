Return-Path: <devicetree+bounces-277763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIE0OObuu2liqQIAu9opvQ
	(envelope-from <devicetree+bounces-277763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:41:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D012CB455
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D7813020A72
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD7E376483;
	Thu, 19 Mar 2026 12:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="jhsRo+Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49230.qiye.163.com (mail-m49230.qiye.163.com [45.254.49.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701FE37DE9C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.230
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923924; cv=none; b=HWplkNR4UE9xurWx1zs5Nchl2ylkUQSbcFHFgDk1KgeX1kSWGL/wwehww5Yhu0tg4LKJ4d9tX+yXCEcZYACAQ2wc2aBHPDvnOLF0cJtrw0nm1wRFR+TpkCe9rSX3//GYd76bBzJ9x8gbsxu1Zn3uj3MMxsvPgHg3BvEoALzYa+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923924; c=relaxed/simple;
	bh=lx3jx3mJBAE19MBhBXIKR0noFrq6K51hrNqDV1g9TKg=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=ruEScTUKOiqsrToTFTxvBC+8Bkb7mgjvuTXUu9olBfkrOvyvOOIWPuGXV67lCkyTb89/aNQHUue9dqNf7Z+EWJURn5XDQO4leqZUgq1SMnjmdLVEkbtELTNDSRrHjDA4r/iSWyRS28woP2VQcTskP5P5dwJ8wUIGzWci8IX5ilg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=jhsRo+Tk; arc=none smtp.client-ip=45.254.49.230
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3792bf95a;
	Thu, 19 Mar 2026 20:38:33 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: MidG971 <midgy971@gmail.com>
References: <20260319102247.32260-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <21dda954-8821-d6fa-a17a-68c4a256910f@rock-chips.com>
Date: Thu, 19 Mar 2026 20:38:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260319102247.32260-1-midgy971@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d061accfa09cckunm4b242d8a662e73
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5JGFZLHU1JTh5IThoeTEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=jhsRo+TkAin0Ilaq5fdC01jbcgKkLr7LOnjclk26cla4Cr8i2/ckUBhoZn1z/Rep1vNsN9y7MtJ99IYRlwQ5A8554w1QOMRA115FHgqDggZSBAOzxJvWbF8ylU7obMdunFs0BR/7uyph+oWDqywpk8WU11c2vx2eMw1uOpG08hE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=91vt8+tPv/jxW775EoJRQVELCIpxi7wPQqegSZPeGGo=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277763-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,infradead.org:email,infradead.org:url]
X-Rspamd-Queue-Id: 64D012CB455
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

在 2026/03/19 星期四 18:22, MidG971 写道:
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
> pipe and reference clocks, matching the approach used in
> rk3588-rock-5-itx.dts.

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> 
> Assisted-by: Claude:claude-3-opus
> Signed-off-by: MidG971 <midgy971@gmail.com>
> ---
> 
> Changes since v2 [1]:
>   - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shawn)
>   - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks
>     override (Shawn, referencing David's patch [2])
> 
> Changes since v1 [3]:
>   - Drop phy-supply approach entirely (Jonas, Shawn)
>   - Model PI6C20100 as gated-fixed-clock instead
>   - Wire reference clock to pcie3x2 controller
>   - Follow pattern from rk3588-rock-5-itx.dts
> 
> [1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971@gmail.com/
> [2] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
> [3] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971@gmail.com/
> 
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 21 ++++++++++++++++++++-
>   1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> index c5f67dd6dfd9..1a2b3c4d5e6f 100644
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
> @@ -553,6 +562,15 @@
>   };
> 
>   &pcie3x2 {
> +	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
> +		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> +		 <&cru CLK_PCIE30X2_AUX_NDFT>,
> +		 <&cru CLK_PCIE30X2_PIPE_DFT>,
> +		 <&pcie30_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "pipe", "ref";
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

