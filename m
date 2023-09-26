Return-Path: <devicetree+bounces-3323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 340337AE468
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 06:09:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A483D2819BE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 04:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D98CC1859;
	Tue, 26 Sep 2023 04:09:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E59184F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 04:09:10 +0000 (UTC)
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CC1ABF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:09:08 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6c4d625da40so3379298a34.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695701348; x=1696306148; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqOFR+aV2U747dOvG4VR290UntHO+h5U56cTzrU/C40=;
        b=RVRuxCV9UxPq9ivAiEFO3pzFyI46rQd842Pu4Fpu9yOkIQzaWIQ/8uIi55O7pMMZxD
         5Jni4QA4gA9p5k6E5a8+1wOTiU8t727yDr3XrIGVPiMep+84hSGjWUVRXOWE+t8lnMB7
         T1TdkCay+nNKOnXydGfR3H+I5h/CFQ1iI+7YiI5sFlRCum3FjlzxtiaiFBv/5avsT2ms
         +SnI5ozP+VjiChzksZssEusASH3isEm1CeJgLpzL0OaD2jXHOFC33QuKDQmGV3s+Zap/
         nBaoU2GXwkYlKy+AQKoZWXYc4HZgzntdBBMOQZP0srMkZRuldqsLgy20ijIB4tt+5SyU
         L4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695701348; x=1696306148;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sqOFR+aV2U747dOvG4VR290UntHO+h5U56cTzrU/C40=;
        b=St6khiS4g87ht6S9wp8bT4r2MQ+CF/k1Rz54JqULlKDQTt7XCLoISGbyKWLPkFmzB9
         3utl1ykoMRQKb+KUq2DPnswQhO5daDbvV0K5MhNopWdAlrZb3b9I98ZSYez9QxNh4n2i
         8sB9sHeTU4prufn5mJxSyEiy7TcZ59NJ+YUGdeaeIEl/RD8yPkEoNkfPYPkRUq7XM9jt
         itFtJ8e8zdVzfJpIbg4nQt0hgTq+uzvRMEJFP5/nNffUzv6Fun7geGFcTtnNGySvOhzj
         IHWy3UbRxG0A86mth+x3l476tCNFv3ydLkl9gNZJT4x/uxDlr/lKl5wdgf01ZfjNVRyv
         jJcg==
X-Gm-Message-State: AOJu0YwqlycV0cqnydU4bRcsfPF0O3u1w3jeZNnh7GlPeuVPpmrGaxtO
	hZaOTy2Rnpgg1F3o0Cgkx3lQmJbh7SItGNB0J5R5AA==
X-Google-Smtp-Source: AGHT+IGmAxRog0hnxnVuuXVJuHjUbHq/ZKXhq770X+Pd2SPALmcAYb8MwVNhUMNSdmD8plbQLTGKkz2OCmPClWmIJ90=
X-Received: by 2002:a05:6808:1a21:b0:3a7:2690:94e0 with SMTP id
 bk33-20020a0568081a2100b003a7269094e0mr13581224oib.4.1695701347858; Mon, 25
 Sep 2023 21:09:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925133859.1735879-3-apatel@ventanamicro.com> <ZRHH25IyJJLWSolC@ghost>
In-Reply-To: <ZRHH25IyJJLWSolC@ghost>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 26 Sep 2023 09:38:56 +0530
Message-ID: <CAK9=C2UoKxM+wknB4n8=okyXCCE6t0Vvz4jU_tBW6DMm6Vb3DA@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] RISC-V: Detect XVentanaCondOps from ISA string
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 11:18=E2=80=AFPM Charlie Jenkins <charlie@rivosinc.=
com> wrote:
>
> On Mon, Sep 25, 2023 at 07:08:52PM +0530, Anup Patel wrote:
> > The Veyron-V1 CPU supports custom conditional arithmetic and
> > conditional-select/move operations referred to as XVentanaCondOps
> > extension. In fact, QEMU RISC-V also has support for emulating
> > XVentanaCondOps extension.
> >
> > Let us detect XVentanaCondOps extension from ISA string available
> > through DT or ACPI.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  arch/riscv/include/asm/hwcap.h | 1 +
> >  arch/riscv/kernel/cpufeature.c | 1 +
> >  2 files changed, 2 insertions(+)
> >
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
> >  };
> >
> >  const size_t riscv_isa_ext_count =3D ARRAY_SIZE(riscv_isa_ext);
> > --
> > 2.34.1
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>
> I worry about storing vendor extensions in this file. Because vendor
> extensions are not standardized, they can only be expected to have the
> desired behavior on hardware with the appropriate vendor id. A couple

Assuming that a vendor extension is only available on hardware with
appropriate vendor id is not correct because:
1) vendor A can allow vendor B to implement a custom extension
    defined by vendor B
2) vendor A and vendor B can jointly develop a RISC-V CPU where
    both vendors integrate their custom extensions.

It is best to identify a vendor extension independently with a
"X<vendor_name><extension_name>" string to keep it simple
and scalable.

Along these lines, each T-Head custom extension should have a
"XThead<xyz>" name associated with it.

> months ago I sent a patch to address this by handling vector extensions
> independently for each vendor [1]. I dropped the patch because it
> relied upon Heiko's T-Head vector extension support that he stopped
> working on. However, I can revive this patch so you can build off of it.

At least, the conditional operations don't need a hwprobe interface
because an application is either compiled with or without conditional
operations. In other words, effective use of conditional operation is
only possible if compiler generates these instructions based on
code patterns.

>
> This scheme has the added benefit that vendors do not have to worry
> about conficting extensions, and the kernel does not have to act as a
> key registry for vendors.

How can vendor extensions conflict if they all follow the
"X<vendor_name><extension_name>" naming scheme ?

>
> What are your thoughts?
>
> - Charlie
>
> [1] https://lore.kernel.org/lkml/20230705-thead_vendor_extensions-v1-2-ad=
6915349c4d@rivosinc.com/
>

Regards,
Anup

