Return-Path: <devicetree+bounces-8211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F57B7C7284
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 18:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C72A12828FE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37C68328BA;
	Thu, 12 Oct 2023 16:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="VjJhM/ar"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6099030F8B
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:28:27 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10CE5C6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:28:24 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c28e35752cso15250901fa.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697128101; x=1697732901; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvPFzv/vQzpigDF/RrVmKSWAiTfxGgVgBVZV9bvyAdM=;
        b=VjJhM/arbVrxWrnIHIdgztauEHXuVTZXgR9RyYqPVQY0iDQ6j9dxURhI/RxnRXKkWc
         5YTJCnDP20dwmXHVsEaZB4pbsZJARM9bZtu6X6R7xbyAmjD2jNtQ2OHrJPs3GxHzMuC7
         whBDLTkx6PXOexKp/xCzWWQ7JaFKovEAiIqtIsye5Ug+T37uNwT/JeHr5YMmSWa0gyE+
         5if38w0GFi2+GHX/7dVBY4kZI5w9PPbxumUyYNX24DI1P23qAa/rq3/Na/pVAQtb2EMo
         QvURx8bKeqdb7UByDXlFS7tG69AqVCnJetEiIuNTgR0YURszpmz62WyTBOm60Py6GaxQ
         PUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697128101; x=1697732901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvPFzv/vQzpigDF/RrVmKSWAiTfxGgVgBVZV9bvyAdM=;
        b=bOC4kCMYRm4EyFY37NOsOJT9f4QLD3MuFJBKBhWg52dcHbKHsHlQRMcnn1Px88Kl/W
         Majmq/tY331Cla4s/TZV+bsupY67aeK3ovVml8DL45xwPEmA4z7vW51Cjve7ofv6HZvw
         9MnoSZhWe3m3ME41Tf47y26IyVQIgdjmk5QBnlJkEiTjaiPD+K/aPj1dgvWpT5wqwz91
         0S9IJdzWgE2LpHOrQ4U3S02NnG1aq80xqxjv7YIFYrKRIs+Xu7FtQX1zBcOTpmjkWSvt
         Ez0tSNRcZGXdHzn9KArbFBmuNmkB7kn35MP63K+0Oa67jBS/Rq1uIlDFOWmvheMCaeiF
         i7ww==
X-Gm-Message-State: AOJu0YykYuKqi/MQnJUJxeSmPw8bQ1DkKDHVptOuqmBLe5GaaFndHxei
	DwkUEcUhFPNClwIJrUYBSPwzhrsrp3/oFUqGwPGisQ==
X-Google-Smtp-Source: AGHT+IHn/9WKVUA3hbamQusopdG6YKmUJRdUn5iLBH5qF/lV7QZb90d9hEZv/T0r8aZTXUFepJAIrRuQFMSetp5IOM4=
X-Received: by 2002:a05:6512:3d87:b0:504:7bb0:9d7e with SMTP id
 k7-20020a0565123d8700b005047bb09d7emr26151997lfv.27.1697128101616; Thu, 12
 Oct 2023 09:28:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230712084134.1648008-1-sameo@rivosinc.com> <20230712084134.1648008-2-sameo@rivosinc.com>
 <20230712-bulldozer-affected-199042dc3afd@wendy> <CALs-HsuxxVcwX=mSwktPiEiAFkfK+5qJ6zg1Bzf2t37L=pZWjw@mail.gmail.com>
 <20230713-3f574332a06678f908cee21e@orel> <20230713-aggregate-uncut-e16ee9270b14@wendy>
In-Reply-To: <20230713-aggregate-uncut-e16ee9270b14@wendy>
From: Evan Green <evan@rivosinc.com>
Date: Thu, 12 Oct 2023 09:27:45 -0700
Message-ID: <CALs-Hss0aAa_3dVUcdKN0i0+1F6iZ_d_95K2SwWw-B0MYbEXeQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] RISC-V: Add Bitmanip/Scalar Crypto parsing from DT
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Andrew Jones <ajones@ventanamicro.com>, Samuel Ortiz <sameo@rivosinc.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	"Hongren (Zenithal) Zheng" <i@zenithal.me>, linux@rivosinc.com, 
	Heiko Stuebner <heiko.stuebner@vrull.eu>, Anup Patel <apatel@ventanamicro.com>, 
	linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>, 
	Atish Patra <atishp@rivosinc.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@rivosinc.com>, 
	devicetree@vger.kernel.org, sorear@fastmail.com, 
	Jiatai He <jiatai2021@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Jul 13, 2023 at 4:28=E2=80=AFAM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Thu, Jul 13, 2023 at 10:46:14AM +0200, Andrew Jones wrote:
> > On Wed, Jul 12, 2023 at 10:43:33AM -0700, Evan Green wrote:
> > > On Wed, Jul 12, 2023 at 3:39=E2=80=AFAM Conor Dooley <conor.dooley@mi=
crochip.com> wrote:
> > > > On Wed, Jul 12, 2023 at 10:41:17AM +0200, Samuel Ortiz wrote:
> > > > > From: "Hongren (Zenithal) Zheng" <i@zenithal.me>
> > > > >
> > > > > Parse Zb/Zk related string from DT and output them to cpuinfo.
> > > >
> > > > One thing that has sprung to mind is that this is not limited to DT
> > > > anymore, since the information could in theory come from ACPI too.
> > > > Ditto the title I guess.
> > > >
> > > > > It is worth noting that the Scalar Crypto extension defines "zk" =
as a
> > > > > shorthand for the Zkn, Zkr and Zkt extensions. Since the Zkn one =
also
> > > > > implies the Zbkb, Zbkc and Zbkx extensions, simply passing the va=
lid
> > > > > "zk" extension name through a DT will enable all of the  Zbkb, Zb=
kc,
> > > > > Zbkx, Zkn, Zkr and Zkt extensions.
> > > > >
> > > > > Also, since there currently is no mechanism to merge all enabled
> > > > > extensions, the generated cpuinfo output could be relatively larg=
e.
> > > > > For example, setting the "riscv,isa" DT property to "rv64imafdc_z=
k_zks"
> > > > > will generate the following cpuinfo output:
> > > > > "rv64imafdc_zbkb_zbkc_zbkx_zknd_zkne_zknh_zkr_zksed_zksh_zkt".
> > > >
> > > > On that note, I've created another version of what checking for
> > > > supersets could look like, since it'll be needed either by my serie=
s or
> > > > this one, depending on what gets merged first. I've yet to test the
> > > > dedicated extensions part of it, but I wanted to get this out befor=
e I
> > > > went looking at other fixes in the area.
> > > >
> > > > Evan, since it was you that commented on this stuff last time aroun=
d,
> > > > could you take another look? I'm still not keen on the "subset_of"
> > > > arrays, but they're an improvement on what I had last time around f=
or
> > > > sure.
> > > >
> > >
> > > This looks alright to me. At the risk of getting into bikeshedding
> > > territory, the only awkward bit of it is it composes the extensions i=
n
> > > sort of the opposite way you'd expect. I tend to think of Zks as bein=
g
> > > comprised of {zbkb, zbkc, zksed, zksh},
> >
> > This is also the way I think of it, so, FWIW, I prefer the approach bel=
ow,
> > where bundles are expanded.
>
> I took the patch Evan sent me off-list & have spun it into a "real"
> patch. I did some minor changes (c99 loop, __init marking) to match what
> the code was already doing and expanded it to work for the new property
> stuff.
> I'm not sure that match_isa_ext() needs to be a function, given the
> single user - it might be better refactored to drop the outer if & return
> whether a match was found.
> If done that would allow sharing the same function between isa string and
> dedicated property parsing. I left it intact for now. Might also be
> worth adding kerneldoc for that struct.
>
> -- >8 --
> From 8300b98e487e57d192bc9581c6a3639c40c52623 Mon Sep 17 00:00:00 2001
> From: Evan Green <evan@rivosinc.com>
> Date: Wed, 12 Jul 2023 10:36:15 -0700
> Subject: [PATCH] RISC-V: Add support Scalar Crypto using "bundled extensi=
ons"
>
> The Scalar Crypto specification defines Zk as a shorthand for the
> Zkn, Zkr and Zkt extensions. The same follows for both Zkn, Zks and Zbk,
> which are all shorthands for various other extensions. The detailed
> breakdown can be found in their dt-binding entries.
>
> Since Zkn also implies the Zbkb, Zbkc and Zbkx extensions, simply passing
> "zk" through a DT should enable all of Zbkb, Zbkc, Zbkx, Zkn, Zkr and Zkt=
.
> For example, setting the "riscv,isa" DT property to "rv64imafdc_zk"
> should generate the following cpuinfo output:
> "rv64imafdc_zicntr_zicsr_zifencei_zihpm_zbkb_zbkc_zbkx_zknd_zkne_zknh_zkr=
_zkt"
>
> riscv_isa_ext_data grows a pair of new members, to permit setting the
> relevant bits for "bundled" extensions, both while parsing the ISA string
> and the new dedicated extension properties
>
> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> There's basically none of the original patch left, so I have dropped the
> co-developed-bys and signed-off-bys from before. It does need one from
> you now though Evan!

Oops, I hadn't realized this was blocked on me!

Signed-off-by: Evan Green <evan@rivosinc.com>

