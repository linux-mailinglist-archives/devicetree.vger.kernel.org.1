Return-Path: <devicetree+bounces-242904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 16982C910B3
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B8AB234E035
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 07:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC432DCC1F;
	Fri, 28 Nov 2025 07:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Hah5/jGe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49211.qiye.163.com (mail-m49211.qiye.163.com [45.254.49.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834B71EEA31;
	Fri, 28 Nov 2025 07:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.211
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764315390; cv=none; b=d5olHkuUkeME39e9nV1m9ndzeARIwjIREvOpQFhXL/Ji/OMg4q+T0o57uRQnGb6iOrGZ92jG6wZJFZl470WqQi4XYOt5e9swJbDgFqCnPi7FCDtwalfSyRPm1NdExAH7l0kUDr6x+7QP9UxrxflOiIEBF1L/fJPXYY80LpQ27qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764315390; c=relaxed/simple;
	bh=7iv4p8/MnmN787ZlveUgRAuKwTOuKiaDg0evFqoMIxs=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kuM4r3mkIWJShbIC1tNebYqVzipxYQ/PDE4gRxyoQ7zm/eaaNcbdQiBQURpIv6TONvnOigJWhlfIx1S+XfNHdI4E78rdUc+znZxkiE6uD/oZS8irtcP29dC1Zz+vi/QOrOQMjnxSa4nZofDNPvYrj09ng+cDuGfDUREGAKThfms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Hah5/jGe; arc=none smtp.client-ip=45.254.49.211
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b3cd4919;
	Fri, 28 Nov 2025 15:31:08 +0800 (GMT+08:00)
Message-ID: <7797ac67-6f57-409a-83c8-0ca21a2d2475@rock-chips.com>
Date: Fri, 28 Nov 2025 15:31:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/2] iommu/rockchip: Use devm_clk_bulk_get_all() to get
 multiple iface clock
To: Chaoyi Chen <kernel@airkyi.com>
References: <20251128071322.92-1-kernel@airkyi.com>
 <20251128071322.92-3-kernel@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251128071322.92-3-kernel@airkyi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ac95f769b09cckunmc7305c7c6e1258
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJDQ1ZIGkMfHkxJHh5PThlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Hah5/jGePtDDELU7fuGQKBjUJX4Xv8n9cmCZg6hdNhAIQyy4LLFccBZd+upwrE+eU0toqzG4hi1Li9+AkKdYVQ3r7vxE/4B3rbCMwOnMuKQz9GblxsL/s9SZTJlMMnlV1yCZdLWSHPdgXtjLc1xVs/94ztH64ZshQpxgWDfH+z0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=YhlZQtQGGH+o1PC9FG1bXh4bzpsQsyhDPSlIK1P1gUw=;
	h=date:mime-version:subject:message-id:from;

在 2025/11/28 星期五 15:13, Chaoyi Chen 写道:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The iommu found on RK3576 NPU and RK3576 RKVDEC contain 4 clock.
> 
> Just use devm_clk_bulk_get_all() to get all the clocks and use them.
> 

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v2:
> - Change comment.
> 
>   drivers/iommu/rockchip-iommu.c | 20 ++++----------------
>   1 file changed, 4 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 0861dd469bd8..76f71fb679f8 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -93,11 +93,6 @@ struct rk_iommu_domain {
>   	struct iommu_domain domain;
>   };
>   
> -/* list of clocks required by IOMMU */
> -static const char * const rk_iommu_clocks[] = {
> -	"aclk", "iface",
> -};
> -
>   struct rk_iommu_ops {
>   	phys_addr_t (*pt_address)(u32 dte);
>   	u32 (*mk_dtentries)(dma_addr_t pt_dma);
> @@ -1236,25 +1231,18 @@ static int rk_iommu_probe(struct platform_device *pdev)
>   	iommu->reset_disabled = device_property_read_bool(dev,
>   					"rockchip,disable-mmu-reset");
>   
> -	iommu->num_clocks = ARRAY_SIZE(rk_iommu_clocks);
> -	iommu->clocks = devm_kcalloc(iommu->dev, iommu->num_clocks,
> -				     sizeof(*iommu->clocks), GFP_KERNEL);
> -	if (!iommu->clocks)
> -		return -ENOMEM;
> -
> -	for (i = 0; i < iommu->num_clocks; ++i)
> -		iommu->clocks[i].id = rk_iommu_clocks[i];
> -
>   	/*
>   	 * iommu clocks should be present for all new devices and devicetrees
>   	 * but there are older devicetrees without clocks out in the wild.
>   	 * So clocks as optional for the time being.
>   	 */
> -	err = devm_clk_bulk_get(iommu->dev, iommu->num_clocks, iommu->clocks);
> +	err = devm_clk_bulk_get_all(dev, &iommu->clocks);
>   	if (err == -ENOENT)
>   		iommu->num_clocks = 0;
> -	else if (err)
> +	else if (err < 0)
>   		return err;
> +	else
> +		iommu->num_clocks = err;
>   
>   	err = clk_bulk_prepare(iommu->num_clocks, iommu->clocks);
>   	if (err)


