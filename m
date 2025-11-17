Return-Path: <devicetree+bounces-239471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B548C653C6
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 613064EB0C0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F922F2619;
	Mon, 17 Nov 2025 16:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+akTNWk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C1C2D46DB
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 16:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398082; cv=none; b=Bmp6j5ZEvcTrNNfMzv9QvWeUTHFG88kW4Hf6Fc8zr42FSbRlqYVhz5Jmdw/AgY5y7X6VNbYmXvfwFaZ39VY86s8WuuyDeH09pzXhoA30S4vOh92ePmvsQsHx4Lmq8m4Xg3gfKqaavNwuzVSNblxYyYW5zvzsK/gBYM1xnPV0au4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398082; c=relaxed/simple;
	bh=oF+JsxxvOAY8DFWEQ8dt8SvjetGkL8w7SNRTWQCgVVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W/1R9VZI5VpM0W+p9ivRQTl8JT1YrAl900Qi8n6AxTN83Jnu2edYwc1ei3qLmkqnWEZYryIk/CyUNWVobLrZqNnQgWktRF26BOB7FtaSPkalwEHagrydYccovYbPbJc+xDjPS0dopmBA9/LWM4YAQpi6p8Ai6yv1C62J4227g9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+akTNWk; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2956d816c10so47678745ad.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 08:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763398080; x=1764002880; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tx5pCt6UywoMhHGKyGxCGcYK9d/RLDNyjfLAZJe7BNY=;
        b=Y+akTNWkUDbu4BXjwnZJmvO+ROx5ymIXRgM9/Y1In3xOflbcHBk5nQbaSA0/zQ7yiM
         wz2H2S0Ai9bnNyf5vqceY+szxrPpBYMN6ukI8GUwXmAQRv033OQ8jPNFFqY8roX6I5eo
         HNDsFBM00hDpKYXKJE/04tawNgfKpbxFjBzz+SZwDPUXuEKR2rMoQpBgJEL5eqEiZBdP
         fEgpzZ5M3eDeQRcAYE7KJOtXTokkYtK+wAoq3RJS8xLMDmEQbC/bCYKGFO9ni4W9Ly5M
         nztKZ7RB1H++P3U5qNxkLBmx6dy99oPHxIgZzB/jbuEpUdAhJnpUEPqiqI2Mk1xchTAD
         8DBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763398080; x=1764002880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tx5pCt6UywoMhHGKyGxCGcYK9d/RLDNyjfLAZJe7BNY=;
        b=QNqtqHkJDmVP8ashv+c1gHqtookXd5WRakgCom11k8dGQ+GbXBjIb4io/hCebwOW5o
         UfspFR9IIPvGIXAv7e4/IY3rAsqORaJqPEuY2KJ2/7I3Top+KcKj0yJOY0HRPYLWnadw
         RsPuYbDOJWfZ0EFYUunXBPkffYWfLsOU0yMTqAZ58AuKyaN1/W3WcZG/duh63jAf2VJJ
         QZ3f1Lxcfwo1wwQ/8IFlC3xFpUx5QufQl8E93J1apaAbHO4wXRehEYPLdGKT7rX1c9sw
         d8475GzmfdQXTs54luUx+5DjhUiIaj22HAd+kRnX4dvg4B7uYaeW3bE8vykz6Fn9yt53
         Aqdg==
X-Forwarded-Encrypted: i=1; AJvYcCUzB9sNJu6Bb1+Y8BSk/+yWC8+3j+TstPzs0iW+Xf0vpXt8RYUeuN8FlMvneavsv8sdj0o0TalnietY@vger.kernel.org
X-Gm-Message-State: AOJu0YyBE7+arsCeWOlhp6t4Xc+R8Mj2hKJAqhdpgs/WIph7AUULIxPC
	82/HsHW5Iz3A6VPWuylqZzN24bRANnJ+OUIe5S4Q6Lvnhi6l89nv+ARpJfPMGeabmoM=
X-Gm-Gg: ASbGncs672FS8sR7VRng6RPuzgeSBStwF3q7S/EZTaRuGyuuWXv/uDXEnkmGliokgq2
	M9Qf3bfAuY2JPHdPmTc/9Z32bRLVG+WiuO3907JhrSMgpa2iE9/USYHRtLkIozVfaSMcNjW6+69
	l7F8nOhBcxtbgewqbMz9h4ZO4PL0sHn/yJfnVFuDv9YUYfshVgIpyqS/0EUW4MmntBcME+S3Xdc
	j9RQa6fjbHbI0xJgtHbLAkJ54Czfgfltczxdwe8/sBngyIga1QVx5PSuA/vdqrcX6w2UfdHo0bt
	8hFkoJz5exGKCoSO9N6iS04+DENqGYvBHYLGBcB/qN+DwFdccpxgGne2DzbKDAMLO28SpwD7bot
	IHfakOBxX4SFNVMvFtqoPG/As+gHv/UpXe+RI6LT7Cbu4eWc4/LN8aDt83gdlcNb7lp1meeHWVC
	4kMzH2FpKrjQmiQQ==
X-Google-Smtp-Source: AGHT+IFOJfgBMktrjQ4WzqODR90mVSuboNdF+0l09QpBE2YhVUppij7GQo1/v8CGTNYHNVGS0fdYMw==
X-Received: by 2002:a17:903:24f:b0:290:9332:eebd with SMTP id d9443c01a7336-2986a6bc404mr159661345ad.10.1763398079908;
        Mon, 17 Nov 2025 08:47:59 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:df44:9b1b:6b35:3fb0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2bed16sm144069755ad.86.2025.11.17.08.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 08:47:59 -0800 (PST)
Date: Mon, 17 Nov 2025 09:47:56 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Huayu Zong <huayu.zong@mediatek.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v3 1/3] remoteproc: mediatek: Support platform reg
 offsets in mtk_scp_of_data
Message-ID: <aRtRvBZ1zaxW0N20@p14s>
References: <20251110101342.24261-1-huayu.zong@mediatek.com>
 <20251110101342.24261-2-huayu.zong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110101342.24261-2-huayu.zong@mediatek.com>

Good day,

On Mon, Nov 10, 2025 at 06:13:29PM +0800, Huayu Zong wrote:
> Some platforms only differ in HW register offsets, but can share
> the same API. Refine struct mtk_scp_of_data to allow setting HW
> register offsets via platform data, enabling better code reuse
> and easier support for new platforms.
> 
> Signed-off-by: Huayu Zong <huayu.zong@mediatek.com>
> ---
>  drivers/remoteproc/mtk_common.h |  5 +++++
>  drivers/remoteproc/mtk_scp.c    | 18 ++++++++++++++++--
>  2 files changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
> index fd5c539ab2ac..d45480ad332e 100644
> --- a/drivers/remoteproc/mtk_common.h
> +++ b/drivers/remoteproc/mtk_common.h
> @@ -112,6 +112,11 @@ struct mtk_scp_of_data {
>  
>  	u32 host_to_scp_reg;
>  	u32 host_to_scp_int_bit;
> +	u32 scp_to_host_ipc_clr_reg;
> +	u32 scp_to_spm_ipc_clr_reg;
> +
> +	u32 scp_secure_domain_reg;
> +	u32 scp_domain_value;
>  
>  	size_t ipi_buf_offset;
>  	const struct mtk_scp_sizes_data *scp_sizes;
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 10e3f9eb8cd2..c3c37cae933a 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -236,7 +236,7 @@ static void mt8192_scp_irq_handler(struct mtk_scp *scp)
>  		 * MT8192_SCP2APMCU_IPC.
>  		 */
>  		writel(MT8192_SCP_IPC_INT_BIT,
> -		       scp->cluster->reg_base + MT8192_SCP2APMCU_IPC_CLR);
> +		       scp->cluster->reg_base + scp->data->scp_to_host_ipc_clr_reg);
>  	} else {
>  		scp_wdt_handler(scp, scp_to_host);
>  		writel(1, scp->cluster->reg_base + MT8192_CORE0_WDT_IRQ);
> @@ -561,7 +561,7 @@ static int mt8188_scp_c1_before_load(struct mtk_scp *scp)
>  static int mt8192_scp_before_load(struct mtk_scp *scp)
>  {
>  	/* clear SPM interrupt, SCP2SPM_IPC_CLR */
> -	writel(0xff, scp->cluster->reg_base + MT8192_SCP2SPM_IPC_CLR);
> +	writel(0xff, scp->cluster->reg_base + scp->data->scp_to_spm_ipc_clr_reg);
>  
>  	writel(1, scp->cluster->reg_base + MT8192_CORE0_SW_RSTN_SET);
>  
> @@ -575,6 +575,18 @@ static int mt8192_scp_before_load(struct mtk_scp *scp)
>  	/* enable MPU for all memory regions */
>  	writel(0xff, scp->cluster->reg_base + MT8192_CORE0_MEM_ATT_PREDEF);
>  
> +	/* Set the domain of master in SCP.
> +	 *
> +	 * In the SCP, cores, DMA, and SPI are masters. When these masters
> +	 * access memory or devices, they need to carry a domain ID. This
> +	 * domain ID is used to determine whether they have permission to
> +	 * access the target device or memory.
> +	 */
> +
> +	if (scp->data->scp_secure_domain_reg)
> +		writel(scp->data->scp_domain_value,
> +		       scp->cluster->reg_base + scp->data->scp_secure_domain_reg);
> +

This change is not related to the description in the changelog, nor the other
changes in this patch.  Please do another patch.

>  	return 0;
>  }
>  
> @@ -1527,6 +1539,8 @@ static const struct mtk_scp_of_data mt8192_of_data = {
>  	.scp_da_to_va = mt8192_scp_da_to_va,
>  	.host_to_scp_reg = MT8192_GIPC_IN_SET,
>  	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> +	.scp_to_host_ipc_clr_reg = MT8192_SCP2APMCU_IPC_CLR,
> +	.scp_to_spm_ipc_clr_reg = MT8192_SCP2SPM_IPC_CLR,
>  	.scp_sizes = &default_scp_sizes,
>  };
>  
> -- 
> 2.45.2
> 

