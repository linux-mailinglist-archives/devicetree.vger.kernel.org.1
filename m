Return-Path: <devicetree+bounces-45162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3081D860EB4
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 10:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 605921C24DD1
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 09:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C41D58AC3;
	Fri, 23 Feb 2024 09:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="tMAU1rSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BA45D73B
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 09:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708681993; cv=none; b=NjE6yvAsEKCRSgpEoHteZajlKsGR91Eb1hB7BiK78J58kdbEMN+PbJHfscaoAf0me8kXpboB8GeZ7x6GBiXUUKSjB42dsddulYrawPcUmaUz2kxFZmX+mjhchEK7s5Abfpsg1yWltx4G4GdAEa+6mQH/R1/qWm0yaqnOeR/IA1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708681993; c=relaxed/simple;
	bh=7XCzh+uIMXJ+5MTJLWpvUyIlSnKKlRPx/XGiT+6Op5w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KcXxyaQWkyTFl1ZMZYJ13jnZkigX4GIrnXkraH9imVg5cn7x9a8C9juyjyb2Hx3kae2DKt5xRbmZOw65ziSkUfxE73tb5aqLSwdBekFBjhzTQtvoyd4t9/fH5w/R6yeilDrX0hxtLhSC7M7Fi4LJqIKSI5+LuScuOun22CPGLco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=tMAU1rSz; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-36517219a19so1702715ab.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 01:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1708681990; x=1709286790; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwITkJOkxJi4tf5gcg3IMghI+TXnjRRJ7mlrP6U+6fo=;
        b=tMAU1rSzw35qFUutm02Fyqz1eMiGuPMpzOPknR+Ant0YpJeeJONGiLuwo08PXyJbSm
         G83gPgXkJHg1XhDVWsc0TbBgp+H6sQMI7ai221cPv0u+PME0VYhSSwZLR5/RPrImpre/
         mGTLMrj0Lvi0nX6t4ynjLEFJYfxb+c+VbTcG//k1PQixmxp9V1pywp+TH0/sDRxlVrUa
         fgGprFRx3RZ2c/3XPM4mYZoVVMMLQDOfEnHt4WFAp1iTx5ObhdOD3xnSy2i3WrlgRTFz
         j9wSL+zsLU80B287bQ1JCphdtCtrjOt2IjKnntR4+y01a6JOgvlODxB5T3qCmdj2B4CO
         RXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708681990; x=1709286790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JwITkJOkxJi4tf5gcg3IMghI+TXnjRRJ7mlrP6U+6fo=;
        b=eIRTgHGBsR5u+rUk/I0yZ3SQkgPcUZaKRyhZC+WYll8QCt9PFT9tA0qRjbt2Qc09zB
         C7w4wboKVf+IwPs/woIZ5QDicTq7W7bsK0JqEouMKSyucYAP99NVJEAkCqTuj4bn7+YO
         xpEv1lX3Uq8+LBIdRCIMdtLUo6mtOvnqhdV29DQ7Wj9phOKs6+FGciw92+80uL4jNnuR
         aJWIYvlw+9wRgbeQEL/c+6at8E+0UIJLsNpzBEgyus5r7bLw791eK6/DE3Gx5ckXye6W
         twwbZfD0h9RanI5mAuqIPu5sxBqjrPLNPLb+ddqNjIno84Vfa03eV4iYMw5tmpimyeaU
         iUwA==
X-Forwarded-Encrypted: i=1; AJvYcCUY3QmpGB4/nXLkikIZJUOE+qCaZfJMCJKPQmW3BjlcRSPjBdOrQetxejm5aWuXxWdboMPyZiX6N2KUlSvm73npBkNA4UT76PwBaw==
X-Gm-Message-State: AOJu0YwwB0YtOHi4Ci1pi2+IlN5X7b5JKu5bZ6LGG/KoxwWx7k1eGANh
	7zdgAfLu3eBKhFPmE47nY2ABDx4S/ygWX5zfd9g0Fh0uOq5or/U0OZf/rGNOX3NEHxVaL9kHpzp
	AfAlm5WMJJuVe+1CLPqlLFMkD6W7PGX9PuDrsGA==
X-Google-Smtp-Source: AGHT+IFEMrjyUct3LRVpsNuoU0mxhXWWWiTu7G911BntzOGl/Oh/Kjz2rfYKPmZurgFzXi9TrTc+zlN+3LwG3NAjrOo=
X-Received: by 2002:a92:c56e:0:b0:365:2aa7:9407 with SMTP id
 b14-20020a92c56e000000b003652aa79407mr1592046ilj.17.1708681990333; Fri, 23
 Feb 2024 01:53:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-12-apatel@ventanamicro.com> <87a5nreg94.ffs@tglx>
In-Reply-To: <87a5nreg94.ffs@tglx>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 23 Feb 2024 15:22:59 +0530
Message-ID: <CAAhSdy1jdHsuwRhbRgig98-AVDOGwp_XxHurg9o3Rsj1AVOqbA@mail.gmail.com>
Subject: Re: [PATCH v14 11/18] irqchip: Add RISC-V incoming MSI controller
 early driver
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024 at 1:58=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Thu, Feb 22 2024 at 15:09, Anup Patel wrote:
> > +     /*
> > +      * Setup cpuhp state (must be done after setting imsic_parent_irq=
)
> > +      *
> > +      * Don't disable per-CPU IMSIC file when CPU goes offline
> > +      * because this affects IPI and the masking/unmasking of
> > +      * virtual IPIs is done via generic IPI-Mux
> > +      */
> > +     cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "irqchip/riscv/imsic:start=
ing",
> > +                       imsic_starting_cpu, imsic_dying_cpu);
>
> This is not really correct. IPIs should be working right away when a CPU
> comes online and on the unplug side until it really goes offline.
>
> So this wants to be in the starting range, i.e. between CPUHP_AP_OFFLINE
> and CPUHP_AP_ONLINE. No?

Yes, it has to be as early as possible but I was not sure about
introducing yet another driver specific CPUHP_AP_xyz state
considering CPUHP_AP_ONLINE_DYN worked fine.

Since you suggested, let me introduce
CPUHP_AP_IRQ_RISCV_IMSIC_STARTING in the next revision.

Regards,
Anup

