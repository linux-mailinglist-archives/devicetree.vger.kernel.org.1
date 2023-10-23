Return-Path: <devicetree+bounces-11027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 166B97D3D75
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE53B281397
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB0E2033F;
	Mon, 23 Oct 2023 17:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ZlIfQDNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F22208B3
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:25:48 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C9E4AF
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:25:45 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6b6f4c118b7so2867516b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698081945; x=1698686745; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpK3G54TkSLci3Gltn2OyGNebx0CUf5Xfw9cB+R9OFE=;
        b=ZlIfQDNZOZO41TEc+gH1K/Ds5gLIGj0h14hPUi/DKzTb6o/3h19xt7gXVu4RkN904R
         XNaDBbzXBxYYXVPBMyTAYY1lTMlzPAr+WTX/PzcZclwLQzBgNfINbS/rEPw73yIGSLa/
         pA1mb2dfN4zeL5qGfBXZNsp+bW6+wKzRXYCPQfZV0kfX+l9YSgrOepWVIVvl2p0cKGko
         4XUHGvbL3AToqosdMVtixIaPaCMGIhkZA2cqjKp3zi2QPbXD7DmbqqlVqm7d3az2wug8
         l2w35WnA3k7/0YPk4g6xb9RGETxZfp2QNyxnQZqPEukHzsGa5FTThOC5sKwygj0YGHrh
         PElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698081945; x=1698686745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QpK3G54TkSLci3Gltn2OyGNebx0CUf5Xfw9cB+R9OFE=;
        b=LGAagCl4kgejhk3x0+RuFaylw12Cvt8JT5xQcbhagyBOfM37/ubwR8JTnlsbiTVXOh
         rPoZc9Bpc8B88vHwE2iL8ePOWYKLC+iP5mt6d+i0pZtj45I27SE659bcfcO3L8yBL4UD
         O3ubGQ+u1KtkQt/lBvlaqUGwwlRveRp+fa85Gqc3e3GUEEDRFXwj6yVndOutLCTFPI6V
         Wb+t1KkUJ6z0BHPGbLz9ev9HtAqvFYP3MFeJlBCi+GJh0mKG3iYqfpEhbYYicEJZgEsd
         AmQcNVkK4rBMUEVxgsHWOqTawPrk4GyDD4VaTDtoJF5IeYuwL1Xbl3JQDBN+l5Oe002Y
         x/Hg==
X-Gm-Message-State: AOJu0Ywr1rK5353X+ElUNGTXfiNHB92btf7GOjOm4AfALfbteq3kEmCr
	x34YmbbLgFCBNNTtOBBLJZ6r1isp3XH4VVzMmYgztw==
X-Google-Smtp-Source: AGHT+IH5o8XIqLOkf8aaqedevqQqI+3yx02xa7T6I/1pvNe7XQTewdArpwpJhEJhAM/XwV1dTvjRqaicbC2RXrMVNoY=
X-Received: by 2002:a05:6a00:1788:b0:6b5:86c3:ccaf with SMTP id
 s8-20020a056a00178800b006b586c3ccafmr9151667pfg.22.1698081944598; Mon, 23 Oct
 2023 10:25:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231003044403.1974628-1-apatel@ventanamicro.com>
 <87o7gu7mo9.fsf@all.your.base.are.belong.to.us> <CAK9=C2XMzzYri8TNBASKqc-VmJWjGdoOHy-fczksfkU0ahhgOQ@mail.gmail.com>
 <87h6mlbryy.fsf@all.your.base.are.belong.to.us> <CAK9=C2VE9-L49tMKHjSTGDSpOFZGZw14LtD1V4GMXGiVQ-A=ng@mail.gmail.com>
 <87o7gtpdb4.fsf@all.your.base.are.belong.to.us> <CAK9=C2WVkbDtz9uZTNjEcJzKQ44cHLR=+nSVZZmSptzL_U4NNA@mail.gmail.com>
 <87v8b1i72s.fsf@all.your.base.are.belong.to.us> <CAK9=C2X__tYk21F+o2GmKDMzdnZf8TXJn=baO248ao8as47vnA@mail.gmail.com>
 <875y31cc2y.fsf@all.your.base.are.belong.to.us> <87jzrdx1mm.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2U2FEoAPgoxibsbPsjF+d+APWFuJtEL43=xxwnwM4L1ZA@mail.gmail.com>
 <87pm15l9fd.fsf@all.your.base.are.belong.to.us> <CAK9=C2UN4+HcNfM+JKDH=ERT7WqLgf7DXck=pSZjuCw0YN87Og@mail.gmail.com>
 <87v8axqr5u.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87v8axqr5u.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 23 Oct 2023 22:55:32 +0530
Message-ID: <CAK9=C2W=dfLpk=pd3d=F1_zCrw6iMLg=ws_N1+0SVYfbK8YwFQ@mail.gmail.com>
Subject: Re: [PATCH v10 00/15] Linux RISC-V AIA Support
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 9:15=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > On Mon, Oct 23, 2023 at 7:37=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@ke=
rnel.org> wrote:
> >>
> >> Anup Patel <apatel@ventanamicro.com> writes:
> >>
> >> > On Mon, Oct 23, 2023 at 12:32=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjor=
n@kernel.org> wrote:
> >> >>
> >> >> Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:
> >> >>
> >> >> > Anup Patel <apatel@ventanamicro.com> writes:
> >> >> >
> >> >> >> On Fri, Oct 20, 2023 at 10:07=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <=
bjorn@kernel.org> wrote:
> >> >> >>>
> >> >> >>> Anup Patel <apatel@ventanamicro.com> writes:
> >> >> >>>
> >> >> >>> > On Fri, Oct 20, 2023 at 8:10=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel=
 <bjorn@kernel.org> wrote:
> >> >> >>> >>
> >> >> >>> >> Anup Patel <apatel@ventanamicro.com> writes:
> >> >> >>> >>
> >> >> >>> >> > On Fri, Oct 20, 2023 at 2:17=E2=80=AFPM Bj=C3=B6rn T=C3=B6=
pel <bjorn@kernel.org> wrote:
> >> >> >>> >> >>
> >> >> >>> >> >> Thanks for the quick reply!
> >> >> >>> >> >>
> >> >> >>> >> >> Anup Patel <apatel@ventanamicro.com> writes:
> >> >> >>> >> >>
> >> >> >>> >> >> > On Thu, Oct 19, 2023 at 7:13=E2=80=AFPM Bj=C3=B6rn T=C3=
=B6pel <bjorn@kernel.org> wrote:
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> Hi Anup,
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> Anup Patel <apatel@ventanamicro.com> writes:
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> > The RISC-V AIA specification is ratified as-per the =
RISC-V international
> >> >> >>> >> >> >> > process. The latest ratified AIA specifcation can be=
 found at:
> >> >> >>> >> >> >> > https://github.com/riscv/riscv-aia/releases/download=
/1.0/riscv-interrupts-1.0.pdf
> >> >> >>> >> >> >> >
> >> >> >>> >> >> >> > At a high-level, the AIA specification adds three th=
ings:
> >> >> >>> >> >> >> > 1) AIA CSRs
> >> >> >>> >> >> >> >    - Improved local interrupt support
> >> >> >>> >> >> >> > 2) Incoming Message Signaled Interrupt Controller (I=
MSIC)
> >> >> >>> >> >> >> >    - Per-HART MSI controller
> >> >> >>> >> >> >> >    - Support MSI virtualization
> >> >> >>> >> >> >> >    - Support IPI along with virtualization
> >> >> >>> >> >> >> > 3) Advanced Platform-Level Interrupt Controller (APL=
IC)
> >> >> >>> >> >> >> >    - Wired interrupt controller
> >> >> >>> >> >> >> >    - In MSI-mode, converts wired interrupt into MSIs=
 (i.e. MSI generator)
> >> >> >>> >> >> >> >    - In Direct-mode, injects external interrupts dir=
ectly into HARTs
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> Thanks for working on the AIA support! I had a look at=
 the series, and
> >> >> >>> >> >> >> have some concerns about interrupt ID abstraction.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> A bit of background, for readers not familiar with the=
 AIA details.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> IMSIC allows for 2047 unique MSI ("msi-irq") sources p=
er hart, and
> >> >> >>> >> >> >> each MSI is dedicated to a certain hart. The series ta=
kes the approach
> >> >> >>> >> >> >> to say that there are, e.g., 2047 interrupts ("lnx-irq=
") globally.
> >> >> >>> >> >> >> Each lnx-irq consists of #harts * msi-irq -- a slice -=
- and in the
> >> >> >>> >> >> >> slice only *one* msi-irq is acutally used.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> This scheme makes affinity changes more robust, becaus=
e the interrupt
> >> >> >>> >> >> >> sources on "other" harts are pre-allocated. On the oth=
er hand it
> >> >> >>> >> >> >> requires to propagate irq masking to other harts via I=
PIs (this is
> >> >> >>> >> >> >> mostly done up setup/tear down). It's also wasteful, b=
ecause msi-irqs
> >> >> >>> >> >> >> are hogged, and cannot be used.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> Contemporary storage/networking drivers usually uses q=
ueues per core
> >> >> >>> >> >> >> (or a sub-set of cores). The current scheme wastes a l=
ot of msi-irqs.
> >> >> >>> >> >> >> If we instead used a scheme where "msi-irq =3D=3D lnx-=
irq", instead of
> >> >> >>> >> >> >> "lnq-irq =3D {hart 0;msi-irq x , ... hart N;msi-irq x}=
", there would be
> >> >> >>> >> >> >> a lot MSIs for other users. 1-1 vs 1-N. E.g., if a sto=
rage device
> >> >> >>> >> >> >> would like to use 5 queues (5 cores) on a 128 core sys=
tem, the current
> >> >> >>> >> >> >> scheme would consume 5 * 128 MSIs, instead of just 5.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> On the plus side:
> >> >> >>> >> >> >> * Changing interrupts affinity will never fail, becaus=
e the interrupts
> >> >> >>> >> >> >>   on each hart is pre-allocated.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> On the negative side:
> >> >> >>> >> >> >> * Wasteful interrupt usage, and a system can potientia=
lly "run out" of
> >> >> >>> >> >> >>   interrupts. Especially for many core systems.
> >> >> >>> >> >> >> * Interrupt masking need to proagate to harts via IPIs=
 (there's no
> >> >> >>> >> >> >>   broadcast csr in IMSIC), and a more complex locking =
scheme IMSIC
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> Summary:
> >> >> >>> >> >> >> The current series caps the number of global interrupt=
s to maximum
> >> >> >>> >> >> >> 2047 MSIs for all cores (whole system). A better schem=
e, IMO, would be
> >> >> >>> >> >> >> to expose 2047 * #harts unique MSIs.
> >> >> >>> >> >> >>
> >> >> >>> >> >> >> I think this could simplify/remove(?) the locking as w=
ell.
> >> >> >>> >> >> >
> >> >> >>> >> >> > Exposing 2047 * #harts unique MSIs has multiple issues:
> >> >> >>> >> >> > 1) The irq_set_affinity() does not work for MSIs becaus=
e each
> >> >> >>> >> >> >      IRQ is not tied to a particular HART. This means w=
e can't
> >> >> >>> >> >> >      balance the IRQ processing load among HARTs.
> >> >> >>> >> >>
> >> >> >>> >> >> Yes, you can balance. In your code, each *active* MSI is =
still
> >> >> >>> >> >> bound/active to a specific hard together with the affinit=
y mask. In an
> >> >> >>> >> >> 1-1 model you would still need to track the affinity mask=
, but the
> >> >> >>> >> >> irq_set_affinity() would be different. It would try to al=
locate a new
> >> >> >>> >> >> MSI from the target CPU, and then switch to having that M=
SI active.
> >> >> >>> >> >>
> >> >> >>> >> >> That's what x86 does AFAIU, which is also constrained by =
the # of
> >> >> >>> >> >> available MSIs.
> >> >> >>> >> >>
> >> >> >>> >> >> The downside, as I pointed out, is that the set affinity =
action can
> >> >> >>> >> >> fail for a certain target CPU.
> >> >> >>> >> >
> >> >> >>> >> > Yes, irq_set_affinity() can fail for the suggested approac=
h plus for
> >> >> >>> >> > RISC-V AIA, one HART does not have access to other HARTs
> >> >> >>> >> > MSI enable/disable bits so the approach will also involve =
IPI.
> >> >> >>> >>
> >> >> >>> >> Correct, but the current series does a broadcast to all core=
s, where the
> >> >> >>> >> 1-1 approach is at most an IPI to a single core.
> >> >> >>> >>
> >> >> >>> >> 128+c machines are getting more common, and you have devices=
 that you
> >> >> >>> >> bring up/down on a per-core basis. Broadcasting IPIs to all =
cores, when
> >> >> >>> >> dealing with a per-core activity is a pretty noisy neighbor.
> >> >> >>> >
> >> >> >>> > Broadcast IPI in the current approach is only done upon MSI m=
ask/unmask
> >> >> >>> > operation. It is not done upon set_affinity() of interrupt ha=
ndling.
> >> >> >>>
> >> >> >>> I'm aware. We're on the same page here.
> >> >> >>>
> >> >> >>> >>
> >> >> >>> >> This could be fixed in the existing 1-n approach, by not req=
uire to sync
> >> >> >>> >> the cores that are not handling the MSI in question. "Lazy d=
isable"
> >> >> >>> >
> >> >> >>> > Incorrect. The approach you are suggesting involves an IPI up=
on every
> >> >> >>> > irq_set_affinity(). This is because a HART can only enable it=
's own
> >> >> >>> > MSI ID so when an IRQ is moved to from HART A to HART B with
> >> >> >>> > a different ID X on HART B then we will need an IPI in irq_se=
t_affinit()
> >> >> >>> > to enable ID X on HART B.
> >> >> >>>
> >> >> >>> Yes, the 1-1 approach will require an IPI to one target cpu on =
affinity
> >> >> >>> changes, and similar on mask/unmask.
> >> >> >>>
> >> >> >>> The 1-n approach, require no-IPI on affinity changes (nice!), b=
ut IPI
> >> >> >>> broadcast to all cores on mask/unmask (not so nice).
> >> >> >>>
> >> >> >>> >> >> My concern is interrupts become a scarce resource with th=
is
> >> >> >>> >> >> implementation, but maybe my view is incorrect. I've seen=
 bare-metal
> >> >> >>> >> >> x86 systems (no VMs) with ~200 cores, and ~2000 interrupt=
s, but maybe
> >> >> >>> >> >> that is considered "a lot of interrupts".
> >> >> >>> >> >>
> >> >> >>> >> >> As long as we don't get into scenarios where we're runnin=
g out of
> >> >> >>> >> >> interrupts, due to the software design.
> >> >> >>> >> >>
> >> >> >>> >> >
> >> >> >>> >> > The current approach is simpler and ensures irq_set_affini=
ty
> >> >> >>> >> > always works. The limit of max 2047 IDs is sufficient for =
many
> >> >> >>> >> > systems (if not all).
> >> >> >>> >>
> >> >> >>> >> Let me give you another view. On a 128c system each core has=
 ~16 unique
> >> >> >>> >> interrupts for disposal. E.g. the Intel E800 NIC has more th=
an 2048
> >> >> >>> >> network queue pairs for each PF.
> >> >> >>> >
> >> >> >>> > Clearly, this example is a hypothetical and represents a poor=
ly
> >> >> >>> > designed platform.
> >> >> >>> >
> >> >> >>> > Having just 16 IDs per-Core is a very poor design choice. In =
fact, the
> >> >> >>> > Server SoC spec mandates a minimum 255 IDs.
> >> >> >>>
> >> >> >>> You are misreading. A 128c system with 2047 MSIs per-core, will=
 only
> >> >> >>> have 16 *per-core unique* (2047/128) interrupts with the curren=
t series.
> >> >> >>>
> >> >> >>> I'm not saying that each IMSIC has 16 IDs, I'm saying that in a=
 128c
> >> >> >>> system with the maximum amount of MSIs possible in the spec, yo=
u'll end
> >> >> >>> up with 16 *unique* interrupts per core.
> >> >> >>
> >> >> >> -ENOPARSE
> >> >> >>
> >> >> >> I don't see how this applies to the current approach because we =
treat
> >> >> >> MSI ID space as global across cores so if a system has 2047 MSIs
> >> >> >> per-core then we have 2047 MSIs across all cores.
> >> >> >
> >> >> > Ok, I'll try again! :-)
> >> >> >
> >> >> > Let's assume that each core in the 128c system has some per-core
> >> >> > resources, say a two NIC queue pairs, and a storage queue pair. T=
his
> >> >> > will consume, e.g., 2*2 + 2 (6) MSI sources from the global names=
pace.
> >> >> >
> >> >> > If each core does this it'll be 6*128 MSI sources of the global
> >> >> > namespace.
> >> >> >
> >> >> > The maximum number of "privates" MSI sources a core can utilize i=
s 16.
> >> >> >
> >> >> > I'm trying (it's does seem to go that well ;-)) to point out that=
 it's
> >> >> > only 16 unique sources per core. For, say, a 256 core system it w=
ould be
> >> >> > 8. 2047 MSI sources in a system is not much.
> >> >> >
> >> >> > Say that I want to spin up 24 NIC queues with one MSI each on eac=
h core
> >> >> > on my 128c system. That's not possible with this series, while wi=
th an
> >> >> > 1-1 system it wouldn't be an issue.
> >> >> >
> >> >> > Clearer, or still weird?
> >> >> >
> >> >> >>
> >> >> >>>
> >> >> >>> > Regarding NICs which support a large number of queues, the dr=
iver
> >> >> >>> > will typically enable only one queue per-core and set the aff=
inity to
> >> >> >>> > separate cores. We have user-space data plane applications ba=
sed
> >> >> >>> > on DPDK which are capable of using a large number of NIC queu=
es
> >> >> >>> > but these applications are polling based and don't use MSIs.
> >> >> >>>
> >> >> >>> That's one sample point, and clearly not the only one. There ar=
e *many*
> >> >> >>> different usage models. Just because you *assign* MSI, doesn't =
mean they
> >> >> >>> are firing all the time.
> >> >> >>>
> >> >> >>> I can show you a couple of networking setups where this is clea=
rly not
> >> >> >>> enough. Each core has a large number of QoS queues, and each qu=
eue would
> >> >> >>> very much like to have a dedicated MSI.
> >> >> >>>
> >> >> >>> >> > When we encounter a system requiring a large number of MSI=
s,
> >> >> >>> >> > we can either:
> >> >> >>> >> > 1) Extend the AIA spec to support greater than 2047 IDs
> >> >> >>> >> > 2) Re-think the approach in the IMSIC driver
> >> >> >>> >> >
> >> >> >>> >> > The choice between #1 and #2 above depends on the
> >> >> >>> >> > guarantees we want for irq_set_affinity().
> >> >> >>> >>
> >> >> >>> >> The irq_set_affinity() behavior is better with this series, =
but I think
> >> >> >>> >> the other downsides: number of available interrupt sources, =
and IPI
> >> >> >>> >> broadcast are worse.
> >> >> >>> >
> >> >> >>> > The IPI overhead in the approach you are suggesting will be
> >> >> >>> > even bad compared to the IPI overhead of the current approach
> >> >> >>> > because we will end-up doing IPI upon every irq_set_affinity(=
)
> >> >> >>> > in the suggested approach compared to doing IPI upon every
> >> >> >>> > mask/unmask in the current approach.
> >> >> >>>
> >> >> >>> Again, very workload dependent.
> >> >> >>>
> >> >> >>> This series does IPI broadcast on masking/unmasking, which mean=
s that
> >> >> >>> cores that don't care get interrupted because, say, a network q=
ueue-pair
> >> >> >>> is setup on another core.
> >> >> >>>
> >> >> >>> Some workloads never change the irq affinity.
> >> >> >>
> >> >> >> There are various events which irq affinity such as irq balance,
> >> >> >> CPU hotplug, system suspend, etc.
> >> >> >>
> >> >> >> Also, the 1-1 approach does IPI upon set_affinity, mask and
> >> >> >> unmask whereas the 1-n approach does IPI only upon mask
> >> >> >> and unmask.
> >> >> >
> >> >> > An important distinction; When you say IPI on mask/unmask it is a
> >> >> > broadcast IPI to *all* cores, which is pretty instrusive.
> >> >> >
> >> >> > The 1-1 variant does an IPI to a *one* target core.
> >> >> >
> >> >> >>> I'm just pointing out that there are pro/cons with both variant=
s.
> >> >> >>>
> >> >> >>> > The biggest advantage of the current approach is a reliable
> >> >> >>> > irq_set_affinity() which is a very valuable thing to have.
> >> >> >>>
> >> >> >>> ...and I'm arguing that we're paying a big price for that.
> >> >> >>>
> >> >> >>> > ARM systems easily support a large number of LPIs per-core.
> >> >> >>> > For example, GIC-700 supports 56000 LPIs per-core.
> >> >> >>> > (Refer, https://developer.arm.com/documentation/101516/0300/A=
bout-the-GIC-700/Features)
> >> >> >>>
> >> >> >>> Yeah, but this is not the GIC. This is something that looks mor=
e like
> >> >> >>> the x86 world. We'll be stuck with a lot of implementations wit=
h AIA 1.0
> >> >> >>> spec, and many cores.
> >> >> >>
> >> >> >> Well, RISC-V AIA is neigher ARM GIG not x86 APIC. All I am sayin=
g
> >> >> >> is that there are systems with large number per-core interrupt I=
Ds
> >> >> >> for handling MSIs.
> >> >> >
> >> >> > Yes, and while that is nice, it's not what IMSIC is.
> >> >>
> >> >> Some follow-ups, after thinking more about it more over the weekend=
.
> >> >>
> >> >> * Do one really need an IPI for irq_set_affinity() for the 1-1 mode=
l?
> >> >>   Why touch the enable/disable bits when moving interrupts?
> >> >
> >> > In the 1-1 model, the ID on the current HART and target HART upon
> >> > irq_set_affinity will be different so we can't leave the unused ID o=
n
> >> > current HART enabled because it can lead to spurious interrupts
> >> > when the ID on current HART is re-used for some other device.
> >>
> >> Hmm, is this really an actual problem, or a theoretical one? The
> >> implementation need to track what's in-use, so can we ever get into th=
is
> >> situation?
> >
> > As of now, it is theoretical but it is certainly possible to hit this i=
ssue.
>
> Sorry for being slow here, Anup, but could you give an example how this
> could happen? For me it sounds like this could only be caused by a
> broken (buggy) implementation?

Let me re-state the problem: When ID X on HART A is moved to ID Y
on HART B. Now the movement might have be initiated by some
some HART C doing irq_set_affinity(). Once the movement is done
the ID X on HART A should be disabled because if not disabled then
some device (possibly buggy) can have HART A to take MSI with
ID X but this MSI won't map to any Linux IRQ since the it is already
moved to ID Y on HART B.

>
> >> Somewhat related; I had a similar question for imsic_pci_{un,}mask_irq=
()
> >> -- why not only do the the default mask operation (only
> >> pci_msi_{un,}mask_irq()), but instead propagate to the IMSIC
> >> mask/unmask?
> >
> > We have hierarchical IMSIC PCI irq domain whoes parent irq domain
> > is IMSIC base domain. Unfortunately pci_msi_[un]mask_irq() don't
> > work for hierarchical irq domain.
>
> Ok! Thanks for the explanation!
>
> >> > There is also a possibility of receiving an interrupt while the ID w=
as
> >> > moved to a new target HART in-which case we have to detect and
> >> > re-trigger interrupt on the new target HART. In fact, x86 APLIC does
> >> > an IPI to take care of this case.
> >>
> >> This case I get, and the implementation can track that both are in use=
.
> >> It's the spurious one that I'm dubious of (don't get).
> >>
> >> >>
> >> >> * In my book the IMSIC looks very much like the x86 LAPIC, which al=
so
> >> >>   has few interrupts (IMSIC <2048, LAPIC 256). The IRQ matrix alloc=
ator
> >> >>   [1], and a scheme similar to LAPIC [2] would be a good fit. This =
is
> >> >>   the 1-1 model, but more sophisticated than what I've been describ=
ing
> >> >>   (e.g. properly handling mangaged/regular irqs). As a bonus we wou=
ld
> >> >>   get the IRQ matrix debugfs/tracepoint support.
> >> >>
> >> >
> >> > Yes, I have been evaluating the 1-1 model for the past few days. I a=
lso
> >> > have a working implementation with a simple per-CPU bitmap based
> >> > allocator which handles both legacy MSI (block of 1,2,4,8,16, or 32 =
IDs)
> >> > and MSI-X.
> >> >
> >> > The irq matrix allocator needs to be improved for handling legacy MS=
I
> >> > so initially I will post a v11 series which works for me and converg=
ing
> >> > with irq matrix allocator can be future work.
> >>
> >> What's missing/needs to be improved for legacy MSI (legacy MSI =3D=3D
> >> !MSI-X, right?) in the matrix allocator?
> >
> > For legacy MSI, a block IDs needs to be contiguous and the number
> > of IDs can be a power of 2.
>
> Oh, so this is not supported by the matrix allocator?

Yes, that's correct. IRQ matrix allocator only supports allocating
IDs suitable for MSI-X. Improving IRQ matrix allocator is a
separate effort in my opinion.

The ARM GICv3/v4 driver supports both MSI and MSI-X.

Regards,
Anup

