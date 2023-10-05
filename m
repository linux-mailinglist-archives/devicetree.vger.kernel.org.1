Return-Path: <devicetree+bounces-6013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E867B9AFB
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 07:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 29FD01F22E58
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 05:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 017054A31;
	Thu,  5 Oct 2023 05:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="ZXubW7/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C327FA
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 05:51:03 +0000 (UTC)
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E38D5B80
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 22:51:00 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-279150bad13so420939a91.3
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 22:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1696485060; x=1697089860; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAn7kTF76MX4baCsjz/DD87LgbEJOFPnszS1gD87MLo=;
        b=ZXubW7/QRu9lfTWrHyJPGHvyKFEbmAjEGsA43lpb7Aa1B5q0XjQmR8aY6/JMLTFW6d
         LPSWr2Ds4/22GFtcQ/9KzR28OoFbFkzZuaf/Cr1iE7cPrQre79m0GookUWiIvChHBIyD
         nwi6+MkCNAcKtTcb18oWw9GtyZ4cxW2Or03HqHrNSE3OY4b777U/GoD/PFu5kxxK0VQi
         bFuyj6U47r4kUsPOlP4MYPFSubLZEb0fCnFgIByCYMoXS79N9lpdNH5AftJZuOuRPM3l
         bpY9o14EBhXWKmB5o1ri0uEmRyy+3BYQPNVsmgKJoz2UgwcKGHU96ndyPlbaFh5YHpaU
         ge2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696485060; x=1697089860;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAn7kTF76MX4baCsjz/DD87LgbEJOFPnszS1gD87MLo=;
        b=bzozkThtkefepmsTv4xG1JiQJzalgCajyNMZEXgAtXVzOiiBlHjAy3VSjlcPZgH+IU
         LPIhTIX0B24lXE3xS0hZXAv9jjtOW39RRTrh/Y5+ykds4W99UTEv1mGDl/e3U9Mj5AuT
         1GdTHgQMal4XHMnxI8ISV1WGmvlt4DGs8v86eQjvP9CC3+R/CLS5HHJMmJcHb6ToG5wS
         c0CLzk7ur3O4YveNm8mqGH7M0bmB1L2kqyjyIYzc41Sf/kYIoL7ndh9l2GgKzxdK21ib
         re6pcQA0IwYSubiMAsBaGxdRdU7e8ZQvirVIE19orTIUCFPLsE9VxYrBoC6MGNRSpN7V
         vgGg==
X-Gm-Message-State: AOJu0Yztr+FUh7gn+rrmkpU/moRHxZrURj7m4D/zjOfg4jeN9L93i5ep
	y3OsnDlAwYTAmjemsAtPe/T68PybUIXw0ied0KCRyQ==
X-Google-Smtp-Source: AGHT+IEtGbIHdTfL2yZTTDLPgQj3me/hsvVuKvB4XaXv1nNxUCov3SGcpN7sdI1I388p/AKgKTr/0lfdATge9YktJw8=
X-Received: by 2002:a17:90b:a04:b0:26d:416a:b027 with SMTP id
 gg4-20020a17090b0a0400b0026d416ab027mr4208863pjb.31.1696485059836; Wed, 04
 Oct 2023 22:50:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231003035226.1945725-3-apatel@ventanamicro.com> <mhng-4ec1093a-4542-429e-a9f0-8a976cff9ac4@palmer-ri-x1c9>
In-Reply-To: <mhng-4ec1093a-4542-429e-a9f0-8a976cff9ac4@palmer-ri-x1c9>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 5 Oct 2023 11:20:48 +0530
Message-ID: <CAAhSdy2CxWw9ny7vdBoEzsXkm_J882NGKTDQ7BfykrjuB1QR+w@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] RISC-V: Detect Zicond from ISA string
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: apatel@ventanamicro.com, pbonzini@redhat.com, atishp@atishpatra.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shuah@kernel.org, ajones@ventanamicro.com, 
	mchitale@ventanamicro.com, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 4, 2023 at 7:37=E2=80=AFPM Palmer Dabbelt <palmer@dabbelt.com> =
wrote:
>
> On Mon, 02 Oct 2023 20:52:22 PDT (-0700), apatel@ventanamicro.com wrote:
> > The RISC-V integer conditional (Zicond) operation extension defines
> > standard conditional arithmetic and conditional-select/move operations
> > which are inspired from the XVentanaCondOps extension. In fact, QEMU
> > RISC-V also has support for emulating Zicond extension.
> >
> > Let us detect Zicond extension from ISA string available through
> > DT or ACPI.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >  arch/riscv/include/asm/hwcap.h | 1 +
> >  arch/riscv/kernel/cpufeature.c | 1 +
> >  2 files changed, 2 insertions(+)
> >
> > diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hw=
cap.h
> > index 0f520f7d058a..6fc51c1b34cf 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -59,6 +59,7 @@
> >  #define RISCV_ISA_EXT_ZIFENCEI               41
> >  #define RISCV_ISA_EXT_ZIHPM          42
> >  #define RISCV_ISA_EXT_SMSTATEEN              43
> > +#define RISCV_ISA_EXT_ZICOND         44
> >
> >  #define RISCV_ISA_EXT_MAX            64
> >
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeat=
ure.c
> > index 3755a8c2a9de..e3803822ab5a 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -167,6 +167,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] =3D=
 {
> >       __RISCV_ISA_EXT_DATA(zicbom, RISCV_ISA_EXT_ZICBOM),
> >       __RISCV_ISA_EXT_DATA(zicboz, RISCV_ISA_EXT_ZICBOZ),
> >       __RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
> > +     __RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
> >       __RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
> >       __RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
> >       __RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
>
> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
>
> Can we do a shared tag, though?  These will conflict.

Thanks Palmer.

I will provide a shared tag based on 6.6-rc5 sometime
next week. I hope this is okay for you.

Regards,
Anup

>
> --
> kvm-riscv mailing list
> kvm-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kvm-riscv

