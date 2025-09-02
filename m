Return-Path: <devicetree+bounces-211824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2500B40C07
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 19:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4C045642C1
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 17:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42561345749;
	Tue,  2 Sep 2025 17:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NHyhGZr/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56097343211
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 17:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756834036; cv=none; b=m4LoaYpWsSTLeIaOwKFhAVbbfwHC9HfqtA0qHjVPefHH1EK/JpTHWeI1ixcIkLERIGVASoGmExfIZuj3UwP81BxZteTpNWWlZB8FLXg/84ecVv91X1f+BQfjdH76ddrqTtot0+yAJp47zdi41bl5/lXgnaKG7ZAtCztIiW+1Yac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756834036; c=relaxed/simple;
	bh=gkNbJDEaQQAvTwAgN26mob9bJhlWiUblqarXN/zX5aA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d7atdCmyj5HCIE5/4+ojkbnx4VxO38rJCCfeWzqC1XfB/s8M7y70G0j1o2VMXVihXQKeVIAGqWl2swhFduvHlhh4fgzR39OPCjhUbBoagTA8144PPUUaJxWF2xNT7dUWWgYsYvK6ddnZFm6msFiC7v0RB20NBAbY3grC28TvefE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=NHyhGZr/; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4b350971a2eso23821cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756834033; x=1757438833; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vtd7VHBua4ceoiPNxCebsTr+W/5i6xNmrYZ+hl6cZwE=;
        b=NHyhGZr/BGclM+u+cJtzr2m6jgnmwmYWcD+hwa0li9g5cJEMcxnaAqXxF4bUTMyncj
         +47gADrO09qC4u9e5xJoi5mBKFI4OJ0LFGDmYwr8dvSYIiZsEp3PsE81MBJgdoNs4/Dg
         CuJgZE1OkQ7kaOwQlDodlK07roKMidY3rmWSZUg8UXDS31ZDS8IO3k3dnmywokLC8rUW
         DkIyE+AffhBdxOWIQhLzE/QFDSIx+RbQhsZ4pZztcOZq4VLZdfBdr69NJxF9II1kRilm
         vAaEDCPYjZRtYbrdlsbpRRAZ2C76nEgGVbdqVAD+4uJKQECCDMU1+LYUGpfk27nRDKof
         lTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756834033; x=1757438833;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vtd7VHBua4ceoiPNxCebsTr+W/5i6xNmrYZ+hl6cZwE=;
        b=pq0AHMMmAlwV7zcS0O7wQmyPGuVO6XYXAmWWwcs3rfMH354fhxjxTZJrjKqznOPAlL
         n0waR/2RAE1UzVTa4JWBfv1ZVoSk6GvvcCF7fbiyOHnGgBCi9sMOPPKRM0C4F+RNZe5s
         fnBABWJd75nGazO6GqhvXecvzXjEVDML7VXlpC4hkmNa3g1dGcWAA1TsvkENSe/ovE+p
         XPdRvRh3GLZevJUuql+aR8U7wrqVskUGZPF02364W1jnRbOiwvW3s72cuPogAAVPzyjY
         tEXlTspx2catO+Mk4MqZDiqtrZoyvJM/+SLCGocrPknQjkrdvPwrGlCfiUuwrf1umOgI
         iJSQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+6q9obSBUC8Vsizq/gU/j/ZN5V5+Mrt1bdekAMX+SH1ycz1xn7sLlugyedGljgoyEJFrelXvo5f+7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn4Rrudg1Ab3KFnV4QKfzlWiXL5sG38jg3bTC58lDluYaR9v0R
	k9oEDNqk4EYI4hSOpz/9nv95Bq9BPGJSTnM7f6oCtxizEG0wjArpKnilsx+Oe33sT88nAc0E/rA
	MV5cyode+yVawOZv/Au/w3p0+4HyEyuq2MD8K7XbZ
X-Gm-Gg: ASbGnctzjK1L+GUxbkGuxnCn95b+YfsHdQ/o0YO8E/2H7KiJuLXh17DdhAxANSkryI+
	3m6U1MBODP8GCPbbcrZ2WhKMU7KCk7OjM8aynpPYNSvOnRMg+N+t7c7+mml4HzdGmQfOgiBc5t4
	Csg8CBTG0ehj/zA2Ax9ZLBxsa1oiBt/5VViJvwOWxOarQvii6oteFQDAb7zCcluGnW3xfta4vof
	WO0jYFQaftQZui/2PCa9g==
X-Google-Smtp-Source: AGHT+IEC6y1tRdSi2UTqmtXyZZzRrZPY9SLNKXOIO98qFYX+T6uH0H7eN0bzXqp5gDwmp+jCKoimReIKubvN32ot1YM=
X-Received: by 2002:a05:622a:609:b0:4b2:9d13:e973 with SMTP id
 d75a77b69052e-4b48dc6d116mr536321cf.0.1756834032561; Tue, 02 Sep 2025
 10:27:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902154630.4032984-1-thierry.reding@gmail.com> <20250902154630.4032984-4-thierry.reding@gmail.com>
In-Reply-To: <20250902154630.4032984-4-thierry.reding@gmail.com>
From: Frank van der Linden <fvdl@google.com>
Date: Tue, 2 Sep 2025 10:27:01 -0700
X-Gm-Features: Ac12FXxFN3O8AlGVbL0n79ufqlqXNkpXNtbyObY0H0t07exhvNnrkMb8tnUsJCI
Message-ID: <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
Subject: Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
To: Thierry Reding <thierry.reding@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, 
	Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding@gmail=
.com> wrote:
>
> From: Thierry Reding <treding@nvidia.com>
>
> There is no technical reason why there should be a limited number of CMA
> regions, so extract some code into helpers and use them to create extra
> functions (cma_create() and cma_free()) that allow creating and freeing,
> respectively, CMA regions dynamically at runtime.
>
> Note that these dynamically created CMA areas are treated specially and
> do not contribute to the number of total CMA pages so that this count
> still only applies to the fixed number of CMA areas.
>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  include/linux/cma.h | 16 ++++++++
>  mm/cma.c            | 89 ++++++++++++++++++++++++++++++++++-----------
>  2 files changed, 83 insertions(+), 22 deletions(-)
>
> diff --git a/include/linux/cma.h b/include/linux/cma.h
> index 62d9c1cf6326..f1e20642198a 100644
> --- a/include/linux/cma.h
> +++ b/include/linux/cma.h
> @@ -61,6 +61,10 @@ extern void cma_reserve_pages_on_error(struct cma *cma=
);
>  struct folio *cma_alloc_folio(struct cma *cma, int order, gfp_t gfp);
>  bool cma_free_folio(struct cma *cma, const struct folio *folio);
>  bool cma_validate_zones(struct cma *cma);
> +
> +struct cma *cma_create(phys_addr_t base, phys_addr_t size,
> +                      unsigned int order_per_bit, const char *name);
> +void cma_free(struct cma *cma);
>  #else
>  static inline struct folio *cma_alloc_folio(struct cma *cma, int order, =
gfp_t gfp)
>  {
> @@ -71,10 +75,22 @@ static inline bool cma_free_folio(struct cma *cma, co=
nst struct folio *folio)
>  {
>         return false;
>  }
> +
>  static inline bool cma_validate_zones(struct cma *cma)
>  {
>         return false;
>  }
> +
> +static inline struct cma *cma_create(phys_addr_t base, phys_addr_t size,
> +                                    unsigned int order_per_bit,
> +                                    const char *name)
> +{
> +       return NULL;
> +}
> +
> +static inline void cma_free(struct cma *cma)
> +{
> +}
>  #endif
>
>  #endif
> diff --git a/mm/cma.c b/mm/cma.c
> index e56ec64d0567..8149227d319f 100644
> --- a/mm/cma.c
> +++ b/mm/cma.c
> @@ -214,6 +214,18 @@ void __init cma_reserve_pages_on_error(struct cma *c=
ma)
>         set_bit(CMA_RESERVE_PAGES_ON_ERROR, &cma->flags);
>  }
>
> +static void __init cma_init_area(struct cma *cma, const char *name,
> +                                phys_addr_t size, unsigned int order_per=
_bit)
> +{
> +       if (name)
> +               snprintf(cma->name, CMA_MAX_NAME, "%s", name);
> +       else
> +               snprintf(cma->name, CMA_MAX_NAME,  "cma%d\n", cma_area_co=
unt);
> +
> +       cma->available_count =3D cma->count =3D size >> PAGE_SHIFT;
> +       cma->order_per_bit =3D order_per_bit;
> +}
> +
>  static int __init cma_new_area(const char *name, phys_addr_t size,
>                                unsigned int order_per_bit,
>                                struct cma **res_cma)
> @@ -232,13 +244,8 @@ static int __init cma_new_area(const char *name, phy=
s_addr_t size,
>         cma =3D &cma_areas[cma_area_count];
>         cma_area_count++;
>
> -       if (name)
> -               snprintf(cma->name, CMA_MAX_NAME, "%s", name);
> -       else
> -               snprintf(cma->name, CMA_MAX_NAME,  "cma%d\n", cma_area_co=
unt);
> +       cma_init_area(cma, name, size, order_per_bit);
>
> -       cma->available_count =3D cma->count =3D size >> PAGE_SHIFT;
> -       cma->order_per_bit =3D order_per_bit;
>         *res_cma =3D cma;
>         totalcma_pages +=3D cma->count;
>
> @@ -251,6 +258,27 @@ static void __init cma_drop_area(struct cma *cma)
>         cma_area_count--;
>  }
>
> +static int __init cma_check_memory(phys_addr_t base, phys_addr_t size)
> +{
> +       if (!size || !memblock_is_region_reserved(base, size))
> +               return -EINVAL;
> +
> +       /*
> +        * CMA uses CMA_MIN_ALIGNMENT_BYTES as alignment requirement whic=
h
> +        * needs pageblock_order to be initialized. Let's enforce it.
> +        */
> +       if (!pageblock_order) {
> +               pr_err("pageblock_order not yet initialized. Called durin=
g early boot?\n");
> +               return -EINVAL;
> +       }
> +
> +       /* ensure minimal alignment required by mm core */
> +       if (!IS_ALIGNED(base | size, CMA_MIN_ALIGNMENT_BYTES))
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
>  /**
>   * cma_init_reserved_mem() - create custom contiguous area from reserved=
 memory
>   * @base: Base address of the reserved area
> @@ -271,22 +299,9 @@ int __init cma_init_reserved_mem(phys_addr_t base, p=
hys_addr_t size,
>         struct cma *cma;
>         int ret;
>
> -       /* Sanity checks */
> -       if (!size || !memblock_is_region_reserved(base, size))
> -               return -EINVAL;
> -
> -       /*
> -        * CMA uses CMA_MIN_ALIGNMENT_BYTES as alignment requirement whic=
h
> -        * needs pageblock_order to be initialized. Let's enforce it.
> -        */
> -       if (!pageblock_order) {
> -               pr_err("pageblock_order not yet initialized. Called durin=
g early boot?\n");
> -               return -EINVAL;
> -       }
> -
> -       /* ensure minimal alignment required by mm core */
> -       if (!IS_ALIGNED(base | size, CMA_MIN_ALIGNMENT_BYTES))
> -               return -EINVAL;
> +       ret =3D cma_check_memory(base, size);
> +       if (ret < 0)
> +               return ret;
>
>         ret =3D cma_new_area(name, size, order_per_bit, &cma);
>         if (ret !=3D 0)
> @@ -1112,3 +1127,33 @@ void __init *cma_reserve_early(struct cma *cma, un=
signed long size)
>
>         return ret;
>  }
> +
> +struct cma *__init cma_create(phys_addr_t base, phys_addr_t size,
> +                             unsigned int order_per_bit, const char *nam=
e)
> +{
> +       struct cma *cma;
> +       int ret;
> +
> +       ret =3D cma_check_memory(base, size);
> +       if (ret < 0)
> +               return ERR_PTR(ret);
> +
> +       cma =3D kzalloc(sizeof(*cma), GFP_KERNEL);
> +       if (!cma)
> +               return ERR_PTR(-ENOMEM);
> +
> +       cma_init_area(cma, name, size, order_per_bit);
> +       cma->ranges[0].base_pfn =3D PFN_DOWN(base);
> +       cma->ranges[0].early_pfn =3D PFN_DOWN(base);
> +       cma->ranges[0].count =3D cma->count;
> +       cma->nranges =3D 1;
> +
> +       cma_activate_area(cma);
> +
> +       return cma;
> +}
> +
> +void cma_free(struct cma *cma)
> +{
> +       kfree(cma);
> +}
> --
> 2.50.0


I agree that supporting dynamic CMA areas would be good. However, by
doing it like this, these CMA areas are invisible to the rest of the
system. E.g. cma_for_each_area() does not know about them. It seems a
bit inconsistent that there will now be some areas that are globally
known, and some that are not.

I am being somewhat selfish here, as I have some WIP code that needs
the global list :-) But I think the inconsistency is a more general
point than just what I want (and the s390 code does use
cma_for_each_area()). Maybe you could keep maintaining a global
structure containing all areas? What do you think are the chances of
running out of the global count of areas?

Also, you say that "these are treated specially and do not contribute
to the number of total CMA pages". But, if I'm reading this right, you
do call cma_activate_area(), which will do
init_cma_reserved_pageblock() for each pageblock in it. Which adjusts
the CMA counters for the zone they are in. But your change does not
adjust totalcma_pages for dynamically created areas. That seems
inconsistent, too.

- Frank

