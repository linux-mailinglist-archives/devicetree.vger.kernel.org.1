Return-Path: <devicetree+bounces-307149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +3emLE4/ImoBUQEAu9opvQ
	(envelope-from <devicetree+bounces-307149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:15:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 035DA644CF5
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:15:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=Y3Bvc45C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307149-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307149-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B4923015C80
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 03:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5039E3E3D8F;
	Fri,  5 Jun 2026 03:15:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49215.qiye.163.com (mail-m49215.qiye.163.com [45.254.49.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E494915C14F;
	Fri,  5 Jun 2026 03:15:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780629322; cv=none; b=HQBLN9069R8qa81Ib89A8l69RClCDkhPfr1xBQMzsOsJhoizsac3tKfonVLYTDI7Q2Dh5wOrF80byiBO7wfOT1uYEAb/ym6z7ilNkP98kmETUmfkCi02QoEzI+vEkQwj88/N3UbI80KPhvCbTJ0lZPxx0nuFEUl4bqMHFJHGbFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780629322; c=relaxed/simple;
	bh=KlSOQOMOtb8TK9P6Ea3DGVv/R2NSDERpT5EWmqMpOdg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mcn13MBTacf2K2R5oL17i1dnt7jI1JPFic0AF7cUGusgRYP6IvZyM2kNcKLj4YIhEG0J/nndwZSyx7aPqfrN3H3Y+1oU06Hebo3WZBV+X4vhYUeavg8cQLdr2PUKcefNwGWpYFFRHS1q01as89johjC7fdEPxELncha7+wm6kqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Y3Bvc45C; arc=none smtp.client-ip=45.254.49.215
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 412827f77;
	Fri, 5 Jun 2026 09:59:26 +0800 (GMT+08:00)
Message-ID: <e44b506e-e9d2-48e3-acea-ab28b7be9b37@rock-chips.com>
Date: Fri, 5 Jun 2026 09:59:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on the
 RK356x v1 IOMMU
To: Midgy BALON <midgy971@gmail.com>
Cc: Simon Xue <xxm@rock-chips.com>, tomeu@tomeuvizoso.net,
 ogabbay@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260604135255.62682-1-midgy971@gmail.com>
 <20260604135255.62682-7-midgy971@gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20260604135255.62682-7-midgy971@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9e9581b64203a7kunm811ff8bb36f5c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZTUtDVk1PTUMZSk1LSElDTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Y3Bvc45CIW1NaueqHEUkrrc13tHP57PqG6D2cUlho677APrf8hPJYnVsf6QyD0Zk7yVvbfA0ZPSedpeaoQA52ct4LgKHetxAmjcdQmZWwmJ+EqDR7sdzv54ClZGO6nzhL/GGcQNa0SaMChUshrzbZtTRabCXibPw3II/YdwRamU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=JhwLEVlbuMyJ2TM379GNJ3NbYdaquaVpgzGyK/FsXPQ=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:xxm@rock-chips.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307149-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 035DA644CF5

Hello Midgy,

On 6/4/2026 9:52 PM, Midgy BALON wrote:
> On the RK356x v1 IOMMU, RK_MMU_AUTO_GATING resets to 0x3. Bit 1 enables
> auto clock-gating of the page-table walker, so the walker's AXI master
> loses its clock between transactions; a TLB-miss page walk then never
> completes and the IOMMU is left stuck (PAGING_ENABLED, never IDLE).
> 
> Clear bit 1 (keeping bit 0, the slave-port gate) once paging is enabled
> so the walker keeps its clock. This is required for the RK3568 NPU MMU.
> 
> Signed-off-by: Midgy BALON <midgy971@gmail.com>
> ---
>  drivers/iommu/rockchip-iommu.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 4da80136933c4..e3d8b6e9ca12b 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -953,6 +953,18 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
>  
>  	ret = rk_iommu_enable_paging(iommu);
>  
> +	if (!ret) {
> +		/*
> +		 * RK356x v1 IOMMU: RK_MMU_AUTO_GATING bit 1 enables page-walker
> +		 * auto clock-gating; the walker's AXI master then loses its clock
> +		 * between transactions and a TLB-miss page walk never completes,
> +		 * leaving the IOMMU stuck (PAGING_ENABLED, never IDLE).  Clear
> +		 * bit 1 (keep bit 0, the slave-port gate) once paging is enabled.
> +		 */
> +		for (i = 0; i < iommu->num_mmu; i++)
> +			rk_iommu_write(iommu->bases[i], RK_MMU_AUTO_GATING, 0x2);
> +	}
> +
>  out_disable_stall:
>  	rk_iommu_disable_stall(iommu);
>  out_disable_clocks:

As I said, it is v2. Could you please try using the code below
instead and see if it works? Thank you.

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 0013cf196c57..89e3a83a0251 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -930,6 +930,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
        struct iommu_domain *domain = iommu->domain;
        struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
        int ret, i;
+       u32 auto_gate;
 
        ret = clk_bulk_enable(iommu->num_clocks, iommu->clocks);
        if (ret)
@@ -948,6 +949,10 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
                               rk_ops->mk_dtentries(rk_domain->dt_dma));
                rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
                rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
+
+               auto_gate = rk_iommu_read(iommu->bases[i], RK_MMU_AUTO_GATING);
+               auto_gate |= BIT(31);
+               rk_iommu_write(iommu->bases[i], RK_MMU_AUTO_GATING, auto_gate);
        }
 
        ret = rk_iommu_enable_paging(iommu);

-- 
Best, 
Chaoyi

