Return-Path: <devicetree+bounces-200831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1276AB16354
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 17:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DF6D7A8E2D
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 15:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7742DC34F;
	Wed, 30 Jul 2025 15:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CaufiJop"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395812DC323
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 15:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753888051; cv=none; b=GkyQoFoKuVcxQOu1C8Ktv0WdTw04L2WFEToBW0WC/PFHwCZYiCHvbHQom3LFsSE9L24QmGyzqD9TIe9Kh55WsdB1AsLbws1s1TxtlcZu76AuHuMn+3GcfDroUTXFKzIg5J62QpzmKp22trl6qDugro4fuBYS2VLJbh4hbI9iiu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753888051; c=relaxed/simple;
	bh=S2T1WxPA5dM4lrAM/9y42kWN4a3zLOoUtRlThk8KE6M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s7o46Wq3WQgf9kgfXUmuRugady/q0Y458evoo9r88BR3qTKnF8QUf+E9i7SvmL+ytiG7oULRGynpWhzlm8p37UO1LbiooU8ZRkPQEVwUwcfVr7T0/dI6J1myxxEkJecb2xQDwG7sxpZUySf0iRAlDroDeJPu3KEXrYJRyiIxvQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CaufiJop; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7426c44e014so1048424b3a.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 08:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753888049; x=1754492849; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6zbDF6DuNywreDfjORRT1cKAmeYmyOF35f+RgRaR5Jw=;
        b=CaufiJopECyIj/I7d3UKCvu23y/K4cPMEzQG+R3J1wLtpBDc29x9LeNqvIKfur9Yu2
         ToHwU4WCkr+koZIF9yStYcw7yAIRKTiX5qlhI/3iaoCuJdr3SnBcbpPg20fIY9j7a4t9
         iNwATRTNZiWx5EAQwVHU8n4AYX2s9Jv3l/aDp1cv89e22OHQKCI3HizrB9nKl4E8ddjU
         aGAwnEPKJr6WrMxQc8oZj7lqqyoqvwNVy+WYdZ9qK3CPXC5JPFsIP8l1KC57gjlnRW01
         TDkEivY+ZaDaxq/GJoq9OiyPuY1Q03WsMmokITMgxI+my/WZ93hppdhCz77X1dt6JEW5
         YK3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753888049; x=1754492849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6zbDF6DuNywreDfjORRT1cKAmeYmyOF35f+RgRaR5Jw=;
        b=p81zorLEd9OyOh74XZXN5UasdUNCl+tM4gmPkn0poVhrbYlfU5IE5vJPluh7IX8COP
         wOLISXY88N702FDTEK2IHNqxrKx+0smJY0sRmrOB2mhj2unYWWqaNFDt5BA7r9ct0+Ay
         YtZlsEQxsApTnvmJ5cotHaunPxWR1ZdyO6roHEr4o9Pf379PsAAfOhTOqWugRWoeG+yi
         T4cldtDo7aywUXJ7d/AcKYimjTt0kNABcNx3y+20EQa+zgpWUqqq1L8diyIvNe1eXnSo
         8dPnqjzaDt9lI0DBXEFVJn/HSLo43v2Sm+3Ltet6XmJbZQUmVCYZ5BniK4s3h/BiLTnl
         jYZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwrPAg+ns9Ifi35r0WC59ACR046m2e1e+QA3zUyjJ2Q93+1HgWKJ7L2FZwTKyRF/KmIOZ151L6aRlf@vger.kernel.org
X-Gm-Message-State: AOJu0YxL7DnjM01X45jq1gd1094IfmA8rTLF3auFbGIjJ//ZRJpV4lhx
	28Ae+v9w3Pi1oaD2DC1tT3cIoLk0eDoGgQo58nRibKJBJnrnS53eW0blgA37RKoCyp4=
X-Gm-Gg: ASbGncsSE7GahZMi4x6S40R8PSQh+ImS7dBplcHWrjqBu96S8EirDTA8J8ejWg/JFbr
	gAwiOXiRBLTdJHSv/aKOBXjgmYBWyJjwibj3uHX4oXeP4jhlAq8z4X8AytBr/5rMThV14OAuPQH
	C7+uBndSn6o0qR3KHaDveIVzfq+bgVgE9BAiqfHWNkjVzkhwp4oaI0A1KzdTf+AZQkaaVXvQTie
	95InL3QqKXElGwMps4eGO3AZF6YTatD1VxaMLSy5faVFOazSLwxaqwxxtixnhftoOZxKjwZtGYs
	Ttcrop6ameYa0jMxiZIWq8pBsmpa3VWA1BmYtQpbt+iD97MNg4NcgWEa8Dqm7j5qP3FSr8OFObE
	jtT7ySbFtKItr9BrFOO820J3zixtmMlojyJf/
X-Google-Smtp-Source: AGHT+IFaZ9+p55hN5f6LxwvTNGvq2uEnkVbWsMgb6AANE/sV3IXqIf2qyYyxe/SLSbbyK1EkPLnaaw==
X-Received: by 2002:a05:6a00:4b0c:b0:740:b394:3ebd with SMTP id d2e1a72fcca58-76ab092312amr5779637b3a.7.1753888049439;
        Wed, 30 Jul 2025 08:07:29 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:19cc:e53e:637f:aa72])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76408cf75dfsm10232542b3a.50.2025.07.30.08.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 08:07:28 -0700 (PDT)
Date: Wed, 30 Jul 2025 09:07:26 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Huayu Zong <huayu.zong@mediatek.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	--cc=Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH 3/3] remoteproc: mediatek: Support MT8189 SCP
Message-ID: <aIo1LsFeKqtPoCDm@p14s>
References: <20250729023125.9036-1-huayu.zong@mediatek.com>
 <20250729023125.9036-4-huayu.zong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729023125.9036-4-huayu.zong@mediatek.com>

Hi,

On Tue, Jul 29, 2025 at 10:31:13AM +0800, Huayu Zong wrote:
> Add SCP support for mt8189.
> 
> Signed-off-by: Huayu Zong <huayu.zong@mediatek.com>
> ---
>  drivers/remoteproc/mtk_common.h | 11 ++++++++++
>  drivers/remoteproc/mtk_scp.c    | 37 ++++++++++++++++++++++++++++++---
>  2 files changed, 45 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
> index fd5c539ab2ac..fb2131e0ed07 100644
> --- a/drivers/remoteproc/mtk_common.h
> +++ b/drivers/remoteproc/mtk_common.h
> @@ -35,6 +35,11 @@
>  #define MT8186_SCP_L1_SRAM_PD_P1	0x40B0
>  #define MT8186_SCP_L1_SRAM_PD_p2	0x40B4
>  
> +#define MT8189_SCP2APMCU_IPC_CLR	0x30010
> +#define MT8189_SCP2SPM_IPC_CLR		0x30018
> +#define MT8189_SCP_SECURE_DOMAIN	0xA080
> +#define MT8189_SCP_DOMAIN_VAL		0x3303003
> +
>  #define MT8192_L2TCM_SRAM_PD_0		0x10C0
>  #define MT8192_L2TCM_SRAM_PD_1		0x10C4
>  #define MT8192_L2TCM_SRAM_PD_2		0x10C8
> @@ -112,6 +117,12 @@ struct mtk_scp_of_data {
>  
>  	u32 host_to_scp_reg;
>  	u32 host_to_scp_int_bit;
> +	u32 scp_to_host_ipc_set_reg;
> +	u32 scp_to_host_ipc_clr_reg;
> +	u32 scp_to_spm_ipc_clr_reg;
> +
> +	u32 scp_secure_domain_reg;
> +	u32 scp_domain_value;
>  
>  	size_t ipi_buf_offset;
>  	const struct mtk_scp_sizes_data *scp_sizes;
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 8206a1766481..956793fc6901 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -225,7 +225,8 @@ static void mt8192_scp_irq_handler(struct mtk_scp *scp)
>  {
>  	u32 scp_to_host;
>  
> -	scp_to_host = readl(scp->cluster->reg_base + MT8192_SCP2APMCU_IPC_SET);
> +	scp_to_host = readl(scp->cluster->reg_base +
> +			    scp->data->scp_to_host_ipc_set_reg);

As far as I can tell, this is the same for both mt8189 and mt8192 - it should
not be needed.

>  
>  	if (scp_to_host & MT8192_SCP_IPC_INT_BIT) {
>  		scp_ipi_handler(scp);
> @@ -235,7 +236,7 @@ static void mt8192_scp_irq_handler(struct mtk_scp *scp)
>  		 * MT8192_SCP2APMCU_IPC.
>  		 */
>  		writel(MT8192_SCP_IPC_INT_BIT,
> -		       scp->cluster->reg_base + MT8192_SCP2APMCU_IPC_CLR);
> +		       scp->cluster->reg_base + scp->data->scp_to_host_ipc_clr_reg);
>  	} else {
>  		scp_wdt_handler(scp, scp_to_host);
>  		writel(1, scp->cluster->reg_base + MT8192_CORE0_WDT_IRQ);
> @@ -559,8 +560,10 @@ static int mt8188_scp_c1_before_load(struct mtk_scp *scp)
>  
>  static int mt8192_scp_before_load(struct mtk_scp *scp)
>  {
> +	u32 scp2spm_ipc_clr = scp->data->scp_to_spm_ipc_clr_reg;
> +
>  	/* clear SPM interrupt, SCP2SPM_IPC_CLR */
> -	writel(0xff, scp->cluster->reg_base + MT8192_SCP2SPM_IPC_CLR);
> +	writel(0xff, scp->cluster->reg_base + scp2spm_ipc_clr);
>  
>  	writel(1, scp->cluster->reg_base + MT8192_CORE0_SW_RSTN_SET);
>  
> @@ -574,6 +577,11 @@ static int mt8192_scp_before_load(struct mtk_scp *scp)
>  	/* enable MPU for all memory regions */
>  	writel(0xff, scp->cluster->reg_base + MT8192_CORE0_MEM_ATT_PREDEF);
>  
> +	/* set the domain of master in SCP */
> +	if (scp->data->scp_secure_domain_reg)
> +		writel(scp->data->scp_domain_value,
> +		       scp->cluster->reg_base + scp->data->scp_secure_domain_reg);
> +
>  	return 0;
>  }
>  
> @@ -1464,6 +1472,24 @@ static const struct mtk_scp_of_data mt8188_of_data_c1 = {
>  	.scp_sizes = &mt8188_scp_c1_sizes,
>  };
>  
> +static const struct mtk_scp_of_data mt8189_of_data = {
> +	.scp_clk_get = mt8195_scp_clk_get,
> +	.scp_before_load = mt8192_scp_before_load,
> +	.scp_irq_handler = mt8192_scp_irq_handler,
> +	.scp_reset_assert = mt8192_scp_reset_assert,
> +	.scp_reset_deassert = mt8192_scp_reset_deassert,
> +	.scp_stop = mt8192_scp_stop,
> +	.scp_da_to_va = mt8192_scp_da_to_va,
> +	.host_to_scp_reg = MT8192_GIPC_IN_SET,
> +	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> +	.scp_to_host_ipc_set_reg = MT8192_SCP2APMCU_IPC_SET,
> +	.scp_to_host_ipc_clr_reg = MT8189_SCP2APMCU_IPC_CLR,
> +	.scp_to_spm_ipc_clr_reg = MT8189_SCP2SPM_IPC_CLR,
> +	.scp_secure_domain_reg = MT8189_SCP_SECURE_DOMAIN,
> +	.scp_domain_value = MT8189_SCP_DOMAIN_VAL,
> +	.scp_sizes = &default_scp_sizes,
> +};
> +
>  static const struct mtk_scp_of_data mt8192_of_data = {
>  	.scp_clk_get = mt8192_scp_clk_get,
>  	.scp_before_load = mt8192_scp_before_load,
> @@ -1475,6 +1501,10 @@ static const struct mtk_scp_of_data mt8192_of_data = {
>  	.host_to_scp_reg = MT8192_GIPC_IN_SET,
>  	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
>  	.scp_sizes = &default_scp_sizes,
> +	.scp_to_host_ipc_set_reg = MT8192_SCP2APMCU_IPC_SET,
> +	.scp_to_host_ipc_clr_reg = MT8192_SCP2APMCU_IPC_CLR,
> +	.scp_to_spm_ipc_clr_reg = MT8192_SCP2SPM_IPC_CLR,
> +	.scp_sizes = &default_scp_sizes,

You are introducing a duplicate .scp_sizes

Thanks,
Mathieu

>  };
>  
>  static const struct mtk_scp_of_data mt8195_of_data = {
> @@ -1520,6 +1550,7 @@ static const struct of_device_id mtk_scp_of_match[] = {
>  	{ .compatible = "mediatek,mt8186-scp", .data = &mt8186_of_data },
>  	{ .compatible = "mediatek,mt8188-scp", .data = &mt8188_of_data },
>  	{ .compatible = "mediatek,mt8188-scp-dual", .data = &mt8188_of_data_cores },
> +	{ .compatible = "mediatek,mt8189-scp", .data = &mt8189_of_data },
>  	{ .compatible = "mediatek,mt8192-scp", .data = &mt8192_of_data },
>  	{ .compatible = "mediatek,mt8195-scp", .data = &mt8195_of_data },
>  	{ .compatible = "mediatek,mt8195-scp-dual", .data = &mt8195_of_data_cores },
> -- 
> 2.45.2
> 

