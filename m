Return-Path: <devicetree+bounces-265403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MEpCwFNj2nnPgEAu9opvQ
	(envelope-from <devicetree+bounces-265403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:10:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FBA137D78
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:10:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1FBE2301BA60
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8063E361677;
	Fri, 13 Feb 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="gqR+K2yI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m21470.qiye.163.com (mail-m21470.qiye.163.com [117.135.214.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D153E34CFC3
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.214.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770999034; cv=none; b=kJkluH7UmQgsZzKK9QC9jz5jZaqPksYZFO6RbMmmWnkIDHNrFe300Egsq49IZwDuPJDPS9/dAbXePV8I00/NgTpL9VgKKx69381duZfP4GgJ8VS2Tw4ix7PEUEfWeO+agEc0VSKpOLtiAB+ortpWL2xQyF6hVBCEF0sDNF1uqUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770999034; c=relaxed/simple;
	bh=9VAwqLi17ylXUyOT91/z740b9lfBf6SKIHMYfyMmoXs=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=kYrX4HXtmGb7iLYWgIXOj0cu86tzSynadz+FRA4xT2p2RhQyqrwDB1QfZ3KZMrcHDlvCcQF0pbm3Q3mfRoooW6L5ITvHjcyUxH0lhuTbzxXJzizuCWp9Y48A1bj2jr2LBzVQmCB/U23xAKginpoq7flK1t+mmcD7lzSDspDWs5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=gqR+K2yI; arc=none smtp.client-ip=117.135.214.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 341affb18;
	Sat, 14 Feb 2026 00:10:26 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 Claude <noreply@anthropic.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3b: Add phy-supply to
 pcie30phy
To: MidG971 <midgy971@gmail.com>, linux-rockchip@lists.infradead.org
References: <20260213151452.535527-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <fe4c9352-7bf9-70cb-97ed-322fc739f409@rock-chips.com>
Date: Sat, 14 Feb 2026 00:10:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260213151452.535527-1-midgy971@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c57c491fb09cckunm917520542f2628
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09PS1ZOT0lLGUsYHRoeQkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gqR+K2yI1W/oIHIOEw+qH8se7uS+4+70umwQ6eF5WLknBtiKlVGVHdAoCyK0SdV1iSUyCy6YpyryQBbT/G8nuq+up1qxS7bSgKBac7RJbCLZ4K1AlfUXQd2oQLNEPEvYRVeOlxSNAqctiz/JlvMllF/h+eEU1IjNAEdvO9/77JA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=lQCtykSlfRzqEm/DJfyTijSzAL8gm65mvzEpV44+OgM=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-265403-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:url,infradead.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,anthropic.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: 19FBA137D78
X-Rspamd-Action: no action

Hi

在 2026/02/13 星期五 23:14, MidG971 写道:
> The PCIe 3.0 PHY requires its power supply regulator to be enabled
> before initialization. Without the phy-supply property, the PHY
> driver does not ensure the regulator is enabled, causing SRAM
> initialization to timeout with "lock failed" errors:
> 
>    phy phy-fe8c0000.phy.1: phy poweron failed --> -110
>    rockchip-snps-pcie3-phy fe8c0000.phy: PCIe3PHY lock failed 0x6890000
>    rockchip-pcie fe280000.pcie: phy init failed: -110
> 
> This results in NVMe devices in the M.2 slot not being detected.
> 
> Add phy-supply referencing vcc3v3_pi6c_03 regulator (which controls
> the PI6C PCIe clock generator power via GPIO0_D4) to ensure proper
> power sequencing during PHY initialization.
> 
> Fixes: 846ef7748fa9 ("arm64: dts: rockchip: Add Radxa ROCK 3B")
> Signed-off-by: MidG971 <midgy971@gmail.com>
> Co-developed-by: Claude <noreply@anthropic.com>
> Signed-off-by: Claude <noreply@anthropic.com>

Should put your SOB at last.

> ---
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> index c5f67dd6dfd9..a1b2c3d4e5f6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> @@ -404,6 +404,7 @@ &pcie2x1 {
>   };
> 
>   &pcie30phy {
> +	phy-supply = <&vcc3v3_pi6c_03>;

As a fix which need to be backported, it looks fine for just one-line
change.

However, the whole commit message is misleading. power supply for
pcie30phy is powred up with all other phys' when booting, for instance,
USB, otherwise all IP using PHY should not work, not just PCIe. So 
actually it's not the power but the input refclk, and apprently pi6c
is a 100MHz clock generator which was designed to be a regulator by
mistake in the first place.

If you would like to clean it up later, you could use a 
gated-fixed-clock like:

https://lore.kernel.org/linux-rockchip/35e97a41-b88b-f526-351f-d4c5f70ee4e9@rock-chips.com/T/#u


>   	status = "okay";
>   };
> 
> --
> 2.39.5
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

