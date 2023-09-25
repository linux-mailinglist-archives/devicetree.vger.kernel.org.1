Return-Path: <devicetree+bounces-3171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A55567AD92B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 561892814A5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC831B29E;
	Mon, 25 Sep 2023 13:31:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4752714A82
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:31:16 +0000 (UTC)
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B79513A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:31:14 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2774aa96947so1854144a91.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695648673; x=1696253473; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZmJTmtECk3UTpEd/PcXzUGGmidlRTD2ZKXvirZ79/Ts=;
        b=pbMALBirw4CpLrzHlD/06L7U9fHjQm4D8U7M30OdVAYBd7fBWZJFO4PvcyQyqlzdtn
         ONp5qrZKfEmkgUIQ/tvjCHVpQXro6mpT63lfoI2KvSCn01berGNQeaMT4hMgDq/m36+t
         fNkWEFNwB2a8wKxqA+tYPnrqt+0g9RscPaU4kRRBnaV5CN816tLBXGIGqct9eiNdhP2O
         UVljwcj1K8NN9BwM/ZgtN2iLsH74TyEDEgGHc+2X6LkfxKYUC1iwvDYuvUgjy/B3eGMJ
         tA9V1wCL9tUwD/MWbUAdaIrOjwm8LnxUt7k+Lios0PvK93Dng6ZLdkceIE9/+neAqRIX
         wltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695648673; x=1696253473;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmJTmtECk3UTpEd/PcXzUGGmidlRTD2ZKXvirZ79/Ts=;
        b=F5zPmDDowcvUQiDLcki4KFBNZZMQ3OtktT2RS4r15q4vPm3f3TSvB+fW7eIsD1XwZZ
         Et2wlAKG7c75U6JTpSC2NEIb1+FGXfYGv1XqljyZAlGFOcEfBu1vIN7rxlvFD6Q5THT6
         4YqiEzctDEGbn0frjgjBD/6c4S1vZjZ95jj7ELEG+9ORKDKVshjjRkOicLz4madRdGCe
         a0Ty3nzVmMZBkXboN3a+SeLMWfHJhkGczTxKyPZ2XW2j+1cUb/CSAlaDmzteRM4l8Eoz
         InQU5XCus4TSjTheZ8eP5BI5MfD69gEC/NJBHvTlCtiM3fdVSrMKcOyTPfsnu3olzISJ
         3TcA==
X-Gm-Message-State: AOJu0YxMJjulQqccnugmvIAn+EzUyyK8VAA+CcgU3wx10pN/hONO5Kmb
	8mymYYsEcnMFwM9W4n4rejvWnxRpGZXpF4C7mbUqSg==
X-Google-Smtp-Source: AGHT+IGGvck9YMKSdm9ezUm/4fp6J691a817X3hV3Hdc5HpIvnPCHDNYUHsrRSX8zcRkK2XQ4QU/TA/mW0tBlTBxlcw=
X-Received: by 2002:a17:90b:4a4b:b0:26d:49c8:76d8 with SMTP id
 lb11-20020a17090b4a4b00b0026d49c876d8mr5801013pjb.18.1695648673541; Mon, 25
 Sep 2023 06:31:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-3-apatel@ventanamicro.com> <20230919-3a8fcdaa86607d0ff8399132@fedora>
In-Reply-To: <20230919-3a8fcdaa86607d0ff8399132@fedora>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 25 Sep 2023 19:01:02 +0530
Message-ID: <CAK9=C2Wgt69Tj1U-e2eyVrpC+=JaApuKYEx56JbGJRuHn3N5gQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] RISC-V: Detect Zicond from ISA string
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 12:57=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Sep 19, 2023 at 09:23:38AM +0530, Anup Patel wrote:
> > The RISC-V integer conditional (Zicond) operation extension defines
> > standard conditional arithmetic and conditional-select/move operations
> > which are inspired from the XVentanaCondOps extension. In fact, QEMU
> > RISC-V also has support for emulating Zicond extension.
> >
> > Let us detect Zicond extension from ISA string available through
> > DT or ACPI.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>
> Same applies here w.r.t. splitting in two.

Okay, I will update.

Regards,
Anup

>
> Thanks,
> Conor.
>
> > ---
> >  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
> >  arch/riscv/include/asm/hwcap.h                          | 1 +
> >  arch/riscv/kernel/cpufeature.c                          | 1 +
> >  3 files changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index cad8ef68eca7..7ea90e2dbc5b 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -225,6 +225,12 @@ properties:
> >              ratified in the 20191213 version of the unprivileged ISA
> >              specification.
> >
> > +        - const: zicond
> > +          description:
> > +            The standard Zicond extension for conditional arithmetic a=
nd
> > +            conditional-select/move operations as ratified in commit 8=
fb6694
> > +            ("Update Gemfile") of riscv-zicond.
> > +
> >          - const: zicsr
> >            description: |
> >              The standard Zicsr extension for control and status regist=
er
> > diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hw=
cap.h
> > index b7efe9e2fa89..15bafc02ffd4 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -60,6 +60,7 @@
> >  #define RISCV_ISA_EXT_ZIHPM          42
> >  #define RISCV_ISA_EXT_SMSTATEEN              43
> >  #define RISCV_ISA_EXT_XVENTANACONDOPS        44
> > +#define RISCV_ISA_EXT_ZICOND         45
> >
> >  #define RISCV_ISA_EXT_MAX            64
> >
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeat=
ure.c
> > index 3a31d34fe709..49b6551f3347 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -174,6 +174,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] =3D=
 {
> >       __RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
> >       __RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
> >       __RISCV_ISA_EXT_DATA(zbs, RISCV_ISA_EXT_ZBS),
> > +     __RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
> >       __RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
> >       __RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
> >       __RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
> > --
> > 2.34.1
> >

