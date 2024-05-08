Return-Path: <devicetree+bounces-65673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 236CA8BF862
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 10:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F5D51F22641
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 08:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779594596B;
	Wed,  8 May 2024 08:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fib8UQCf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A8E3FBAF
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 08:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715156526; cv=none; b=LGrkT3GiobjXTc6VYe0Z9cRoCKnPrvJZm9vAUd6I5mfyxsX3iVFDQh2rJDebhUzUvnV2NGFcuiRdpSsCUUUGDuBnOLStNVA0q5gZsea2BVjvypGX8ShOPCmnMiuimeFrp0LYA0JqXeigTKMI9RXHlsUT8LELIqWRemKyqDfL04c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715156526; c=relaxed/simple;
	bh=VqnPVZobujaIPbHooqjp2g7rnHplNoCBcIs20OnSMiQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VZEVaXmL5qo0tqyEpxjvFgwfARApSbj4RbC5rrzPKlJO6mu9/CMmwrA4jQp59Fy5VwIjMrsXeEz5sm0y5u3INcxBm4VgnzxVtQWg4LJ71pdcceCnNl9dLlL6cwY2NSxUXBddvUWHrjzHdexcy8ItVeUn0ppRzyHHVPCSUUXFNRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=fib8UQCf; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-61bec6bab2bso43588697b3.1
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 01:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715156522; x=1715761322; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+tentO31VDVL/Z5hwv/0ekLp4NqtTVqujXuNpdLcPc=;
        b=fib8UQCfJ2Hyzfm/EREULoQtDlG9eszx5eVlzrWvgBPMQtxORztymcZ299Oq3+GOem
         4MvzMxgSz+X0mVF1OVPibNFqVKGsPb9UjMghQKaiBY5fXnVqPy9A45YfgDGoJSoJliib
         A6cIzKaYpcjVxmx8h1UvopT3KG8o5NpQxxh53Lrefh+lwOOKlkUCxrz637M48Pwl6DWM
         6POmgBhx6JC5i8f1G7BQITwNNlQmfJkXzoyUrLT1qzUrjZ+rdvTKAsJ1md+U9Pg1h+yX
         267TKVIECPNEF1NEMsEFtHtYzGAYC4ZmeA9CWOdsG730QzXSCcZczEmUKsztJDdAJR76
         V3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715156522; x=1715761322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t+tentO31VDVL/Z5hwv/0ekLp4NqtTVqujXuNpdLcPc=;
        b=QnZ9sdZoie+ePJVx9yFJBJN4i4CC6FowixEhj9AeVTDIPcXVE7gytEZwKhIqitJwO/
         BW/DeqHLh/dFZe13X7Ri6U+nbP7t4q7JboEwd4HCotdoG/d4N8ueVW6W50PAan0RLqsw
         tAsTUel6/KtoCp5W56J59ZTMaO4Hd8GEC8nDnKqzESJhaD1Ycdm26AFUvazf4A3F6O0d
         CQDrAZ2qqZC0YaXs77+SvaYaQLYgLpYtRPckNrRPHbxM6WYWJO4bCmbZohiOfcjE8PTk
         pw3MgKh21pRnVsYmi0DkrZElbpLTIq3QIfl3RppzsDrx9mQXSMcW3igQ+JNJ7oYfXeiH
         muow==
X-Forwarded-Encrypted: i=1; AJvYcCVoHgnifV354J5VzliGMBPrUMV6ukvD88maMW0pfAETpqquQVKAfUuqogcpJRwKcQDRHJrG1eGFcpRd3TkEiQC90oehjy4xoB0SlQ==
X-Gm-Message-State: AOJu0YwCEx4X6yFm6X1spBRt79Ai7xYhPbqsxtwyIGvH/cV3KJe9dVIb
	HQuK1m68lnwakytwhetlcC9nP0V/XA4MFwgn9En99q/hGUGGInOpcCQiUYXCTd+kyrKrIceDqZY
	ZQYEr+J6ll7rixbSpHLmdLc/P36+h6p+pd+0ySg==
X-Google-Smtp-Source: AGHT+IEXgJR7FBS0oCD/booQ+HNJEgAOmWTrDpDTW/qaHhGxw4LiMjzSVLLC7ISbeidXkEBvgCdyI4cw47HDIT5WA/I=
X-Received: by 2002:a81:8395:0:b0:618:7f3c:cbac with SMTP id
 00721157ae682-62085ddbd63mr20603007b3.31.1715156519351; Wed, 08 May 2024
 01:21:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240412-zve-detection-v4-0-e0c45bb6b253@sifive.com>
 <20240412-zve-detection-v4-2-e0c45bb6b253@sifive.com> <4acc62d0-d62b-4d42-805b-0bc7f663a81c@ghiti.fr>
In-Reply-To: <4acc62d0-d62b-4d42-805b-0bc7f663a81c@ghiti.fr>
From: Andy Chiu <andy.chiu@sifive.com>
Date: Wed, 8 May 2024 16:21:47 +0800
Message-ID: <CABgGipXcjY9KDU=fN6KtER3mPbxsQdb+Y5Czhq7QDBFFc6p__w@mail.gmail.com>
Subject: Re: [PATCH v4 2/9] riscv: smp: fail booting up smp if inconsistent
 vlen is detected
To: Alexandre Ghiti <alex@ghiti.fr>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor.dooley@microchip.com>, 
	Heiko Stuebner <heiko@sntech.de>, Guo Ren <guoren@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Jonathan Corbet <corbet@lwn.net>, Evan Green <evan@rivosinc.com>, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Shuah Khan <shuah@kernel.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
	Vincent Chen <vincent.chen@sifive.com>, Greentime Hu <greentime.hu@sifive.com>, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 25, 2024 at 4:01=E2=80=AFAM Alexandre Ghiti <alex@ghiti.fr> wro=
te:
>
> Hi Andy,
>
> On 12/04/2024 08:48, Andy Chiu wrote:
> > Currently we only support Vector for SMP platforms, that is, all SMP
> > cores have the same vlenb. If we happen to detect a mismatching vlen, i=
t
> > is better to just fail bootting it up to prevent further race/schedulin=
g
> > issues.
> >
> > Also, move .Lsecondary_park forward and chage `tail smp_callin` into a
> > regular call in the early assembly. So a core would be parked right
> > after a return from smp_callin. Note that a successful smp_callin
> > does not return.
> >
> > Fixes: 7017858eb2d7 ("riscv: Introduce riscv_v_vsize to record size of =
Vector context")
> > Reported-by: Conor Dooley <conor.dooley@microchip.com>
> > Closes: https://lore.kernel.org/linux-riscv/20240228-vicinity-cornstalk=
-4b8eb5fe5730@spud/
> > Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
> > ---
> > Changelog v4:
> >   - update comment also in the assembly code (Yunhui)
> > Changelog v2:
> >   - update commit message to explain asm code change (Conor)
> > ---
> >   arch/riscv/kernel/head.S    | 19 ++++++++++++-------
> >   arch/riscv/kernel/smpboot.c | 14 +++++++++-----
> >   2 files changed, 21 insertions(+), 12 deletions(-)
> >
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index 4236a69c35cb..a00f7523cb91 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -165,9 +165,20 @@ secondary_start_sbi:
> >   #endif
> >       call .Lsetup_trap_vector
> >       scs_load_current
> > -     tail smp_callin
> > +     call smp_callin
> >   #endif /* CONFIG_SMP */
> >
> > +.align 2
> > +.Lsecondary_park:
> > +     /*
> > +      * Park this hart if we:
> > +      *  - have too many harts on CONFIG_RISCV_BOOT_SPINWAIT
> > +      *  - receive an early trap, before setup_trap_vector finished
> > +      *  - fail in smp_callin(), as a successful one wouldn't return
> > +      */
> > +     wfi
> > +     j .Lsecondary_park
> > +
> >   .align 2
> >   .Lsetup_trap_vector:
> >       /* Set trap vector to exception handler */
> > @@ -181,12 +192,6 @@ secondary_start_sbi:
> >       csrw CSR_SCRATCH, zero
> >       ret
> >
> > -.align 2
> > -.Lsecondary_park:
> > -     /* We lack SMP support or have too many harts, so park this hart =
*/
> > -     wfi
> > -     j .Lsecondary_park
> > -
> >   SYM_CODE_END(_start)
> >
> >   SYM_CODE_START(_start_kernel)
> > diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> > index d41090fc3203..673437ccc13d 100644
> > --- a/arch/riscv/kernel/smpboot.c
> > +++ b/arch/riscv/kernel/smpboot.c
> > @@ -214,6 +214,15 @@ asmlinkage __visible void smp_callin(void)
> >       struct mm_struct *mm =3D &init_mm;
> >       unsigned int curr_cpuid =3D smp_processor_id();
> >
> > +     if (has_vector()) {
> > +             /*
> > +              * Return as early as possible so the hart with a mismatc=
hing
> > +              * vlen won't boot.
> > +              */
> > +             if (riscv_v_setup_vsize())
> > +                     return;
> > +     }
> > +
> >       /* All kernel threads share the same mm context.  */
> >       mmgrab(mm);
> >       current->active_mm =3D mm;
> > @@ -226,11 +235,6 @@ asmlinkage __visible void smp_callin(void)
> >       numa_add_cpu(curr_cpuid);
> >       set_cpu_online(curr_cpuid, 1);
> >
> > -     if (has_vector()) {
> > -             if (riscv_v_setup_vsize())
> > -                     elf_hwcap &=3D ~COMPAT_HWCAP_ISA_V;
> > -     }
> > -
> >       riscv_user_isa_enable();
> >
> >       /*
> >
>
> So this should go into -fixes, would you mind sending a single patch for
> this fix?

I thought it would be magically picked up by a bot as long as we have
a fix tag. Am I assuming something wrong?

>
> Your patch 8 is actually already fixed by Clement's patch
> https://lore.kernel.org/linux-riscv/20240409143839.558784-1-cleger@rivosi=
nc.com/

Okay, I will drop it at the next revision.

> and I already mentioned this one to Palmer.
>
> Thanks,
>
> Alex
>

Thanks,
Andy

