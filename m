Return-Path: <devicetree+bounces-6036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 798947B9BDF
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:43:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 02CF51F22C89
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 08:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A80B763C9;
	Thu,  5 Oct 2023 08:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2EC4A33
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:43:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C973EC116AF;
	Thu,  5 Oct 2023 08:43:19 +0000 (UTC)
Message-ID: <b7c19673-a3bd-449a-9e84-49a68c89b0ea@xs4all.nl>
Date: Thu, 5 Oct 2023 10:43:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: mediatek: vcodec: Handle encoder vsi NULL
 pointer case
Content-Language: en-US, nl
To: Irui Wang <irui.wang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 angelogioacchino.delregno@collabora.com, nicolas.dufresne@collabora.com,
 Yunfei Dong <yunfei.dong@mediatek.com>
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Maoguang Meng <maoguang.meng@mediatek.com>
References: <20230926101909.15030-1-irui.wang@mediatek.com>
 <20230926101909.15030-2-irui.wang@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230926101909.15030-2-irui.wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/09/2023 12:19, Irui Wang wrote:
> There will be a kernel null pointer exception if 'vsi' is NULL, check
> 'vsi' is not NULL before assign it to encoder instance.
> 
> Signed-off-by: Irui Wang <irui.wang@mediatek.com>
> ---
>  .../platform/mediatek/vcodec/encoder/venc/venc_h264_if.c     | 5 +++++
>  .../platform/mediatek/vcodec/encoder/venc/venc_vp8_if.c      | 5 +++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_h264_if.c b/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_h264_if.c
> index a68dac72c4e4..385bcc0d14f3 100644
> --- a/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_h264_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_h264_if.c
> @@ -597,6 +597,11 @@ static int h264_enc_init(struct mtk_vcodec_enc_ctx *ctx)
>  	inst->hw_base = mtk_vcodec_get_reg_addr(inst->ctx->dev->reg_base, VENC_SYS);
>  
>  	ret = vpu_enc_init(&inst->vpu_inst);
> +	if (!inst->vpu_inst.vsi) {
> +		mtk_venc_err(ctx, "share buffer is NULL");
> +		kfree(inst);
> +		return -EFAULT;
> +	}

Shouldn't this check be done in vpu_enc_init?

It looks weird that a function can return 0, but there is still an
error that needs to be checked manually afterwards.

Regards,

	Hans

>  
>  	if (MTK_ENC_IOVA_IS_34BIT(ctx))
>  		inst->vsi_34 = (struct venc_h264_vsi_34 *)inst->vpu_inst.vsi;
> diff --git a/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_vp8_if.c b/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_vp8_if.c
> index 05abca91e742..23ca0d93324f 100644
> --- a/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_vp8_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/encoder/venc/venc_vp8_if.c
> @@ -326,6 +326,11 @@ static int vp8_enc_init(struct mtk_vcodec_enc_ctx *ctx)
>  	inst->hw_base = mtk_vcodec_get_reg_addr(inst->ctx->dev->reg_base, VENC_LT_SYS);
>  
>  	ret = vpu_enc_init(&inst->vpu_inst);
> +	if (!inst->vpu_inst.vsi) {
> +		mtk_venc_err(ctx, "share buffer is NULL");
> +		kfree(inst);
> +		return -EFAULT;
> +	}
>  
>  	inst->vsi = (struct venc_vp8_vsi *)inst->vpu_inst.vsi;
>  


