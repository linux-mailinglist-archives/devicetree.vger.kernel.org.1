Return-Path: <devicetree+bounces-11176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAD87D4A6D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAB4F281848
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614DA6D18;
	Tue, 24 Oct 2023 08:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Xd+v3I16"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEF41C07
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:37:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF54A120;
	Tue, 24 Oct 2023 01:37:47 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4F2036607324;
	Tue, 24 Oct 2023 09:37:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698136666;
	bh=b3hTgipRW+886R6FBsLygN4L72yjGIgmU9zLWuzpo3o=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=Xd+v3I16W7Ru4Jf3AYHTV0CFW5XwhEBZqYtNMSHps/DrHYiBAu3MCvYI7reaWAV4u
	 yfqjXYbzv6fWT9WUkubjxVMRv7/GWj4AcakbfAXbLZICEfUOwWZMpxA0gY7Pzx9o8Z
	 1YHE9FhQ+Jr9g6VZRlLWHjNcK9RJeTMdVMSqGY3lwM5S/X2cRWoBweSyIlxVtuQkiV
	 yTVQ0p9eyCfKgcUCdSman/gaGB9k4C65WQbiMd1PEtkgxUqcPwYEslUIQtkTNVfcYb
	 5/inotH8/Z8UygntUeEr59+og5ZcyW7B0ihRjgJq5fnSSZLzHxalFEKuWUUegzXK5h
	 wBP0SD7+L2GMA==
Message-ID: <e3198dd5-48da-498c-9f21-4f6845b37675@collabora.com>
Date: Tue, 24 Oct 2023 10:37:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2 05/11] drm/mediatek: Add mtk_ddp_sec_write to config
 secure buffer info
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
 <20231023044549.21412-6-jason-jh.lin@mediatek.com>
Content-Language: en-US
In-Reply-To: <20231023044549.21412-6-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/10/23 06:45, Jason-JH.Lin ha scritto:
> Add mtk_ddp_sec_write to configure secure buffer information to
> cmdq secure packet data.
> Then secure cmdq driver will use these information to configure
> curresponding secure DRAM address to HW overlay in secure world.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 12 ++++++++++++
>   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  4 ++++
>   2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 771f4e173353..3dca936b9143 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -111,6 +111,18 @@ void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
>   #endif
>   }
>   
> +void mtk_ddp_sec_write(struct cmdq_pkt *cmdq_pkt, u32 addr, u64 base,
> +		       const enum cmdq_iwc_addr_metadata_type type,
> +		       const u32 offset, const u32 size, const u32 port)
> +{
> +#if IS_REACHABLE(CONFIG_MTK_CMDQ)
> +	/* secure buffer will be 4K alignment */
> +	if (cmdq_pkt)

	if (!cmdq_pkt)
		return;
	cmdq_sec_pkt_write....

Regards,
Angelo



