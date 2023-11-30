Return-Path: <devicetree+bounces-20339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9FB7FEE3F
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A10341C20990
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 11:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37133D386;
	Thu, 30 Nov 2023 11:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Y6kYjcaU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED35BD
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 03:48:28 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-285949d46d0so1633473a91.0
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 03:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701344908; x=1701949708; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5xVQObOoSd+luGlbgeWIPH7/3pbckJn6omk5INMCc8=;
        b=Y6kYjcaUukUHP97WNFi9imlbuDvVIu7oYydnJQqLVV6NSS8fwGWTq19fSP9OyJNywF
         FUKYPOecMo2hLvRhxwT7wC29nBS/ORno1Fe0AuEAHA57xJa7739Tqu4DkuZmHTKWBx++
         ulDA8QMDSOnBhkHmazXmIPADM4CUJX6iHh+MEOt0QtPGaGvTCDEvId0qvUQk+YOZiEn3
         X+49tpIilBlYF7t0cbHzJLfruANbZFI5SLO9a4xjIrOMn/zbVKXUGVgaCFEwdx27a6l7
         G8KRaR9m2ptxxL1QVHWPIzVsJ+iPUNckPvh5JLR9LPqx15AO2vWTUDe+tMM0/UfM7ky4
         gVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701344908; x=1701949708;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R5xVQObOoSd+luGlbgeWIPH7/3pbckJn6omk5INMCc8=;
        b=BR9T3CRXzNbv6CLRPiswCfnbV7vy/TurfQE0v+Oq2X2amD5jkbJ0XidqY3EAM5Ywu3
         pdCivf5gWc0J44acrsa0Mcx3eeYwy8HQfhcOxejbrma0PNOMrpL9RnwRveJISP9cwhqP
         HjdLSEEaZK9R5rV4h5xRY6Nl1zRmP6bp4fpk/SUupYabnKAQQaS8xzf0E61VmCKKK9sP
         JOcGTqZC38h3ok6WVgmMOVGUeNYXeE7A7q+sEVUJ8096SeVEE8Cwd383zO8pHrOq7rck
         b+wiN3yDdDm5FRDzLC2UFI00Aye2Ce5vX8Voau9pIdmGJZ1S16nn4n1e9Qzi6xLYmKez
         QCog==
X-Gm-Message-State: AOJu0Yx1/OhEdg79acq6Wm0zGBRhGhIOVaSoO4QM7pGAK3e4xPmiMJ24
	PZNsNuSfzVdJ4qVsVeYP1q+/VvTmNt7JYVlQrsMhmg==
X-Google-Smtp-Source: AGHT+IFTmJeU2BC41RfxCo4Hb6eAP+kSriPWB9Hzj5XXCXlBKjrBq16vH0SwZWA6USdqgl/1JnjAj/QuHOy5XuumlTM=
X-Received: by 2002:a17:90a:bc84:b0:286:2013:cfe9 with SMTP id
 x4-20020a17090abc8400b002862013cfe9mr6667826pjr.2.1701344908209; Thu, 30 Nov
 2023 03:48:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953C82499C5D81D2C6A020BBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <CAK9=C2WAv5jJBt56xBea268DeyUA+YvbU7i+ahVjueafCi-r6A@mail.gmail.com>
 <20231130-decibel-passenger-6e932b1ce554@spud> <CAK9=C2Vsx8ddpYiqUhvqnJpdb-FKeNhLz3PsVpSeEz4TeQHiEg@mail.gmail.com>
 <20231130-shower-award-3cd5f1bba5db@spud>
In-Reply-To: <20231130-shower-award-3cd5f1bba5db@spud>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 30 Nov 2023 17:18:15 +0530
Message-ID: <CAK9=C2WgN=3BjxS+nF2ibFQoquNwXfxr_UQv8Kbf1+e4Teyfcw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
To: Conor Dooley <conor@kernel.org>
Cc: Inochi Amaoto <inochiama@outlook.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Chen Wang <unicorn_wang@outlook.com>, 
	Anup Patel <anup@brainfault.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 5:15=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Nov 30, 2023 at 04:51:32PM +0530, Anup Patel wrote:
> > On Thu, Nov 30, 2023 at 3:27=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Thu, Nov 30, 2023 at 03:01:24PM +0530, Anup Patel wrote:
> > > > On Sat, Nov 18, 2023 at 12:39=E2=80=AFPM Inochi Amaoto <inochiama@o=
utlook.com> wrote:
> > > > >
> > > > > The timer registers of aclint don't follow the clint layout and c=
an
> > > > > be mapped on any different offset. As sg2042 uses separated timer
> > > > > and mswi for its clint, it should follow the aclint spec and have
> > > > > separated registers.
> > > > >
> > > > > The previous patch introduced a new type of T-HEAD aclint timer w=
hich
> > > > > has clint timer layout. Although it has the clint timer layout, i=
t
> > > > > should follow the aclint spec and uses the separated mtime and mt=
imecmp
> > > > > regs. So a ABI change is needed to make the timer fit the aclint =
spec.
> > > > >
> > > > > To make T-HEAD aclint timer more closer to the aclint spec, use
> > > > > regs-names to represent the mtimecmp register, which can avoid ha=
ck
> > > > > for unsupport mtime register of T-HEAD aclint timer.
> > > > >
> > > > > Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> > > > > Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT=
 timer")
> > > > > Link: https://lists.infradead.org/pipermail/opensbi/2023-October/=
005693.html
> > > > > Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclin=
t.adoc
> > > >
> > > > The ratified Priv v1.12 specification defines platform specific M-m=
ode timer
> > > > registers without defining any layout of mtime and mtimecmp registe=
rs.
> > > > (Refer, "3.2.1 Machine Timer Registers (mtime and mtimecmp)")
> > > >
> > > > The "thead,c900-aclint-mtimer" can be thought of as is one possible
> > > > implementation of "riscv,mtimer" defined by the Priv v1.12 specific=
aiton.
> > > >
> > > > If it is not too late then I suggest making this binding into gener=
ic
> > > > "riscv,mtimer" binding.
> > >
> > > We could definitely reorganise things, it's not too late for that as
> > > implementation specific compatibles would be needed regardless, so
> > > software that would've matched on those will continue to do so.
> > >
> > > That said, does this platform actually implement the 1.12 priv spec i=
f
> > > there is no mtime register? The section you reference says:
> > > "Platforms provide a real-time counter, exposed as a memory-mapped
> > > machine-mode read-write register, mtime." It seems to me like this
> > > hardware is not suitable for a generic "riscv,mtimer" fallback.
> >
> > Yes, the T-Head mtimer does not implement both mtime and mtimecmp
> > so technically it only implements a portion of the ratified RISC-V mtim=
er
> > chapter.
> >
> > >
> > > Am I missing something there Anup?
> > >
> > > It doesn't even implement the draft aclint spec, given that that says=
:
> > > "The MTIMER device provides machine-level timer functionality for a s=
et
> > > of HARTs on a RISC-V platform. It has a single fixed-frequency monoto=
nic
> > > time counter (MTIME) register and a time compare register (MTIMECMP) =
for
> > > each HART connected to the MTIMER device."
> > >
> > > But I already said no to having a generic, "riscv" prefixed, compatib=
le
> > > for that, given it is in draft form.
> >
> > I am not suggesting T-Head timer implements aclint spec. Also,
> > since aclint spec is in draft state it is out of the question.
>
> I did not intend to imply that you were suggesting that there should be
> one. I was just trying to clarify that I was not trying to bring back
> the topic of a generic aclint binding applying here.
>
> > My suggestion is to treat "3.2.1 Machine Timer Registers (mtime
> > and mtimecmp)" as RISC-V mtimer defined by the RISC-V privileged
> > specification and define "riscv" prefixed DT binding for this.
>
> I'm not against a binding for that at all.

Thanks.

>
> > This binding defines two possible values for "reg" property:
> > 1) contains two items: a) mtime register address and,
> >      b) base address of mtimecmp registers
> > 2) contain one item: a) base address of mtimecmp registers
> >
> > The t-head mtimer seems to implement #2 whereas the RISC-V
> > mtimer (Priv spec) aligns with #1.
> >
> > If we want to keep this DT binding t-head specific then
> > we should remove option #1 (above) from this DT binding
>
> This part is already the conclusion of one of the other "branches" of
> this thread and is (AFAIU) Inochi's plan for the next version.

Sounds good.

>
> > and add separate "riscv" prefixed DT binding for RISC-V mtimer.
>
> Do you know of any users for a "riscv,mtimer" binding that are not
> covered by existing bindings for the clint?

Ventana Veyron-v1 implements a mtimer per-cluster (or chiplet)
which is compatible to "riscv,mtimer" (i.e. we have both mtime
and mtimecmp MMIO registers).

Regards,
Anup

