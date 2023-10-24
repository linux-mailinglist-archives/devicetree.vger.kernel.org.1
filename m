Return-Path: <devicetree+bounces-11177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA427D4A6F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:37:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29B362818ED
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCB017466;
	Tue, 24 Oct 2023 08:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OUb3eACj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157A93FDB
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:37:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A58B2BD;
	Tue, 24 Oct 2023 01:37:47 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0E7EB6607319;
	Tue, 24 Oct 2023 09:37:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698136666;
	bh=FF3lJgYHVALCQHIDEXOEKU3cOZle3CdbuED79YvXitU=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=OUb3eACj3xQGewl3YdR/vJuIOZbKMgBA5N2kjOCD1ToSUgPwGGNu5tXlrKsO3xnSL
	 9u5kTaAUYdo7sC8NItfTiESkX3WgmR97Rg/j0+G7V0UpCNyWjyEF2Rhmlsmhav2y7M
	 XneWpo4hDLDiHYdGlfX7ag280Qi/yunxMtuErJdF/bakqC5LIOEBfqBxveVgnC3aKl
	 TyTG4G7oC/5R0X04XNlm/hVCO2bLaVlFeOtCaht27jC7H7ossZEisU+aeIGERp1d9+
	 XEsh5c9GO3eAPmUPuDmHBnakjk0yh/wlJIbwg1/1R9SQb1GZ3lkDXML1J785Bbuj3p
	 6pkUKXhqEwPmQ==
Message-ID: <2c757018-f643-4d47-a24c-d0326633a7b4@collabora.com>
Date: Tue, 24 Oct 2023 10:37:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2 08/11] drm/mediatek: Add secure layer config support
 for ovl_adaptor
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Jason-ch Chen <jason-ch.chen@mediatek.com>,
 Johnson Wang <johnson.wang@mediatek.com>,
 Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
 Shawn Sung <shawn.sung@mediatek.com>,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Jeffrey Kardatzke <jkardatzke@google.com>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
 <20231023044549.21412-9-jason-jh.lin@mediatek.com>
Content-Language: en-US
In-Reply-To: <20231023044549.21412-9-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/10/23 06:45, Jason-JH.Lin ha scritto:
> Add secure layer config support for ovl_adaptor and sub driver mdp_rdma.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c |  3 +++
>   drivers/gpu/drm/mediatek/mtk_mdp_rdma.c         | 11 ++++++++---
>   drivers/gpu/drm/mediatek/mtk_mdp_rdma.h         |  2 ++
>   3 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
> index 28a0bccfb0b9..274961222672 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
> @@ -153,6 +153,9 @@ void mtk_ovl_adaptor_layer_config(struct device *dev, unsigned int idx,
>   	rdma_config.pitch = pending->pitch;
>   	rdma_config.fmt = pending->format;
>   	rdma_config.color_encoding = pending->color_encoding;
> +	rdma_config.source_size = (pending->height - 1) * pending->pitch +
> +				  pending->width * fmt_info->cpp[0];
> +	rdma_config.is_sec = state->pending.is_sec;
>   	mtk_mdp_rdma_config(rdma_l, &rdma_config, cmdq_pkt);
>   
>   	if (use_dual_pipe) {
> diff --git a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
> index c3adaeefd551..1c4798e3bbc3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.c
> @@ -94,6 +94,7 @@ struct mtk_mdp_rdma {
>   	void __iomem		*regs;
>   	struct clk		*clk;
>   	struct cmdq_client_reg	cmdq_reg;
> +	resource_size_t		regs_pa;
>   };
>   
>   static unsigned int rdma_fmt_convert(unsigned int fmt)
> @@ -198,9 +199,12 @@ void mtk_mdp_rdma_config(struct device *dev, struct mtk_mdp_rdma_cfg *cfg,
>   	else
>   		mtk_ddp_write_mask(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs,
>   				   MDP_RDMA_SRC_CON, FLD_OUTPUT_ARGB);
> -
> -	mtk_ddp_write_mask(cmdq_pkt, cfg->addr0, &priv->cmdq_reg, priv->regs,
> -			   MDP_RDMA_SRC_BASE_0, FLD_SRC_BASE_0);
> +	if (cfg->is_sec)
> +		mtk_ddp_sec_write(cmdq_pkt, priv->regs_pa + MDP_RDMA_SRC_BASE_0,
> +				  cfg->addr0, CMDQ_IWC_H_2_MVA, 0, cfg->source_size, 0);
> +	else
> +		mtk_ddp_write_mask(cmdq_pkt, cfg->addr0, &priv->cmdq_reg, priv->regs,
> +				   MDP_RDMA_SRC_BASE_0, FLD_SRC_BASE_0);
>   
>   	mtk_ddp_write_mask(cmdq_pkt, src_pitch_y, &priv->cmdq_reg, priv->regs,
>   			   MDP_RDMA_MF_BKGD_SIZE_IN_BYTE, FLD_MF_BKGD_WB);
> @@ -285,6 +289,7 @@ static int mtk_mdp_rdma_probe(struct platform_device *pdev)
>   		return -ENOMEM;
>   
>   	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	priv->regs_pa = res->start;
>   	priv->regs = devm_ioremap_resource(dev, res);
>   	if (IS_ERR(priv->regs)) {
>   		dev_err(dev, "failed to ioremap rdma\n");
> diff --git a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h
> index 9943ee3aac31..9add18e96319 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h
> +++ b/drivers/gpu/drm/mediatek/mtk_mdp_rdma.h
> @@ -15,6 +15,8 @@ struct mtk_mdp_rdma_cfg {
>   	unsigned int	y_top;
>   	int		fmt;
>   	int		color_encoding;
> +	unsigned int	source_size;
> +	unsigned int	is_sec;

is_secure looks better.

Regards,
Angelo

>   };
>   
>   #endif // __MTK_MDP_RDMA_H__


