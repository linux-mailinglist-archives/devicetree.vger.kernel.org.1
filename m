Return-Path: <devicetree+bounces-159478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E923A6B0F9
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9E15985A4D
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7461F22A7E8;
	Thu, 20 Mar 2025 22:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="middonsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E243212FBD
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742509888; cv=none; b=aNZtJZ9b2PmLjFzvuv5BbAYvoZxWel8nNQTHEnbGty13jBf1hGRw9Y51LyEHYkRCaF7gG/WOUjrSej96LmPwgf25vXvxPEwwKp2k5fa2rvv/joFhV9SfNA73K4fkqyLa19UM7+sjH4sLfdCOTicX1naGO1QZzVkUO8W5eR1oqgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742509888; c=relaxed/simple;
	bh=IrTDX1xRoCekq5NEqfi8Ke8ahM5ujPZ5//oKaibGbYo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QfRt03IoebQl3ypW1TyoQ0sMhTdkGTqIzt7zuoZnV/n3iRNFioMieodKGagTkwz7xF/HrSmlJqID+O/ilg6MPMbXfi/mAmBCc2usBXZ8oJrHPxn+1XFFWDm6RKOp6BVU8NzWBh3cHT4UnLT4/p9eN8Bm4KfNoZTWojUVy9+rdsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=middonsV; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6fed0620395so12162017b3.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 15:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1742509884; x=1743114684; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IofsmlVDJhRwn5HSuRGp3pTAenUeDGvG4AuBmId2Qpg=;
        b=middonsVSenVKcFMlRa4WpDsbHQFQfyLWM4nVOY+yQJ7ytYvfL9BP7Po3ZN9SZMxdm
         1JLrKbT79ZGfc/jVHOsk2gj9Eu2Ti3k4KUgmh0xRo+o95hzrSQxWyd8HX7Mj8SNwoscl
         QG8qq+bUmKJgxmrefRuOUsOcLo/4008DBjsFZpDtOkW/5YR7xyER+QkI3P8vOxImsrX0
         hMzIqIuSdU/zxda0yZgdRmfJuQjmIcKqDY9MZ1Qe1WpMoszIRbnVdnQJZRDHmwT0Jvv0
         6SBcgABG9ZjRXiqZQGvvwXkggcE8CFhoBFcgA+CHJV+g0vvSTXeArcwxfg+CpbOWzxC0
         lE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742509884; x=1743114684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IofsmlVDJhRwn5HSuRGp3pTAenUeDGvG4AuBmId2Qpg=;
        b=QG6qVMiIMnP0SpIDNptaAlSabARPw4Q5slnbWbZvmglJgnZWaT4iTGpxFOEsx+r+Eq
         gbVHSUFYhPsrNAcMeHUIdnnnE+K6TLVx0jCjQnuUnA4fd4xKDROVahzdb5dM3aNhZBvK
         qpn+FYt/5lNHBYQZ3FdMENOl1jVU7umm81JGfQp4wozOrFcQ1OcMHdFpvudtc0ibf7kk
         +BlJxtJ2GFUYzxCUZzkY0/ltwwczkObJIOmCj9aZmft9jB25qSCM7xcKAOkuOzdG5qRU
         C62Wr9kikTKfcDMK/qs1/ijgxVGdtNbcwuBDe/xECb8RReijFyN5/Rj7qce3yCXG8UBM
         ++hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLcn+y43vff6zBxshmDaNiGjY8eONnP2HdOrpUt4N2Q6xneyOa4ElB+GkeeaVdJaI/sFhXsdzmiFrZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwWp1o1hw3apY8fzvQ/bf5aF7RSXxeyp50RZ6rE44oWRSkexX5q
	9qlo7usBiHe5WYRMsTM45b7vc+Nwh35eK2Qv7eD5dlnONMsnUhh6hVB4jxwZvie3+kZqJSCX9DK
	Fw06ITdHwC73p6Qlnl8uqJzjtZuDFq5W/9+RTjA==
X-Gm-Gg: ASbGncsFMb5ZHDElBJLzVOsUpMUJsDODcfwVG2/A0Y79WijrBFXbP1CSEP9baLMOZFm
	BC0jL5/iLx7l9DdYZ2VKgMKcS18GPm9XTaUiP27Cs3a0sX2d+fRZX0F3hLsBslZn7LbNl+0zxl5
	ho4Tm0T7eWUTJfbIDhgDUsSKnkRr8=
X-Google-Smtp-Source: AGHT+IHFNCvqeNOK7sMsBmLPvgYWG7exVxSWvS9DNLcUgNmS336dZeeGcZ6AHSeGvrnkMyVPDEN8X9dkpWdV3lB6eDg=
X-Received: by 2002:a05:690c:3809:b0:6e2:1527:446b with SMTP id
 00721157ae682-700babe54c1mr17364757b3.3.1742509884010; Thu, 20 Mar 2025
 15:31:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
 <20250314-v5_user_cfi_series-v12-23-e51202b53138@rivosinc.com> <D8LF0RDZ6809.1I3MCCVSHRSQ2@ventanamicro.com>
In-Reply-To: <D8LF0RDZ6809.1I3MCCVSHRSQ2@ventanamicro.com>
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 20 Mar 2025 15:31:09 -0700
X-Gm-Features: AQ5f1JrziMLdrjsoBdVgxAHm84jf6CZ2h4oWTVpyzciuX161uoZpfiFXMbIZdgY
Message-ID: <CAKC1njQR9yARvWffjznjpeZK5zLFpg0-qCUo25_8niH29YL6uA@mail.gmail.com>
Subject: Re: [PATCH v12 23/28] riscv: kernel command line option to opt out of
 user cfi
To: =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@ventanamicro.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Christian Brauner <brauner@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, Jann Horn <jannh@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, alistair.francis@wdc.com, 
	richard.henderson@linaro.org, jim.shu@sifive.com, andybnac@gmail.com, 
	kito.cheng@sifive.com, charlie@rivosinc.com, atishp@rivosinc.com, 
	evan@rivosinc.com, cleger@rivosinc.com, alexghiti@rivosinc.com, 
	samitolvanen@google.com, broonie@kernel.org, rick.p.edgecombe@intel.com, 
	linux-riscv <linux-riscv-bounces@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 20, 2025 at 2:35=E2=80=AFPM Radim Kr=C4=8Dm=C3=A1=C5=99 <rkrcma=
r@ventanamicro.com> wrote:
>
> 2025-03-14T14:39:42-07:00, Deepak Gupta <debug@rivosinc.com>:
> > This commit adds a kernel command line option using which user cfi can =
be
> > disabled.
> >
> > Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> > ---
> >  arch/riscv/kernel/usercfi.c | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >
> > diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
> > index d31d89618763..813162ce4f15 100644
> > --- a/arch/riscv/kernel/usercfi.c
> > +++ b/arch/riscv/kernel/usercfi.c
> > @@ -17,6 +17,8 @@
> >  #include <asm/csr.h>
> >  #include <asm/usercfi.h>
> >
> > +bool disable_riscv_usercfi;
> > +
> >  #define SHSTK_ENTRY_SIZE sizeof(void *)
> >
> >  bool is_shstk_enabled(struct task_struct *task)
> > @@ -396,6 +398,9 @@ int arch_set_shadow_stack_status(struct task_struct=
 *t, unsigned long status)
> >       unsigned long size =3D 0, addr =3D 0;
> >       bool enable_shstk =3D false;
> >
> > +     if (disable_riscv_usercfi)
> > +             return 0;
> > +
> >       if (!cpu_supports_shadow_stack())
> >               return -EINVAL;
> >
> > @@ -475,6 +480,9 @@ int arch_set_indir_br_lp_status(struct task_struct =
*t, unsigned long status)
> >  {
> >       bool enable_indir_lp =3D false;
> >
> > +     if (disable_riscv_usercfi)
> > +             return 0;
> > +
> >       if (!cpu_supports_indirect_br_lp_instr())
> >               return -EINVAL;
> >
> > @@ -507,3 +515,16 @@ int arch_lock_indir_br_lp_status(struct task_struc=
t *task,
> >
> >       return 0;
> >  }
> > +
> > +static int __init setup_global_riscv_enable(char *str)
> > +{
> > +     if (strcmp(str, "true") =3D=3D 0)
> > +             disable_riscv_usercfi =3D true;
> > +
> > +     pr_info("Setting riscv usercfi to be %s\n",
> > +             (disable_riscv_usercfi ? "disabled" : "enabled"));
> > +
> > +     return 1;
> > +}
> > +
> > +__setup("disable_riscv_usercfi=3D", setup_global_riscv_enable);
>
> I'd prefer two command line options instead.

One for zicfilp and one for zicfiss ?
>
> In any case, I think we still document params in kernel-parameters.txt.

Noted, will do that.

