Return-Path: <devicetree+bounces-31766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B527582C820
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 00:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A60B1F23C8F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 23:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2239C1A707;
	Fri, 12 Jan 2024 23:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="myfLgcSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3755F1A701
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 23:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e43e55b87so17395e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 15:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705103498; x=1705708298; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kp9mV4Ke/a2nl4+Mq/TPZKlXYFvSYBSYldkMY7yov80=;
        b=myfLgcSjytfRZ6t/8DfAQPm/n1Cu0HBmrg+nJyGtRDDzjIc0W7QZE0UMBPAL9W4JHo
         YZidLGqeidk+xuvmLM+Rj6JnLh56L9zWvfKEauB4PO+UOXZrYFvhVzYDzLAMH7EC9otz
         oFSySZFEHTtUJQuAg2SpyD/5WVapblGxUqAzVnDs+Kg80vX8sWnXB/BJhRSB4lNMY4kz
         mk9zy6ipFE2KZeWwh7e9m2dqdt/bNSa3ZoAGi0/JRCo6e+8Tj9UxfmgbHDiMjFWETkJl
         xiXdMovx3hnFFssezLTz4Lf7TWEHmCJTddz6wixJ0pvTSc0k2tZ2a/8oRfBf5luFuaEb
         /nYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705103498; x=1705708298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kp9mV4Ke/a2nl4+Mq/TPZKlXYFvSYBSYldkMY7yov80=;
        b=a68rcGPLZdOOul66va5u1JNNb88fhQpF/CnU5/xJQh+kf+c2TR6EJmLodKv/diuVdf
         hSSdqhkLNrvtdLSgSORJ+4RckRuD+yBhOyW7iIVoSH0H0FkIUuvxtwNARCKqU4nhWe+y
         GKhCSt9pIPVs5eMcsX+LlQqN14Py4QhU3B0UuBhEKh5q+HGysPM5d4M8ERLLbF+A87Vo
         cAI/lNsCZ3+Qw8R+O7G6+8pLnzfetS15MPYY5ff1mhPJvhgUcbOMUR2qKoIaPBiY0mIr
         8aAubBS+kWQMo20o2zK6JzzNKvuoV/sshV4JKIn8p6X12BR/macUj/EUfxUozd24Eab3
         uJwQ==
X-Gm-Message-State: AOJu0YxsHseDEQtldHKfsGFSglgg10UStxsDmXY6oA4VdTk3ZT99Ksfn
	GL+qGXkeIRt0JBNLE2bodqtis4HOxgz+dknm3V9dXD72g0o=
X-Google-Smtp-Source: AGHT+IHw6ArP/KmmpI2CYpNyzdh9UGjQJc8eU/h6V5ZAE1R9MItE23iIMtklhlwhBVwyIqzHg22KBjSAxDaPMMiP1UE=
X-Received: by 2002:a05:600c:3b1d:b0:40d:87df:92ca with SMTP id
 m29-20020a05600c3b1d00b0040d87df92camr30276wms.3.1705103498218; Fri, 12 Jan
 2024 15:51:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com> <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
In-Reply-To: <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 12 Jan 2024 15:51:25 -0800
Message-ID: <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
To: Jeffrey Kardatzke <jkardatzke@google.com>
Cc: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, 
	Sumit Semwal <sumit.semwal@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	tjmercier@google.com, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, 
	Joakim Bech <joakim.bech@linaro.org>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, 
	Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, 
	youlin.pei@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 12, 2024 at 3:27=E2=80=AFPM Jeffrey Kardatzke <jkardatzke@googl=
e.com> wrote:
> On Fri, Jan 12, 2024 at 2:52=E2=80=AFPM John Stultz <jstultz@google.com> =
wrote:
> > On Fri, Jan 12, 2024 at 1:21=E2=80=AFAM Yong Wu <yong.wu@mediatek.com> =
wrote:
> > > diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-bu=
f/heaps/restricted_heap.h
> > > index 443028f6ba3b..ddeaf9805708 100644
> > > --- a/drivers/dma-buf/heaps/restricted_heap.h
> > > +++ b/drivers/dma-buf/heaps/restricted_heap.h
> > > @@ -15,6 +15,18 @@ struct restricted_buffer {
> > >
> > >  struct restricted_heap {
> > >         const char              *name;
> > > +
> > > +       const struct restricted_heap_ops *ops;
> > > +};
> > > +
> > > +struct restricted_heap_ops {
> > > +       int     (*heap_init)(struct restricted_heap *heap);
> > > +
> > > +       int     (*memory_alloc)(struct restricted_heap *heap, struct =
restricted_buffer *buf);
> > > +       void    (*memory_free)(struct restricted_heap *heap, struct r=
estricted_buffer *buf);
> > > +
> > > +       int     (*memory_restrict)(struct restricted_heap *heap, stru=
ct restricted_buffer *buf);
> > > +       void    (*memory_unrestrict)(struct restricted_heap *heap, st=
ruct restricted_buffer *buf);
> > >  };
> > >
> > >  int restricted_heap_add(struct restricted_heap *rstrd_heap);
> >
> > So, I'm a little worried here, because you're basically turning the
> > restricted_heap dma-buf heap driver into a framework itself.
> > Where this patch is creating a subdriver framework.
> >
> > Part of my hesitancy, is you're introducing this under the dma-buf
> > heaps. For things like CMA, that's more of a core subsystem that has
> > multiple users, and exporting cma buffers via dmabuf heaps is just an
> > additional interface.  What I like about that is the core kernel has
> > to define the semantics for the memory type and then the dmabuf heap
> > is just exporting that well understood type of buffer.
> >
> > But with these restricted buffers, I'm not sure there's yet a well
> > understood set of semantics nor a central abstraction for that which
> > other drivers use directly.
> >
> > I know part of this effort here is to start to centralize all these
> > vendor specific restricted buffer implementations, which I think is
> > great, but I just worry that in doing it in the dmabuf heap interface,
> > it is a bit too user-facing. The likelihood of encoding a particular
> > semantic to the singular "restricted_heap" name seems high.
>
> In patch #5 it has the actual driver implementation for the MTK heap
> that includes the heap name of "restricted_mtk_cm", so there shouldn't
> be a heap named "restricted_heap" that's actually getting exposed. The

Ah, I appreciate that clarification! Indeed, you're right the name is
passed through. Apologies for missing that detail.

> restricted_heap code is a framework, and not a driver itself.  Unless
> I'm missing something in this patchset...but that's the way it's
> *supposed* to be.

So I guess I'm not sure I understand the benefit of the extra
indirection. What then does the restricted_heap.c logic itself
provide?
The dmabuf heaps framework already provides a way to add heap implementatio=
ns.

thanks
-john

