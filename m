Return-Path: <devicetree+bounces-16091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE237ED806
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:18:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02438B20B19
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 23:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77810446DA;
	Wed, 15 Nov 2023 23:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FC7t38K7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF5C12C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:18:44 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1cc79f73e58so23155ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700090324; x=1700695124; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cDX2/TcLZZv47keVH9izOB2UPw4wXcT8INdh+8le7A=;
        b=FC7t38K75g8lhQh4y09fpGMdAlJXSt1aM9rMOfFsyrTZR4DEk9Hh/9bYlx+J6cAXLz
         qmRCOF9dibmNHJqZ9u2mQTD0ge/pVaCWOyipJQ+/ew+jjDIteod3s0ttbQQzbpfqNrEl
         FlChnLSxf+2bwE4BAyzEnRf5LFocB3PMFlKqhMlsT4P5XLEQIQu+DP6rQhyegLTSSlqp
         C+5YZ3iK9F3vy5VquYLinQPIHGxv23ju76VcuUqdeVEjTaOsDAw6WGYXLC9WbQCTYN2I
         WT22g54scfIrLbgktRVtm7/591lyAY8g7en5dLsxgO8stZFfBCLYU8hrnG4jxMfXZZ7l
         rWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090324; x=1700695124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cDX2/TcLZZv47keVH9izOB2UPw4wXcT8INdh+8le7A=;
        b=NdFLfKtW8QmH0Ee9wrvzpx5teJ9MRa96ijFcz8TwtSnjk93iUxb93kZ0O5Hkhorr0X
         yvR4bV0CRbBcRzqvZqIBM4TAuxRNlfp/eh8r/UwE8/JWix5rK3wFuTKT1xsGTmybip7y
         iE1hZ4ftpvZsGJ79FQgV74LGXFBRBBG1Qe2AABy/4vg9zot0d2zf9QACJWH04u7DRbv1
         mQHQT8PLlw+PT/y5ZzisKuO8YybfrMngaD1YJzA33wvVec8bEZFxxX1HI8J6ead/HlNG
         rmB3KDFNkasGxMTmPdg5qslZDYhIAFHfF2Z55ZsYSuthk5z1C2IKxeVU/TWiletLkZqp
         T15g==
X-Gm-Message-State: AOJu0YzZC4rPII8/bTxTykJmo2dAHm/fibM3NgBk65U02/zlI69yVeIM
	VmvSr6zsKwRWsXT3VB4Y8AsYLMQzFk18KCaDEYBz
X-Google-Smtp-Source: AGHT+IGyoRxZw5ygDqLDB76eixVmV7Sl9Rg99pJFDrY1646vTJd9/k/9IdlRgQQs8vDIsMVb3PqED09pUEuJwebdqxU=
X-Received: by 2002:a17:902:d50f:b0:1cc:ff0:213f with SMTP id
 b15-20020a170902d50f00b001cc0ff0213fmr66975plg.2.1700090323863; Wed, 15 Nov
 2023 15:18:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-2-yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-2-yong.wu@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:18:32 -0800
Message-ID: <CA+ddPcMQan85Q8KDdDub=aDe0HB3vy9dBj33ofEoM2WUhFu8Zw@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dma-buf: heaps: Initialize a secure heap
To: Yong Wu <yong.wu@mediatek.com>
Cc: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, 
	christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, tjmercier@google.com, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, 
	Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, 
	Nicolas Dufresne <nicolas@ndufresne.ca>, ckoenig.leichtzumerken@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 11, 2023 at 3:16=E2=80=AFAM Yong Wu <yong.wu@mediatek.com> wrot=
e:
>
> Initialize a secure heap. Currently just add a null heap, Prepare for
> the later patches.
>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/Kconfig       |  7 +++
>  drivers/dma-buf/heaps/Makefile      |  1 +
>  drivers/dma-buf/heaps/secure_heap.c | 98 +++++++++++++++++++++++++++++
>  3 files changed, 106 insertions(+)
>  create mode 100644 drivers/dma-buf/heaps/secure_heap.c
>
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfi=
g
> index a5eef06c4226..e358bf711145 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -12,3 +12,10 @@ config DMABUF_HEAPS_CMA
>           Choose this option to enable dma-buf CMA heap. This heap is bac=
ked
>           by the Contiguous Memory Allocator (CMA). If your system has th=
ese
>           regions, you should say Y here.
> +
> +config DMABUF_HEAPS_SECURE
> +       bool "DMA-BUF Secure Heap"
> +       depends on DMABUF_HEAPS && TEE
> +       help
> +         Choose this option to enable dma-buf secure heap. This heap is =
backed by
> +         TEE client interfaces or CMA. If in doubt, say N.

Remove the mention of TEE and CMA from this.

You should probably add two KConfig options. One is for
DMABUF_HEAPS_SECURE which is for the framework for secure heaps. The
other one should be:

config MTK_DMABUF_HEAPS_SECURE
    bool "Mediatek DMA-BUF Secure Heap"
    depends on DMABUF_HEAPS_SECURE && TEE
    help
        Enables secure dma-buf heaps for Mediatek platforms.


> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makef=
ile
> index 974467791032..b1ad9d1f2fbe 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_DMABUF_HEAPS_SECURE)      +=3D secure_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)      +=3D system_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)         +=3D cma_heap.o
> diff --git a/drivers/dma-buf/heaps/secure_heap.c b/drivers/dma-buf/heaps/=
secure_heap.c
> new file mode 100644
> index 000000000000..a634051a0a67
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/secure_heap.c
> @@ -0,0 +1,98 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DMABUF secure heap exporter
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
> +enum secure_memory_type {
> +       /*
> +        * MediaTek static chunk memory carved out for TrustZone. The mem=
ory
> +        * management is inside the TEE.
> +        */
> +       SECURE_MEMORY_TYPE_MTK_CM_TZ    =3D 1,

Mediatek specific code for secure dma heaps should go into a new file
(maybe secure_heap_mtk.c which the MTK_DMABUF_HEAPS_SECURE option
enables).

> +};
> +
> +struct secure_buffer {
> +       struct dma_heap                 *heap;
> +       size_t                          size;
> +};
> +
> +struct secure_heap {
> +       const char                      *name;
> +       const enum secure_memory_type   mem_type;
secure_memory_type is going to be in the vendor specific
implementation, I don't think you need it in the framework.

> +};

You should probably move these to a <linux/dma-heap-secure.h> file so
they can be shared by the framework and the specific implementation
(in this case vendor specific).

> +
> +static struct dma_buf *
> +secure_heap_allocate(struct dma_heap *heap, unsigned long size,
> +                    unsigned long fd_flags, unsigned long heap_flags)
> +{
> +       struct secure_buffer *sec_buf;
> +       DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +       struct dma_buf *dmabuf;
> +       int ret;
> +
> +       sec_buf =3D kzalloc(sizeof(*sec_buf), GFP_KERNEL);
> +       if (!sec_buf)
> +               return ERR_PTR(-ENOMEM);
> +
> +       sec_buf->size =3D ALIGN(size, PAGE_SIZE);
> +       sec_buf->heap =3D heap;
> +
> +       exp_info.exp_name =3D dma_heap_get_name(heap);
> +       exp_info.size =3D sec_buf->size;
> +       exp_info.flags =3D fd_flags;
> +       exp_info.priv =3D sec_buf;
> +
> +       dmabuf =3D dma_buf_export(&exp_info);
> +       if (IS_ERR(dmabuf)) {
> +               ret =3D PTR_ERR(dmabuf);
> +               goto err_free_buf;
> +       }
> +
> +       return dmabuf;
> +
> +err_free_buf:
> +       kfree(sec_buf);
> +       return ERR_PTR(ret);
> +}
> +
> +static const struct dma_heap_ops sec_heap_ops =3D {
> +       .allocate =3D secure_heap_allocate,
> +};
> +
> +static struct secure_heap secure_heaps[] =3D {
> +       {
> +               .name           =3D "secure_mtk_cm",
> +               .mem_type       =3D SECURE_MEMORY_TYPE_MTK_CM_TZ,
> +       },
> +};

Move this to the vendor specific implementation.

> +
> +static int secure_heap_init(void)
> +{
> +       struct secure_heap *sec_heap =3D secure_heaps;
> +       struct dma_heap_export_info exp_info;
> +       struct dma_heap *heap;
> +       unsigned int i;
> +
> +       for (i =3D 0; i < ARRAY_SIZE(secure_heaps); i++, sec_heap++) {
> +               exp_info.name =3D sec_heap->name;
> +               exp_info.ops =3D &sec_heap_ops;
> +               exp_info.priv =3D (void *)sec_heap;
> +
> +               heap =3D dma_heap_add(&exp_info);
> +               if (IS_ERR(heap))
> +                       return PTR_ERR(heap);
> +       }
> +       return 0;
> +}

secure_heap_init should take a 'struct secure_heap*' as an argument
and be defined in dma-heap-secure.h.

> +
> +module_init(secure_heap_init);
> +MODULE_DESCRIPTION("Secure Heap Driver");
> +MODULE_LICENSE("GPL");

Remove from this file, it should go in the specific implementations.

> --
> 2.25.1
>

