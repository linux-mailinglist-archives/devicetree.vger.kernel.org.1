Return-Path: <devicetree+bounces-101871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9676D974A04
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E8CAB251FF
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 05:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BAA7AE5D;
	Wed, 11 Sep 2024 05:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jY4QXMZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0072F757EA
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 05:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726034331; cv=none; b=Y0AzWwFnLNlfOZVLNJbuqgdysu/8Cw60l0ksnMYty5y90s//Lj1r6E5l4AtKZ+NawCzu4/Z00CLY81HrygCgQ/7ilMFFU2iQ3UIh6wTrCT/yIv/tQR9gYbYhCaVJqaNJ9v/hZA5lE0BhCdyqqY6jpnid+XBniLrjOSKFWQGIb0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726034331; c=relaxed/simple;
	bh=3ok7yo4oBzKzexipDG+AmGLtd7pJpE6pVgjrRvNErKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jBeiRl0Rpof7mAPh0Ozr5N6J6hw21fTHSNPr97CpvlRJ/nK1fLR3MV8nAZ1EhU2iKbuo0SMmZlfCgJktUwQ4MWzy8P42Ej4GF5B4Qj/D62UIqiThYGcU9M1wE4XfIMy7U5BZm/vYWtt9XP/dHswz4VTKQWbmwh2b84lXbADgdxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jY4QXMZR; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-277fa3de06fso3028141fac.0
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 22:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726034328; x=1726639128; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQuYmmGkZQSTH3xLGsMnzwcqDZfFYWN76TvS9W1XNG8=;
        b=jY4QXMZRtLCK/vEGOaqo8u4etn4aT/lAp4dpProalGyAuzvuNMuSYLdFUvvePotunc
         GMaY/LmwsYMqgwaWmt5bFhGi5VAfI5u8ngMR0LvPvdWn3hCPIaFbd+5m81iEDh04Kon7
         fVq3UisznPEs/A0a652KC0JVzBMZaubo1/QmVMRXmgdkg7oYHCvYUln/8pP31aTxyWRD
         7RuXh5/Hi/V63Q2K7g956hiOTOMNdciQiej0SyiW9XGS4jHJ5pFaHUoLN6xQFW6naWqF
         MjGUmQhabvsnb1scbXDyC524v4z4/sQN4icGIw3y3fS1NjVEfTHBadH2/5RcF5qwpACs
         0/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726034328; x=1726639128;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NQuYmmGkZQSTH3xLGsMnzwcqDZfFYWN76TvS9W1XNG8=;
        b=If5guLybDKEWYrEqyui7ByB0iL7hV50IgkRg9zd92OaVzmJ9KjSaougArYQaKFdD5D
         th7nlvrpLbPkelRMUteDLQ9hiil+GfEFiq6/YtfS7ePI/QZbZzqKsvmjlfW8xvgT3Egd
         FxeQ7Yplbz6N3itsHlfOvKKK5akla1uPt5TcLkKaJCe/6P+fsRzefCCq2evMCnKohNqT
         1eR33StU9Yov6hvYnxb7nQnwxdmCEQTmnfx1NW9wTb/dw8KoB+pwm5Os2D/M3C0oi1NS
         AFiQcdYtS8abMbuUq04wOvf4rNbwgkXxVs/bPG0ds4uuGDxGP+v48uLfMJAc/esFFOOP
         kLwA==
X-Forwarded-Encrypted: i=1; AJvYcCUoMVJwBrr6ioqLbRKYUTNQENxhfItwYEPhC9Jt8x+zyK2Y5d9SO5GfSSfB9s3YxAgROAVLPNf61Ypi@vger.kernel.org
X-Gm-Message-State: AOJu0YwYK+tTDcWW6fwXY/Nb+ePpkm7tk81CV82xRkl3AI1EDT1i9hYr
	qVkFe2fuywOpfgr58zKTqEYdYAdNhiGqTMSXI5/MyF+T+8Agdo6QIa1zbBltgizdBtjzKu+GRa8
	Sk9fy8YXIXfVumL5jvMrCaTLznEF8XkB+AVd5rfEwcauycsQO4v1f5w==
X-Google-Smtp-Source: AGHT+IGW84UWOA5xC2203pkvht57DpEX0/BC3BhwlaltfaRSJeBxnIuKEFhXcRdVK9MgL8mADdwKjHbUJPQhBWPPeEQ=
X-Received: by 2002:a05:6870:469e:b0:277:ca2f:905 with SMTP id
 586e51a60fabf-27b82fab148mr16719695fac.29.1726034327791; Tue, 10 Sep 2024
 22:58:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-5-jens.wiklander@linaro.org> <CABdmKX2KzswmiDY4oWw69_rPWs8d_Cqp7OXouSeMQaYX1SDSmw@mail.gmail.com>
 <CAHUa44FYYFVQWf0DGUXNHoOVQEC0-HRyYa0386dHNjo4y1qSiQ@mail.gmail.com>
 <CABdmKX0qd0RoTn2TBQTs9zdf=_JP8pW8hFRUR_7n_t-sfxsGdg@mail.gmail.com>
 <CAHUa44E-7UMseWSEeneYYnAPyhH___=a1YYR6uaOVTNZytzg7g@mail.gmail.com> <CABdmKX2Tsp-KG6_Lth7VUcZcxCfgbsBYqZ5N2h574J+sNP2SxA@mail.gmail.com>
In-Reply-To: <CABdmKX2Tsp-KG6_Lth7VUcZcxCfgbsBYqZ5N2h574J+sNP2SxA@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Wed, 11 Sep 2024 07:58:36 +0200
Message-ID: <CAHUa44G9j4rOZHX+XCQyM+mkru12Hy01iyj=USHHiD0raTDfZA@mail.gmail.com>
Subject: Re: [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
To: "T.J. Mercier" <tjmercier@google.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 10, 2024 at 5:08=E2=80=AFPM T.J. Mercier <tjmercier@google.com>=
 wrote:
>
> On Mon, Sep 9, 2024 at 11:06=E2=80=AFPM Jens Wiklander
> <jens.wiklander@linaro.org> wrote:
> >
> > On Wed, Sep 4, 2024 at 11:42=E2=80=AFPM T.J. Mercier <tjmercier@google.=
com> wrote:
> > >
> > > On Wed, Sep 4, 2024 at 2:44=E2=80=AFAM Jens Wiklander <jens.wiklander=
@linaro.org> wrote:
> > > >
> > > > On Tue, Sep 3, 2024 at 7:50=E2=80=AFPM T.J. Mercier <tjmercier@goog=
le.com> wrote:
> > > > >
> > > > > On Fri, Aug 30, 2024 at 12:04=E2=80=AFAM Jens Wiklander
> > > > > <jens.wiklander@linaro.org> wrote:
> > > > > >
> > > > > > Add a Linaro restricted heap using the linaro,restricted-heap b=
indings
> > > > > > implemented based on the generic restricted heap.
> > > > > >
> > > > > > The bindings defines a range of physical restricted memory. The=
 heap
> > > > > > manages this address range using genalloc. The allocated dma-bu=
f file
> > > > > > descriptor can later be registered with the TEE subsystem for l=
ater use
> > > > > > via Trusted Applications in the secure world.
> > > > > >
> > > > > > Co-developed-by: Olivier Masse <olivier.masse@nxp.com>
> > > > > > Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
> > > > > > Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> > > > > > ---
> > > > > >  drivers/dma-buf/heaps/Kconfig                 |  10 ++
> > > > > >  drivers/dma-buf/heaps/Makefile                |   1 +
> > > > > >  .../dma-buf/heaps/restricted_heap_linaro.c    | 165 ++++++++++=
++++++++
> > > > > >  3 files changed, 176 insertions(+)
> > > > > >  create mode 100644 drivers/dma-buf/heaps/restricted_heap_linar=
o.c
> > > > > >
> > > > > > diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/he=
aps/Kconfig
> > > > > > index 58903bc62ac8..82e2c5d09242 100644
> > > > > > --- a/drivers/dma-buf/heaps/Kconfig
> > > > > > +++ b/drivers/dma-buf/heaps/Kconfig
> > > > > > @@ -28,3 +28,13 @@ config DMABUF_HEAPS_RESTRICTED_MTK
> > > > > >         help
> > > > > >           Enable restricted dma-buf heaps for MediaTek platform=
. This heap is backed by
> > > > > >           TEE client interfaces. If in doubt, say N.
> > > > > > +
> > > > > > +config DMABUF_HEAPS_RESTRICTED_LINARO
> > > > > > +       bool "Linaro DMA-BUF Restricted Heap"
> > > > > > +       depends on DMABUF_HEAPS_RESTRICTED
> > > > > > +       help
> > > > > > +         Choose this option to enable the Linaro restricted dm=
a-buf heap.
> > > > > > +         The restricted heap pools are defined according to th=
e DT. Heaps
> > > > > > +         are allocated in the pools using gen allocater.
> > > > > > +         If in doubt, say N.
> > > > > > +
> > > > > > diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/h=
eaps/Makefile
> > > > > > index 0028aa9d875f..66b2f67c47b5 100644
> > > > > > --- a/drivers/dma-buf/heaps/Makefile
> > > > > > +++ b/drivers/dma-buf/heaps/Makefile
> > > > > > @@ -2,4 +2,5 @@
> > > > > >  obj-$(CONFIG_DMABUF_HEAPS_CMA)         +=3D cma_heap.o
> > > > > >  obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED)  +=3D restricted_heap.o
> > > > > >  obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED_MTK)      +=3D restricted=
_heap_mtk.o
> > > > > > +obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED_LINARO)   +=3D restricted=
_heap_linaro.o
> > > > > >  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)      +=3D system_heap.o
> > > > > > diff --git a/drivers/dma-buf/heaps/restricted_heap_linaro.c b/d=
rivers/dma-buf/heaps/restricted_heap_linaro.c
> > > > > > new file mode 100644
> > > > > > index 000000000000..4b08ed514023
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/dma-buf/heaps/restricted_heap_linaro.c
> > > > > > @@ -0,0 +1,165 @@
> > > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > > +/*
> > > > > > + * DMABUF secure heap exporter
> > > > > > + *
> > > > > > + * Copyright 2021 NXP.
> > > > > > + * Copyright 2024 Linaro Limited.
> > > > > > + */
> > > > > > +
> > > > > > +#define pr_fmt(fmt)     "rheap_linaro: " fmt
> > > > > > +
> > > > > > +#include <linux/dma-buf.h>
> > > > > > +#include <linux/err.h>
> > > > > > +#include <linux/genalloc.h>
> > > > > > +#include <linux/module.h>
> > > > > > +#include <linux/of.h>
> > > > > > +#include <linux/of_fdt.h>
> > > > > > +#include <linux/of_reserved_mem.h>
> > > > > > +#include <linux/scatterlist.h>
> > > > > > +#include <linux/slab.h>
> > > > > > +
> > > > > > +#include "restricted_heap.h"
> > > > > > +
> > > > > > +#define MAX_HEAP_COUNT 2
> > > > >
> > > > > Are multiple supported because of what Cyrille mentioned here abo=
ut permissions?
> > > > > https://lore.kernel.org/lkml/DBBPR04MB7514E006455AEA407041E4F7887=
09@DBBPR04MB7514.eurprd04.prod.outlook.com/
> > > >
> > > > Yes, I kept that as is.
> > >
> > > Ok thanks.
> > >
> > > > > So this is just some arbitrary limit? I'd prefer to have some sor=
t of
> > > > > documentation about this.
> > > >
> > > > How about removing the limit and using dynamic allocation instead?
> > >
> > > That works too!
> >
> > It turns out that was easier said than done. The limit is hardcoded
> > because dynamic memory allocation isn't available at that stage during
> > boot. We have a short description of this heap in Kconfig. I'll add
> > something about the limit there if that makes sense.
> >
> > Thanks,
> > Jens
>
> Ah ok sounds good.
>
> I noticed one other thing, linaro_restricted_heap_init and add_heap
> should probably have __init. Last week I sent a patch to add that for
> the CMA and system heaps.

Thanks, I'll add it.

Cheers,
Jens

