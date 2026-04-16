Return-Path: <devicetree+bounces-287727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLLiE68u4GnmdAAAu9opvQ
	(envelope-from <devicetree+bounces-287727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 02:34:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A6C4094D7
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 02:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D81D304D94C
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 00:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 305EF1B4138;
	Thu, 16 Apr 2026 00:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="FY4wyXPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731107.qiye.163.com (mail-m19731107.qiye.163.com [220.197.31.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940B022F01;
	Thu, 16 Apr 2026 00:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.107
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776299689; cv=none; b=So4tD/c1Vv/VOE5fEgUbHDsFP7FBeJ/L15U0rOZbnsGuoKpN4GmjS1LoT/nwmW8eDpAxgi3TkjBfU3UQOEPggbfUa/dsy5Si6s8DvdTDqlTku43VYiS6WbfulwZx0K+1F+zUrOQTWpkkem+yoaUdWJpunY2emQfyALym19ao604=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776299689; c=relaxed/simple;
	bh=1jAoubjJnmVgq0+B2OIwZJa2GJ6034gsrMgbkfWyrjs=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=H7x/QJpE5rFbQFiqHs+rUDHk9CYMTRcnPZXlCNCW6Eii7X/bZbsgbLsAL77fZDTP6d+4g0sJLn+5iQzf0HVJVZlrEvwVuhB0qE3Vd9auh6yjlJ4wlLCGpzLvycIr6QysEh8H72Sr41grnMe/2bcUNsBmyaxdsKFKwgK95FkTpzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=FY4wyXPy; arc=none smtp.client-ip=220.197.31.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3ae6eb0eb;
	Thu, 16 Apr 2026 08:29:26 +0800 (GMT+08:00)
Message-ID: <96fb5db4-0860-b412-11fd-ebcc0b34f887@rock-chips.com>
Date: Thu, 16 Apr 2026 08:29:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 2/2] mmc: dw_mmc: exynos: increase DMA threshold value
 for exynos7870
To: Kaustabh Chakraborty <kauschluss@disroot.org>,
 Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
References: <20260415-dwmmc-dma-thr-v3-0-31014d36b6ee@disroot.org>
 <20260415-dwmmc-dma-thr-v3-2-31014d36b6ee@disroot.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260415-dwmmc-dma-thr-v3-2-31014d36b6ee@disroot.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d93b1580809cckunm8bc0942b1a9e90
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU1NHlZKSEhLHhlDGB8YGRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FY4wyXPy7pPdpC1z4Oh5qnqUOrHKOYc1xgeKUNcNddoBfDq9QScon2T9WfCqWFexbTg2oG3bTWI+kHBkfLqU45+jpDOxjlPWiTVWadVqLRSlXCyuVcEOeAZzAnwruf5tJDuawE0F794L3wUZJE/pqFtBfiC3mErYtFsi4djKqRc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=b7fNNyLnGOcPPmzEQN5mA5MPrcDctArkyQ2ZUb33EbE=;
	h=date:mime-version:subject:message-id:from;
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
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.7.a.0.0.1.0.0.e.9.0.c.3.0.0.6.2.asn6.rspamd.com:server fail];
	TAGGED_FROM(0.00)[bounces-287727-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Queue-Id: E1A6C4094D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

在 2026/04/15 星期三 23:02, Kaustabh Chakraborty 写道:
> Exynos 7870 compatible controllers, such as SDIO ones are not able to
> perform DMA transfers for small sizes of data (~16 to ~512 bytes),
> resulting in cache issues in subsequent transfers. Increase the DMA
> transfer threshold to 512 to allow the shorter transfers to take place,
> bypassing DMA.
> 

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>   drivers/mmc/host/dw_mmc-exynos.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mmc/host/dw_mmc-exynos.c b/drivers/mmc/host/dw_mmc-exynos.c
> index 261344d3a8cfe..4b76b997ddc15 100644
> --- a/drivers/mmc/host/dw_mmc-exynos.c
> +++ b/drivers/mmc/host/dw_mmc-exynos.c
> @@ -141,6 +141,7 @@ static int dw_mci_exynos_priv_init(struct dw_mci *host)
>   		priv->ctrl_type == DW_MCI_TYPE_EXYNOS7870_SMU) {
>   		/* Quirk needed for certain Exynos SoCs */
>   		host->quirks |= DW_MMC_QUIRK_FIFO64_32;
> +		host->dma_threshold = 512;
>   	}
>   
>   	if (priv->ctrl_type == DW_MCI_TYPE_ARTPEC8) {
> 

