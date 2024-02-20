Return-Path: <devicetree+bounces-43898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A8285BCE1
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 424741C212A8
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 13:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EECB96A00E;
	Tue, 20 Feb 2024 13:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="xIIhYiQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CDE5A7A8
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 13:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708434588; cv=none; b=GCyeomGKzTX0naLldyQb2ZP+bMhn5PushQoFvjxJTjUXJOejRUHVRcxXrtTVVldLeEImUyVXwvmew1DdKfiPRVz00VE+7AF7lKk2cWHiQ6e1WUjzEjVC/wk69Nxv8Ckbtk4L9gXXcccVKu7yxky1mgrtsROVpYxc0hb2NkPwktg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708434588; c=relaxed/simple;
	bh=mbh5TbkJ6o9UjgpjqTeYt/lAcGo/dPj4834WfXG+FOc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M2oC98LdL9DCB2l/4wOoCQkgsjHCouw5z3OPYkvd713zwNeOU54D/fbTztwrcSKYwZGDylhCkYoAl95aT5YetAYMZxCcZRBVhdo/tioCl2zzDJ+L+Grbidya7Jl02zFtadwCwV591gztTvXkwPjwpuxfJLUysQrTmOhUDJZ8v9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=xIIhYiQI; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-36517219a19so11305835ab.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 05:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1708434586; x=1709039386; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20voKxE+jWNuTLz3X5MuseyKDNhrLXnhCuKfseH4ExI=;
        b=xIIhYiQI0dBWYNfbTa0eOZqm/1Vg0KAinODQFEUcaM0jTq7OC61drvZP2cG+h2m3JJ
         K6iqLKsibAdbeStM2uvjr8nDmCvr3a5VTNUY31xTD8zQ40SlNCqc6ijoud2uSHXis3Sb
         iiJToLSXIHQ34F7zbUmeNEqOUk8oWjQ5rXyNtUe9qFX5oHRZhKEbY8eVLrQMempekQsB
         ImVl8WOIOQbUfWBLpUH0puBZzKQqLDeHawVX2XV7bIkCQrfi6yHPqA3jHt3EqIYoPdlx
         /ONjtVD0bG/+oxt94I3nuDi2bF8JdMrKVho1uF6w4dHQnj+9i4zUe+wfEaleaIGDhDXO
         e6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708434586; x=1709039386;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=20voKxE+jWNuTLz3X5MuseyKDNhrLXnhCuKfseH4ExI=;
        b=ipziYsztCC60gRRlRfRZj8SAvOyLw2DgEJCUWfL4n4Opvrw2kTrmesbgi6UbTmcLQB
         Oy0SwEZqW8AjGGI9NJ4AmksFQW34MosgCyN4X1QmXGbatdrQkXJRFZF5PkUlC0hy6Myb
         5RwXqor/L9h+YvAA+nQ4+zyeuRRfNJ1z93PeYBWpqB1T8lIleZ0SHMnLBixMGKjc/i+r
         tdIW9iyPe1wfXlJ6hpwZlh5z10TTunpdqTNf40BdaKq18BhMn26mBb40mjoJzF7HnSPi
         cFl7AkPCLPnA9Wml1U0jAo5iWSrLbHmgZ+yg+k8djz7Du7xmf9oWI/nEPv8hX0VjROPh
         5KyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDyLoCEzQ82uQgXID7Qa4uEatHJxuAjZmubproE6JBknTkpBEUYsN/kHWdyMA0IrrNH4aUjpubHPgFVwW5d0rizjSVREQvgIKd0A==
X-Gm-Message-State: AOJu0YxOybwYyqqcnE2uWNNXSA+Br9q33YfmaokLbGV0xXiyQzf+d4ad
	/uf2oC4hbgWQrubk3NfIZ4A5Anc1ffEvWxfqtm2dW7x94pE2J2QbMtouj1qNd7J2k9htXWrowsP
	PCKd48bsW2ElKxiqoxT2HkCenxcXQFAG44o3NsQ==
X-Google-Smtp-Source: AGHT+IG41ou30YJCOaxfxdNlKINx1EJpgmhDcnqm4VJu+XqIGtYblfps8b9oCfMT10q7hZCaSRX5MiHJxIyxF63cy3s=
X-Received: by 2002:a05:6e02:154f:b0:363:8560:977d with SMTP id
 j15-20020a056e02154f00b003638560977dmr21841871ilu.3.1708434586491; Tue, 20
 Feb 2024 05:09:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com> <87edd7fj3d.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87edd7fj3d.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 20 Feb 2024 18:39:34 +0530
Message-ID: <CAAhSdy1mDnE0Z5hs+LHrSUmQzEBC3EHF2TfU=Bd416RacgbjeA@mail.gmail.com>
Subject: Re: [PATCH v13 00/13] Linux RISC-V AIA Support
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 5:22=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The RISC-V AIA specification is ratified as-per the RISC-V internationa=
l
> > process. The latest ratified AIA specifcation can be found at:
> > https://github.com/riscv/riscv-aia/releases/download/1.0/riscv-interrup=
ts-1.0.pdf
> >
> > At a high-level, the AIA specification adds three things:
> > 1) AIA CSRs
> >    - Improved local interrupt support
> > 2) Incoming Message Signaled Interrupt Controller (IMSIC)
> >    - Per-HART MSI controller
> >    - Support MSI virtualization
> >    - Support IPI along with virtualization
> > 3) Advanced Platform-Level Interrupt Controller (APLIC)
> >    - Wired interrupt controller
> >    - In MSI-mode, converts wired interrupt into MSIs (i.e. MSI generato=
r)
> >    - In Direct-mode, injects external interrupts directly into HARTs
> >
> > For an overview of the AIA specification, refer the AIA virtualization
> > talk at KVM Forum 2022:
> > https://static.sched.com/hosted_files/kvmforum2022/a1/AIA_Virtualizatio=
n_in_KVM_RISCV_final.pdf
> > https://www.youtube.com/watch?v=3Dr071dL8Z0yo
> >
> > To test this series, use QEMU v7.2 (or higher) and OpenSBI v1.2 (or hig=
her).
> >
> > This series depends upon per-device MSI domain patches merged by Thomas=
 (tglx)
> > which are available in irq/msi branch at:
> > git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
> >
> > These patches can also be found in the riscv_aia_v13 branch at:
> > https://github.com/avpatel/linux.git
> >
> > Changes since v12:
> >  - Rebased on Linux-6.8-rc5
> >  - Dropped per-device MSI domain patches which are already merged by Th=
omas (tglx)
> >  - Addressed nit comments from Thomas and Clement
> >  - Added a new patch2 to fix lock dependency warning
> >  - Replaced local sync IPI in the IMSIC driver with per-CPU timer
> >  - Simplified locking in the IMSIC driver to avoid lock dependency issu=
es
> >  - Added a dirty bitmap in the IMSIC driver to optimize per-CPU local s=
ync loop
>
> Thanks, Anup.
>
> I will take it for a spin, with Alex' v1 of the stop_machine()/ftrace
> IPI fix.
>
> The defconfig change (12/13)breaks a bunch a builds:
> https://patchwork.kernel.org/project/linux-riscv/list/?series=3D827706
>
> Download the logs here:
> https://github.com/linux-riscv/linux-riscv/suites/20917102160/logs?attemp=
t=3D1
> and grep for '##[error]'

You need to pull-in 14 dependent patches which Thomas has merged
in his irq/msi branch at
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git.

Regards,
Anup

