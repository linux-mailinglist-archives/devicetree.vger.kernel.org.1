Return-Path: <devicetree+bounces-3172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDA67AD931
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id C11A91F24BAD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5D41B29F;
	Mon, 25 Sep 2023 13:32:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CAF14A82
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:32:01 +0000 (UTC)
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB0110E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:31:59 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-577fb90bb76so3183802a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695648719; x=1696253519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hxe02J5CeYVcOEGcf8pNL/E6NkBfjDIHUjgTsmbzDPc=;
        b=ftZVngTnplPi3cTNuVoQC66uDnjPOOT5cK7EL954SKSzq9yPkU6PCgfMKE5UflM4ja
         BvI7CITXpHAo+PwAPlS3g/aBJ0ZLaU5yEKkS9iXn7llENFX59fbyN8zqRo20NbWRw1Jt
         I5uV3l2xap7Q3La8E0pUzY2ozICnoe3zmIpn0ssqyYZA2WMqkg3gx5MzfOwDS5K8PXu7
         oGbp+uxL1eBoq1yaLPS/KOU3zGfhymqqvTCe9AmP1tzn/RrZ0Ktsal208hDgYmxjYjCp
         UcOVGpDcF6DSXlObSqK9r6L85Tq7q7vIThErsC3VaqIwLI82WOJeaPSVrXdv3HM3LWz4
         8PMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695648719; x=1696253519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hxe02J5CeYVcOEGcf8pNL/E6NkBfjDIHUjgTsmbzDPc=;
        b=Z76ME5NQCiLqajKqLwXbRyGI8ViISS+NNWwRZPltPotr6nLRLyFWSeP+nRtfi2lwcS
         TCS79kk195zPonG5/hhw01+gFWE0Zv7B6RAkRD+wNliS9AJybdkAXs2IrcZ9wCfFOrJv
         p0pKhkAdfnwmkXoq723pTRVlfx/OxFmNtumYin4vicrgk8gTkGMUS+IfLDF0HsQC1Ua8
         eNEAMVI8utqkHh47Rio8ZlkIR7uoVOvV65VydXShD43OhZ3dAxwP+As4YTVn/jwrtvD2
         Qm2o0hm4oGKjTw/xdaSnmDa02zFf5QVHs7qHDjVXcC8wC3BZ9CHplJoS0KwbO8Z40PRu
         KHUg==
X-Gm-Message-State: AOJu0YyQvEHLfNeEBXwGjQn0CT7jZ12s7GZzX50cSQOAx7bb3wfumQ1I
	DL4MXu8h2w7Qbb0i/+go24wdPQySAPCGaErtnIQBrg==
X-Google-Smtp-Source: AGHT+IFaH5uvy57wyDPlz/5yfAqVsr1P33R5peI3FCNpL74KbP+nR6csDctzWbKGZ+EBEtyteZ3Ao+ghiq3rYYaecLQ=
X-Received: by 2002:a17:90a:f698:b0:271:9237:a07f with SMTP id
 cl24-20020a17090af69800b002719237a07fmr4386827pjb.32.1695648719052; Mon, 25
 Sep 2023 06:31:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-3-apatel@ventanamicro.com> <20230920-36a5645f766ed9cce75a9e8c@orel>
In-Reply-To: <20230920-36a5645f766ed9cce75a9e8c@orel>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 25 Sep 2023 19:01:48 +0530
Message-ID: <CAK9=C2XVyN7nkMW+kgELaHCAjLcQ3z-6xVdrGa_UtxfJMdm7Dg@mail.gmail.com>
Subject: Re: [PATCH 2/7] RISC-V: Detect Zicond from ISA string
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Mayuresh Chitale <mchitale@ventanamicro.com>, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
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

On Wed, Sep 20, 2023 at 1:14=E2=80=AFPM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
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
>
> As of yesterday, v1.0 of the spec points at commit 95cf1f9 ("Add changes
> requested by Ved during signoff")

Okay, I will update.

>
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
>
> Zi extensions come before Zb extensions.

Okay, I will update.

>
> >       __RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
> >       __RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
> >       __RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
> > --
> > 2.34.1
> >
>
> Thanks,
> drew

Regards,
Anup

