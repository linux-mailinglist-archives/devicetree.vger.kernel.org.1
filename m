Return-Path: <devicetree+bounces-3895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1BF7B0734
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5DD282815BE
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88484208A7;
	Wed, 27 Sep 2023 14:42:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A5C33E5
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 14:42:32 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D67CFC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 07:42:30 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99de884ad25so1445883366b.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 07:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695825749; x=1696430549; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DQa0uS9ZxVzUEvSIaoDnSyYxM+uNjYjcw68CuBARJN8=;
        b=zP6Ci+AS0YD9HOVXRL0t943eT6TcafVJ64evKwFlzwPDJHaburIJTQBFBgQgQj5SUO
         FpEvO1rpAgxIawVFLhITNS8N3NAlNWAlPWe9CHotKdF0qKXonICKaqeIFQ9EOjjLC8Gz
         nVaWDgr7VYdgpAl2v+awvrnGu/b+60UzHQECVJ2V27D0BR30u2k4vDu745CLYJ3u3cvJ
         5+Q0Kq7DJzNLesg44T6rabOJ8idrWox6+pmIY6Qof56yTAgIrZj2mHHcbvQeYyi2Gthj
         xcTPjlz/JGt+k/EemsBBM+aHGfuKxzv3gm8dJLGmj2soDxGqOsdSE3mTszDxAQSkioXL
         uL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695825749; x=1696430549;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DQa0uS9ZxVzUEvSIaoDnSyYxM+uNjYjcw68CuBARJN8=;
        b=po2stWzNlUQ1EoKNmbkSkAq4Jco0ofdk63L42saT0pISNT/0iwl2ajwoEn9xxIkhU1
         m5J+aERMDsIR4XWRmTFHcj0ISzhcblgaT19rIEbTKjgmCEDJq2nCv2+Q+ig96HZrc9cb
         WtsqOfKIms5rYQv88EGYJSSHcrqEt1KZSKub4mkVuA7fBCsTsB4rBJtzkQ3oIWy6OD27
         k9ch8c3pn5R5yUi3Z1TfuJ2CIyE6ggSyQeXdBJ0NiRk/dNnqPrpVWb16r2cy6qinGF1o
         O5b+D6TOhhUzgIDUvMavZYIBA2pa1uFNQG4NWZmKNc/R9LOPso3wWILJ7b2VLSHUN52W
         tZJw==
X-Gm-Message-State: AOJu0Yzx8FUoc0ct0pHQ0zsTf1EI58Bl4QSmLbMZpVvw1wiaJ6rBlFV2
	Xgji23DuvYxtIx6j8UjXsr9cWA==
X-Google-Smtp-Source: AGHT+IHbkXEUZ2yiICh2bDKC3XoQRoR1GzJCgOavVhuustl4JEpqTa1gx5Cc9UIMgVeGD+zgjr8MaQ==
X-Received: by 2002:a17:906:5142:b0:9b2:ba65:db21 with SMTP id jr2-20020a170906514200b009b2ba65db21mr368111ejc.45.1695825749077;
        Wed, 27 Sep 2023 07:42:29 -0700 (PDT)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id z15-20020a170906944f00b00993928e4d1bsm9374996ejx.24.2023.09.27.07.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 07:42:28 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:42:26 +0200
From: Joakim Bech <joakim.bech@linaro.org>
To: Yong Wu <yong.wu@mediatek.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, tjmercier@google.com,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com,
	kuohong.wang@mediatek.com
Subject: Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
Message-ID: <20230927144226.pdssel3dwv53g546@pop-os.localdomain>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-5-yong.wu@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230911023038.30649-5-yong.wu@mediatek.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 11, 2023 at 10:30:33AM +0800, Yong Wu wrote:
> Initialise a mtk_svp heap. Currently just add a null heap, Prepare for
> the later patches.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/Kconfig           |  8 ++
>  drivers/dma-buf/heaps/Makefile          |  1 +
>  drivers/dma-buf/heaps/mtk_secure_heap.c | 99 +++++++++++++++++++++++++
>  3 files changed, 108 insertions(+)
>  create mode 100644 drivers/dma-buf/heaps/mtk_secure_heap.c
> 
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index a5eef06c4226..729c0cf3eb7c 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -12,3 +12,11 @@ config DMABUF_HEAPS_CMA
>  	  Choose this option to enable dma-buf CMA heap. This heap is backed
>  	  by the Contiguous Memory Allocator (CMA). If your system has these
>  	  regions, you should say Y here.
> +
> +config DMABUF_HEAPS_MTK_SECURE
> +	bool "DMA-BUF MediaTek Secure Heap"
> +	depends on DMABUF_HEAPS && TEE
> +	help
> +	  Choose this option to enable dma-buf MediaTek secure heap for Secure
> +	  Video Path. This heap is backed by TEE client interfaces. If in
Although this is intended for SVP right now, this is something that very
well could work for other use cases. So, I think I'd not mention "Secure
Video Path" and just mention "secure heap".

> +	  doubt, say N.
> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
> index 974467791032..df559dbe33fe 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_MTK_SECURE)	+= mtk_secure_heap.o
> diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-buf/heaps/mtk_secure_heap.c
> new file mode 100644
> index 000000000000..bbf1c8dce23e
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DMABUF mtk_secure_heap exporter
> + *
> + * Copyright (C) 2023 MediaTek Inc.
> + */
> +
> +#include <linux/dma-buf.h>
> +#include <linux/dma-heap.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +
> +/*
> + * MediaTek secure (chunk) memory type
> + *
> + * @KREE_MEM_SEC_CM_TZ: static chunk memory carved out for trustzone.
nit: s/trustzone/TrustZone/

-- 
// Regards
Joakim

> + */
> +enum kree_mem_type {
> +	KREE_MEM_SEC_CM_TZ = 1,
> +};
> +
> +struct mtk_secure_heap_buffer {
> +	struct dma_heap		*heap;
> +	size_t			size;
> +};
> +
> +struct mtk_secure_heap {
> +	const char		*name;
> +	const enum kree_mem_type mem_type;
> +};
> +
> +static struct dma_buf *
> +mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
> +		      unsigned long fd_flags, unsigned long heap_flags)
> +{
> +	struct mtk_secure_heap_buffer *sec_buf;
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct dma_buf *dmabuf;
> +	int ret;
> +
> +	sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
> +	if (!sec_buf)
> +		return ERR_PTR(-ENOMEM);
> +
> +	sec_buf->size = size;
> +	sec_buf->heap = heap;
> +
> +	exp_info.exp_name = dma_heap_get_name(heap);
> +	exp_info.size = sec_buf->size;
> +	exp_info.flags = fd_flags;
> +	exp_info.priv = sec_buf;
> +
> +	dmabuf = dma_buf_export(&exp_info);
> +	if (IS_ERR(dmabuf)) {
> +		ret = PTR_ERR(dmabuf);
> +		goto err_free_buf;
> +	}
> +
> +	return dmabuf;
> +
> +err_free_buf:
> +	kfree(sec_buf);
> +	return ERR_PTR(ret);
> +}
> +
> +static const struct dma_heap_ops mtk_sec_heap_ops = {
> +	.allocate	= mtk_sec_heap_allocate,
> +};
> +
> +static struct mtk_secure_heap mtk_sec_heap[] = {
> +	{
> +		.name		= "mtk_svp",
> +		.mem_type	= KREE_MEM_SEC_CM_TZ,
> +	},
> +};
> +
> +static int mtk_sec_heap_init(void)
> +{
> +	struct mtk_secure_heap *sec_heap = mtk_sec_heap;
> +	struct dma_heap_export_info exp_info;
> +	struct dma_heap *heap;
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(mtk_sec_heap); i++, sec_heap++) {
> +		exp_info.name = sec_heap->name;
> +		exp_info.ops = &mtk_sec_heap_ops;
> +		exp_info.priv = (void *)sec_heap;
> +
> +		heap = dma_heap_add(&exp_info);
> +		if (IS_ERR(heap))
> +			return PTR_ERR(heap);
> +	}
> +	return 0;
> +}
> +
> +module_init(mtk_sec_heap_init);
> +MODULE_DESCRIPTION("MediaTek Secure Heap Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 

