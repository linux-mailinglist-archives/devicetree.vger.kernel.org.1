Return-Path: <devicetree+bounces-28579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A90E81EC6F
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 07:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35CC1282F41
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 06:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6A99442C;
	Wed, 27 Dec 2023 06:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HaikW3K/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6F263B6
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 06:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dbdb5e37f93so3376506276.3
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 22:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703657112; x=1704261912; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kEKjovWuYxpJqS1fAk7+OKeuiHleqNwWwut073yxsFg=;
        b=HaikW3K/u0NYxnOQpByhK7yGCrFeTby0Fr1AwcNayyWEsTH/wOq0ZH+gfY6LIUIz4r
         OmvEHG3rT6e17OxZ/du7sZigYQiWEE9K5t2LGHwd3faUiROc5s4vzmmCNu4ktW0WqaRD
         NFX/7bm59KH+zrBvqbTnAIRANKmfKpvkkyHLdO7gr75ZlhZuhEHRZE0Qlsd8CzwOu/tU
         KEoS/uFofaXMGxVCP/8qfryhY5/oYWWUDwfyoOEtmMtCx9wraZ9DpTtP2wGt5y2Vmvlg
         v7P0yGpAN0WlBu80frmKS8Uk+F0sg8TKWLa8qHu+oCiukq4SYMt+wBBeapswYUbyUlTn
         3CFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703657112; x=1704261912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kEKjovWuYxpJqS1fAk7+OKeuiHleqNwWwut073yxsFg=;
        b=w58La1XKBD3N7iaLRNMhXXUBpx0WG8EdSSJFwcaj9xbW+F9TD+jI11Nd3r0bL690qm
         pxnnh9VrPPzylbo7eSiygtLwnpYv5x7JP/7qF/S+vIyLHbrLgVOl7a6TrRrujvq4aN4I
         K/ivNq+rEypE4A+znQO4pdcF68wrbcu9LEzq63i+ENn23qHXplkiCrn2O3/R3wWK9Lkz
         MV4AdF0naKxtVEqZ5Zmr9GXH2XpS4ZN1VruYwWMBJ/fkZra7/bBwwTAU0VsBZKMt2mwR
         FZlRapa1Fzca99GrkDa0B0tGKauRPbLwNptIM2AN7UaHRk54icY/69CF0UYdGtntq9mE
         u7kQ==
X-Gm-Message-State: AOJu0YyWYrhemPj9/QB6U6neqI6x2g/YQW5W2MOy+Ab7jbIzNwDqUO/u
	NQazphPnLTh/cD8P95bpg3+qSJxk+qO6g+2sMO0=
X-Google-Smtp-Source: AGHT+IFGTodi7r7DuXwFGu6dkeX67vCAZ7BuZa9KAVTGY4nyX6+mi8TiSd5HJFeEIPZVQY7fkz3alsEK7qDgczU4nqM=
X-Received: by 2002:a05:6902:e02:b0:dbd:d73f:7cd7 with SMTP id
 df2-20020a0569020e0200b00dbdd73f7cd7mr4398976ybb.70.1703657112484; Tue, 26
 Dec 2023 22:05:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1703229766.git.zhoubinbin@loongson.cn> <20231222-support-relieve-5d8f25292b40@spud>
In-Reply-To: <20231222-support-relieve-5d8f25292b40@spud>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 27 Dec 2023 12:04:59 +0600
Message-ID: <CAMpQs4+Uwu=j56Qa_V211_hC+F4MKE6mvTVtW75M1wuAY3-p1g@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] LoongArch: Add built-in dtb support
To: Conor Dooley <conor@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor:

Sorry for the late reply.

On Fri, Dec 22, 2023 at 9:39=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> Hey Binbin,
>
> On Fri, Dec 22, 2023 at 04:00:43PM +0800, Binbin Zhou wrote:
> > Hi all:
> >
> > This patchset introduces LoongArch's built-in dtb support.
> >
> > During the upstream progress of those DT-based drivers, DT properties
> > are changed a lot so very different from those in existing bootloaders.
> > It is inevitably that some existing systems do not provide a standard,
> > canonical device tree to the kernel at boot time. So let's provide a
> > device tree table in the kernel, keyed by the dts filename, containing
> > the relevant DTBs.
> >
> > We can use the built-in dts files as references. Each SoC has only one
> > built-in dts file which describes all possible device information of
> > that SoC, so the dts files are good examples during development.
> >
> > And as a reference, our built-in dts file only enables the most basic
> > bootable combinations (so it is generic enough), acts as an alternative
> > in case the dts in the bootloader is unexpected.
> >
> > In the past while, we resolved the DTC_CHK warning for the v4 patchset,
> > and the relevant patchset has either been applied or had the
> > Reviewed-by tag added.
>
> I notice you dropped the topology information from all patches in the
> series, not only the 2k0500 patch that only has one CPU. I didn't see a
> response to my comments the kernel being able to assemble the topology
> based on the second level caches using the generic topology code for the
> systems that have more than one cpu. With the cpu-map information
> dropped, do the multi-cpu systems have their topologies assembled
> correctly by the kernel?

As we saw previously, our DT-based system only supports single cluster
cpu{s}, and multi-cluster cpu is not going to be in our plans.

> You mentioned that there is an instruction that allows you to get
> information about i and d caches etc, so adding them to the DT is not
> required, but does it also cover the next level caches?

Firstly, sorry for my previous mistake about the cache reads.
`cpucfg` is actually a set of registers that describes the features of
the cpu, including the CPU cache [1].
`populate_cache_properties()` reads all levels of cache information
[2], including of course `next cache` if it exists.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/arch/loongarch/include/asm/loongarch.h#n765
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/arch/loongarch/mm/cache.c#n94

> The program that I am familiar with for displaying this information
> is hwloc: https://github.com/open-mpi/hwloc
>

Ah, yes, I tried looking at the `hwloc-ls` output before committing,
and it's below(LS2K1000):

[root@fedora ~]# hwloc-ls
Machine (7730MB total)
  Package L#0
    NUMANode L#0 (P#0 7730MB)
    L2 L#0 (1024KB)
      L1d L#0 (32KB) + L1i L#0 (32KB) + Core L#0 + PU L#0 (P#0)
      L1d L#1 (32KB) + L1i L#1 (32KB) + Core L#1 + PU L#1 (P#1)

It's the same as what we actually have.

Thanks.
Binbin
> Cheers,
> Conor.
>

