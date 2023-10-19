Return-Path: <devicetree+bounces-9975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B372A7CF38B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:07:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE840B20DD7
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 09:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A617B1642E;
	Thu, 19 Oct 2023 09:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="dhYwrGhV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2626416416
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:07:48 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DED10F;
	Thu, 19 Oct 2023 02:07:47 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EAE766607322;
	Thu, 19 Oct 2023 10:07:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697706466;
	bh=QnC5hEp1lC2GAFWQ8NBrZuVLax5LzwUML2S5Y2ebPzU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dhYwrGhVa49q+x2y7O6/WqCi+lCfkbvHzalce+0jnzS+8pCHY64GO7l4cuiUBtJ4C
	 xXGqci8TAzSfkPLUitpqNvDWh+ePrCJHwSB0ZwXIpmYCjQD8RIefmaTfYCOtydrMYa
	 Bb1ICnFLpbl2rdUKC3t0li8YbUBKNuPRIOpql15OV8nWN/IHIyChwhgGAB887PAdHL
	 inAKT7s5b22FYRH7NPa7ZfI5Eml4e4rn6e7VfkFFjGlMrzp49+SZXp055Nd/vM+iqL
	 jIKo2wQCejoBAzpVk32mZlwgri4wGkws8rtI77jlygOANl6fbKxeuvy879PL8OM3jR
	 Gp6RdDJairX6A==
Message-ID: <5a059ca0-fcb7-4730-a0d8-29103fb71d54@collabora.com>
Date: Thu, 19 Oct 2023 11:07:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 15/24] drm/mediatek: Remove ineffectual power
 management codes
Content-Language: en-US
To: Hsiao Chien Sung <shawn.sung@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Fei Shao <fshao@chromium.org>,
 Sean Paul <sean@poorly.run>,
 Johnson Wang <johnson.wang@mediatek.corp-partner.google.com>,
 "Nancy . Lin" <nancy.lin@mediatek.com>, Moudy Ho <moudy.ho@mediatek.com>,
 "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
 Nathan Lu <nathan.lu@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20231019055619.19358-1-shawn.sung@mediatek.com>
 <20231019055619.19358-16-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231019055619.19358-16-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/10/23 07:56, Hsiao Chien Sung ha scritto:
> Display modules will be powered on when .atomic_enable(),
> there is no need to do it again in mtk_crtc_ddp_hw_init().
> Besides, the DRM devices are created manually when mtk-mmsys
> is probed and there is no power domain linked to it.
> 
> Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 18 +++---------------
>   1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index bc4cc75cca18..c7edd80be428 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -6,7 +6,6 @@
>   #include <linux/clk.h>
>   #include <linux/dma-mapping.h>
>   #include <linux/mailbox_controller.h>
> -#include <linux/pm_runtime.h>
>   #include <linux/soc/mediatek/mtk-cmdq.h>
>   #include <linux/soc/mediatek/mtk-mmsys.h>
>   #include <linux/soc/mediatek/mtk-mutex.h>
> @@ -362,22 +361,16 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc, struct drm_atomic
>   		drm_connector_list_iter_end(&conn_iter);
>   	}
>   
> -	ret = pm_runtime_resume_and_get(crtc->dev->dev);
> -	if (ret < 0) {
> -		DRM_ERROR("Failed to enable power domain: %d\n", ret);
> -		return ret;
> -	}
> -

Are you really sure that writes to DISP_REG_OVL_xxx and others in other modules,
called by the .layer_config() callback, can be successfully done on an unpowered
and/or unclocked module, on all MediaTek SoCs?
This looks a bit odd.

>   	ret = mtk_mutex_prepare(mtk_crtc->mutex);
>   	if (ret < 0) {
>   		DRM_ERROR("Failed to enable mutex clock: %d\n", ret);
> -		goto err_pm_runtime_put;
> +		goto error;
>   	}
>   
>   	ret = mtk_crtc_ddp_clk_enable(mtk_crtc);
>   	if (ret < 0) {
>   		DRM_ERROR("Failed to enable component clocks: %d\n", ret);
> -		goto err_mutex_unprepare;
> +		goto error;
>   	}
>   
>   	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> @@ -426,16 +419,13 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc, struct drm_atomic
>   

...because you could otherwise just call pm_runtime_put() here, instead of removing
the pm_runtime_resume_and_get() call, which is something I would advise to do.

Regards,
Angelo

>   	return 0;
>   
> -err_mutex_unprepare:
> +error:
>   	mtk_mutex_unprepare(mtk_crtc->mutex);
> -err_pm_runtime_put:
> -	pm_runtime_put(crtc->dev->dev);
>   	return ret;
>   }
>   
>   static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>   {
> -	struct drm_device *drm = mtk_crtc->base.dev;
>   	struct drm_crtc *crtc = &mtk_crtc->base;
>   	int i;
>   
> @@ -465,8 +455,6 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>   	mtk_crtc_ddp_clk_disable(mtk_crtc);
>   	mtk_mutex_unprepare(mtk_crtc->mutex);
>   
> -	pm_runtime_put(drm->dev);
> -
>   	if (crtc->state->event && !crtc->state->active) {
>   		spin_lock_irq(&crtc->dev->event_lock);
>   		drm_crtc_send_vblank_event(crtc, crtc->state->event);



