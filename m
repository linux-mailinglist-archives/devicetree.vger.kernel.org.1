Return-Path: <devicetree+bounces-3170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A767AD926
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6545D28117F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B06B1B29D;
	Mon, 25 Sep 2023 13:30:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63AF14A82
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:30:54 +0000 (UTC)
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42A610D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:30:48 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-274b45fa7a2so3655412a91.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695648648; x=1696253448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VTAe+igFn40GXZ4NBAxS7RiCj1q3ukys0lCN9eYvcaY=;
        b=A1IrmBz3pmI/MHQfCtnfQwMosOHpO/GRytwO/+Uni3ZRg5rMOvcseh4/169+JlLVcK
         t1EdIRE0NPrr+UWhYkyzRQ/umJohMWs+XvXGP6MXZjZjrE1yMiFCNI0iOrfzybTnBWCu
         f8YmYiUQ/Sd0FFq/aJVVuZBL1EXuIIJcRxwJ1KBHkkCSMyPsFzHPsaxn6r28az+M9/Qu
         j1TWaKZIafv7F6LXCBFG/E/2r3JvuiAWBIa4eMgQwHWzQBGitOegyLJkJmM6aTs7roxb
         wOf9xStK7W4rktgYqcqkdl0PORURkwT482vJKa6jK331lO4WmYg/w3m4JYtfPonL8W8m
         ZuxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695648648; x=1696253448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VTAe+igFn40GXZ4NBAxS7RiCj1q3ukys0lCN9eYvcaY=;
        b=JvNwStkoQRfrYOh+1K322Uposvmgi3zV7CsL1+O5oi/L8heG6Yy+6cpPsXVGPTJvQa
         2DAGBjEr83la4/8qZZWOpUFYOsDEkqokEG+zpp2fo7HEz8QKv67kathIuXSY3vvgnmDE
         1r3oeUziQA1A+8TZxINDjUWeGgaFvCTSIG8zJpOYMVd+Fr0vukN+GR+4LNHGWCuO0cFf
         P512446gj193zxL8Z+Jbhhz/A+1jxITPMFpYoTuzpWjdNHufQiSZOS28Fl4awYVcO6lJ
         b9QDWHnaq6VByUxcBSQjveFhKd2DxaKF/JbYa5+riMmpDNkAl0T1bq1JIcXyJLsBn1Tq
         GzQg==
X-Gm-Message-State: AOJu0YwICEdIp1rgYk5E1yP425k6PHknmIiLkeAQe+Zae4iHZvt9h2ap
	7nhQDS+X38gOr17H0vHHpSMw7IfsAYHhNOnJ+oA9dw==
X-Google-Smtp-Source: AGHT+IGU7gRk9/0iLRnse7x9jQcD2qTYI6KEpxx8F337G2Vkhth9oLL6ElHvVj6WCup2zLolI768fLqgUgDAY/Hd65U=
X-Received: by 2002:a17:90a:f40e:b0:276:6b9d:7503 with SMTP id
 ch14-20020a17090af40e00b002766b9d7503mr4488656pjb.28.1695648648206; Mon, 25
 Sep 2023 06:30:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-2-apatel@ventanamicro.com> <20230919-bbcb3627b6d9d0238c5ba351@fedora>
In-Reply-To: <20230919-bbcb3627b6d9d0238c5ba351@fedora>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 25 Sep 2023 19:00:37 +0530
Message-ID: <CAK9=C2Ub7+4QOdq4rXoSOuLoYaUczeqaLoCVRZ_63dZOZwiu1w@mail.gmail.com>
Subject: Re: [PATCH 1/7] RISC-V: Detect XVentanaCondOps from ISA string
To: Conor Dooley <conor@kernel.org>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 12:56=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> Hey Anup,
>
> On Tue, Sep 19, 2023 at 09:23:37AM +0530, Anup Patel wrote:
> > The Veyron-V1 CPU supports custom conditional arithmetic and
> > conditional-select/move operations referred to as XVentanaCondOps
> > extension. In fact, QEMU RISC-V also has support for emulating
> > XVentanaCondOps extension.
> >
> > Let us detect XVentanaCondOps extension from ISA string available
> > through DT or ACPI.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
> >  arch/riscv/include/asm/hwcap.h                          | 1 +
> >  arch/riscv/kernel/cpufeature.c                          | 1 +
> >  3 files changed, 9 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 36ff6749fbba..cad8ef68eca7 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -171,6 +171,13 @@ properties:
> >              memory types as ratified in the 20191213 version of the pr=
ivileged
> >              ISA specification.
> >
> > +        - const: xventanacondops
> > +          description: |
> > +            The Ventana specific XVentanaCondOps extension for conditi=
onal
> > +            arithmetic and conditional-select/move operations defined =
by the
> > +            Ventana custom extensions specification v1.0.1 (or higher)=
 at
> > +            https://github.com/ventanamicro/ventana-custom-extensions/=
releases.
> > +
>
> For this and the next patch, the binding change needs to be split out
> from the code. checkpatch should've complained about it.

Okay, I will split this patch.

>
> >          - const: zba
> >            description: |
> >              The standard Zba bit-manipulation extension for address ge=
neration
> > diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hw=
cap.h
> > index 0f520f7d058a..b7efe9e2fa89 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -59,6 +59,7 @@
> >  #define RISCV_ISA_EXT_ZIFENCEI               41
> >  #define RISCV_ISA_EXT_ZIHPM          42
> >  #define RISCV_ISA_EXT_SMSTATEEN              43
> > +#define RISCV_ISA_EXT_XVENTANACONDOPS        44
> >
> >  #define RISCV_ISA_EXT_MAX            64
> >
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeat=
ure.c
> > index 3755a8c2a9de..3a31d34fe709 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -182,6 +182,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] =3D=
 {
> >       __RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
> >       __RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
> >       __RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
> > +     __RISCV_ISA_EXT_DATA(xventanacondops, RISCV_ISA_EXT_XVENTANACONDO=
PS),
>
> I've been banging on for a bit about people doing weird stuff to detect
> their vendor extensions, so nice to see it being done properly :)
>
>
> Cheers,
> Conor.
>
> >  };
> >
> >  const size_t riscv_isa_ext_count =3D ARRAY_SIZE(riscv_isa_ext);
> > --
> > 2.34.1
> >

Regards,
Anup

