Return-Path: <devicetree+bounces-5067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4067B5031
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 12DE82835CA
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32053EAD4;
	Mon,  2 Oct 2023 10:24:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A23CA69
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 094FEC433C8;
	Mon,  2 Oct 2023 10:24:02 +0000 (UTC)
Message-ID: <36356e37-9abd-4dec-a716-9822b67bd0fa@xs4all.nl>
Date: Mon, 2 Oct 2023 12:24:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] media: mediatek: vcodec: Fix encoder access NULL
 pointer
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
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230926101909.15030-1-irui.wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/09/2023 12:19, Irui Wang wrote:
> Need to set the private data with encoder device, or will access
> NULL pointer in encoder handler.
> 
> Fixes: 1972e32431ed ("media: mediatek: vcodec: Fix possible invalid memory access for encoder")
> 
> Signed-off-by: Irui Wang <irui.wang@mediatek.com>
> ---
>  drivers/media/platform/mediatek/vcodec/encoder/venc_vpu_if.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/mediatek/vcodec/encoder/venc_vpu_if.c b/drivers/media/platform/mediatek/vcodec/encoder/venc_vpu_if.c
> index d299cc2962a5..ae6290d28f8e 100644
> --- a/drivers/media/platform/mediatek/vcodec/encoder/venc_vpu_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/encoder/venc_vpu_if.c
> @@ -138,7 +138,8 @@ int vpu_enc_init(struct venc_vpu_inst *vpu)
>  	vpu->ctx->vpu_inst = vpu;
>  
>  	status = mtk_vcodec_fw_ipi_register(vpu->ctx->dev->fw_handler, vpu->id,
> -					    vpu_enc_ipi_handler, "venc", NULL);
> +					    vpu_enc_ipi_handler, "venc",
> +					    vpu->ctx->dev);
>  
>  	if (status) {
>  		mtk_venc_err(vpu->ctx, "vpu_ipi_register fail %d", status);

Is this a fix that should go to 6.6?

Regards,

	Hans

