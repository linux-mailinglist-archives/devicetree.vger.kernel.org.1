Return-Path: <devicetree+bounces-271078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGl8BydBqGl6rQAAu9opvQ
	(envelope-from <devicetree+bounces-271078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:26:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AFB201691
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D9E79307A023
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262EB39B978;
	Wed,  4 Mar 2026 14:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="fx22D2kn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49231.qiye.163.com (mail-m49231.qiye.163.com [45.254.49.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C84D23C4FF;
	Wed,  4 Mar 2026 14:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633510; cv=none; b=JGvH42oE3QIRzZ4scEn6wUckTtL4KqgRBexl+g1QosOztJsUZauv7LhitQ43TziJsfCHIZKuPrpPALGZOD9s+K0J2PjZCPHc3Da04Wwj7xaFw7X+7kaiGUM5qq4H3qrYQ+D7L1xa/EqnHLNpNxaJLKG6jTIJEj286N8iXYLtEIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633510; c=relaxed/simple;
	bh=9hfLEMLEjEMc8uZwHodU+viTGo92h6eeEPI7jhWM9m8=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=eAFetZKzvlB+6hpzJ69CPP+4sT1ZlCrU//ZQKFILb/KZ0EvErAjirbE3meqjuHt8S3DMY8990zVb+lgSB3ZbmeLhyjkuNY9Ai495nSCLtsmux+RHHwGhl1clY7IHdFQ5RHxzZiVEs4AauOqWVJw/cBOfXMU50jH2VUAD5i0jzgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=fx22D2kn; arc=none smtp.client-ip=45.254.49.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35bef961c;
	Wed, 4 Mar 2026 21:36:16 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Martin Filla <freebsd@sysctl.cz>,
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v4 1/4] arm64: dts: rockchip: assign pipe clock to rk356x
 PCIe lanes
To: david@ixit.cz, Rob Herring <robh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, "elaine.zhang"
 <elaine.zhang@rock-chips.com>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
 <20260304-rk3568-bri-r2-pro-fix-pcie-v4-1-37abd7ba29d0@ixit.cz>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com>
Date: Wed, 4 Mar 2026 21:36:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-1-37abd7ba29d0@ixit.cz>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cb91043db09cckunm56444db0122910c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgYQ1ZIQkxLHxhNSUweTB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fx22D2kn242RR6kXvU/2drBjn1X7G1r4J6WP3RnZQe9shUfVHmlNHN60ywYZG39crbVuIKrwgDtFYU4oIbfReugUOmgXdVdgWDFlSsGQJbth/rPtmlUigRHhfyk4mNFvhSQ/F3n1Dk9z5rfkpYnAu08yC8Gs6u66zvNO7SXT20w=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=p/5CjFN5DQLnwXu9X2kNfSbkWVbxCQkt3uDqFMTtaNk=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: D0AFB201691
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271078-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[rock-chips.com,sysctl.cz,posteo.net,vger.kernel.org,lists.infradead.org,kernel.org,public-files.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,ixit.cz:email,posteo.net:email,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,fe260000:email,fe280000:email]
X-Rspamd-Action: no action

+ Elaine

在 2026/03/04 星期三 19:05, David Heidelberg via B4 Relay 写道:
> From: David Heidelberg <david@ixit.cz>
> 
> These clocks are used by PCIe lanes, but we're missing from the
> definition.
>

These missing clocks are needed but PCIe still work fine，because
the clk code for rk3568 didn't actually define them as real clock
gates. So they are always enabled thanks to the default value and out
of the radar of clk_disable_unused().

It's a bit suboptimal and probably need to be improved in clk-rk3568.c

For $subject patch,

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>


> Suggested-by: Charalampos Mitrodimas <charmitro@posteo.net>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>   arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 12 ++++++++----
>   arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  6 ++++--
>   2 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 658097ed69714..3bc653f027f1f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -155,9 +155,11 @@ pcie3x1: pcie@fe270000 {
>   		bus-range = <0x10 0x1f>;
>   		clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
>   			 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
> -			 <&cru CLK_PCIE30X1_AUX_NDFT>;
> +			 <&cru CLK_PCIE30X1_AUX_NDFT>,
> +			 <&cru CLK_PCIE30X1_PIPE_DFT>;
>   		clock-names = "aclk_mst", "aclk_slv",
> -			      "aclk_dbi", "pclk", "aux";
> +			      "aclk_dbi", "pclk", "aux",
> +			      "pipe";
>   		device_type = "pci";
>   		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
>   			     <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
> @@ -208,9 +210,11 @@ pcie3x2: pcie@fe280000 {
>   		bus-range = <0x20 0x2f>;
>   		clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
>   			 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> -			 <&cru CLK_PCIE30X2_AUX_NDFT>;
> +			 <&cru CLK_PCIE30X2_AUX_NDFT>,
> +			 <&cru CLK_PCIE30X2_PIPE_DFT>;
>   		clock-names = "aclk_mst", "aclk_slv",
> -			      "aclk_dbi", "pclk", "aux";
> +			      "aclk_dbi", "pclk", "aux",
> +			      "pipe";
>   		device_type = "pci";
>   		interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
>   			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 68b48606f6010..15741acac6274 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1020,9 +1020,11 @@ pcie2x1: pcie@fe260000 {
>   		bus-range = <0x0 0xf>;
>   		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
>   			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
> -			 <&cru CLK_PCIE20_AUX_NDFT>;
> +			 <&cru CLK_PCIE20_AUX_NDFT>,
> +			 <&cru CLK_PCIE20_PIPE_DFT>;
>   		clock-names = "aclk_mst", "aclk_slv",
> -			      "aclk_dbi", "pclk", "aux";
> +			      "aclk_dbi", "pclk", "aux",
> +			      "pipe";
>   		device_type = "pci";
>   		#interrupt-cells = <1>;
>   		interrupt-map-mask = <0 0 0 7>;
> 

