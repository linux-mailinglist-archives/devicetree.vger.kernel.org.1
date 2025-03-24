Return-Path: <devicetree+bounces-160257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A53A6E0A7
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 18:13:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 041213A87BE
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 17:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D665263F44;
	Mon, 24 Mar 2025 17:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="JIIEq3VR"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB691EB5B;
	Mon, 24 Mar 2025 17:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742836382; cv=none; b=KzhKroCkHmqTBDhUaEaY22cYQMaC6Co/hxeeFM8oCkzv+kzljGAjOKNH33RI9n4ao5xclOUrdDv67hapMD38WJv4y9GdYyxDAgdTVkzfMMxTyMbxx+N/JiRIiRne5QqutoBoNURa0ujcRW1jN/QgUlna7lj4D6BV5HTXcAdp0Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742836382; c=relaxed/simple;
	bh=eSGtumyc/yfmz3YRryO3Vj1UMYd+r3aptpUmRaBllTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k8/uK9o9ksfJa7OylVrrplSpVv8izQ+zcjtb033IK48zIKqSvv0E7vzwh6TJFfvo4YCDEfZ5jEDWOO1zgXFUugkPt893vSsof2ydNhkmyAZlpwl+uWkL0hQJTb4zqH1jc5Yl8rNDreRDOLeJYsF4t+vcTSQEOaYevnBEYbUx0A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=JIIEq3VR; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1742836378;
	bh=eSGtumyc/yfmz3YRryO3Vj1UMYd+r3aptpUmRaBllTg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JIIEq3VRuU4o553rkNfLANwWMeCrtQHXqjd8xmrWyrzkbCqH3zpQoVKrhCvY6biFW
	 KARJsNOuLyJtyi+uGRQoqHFjdtTWb8jq43Hb6FsEaXDVJbOH3Tv1pXQsftOXvD6j+a
	 BgyoZAhV+TiLB+SBbX+/wCjHcxptNDhR6+bhRKHxlA/t/UqqjsupOQ9B8eNxu/EDvN
	 Zngza1OqqTgfWVT4qaWCCU5/Gmi6YXUlbyKz9K0T/iE0Ze52a2iQ+Yukn4rDKaRcTV
	 7dwnfEjo3OBCdj6YH2/OOAVlU7q13unn+FutOvMKh7mCNLOs2qO/Zw7iqMFAR49eQj
	 vqP2ae8c/E22w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D10E417E0385;
	Mon, 24 Mar 2025 18:12:56 +0100 (CET)
Message-ID: <754df305-9767-47be-8f98-4e287c56808e@collabora.com>
Date: Mon, 24 Mar 2025 18:12:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/15] soc: mediatek: mutex: refactor SOF settings for
 output components
To: "paul-pl.chen" <paul-pl.chen@mediatek.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, chunkuang.hu@kernel.org
Cc: matthias.bgg@gmail.com, p.zabel@pengutronix.de,
 jason-jh.lin@mediatek.com, nancy.lin@mediatek.com, singo.chang@mediatek.com,
 xiandong.wang@mediatek.com, sirius.wang@mediatek.com,
 sunny.shen@mediatek.com, fshao@chromium.org, treapking@chromium.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20250321093435.94835-1-paul-pl.chen@mediatek.com>
 <20250321093435.94835-8-paul-pl.chen@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250321093435.94835-8-paul-pl.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 21/03/25 10:33, paul-pl.chen ha scritto:
> From: Nancy Lin <nancy.lin@mediatek.com>
> 
> Refactor SOF settings by adding mtk_mutex_get_output_comp_sof()
> and extracting SOF logic from mtk_mutex_add_comp()
> and mtk_mutex_remove_comp().
> 
> - Added mtk_mutex_add_comp_sof() and mtk_mutex_remove_comp_sof()
>    for SOF settings.
> - Reused the switch case for SOF IDs.
> - Separated MOD and SOF logic.
> 

This also needs more than one commit.

The cleanups go in a commit doing only cleanups.

> Signed-off-by: Nancy Lin <nancy.lin@mediatek.com>
> Signed-off-by: Paul-pl Chen <paul-pl.chen@mediatek.com>
> ---
>   drivers/soc/mediatek/mtk-mutex.c       | 121 +++++++++++++++----------
>   include/linux/soc/mediatek/mtk-mutex.h |   4 +
>   2 files changed, 79 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-mutex.c
> index aaa965d4b050..c026ac0e6969 100644
> --- a/drivers/soc/mediatek/mtk-mutex.c
> +++ b/drivers/soc/mediatek/mtk-mutex.c
> @@ -853,43 +853,84 @@ void mtk_mutex_unprepare(struct mtk_mutex *mutex)
>   }
>   EXPORT_SYMBOL_GPL(mtk_mutex_unprepare);
>   
> -void mtk_mutex_add_comp(struct mtk_mutex *mutex,
> -			enum mtk_ddp_comp_id id)
> +static int mtk_mutex_get_output_comp_sof(enum mtk_ddp_comp_id id)
>   {
> -	struct mtk_mutex_ctx *mtx = container_of(mutex, struct mtk_mutex_ctx,
> -						 mutex[mutex->id]);
> -	unsigned int reg;
> -	unsigned int sof_id;
> -	unsigned int offset;
> -
> -	WARN_ON(&mtx->mutex[mutex->id] != mutex);
> -
>   	switch (id) {
>   	case DDP_COMPONENT_DSI0:
> -		sof_id = MUTEX_SOF_DSI0;
> -		break;
> +		return MUTEX_SOF_DSI0;
>   	case DDP_COMPONENT_DSI1:
> -		sof_id = MUTEX_SOF_DSI0;
> -		break;
> +		return MUTEX_SOF_DSI1;
>   	case DDP_COMPONENT_DSI2:
> -		sof_id = MUTEX_SOF_DSI2;
> -		break;
> +		return MUTEX_SOF_DSI2;
>   	case DDP_COMPONENT_DSI3:
> -		sof_id = MUTEX_SOF_DSI3;
> -		break;
> +		return MUTEX_SOF_DSI3;
>   	case DDP_COMPONENT_DPI0:
> -		sof_id = MUTEX_SOF_DPI0;
> -		break;
> +		return MUTEX_SOF_DPI0;
>   	case DDP_COMPONENT_DPI1:
> -		sof_id = MUTEX_SOF_DPI1;
> -		break;
> +		return MUTEX_SOF_DPI1;
>   	case DDP_COMPONENT_DP_INTF0:
> -		sof_id = MUTEX_SOF_DP_INTF0;
> -		break;
> +		return MUTEX_SOF_DP_INTF0;
>   	case DDP_COMPONENT_DP_INTF1:
> -		sof_id = MUTEX_SOF_DP_INTF1;
> -		break;
> +		return MUTEX_SOF_DP_INTF1;
>   	default:
> +		break;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +void mtk_mutex_add_comp_sof(struct mtk_mutex *mutex, enum mtk_ddp_comp_id id)
> +{
> +	struct mtk_mutex_ctx *mtx = container_of(mutex, struct mtk_mutex_ctx,
> +						 mutex[mutex->id]);
> +	int sof_id = mtk_mutex_get_output_comp_sof(id);
> +	unsigned int offset;
> +
> +	if (sof_id < 0 || sof_id >= DDP_MUTEX_SOF_MAX)
> +		return;
> +
> +	WARN_ON(&mtx->mutex[mutex->id] != mutex);
> +
> +	offset = DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg, mutex->id);
> +
> +	writel_relaxed(mtx->data->mutex_sof[sof_id],
> +		       mtx->regs + offset);

fits in one line

> +}
> +EXPORT_SYMBOL_GPL(mtk_mutex_add_comp_sof);
> +
> +void mtk_mutex_remove_comp_sof(struct mtk_mutex *mutex, enum mtk_ddp_comp_id id)
> +{
> +	struct mtk_mutex_ctx *mtx = container_of(mutex, struct mtk_mutex_ctx,
> +						 mutex[mutex->id]);
> +	unsigned int reg;
> +	int sof_id = mtk_mutex_get_output_comp_sof(id);
> +	unsigned int offset;
> +
> +	if (sof_id < 0 || sof_id >= DDP_MUTEX_SOF_MAX)
> +		return;
> +
> +	WARN_ON(&mtx->mutex[mutex->id] != mutex);
> +
> +	offset = DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg, mutex->id);
> +	reg = readl_relaxed(mtx->regs + offset);
> +	reg &= ~(1 << mtx->data->mutex_sof[id]);
> +
> +	writel_relaxed(reg, mtx->regs + offset);
> +}
> +EXPORT_SYMBOL_GPL(mtk_mutex_remove_comp_sof);
> +
> +void mtk_mutex_add_comp(struct mtk_mutex *mutex,
> +			enum mtk_ddp_comp_id id)
> +{
> +	struct mtk_mutex_ctx *mtx = container_of(mutex, struct mtk_mutex_ctx,
> +						 mutex[mutex->id]);
> +	unsigned int reg;
> +	unsigned int offset;
> +	bool is_output_comp = !!mtk_mutex_get_output_comp_sof(id);
> +
> +	WARN_ON(&mtx->mutex[mutex->id] != mutex);
> +

Looks like you can just do

	if (is_output_comp) {
		mtk_mutex_add_comp_sof(mutex, id);
		return;
	}

	if (mtx->data->mutex_mod[id] < 32) { .....etc

> +	if (!is_output_comp) {
>   		if (mtx->data->mutex_mod[id] < 32) {
>   			offset = DISP_REG_MUTEX_MOD(mtx->data->mutex_mod_reg,
>   						    mutex->id);
> @@ -902,12 +943,10 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
>   			reg |= 1 << (mtx->data->mutex_mod[id] - 32);
>   			writel_relaxed(reg, mtx->regs + offset);
>   		}
> -		return;
>   	}
>   
> -	writel_relaxed(mtx->data->mutex_sof[sof_id],
> -		       mtx->regs +
> -		       DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg, mutex->id));
> +	if (is_output_comp)
> +		mtk_mutex_add_comp_sof(mutex, id);
>   }
>   EXPORT_SYMBOL_GPL(mtk_mutex_add_comp);
>   
> @@ -918,24 +957,11 @@ void mtk_mutex_remove_comp(struct mtk_mutex *mutex,
>   						 mutex[mutex->id]);
>   	unsigned int reg;
>   	unsigned int offset;
> +	bool is_output_comp = !!mtk_mutex_get_output_comp_sof(id);
>   
>   	WARN_ON(&mtx->mutex[mutex->id] != mutex);
>   
> -	switch (id) {
> -	case DDP_COMPONENT_DSI0:
> -	case DDP_COMPONENT_DSI1:
> -	case DDP_COMPONENT_DSI2:
> -	case DDP_COMPONENT_DSI3:
> -	case DDP_COMPONENT_DPI0:
> -	case DDP_COMPONENT_DPI1:
> -	case DDP_COMPONENT_DP_INTF0:
> -	case DDP_COMPONENT_DP_INTF1:
> -		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
> -			       mtx->regs +
> -			       DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg,
> -						  mutex->id));
> -		break;
> -	default:
> +	if (!is_output_comp) {

same comment as before.

>   		if (mtx->data->mutex_mod[id] < 32) {
>   			offset = DISP_REG_MUTEX_MOD(mtx->data->mutex_mod_reg,
>   						    mutex->id);
> @@ -948,8 +974,11 @@ void mtk_mutex_remove_comp(struct mtk_mutex *mutex,
>   			reg &= ~(1 << (mtx->data->mutex_mod[id] - 32));
>   			writel_relaxed(reg, mtx->regs + offset);
>   		}
> -		break;
>   	}
> +
> +	if (is_output_comp)
> +		mtk_mutex_remove_comp_sof(mutex, id);
> +

Regards,
Angelo



