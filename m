Return-Path: <devicetree+bounces-271047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHI0FrkvqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:12:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0BA200259
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:12:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F79F3026146
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EBE828C037;
	Wed,  4 Mar 2026 13:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="PRtRvhz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49212.qiye.163.com (mail-m49212.qiye.163.com [45.254.49.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDAE35949;
	Wed,  4 Mar 2026 13:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.212
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629928; cv=none; b=UlX0eU0OALmZx+urFclQbKW8+4+DPHwiF0B7MUaOHytOJ4XG9l7SdVLzOa6UYIe2VRNOxgo3bABuf0s4lwHvo5KwM9lepWznZ8c052O8gb9sO3cLgQlLu5GrK7/yQRyi1nO7/neX0FaNVvs8HjSPf7sZkErJw0SWWwTNU7MH1yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629928; c=relaxed/simple;
	bh=3JHD3bjZYwJ9y33hK1aHWho7eGLBY+ew51ifmWxEY2o=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=SMRCXq1Cp1Ui8ETGWUq9TDWVt1/YN8v2+JV1so/UNgtIjRzMyVNIreMve7SIB3ZZXFK+GBpHSMxJFSmiJEcDOvPOpVfLQuTKnsxhtCi+M6S46gKzDEsENYbzEuOEMVhypbWjseGbTyuY3qCY+1U71KjFTqtCGSYqP44tNBigoBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=PRtRvhz6; arc=none smtp.client-ip=45.254.49.212
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35a5c15d4;
	Wed, 4 Mar 2026 08:48:13 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Martin Filla <freebsd@sysctl.cz>,
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] arm64: dts: rockchip: assign pipe clock to rk3568
 PCIe lanes
To: david@ixit.cz, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wunderlich <frank-w@public-files.de>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
 <20260303-rk3568-bri-r2-pro-fix-pcie-v3-1-af5a5207b0a1@ixit.cz>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <f46661cf-fc26-db4f-6161-e0e2734e796c@rock-chips.com>
Date: Wed, 4 Mar 2026 08:48:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-1-af5a5207b0a1@ixit.cz>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cb65117ae09cckunmf49cc13a1151d96
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhNSlZPHkoZGUkYGU4YGEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PRtRvhz6wGRr/itjTIq2BcGTEqdE5rluvLSsFHuK54Ko1NPmAae7MSeQkVTuYdFH7DMpBSKTFToPlWh71wnbjN3ilxdM+5QLJpg8Mpx+3/v1hHhkA5b5cgcekZ6Sl9tRs+VLz1sHAy8pN09pXPd7vNan18qfrjmbtOXIyqo7WVc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=LcEJtq7Z/7TAceUs8G8nMrrfpHpG1Zk+02PHiyg3v4s=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 3F0BA200259
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
	TAGGED_FROM(0.00)[bounces-271047-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[ixit.cz,kernel.org,sntech.de,public-files.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,posteo.net:email,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Action: no action

Hi David

在 2026/03/04 星期三 3:52, David Heidelberg via B4 Relay 写道:
> From: David Heidelberg <david@ixit.cz>
> 
> These clocks are used by PCIe lanes, but we're missing from the
> definition.
> 

Thanks for catching this.

Since you're already working on the PCIe clock definitions, would you
mind taking the opportunity to also add the missing pcie2x1 pipe clock
to the rk356x-base.dtsi in the same patch? This would keep the fixes 
complete and consistent.


> Suggested-by: Charalampos Mitrodimas <charmitro@posteo.net>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>   arch/arm64/boot/dts/rockchip/rk3568.dtsi | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
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
> 

