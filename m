Return-Path: <devicetree+bounces-219238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8AB8928B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 900CB5A19D1
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7C630AD00;
	Fri, 19 Sep 2025 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="j6AUy+sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E713D2EE5FF
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758279246; cv=none; b=sdLluuyXr0zuzAT996+o7Q5P944ix6CgO71l3dXtHbjZSb/zK4948QitWCqB5gQZaj0r8TFDPrc8E+J5nJD05rgzxq/vhYJjiCVtlHbHiKCsZi9iYHsUGI6GPPSU5o3d7bECg0dH6qdg5TVgsw32oJIfH+jc4uPgOHBHUBhQ7hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758279246; c=relaxed/simple;
	bh=dlBqN6s2KaMTj78q1hAYaCO2jqx4CfAlVXMMxWBVwRg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tKvu9ZjAw4AzXpNSQIQ8AshpV3bNTx7lfZv76apHHKkHjmbKn9xwtVnGa7BsQRJig+2qqiP6atiEZmw+uprZbkFTQuzqKn2l8lRDYek5lo8cSMPg1WItvhh/tbM67kSv+wAka7NYI3jcKAkNGlyc7BxPP27kMK4ib9176CWqRks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=j6AUy+sj; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-32df5cae0b1so2269037a91.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 03:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1758279243; x=1758884043; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VwXF4nj9Ctk9ENZA1Gy7QLttXCNWXb5F14RFISsUWAo=;
        b=j6AUy+sjsf5jch97JcB6QIfaCndwK06Zlj1lIXlmhCFXw92DHL+/v/r+QY3Ss+EZ5r
         wALy7WeyOsgFytV8M+iElL98Y64CHt/3FBvavJQbfBapoLudetClyRWABv+9lOAkbjxV
         6mmfaZrB1AtGNxA3o9TMga+a/7fvQavYjCG9iOajkq4F63GG4gFDRqYT7jEiV1fCloez
         LPm+Bb+0njjIdBWN3Xt0c0v6oIRTAaE9ArBZPIfG4u8Z2kjOzG+xbaahKTaDx2AQyKT4
         hIPBUSI/9A2EJhtTbdUW/oix1ZWhLRZdw08g/U0Lwqmnigg2yvkgKPvmWuPuI9/32Vcs
         5n8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758279243; x=1758884043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VwXF4nj9Ctk9ENZA1Gy7QLttXCNWXb5F14RFISsUWAo=;
        b=ps7dgVKCQ3nipoM5KCozqW7uCdUyDD/56LjhuakOF1hceDmmO+VTiu5Dz73DNd50br
         Y9lLhBYL44A1C/wSKW0w83Sa1KS4mM906IIQWc+GmS5IvP2QKYxqx5AG+9uWohO0JvfS
         kFOowbr81wpUGFwIP3xeYQ8tc3cy4fgMWk1jkQL2xhWc3Vb+P4NsPaYG8TNifXUg2BjO
         d+18bQolL6av4o4bzr+b/68mlO8gOWG37wRZ/dSmKl9AE28UfkUAd8sbQj4FLcOHSZNH
         w0siEuY3XPFkPkFXMsfO3w0cG9vTLWftUckAys5YaS2TF/rR/tdT8wQOp7TBBCcG3Sef
         8Cfg==
X-Forwarded-Encrypted: i=1; AJvYcCVoy8rJHH1P8LRmQDBhf6bveBmpmrtxYqEfC35ZSAfeqhSY8ippDX4pY2LSy+QnWK869JWAH3jeKSLM@vger.kernel.org
X-Gm-Message-State: AOJu0YygzqIaTWZNpxoejI5WS6BIHWm+LBMKq7Xn3TMk6jsIglBq4NL3
	oA9B1Z9vznIq+lZfgDSvPDjIgwwlDL9zfB6BgoguAFHDELFU8mj9xRyZGZ7gn3FkgvgLw/s0FcI
	tL1oWFWzymo7logw+ZImlrYp1wI2g3p2mXCCGTGuPFg==
X-Gm-Gg: ASbGncsmvIkAa90br8oYVhuqRAgtQaXqX+R8jSmDt76AkHpJHYpI1SKnHuP5vcsABxe
	RwEaMn5ow66WobH+efnzxNiZraZG41BLa7BPdg5E5HWiO2C0DdNIxlInWgAnY/l8rovEYzGqz5+
	o9RhozOTAirD2Q9iqEu6o2P4lnE68k/6Pm8w/zcyU/I+PXIi7mUmsl0fLPAyuQMGvQL3N+jI+Dg
	70uiCfgFRlH9z2aGn+D3Ay5qaqhnlUx+0Jqw7eDWzzPH06T4c3C
X-Google-Smtp-Source: AGHT+IFxeJMPLYhVopFZ/wMGe4/MLpf50j7fyW/JSos7YqNV48KuEAenh3nTAVS5vu18B3CE2dLqvQk2LQK3xveldfU=
X-Received: by 2002:a17:90b:3fcf:b0:330:6f16:c4d8 with SMTP id
 98e67ed59e1d1-33097fd4e41mr3511663a91.7.1758279243172; Fri, 19 Sep 2025
 03:54:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919073714.83063-1-luxu.kernel@bytedance.com>
 <aM0qlTNPiaQRY2Nv@andrea> <CAPYmKFsP+=S56Cj2XT0DjdvBT_SY84moM4LVeqxHTVWbtq4EVw@mail.gmail.com>
In-Reply-To: <CAPYmKFsP+=S56Cj2XT0DjdvBT_SY84moM4LVeqxHTVWbtq4EVw@mail.gmail.com>
From: Xu Lu <luxu.kernel@bytedance.com>
Date: Fri, 19 Sep 2025 18:53:52 +0800
X-Gm-Features: AS18NWDkb7q9MGkDnErZbfpP4LgF33f4wEnUX8H6rIWl06tQwmVParxSdVieQQ4
Message-ID: <CAPYmKFsV_ZPifJBtvPOdqM6_Mzhac9A4-PH9zt8TirOqAwKGhw@mail.gmail.com>
Subject: Re: [External] Re: [PATCH v3 0/8] riscv: Add Zalasr ISA extension support
To: Andrea Parri <parri.andrea@gmail.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, will@kernel.org, peterz@infradead.org, boqun.feng@gmail.com, 
	mark.rutland@arm.com, ajones@ventanamicro.com, brs@rivosinc.com, 
	anup@brainfault.org, atish.patra@linux.dev, pbonzini@redhat.com, 
	shuah@kernel.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com, 
	linux-doc@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 6:39=E2=80=AFPM Xu Lu <luxu.kernel@bytedance.com> w=
rote:
>
> Hi Andrea,
>
> On Fri, Sep 19, 2025 at 6:04=E2=80=AFPM Andrea Parri <parri.andrea@gmail.=
com> wrote:
> >
> > On Fri, Sep 19, 2025 at 03:37:06PM +0800, Xu Lu wrote:
> > > This patch adds support for the Zalasr ISA extension, which supplies =
the
> > > real load acquire/store release instructions.
> > >
> > > The specification can be found here:
> > > https://github.com/riscv/riscv-zalasr/blob/main/chapter2.adoc
> > >
> > > This patch seires has been tested with ltp on Qemu with Brensan's zal=
asr
> > > support patch[1].
> > >
> > > Some false positive spacing error happens during patch checking. Thus=
 I
> > > CCed maintainers of checkpatch.pl as well.
> > >
> > > [1] https://lore.kernel.org/all/CAGPSXwJEdtqW=3Dnx71oufZp64nK6tK=3D0r=
ytVEcz4F-gfvCOXk2w@mail.gmail.com/
> > >
> > > v3:
> > >  - Apply acquire/release semantics to arch_xchg/arch_cmpxchg operatio=
ns
> > >  so as to ensure FENCE.TSO ordering between operations which precede =
the
> > >  UNLOCK+LOCK sequence and operations which follow the sequence. Thank=
s
> > >  to Andrea.
> > >  - Support hwprobe of Zalasr.
> > >  - Allow Zalasr extensions for Guest/VM.
> > >
> > > v2:
> > >  - Adjust the order of Zalasr and Zalrsc in dt-bindings. Thanks to
> > >  Conor.
> > >
> > > Xu Lu (8):
> > >   riscv: add ISA extension parsing for Zalasr
> > >   dt-bindings: riscv: Add Zalasr ISA extension description
> > >   riscv: hwprobe: Export Zalasr extension
> > >   riscv: Introduce Zalasr instructions
> > >   riscv: Use Zalasr for smp_load_acquire/smp_store_release
> > >   riscv: Apply acquire/release semantics to arch_xchg/arch_cmpxchg
> > >     operations
> > >   RISC-V: KVM: Allow Zalasr extensions for Guest/VM
> > >   KVM: riscv: selftests: Add Zalasr extensions to get-reg-list test
> > >
> > >  Documentation/arch/riscv/hwprobe.rst          |   5 +-
> > >  .../devicetree/bindings/riscv/extensions.yaml |   5 +
> > >  arch/riscv/include/asm/atomic.h               |   6 -
> > >  arch/riscv/include/asm/barrier.h              |  91 ++++++++++--
> > >  arch/riscv/include/asm/cmpxchg.h              | 136 ++++++++--------=
--
> > >  arch/riscv/include/asm/hwcap.h                |   1 +
> > >  arch/riscv/include/asm/insn-def.h             |  79 ++++++++++
> > >  arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
> > >  arch/riscv/include/uapi/asm/kvm.h             |   1 +
> > >  arch/riscv/kernel/cpufeature.c                |   1 +
> > >  arch/riscv/kernel/sys_hwprobe.c               |   1 +
> > >  arch/riscv/kvm/vcpu_onereg.c                  |   2 +
> > >  .../selftests/kvm/riscv/get-reg-list.c        |   4 +
> > >  13 files changed, 242 insertions(+), 91 deletions(-)
> >
> > I wouldn't have rushed this submission while the discussion on v2 seems
> > so much alive;  IAC, to add and link to that discussion, this version
>
> Thanks. This version is sent out to show my solution to the FENCE.TSO
> problem you pointed out before. I will continue to improve it. Look
> forward to more suggestions from you.
>
> > (not a review, just looking at this diff stat) is changing the fastpath
> >
> >   read_unlock()
> >   read_lock()
> >
> > from something like
> >
> >   fence rw,w
> >   amodadd.w
> >   amoadd.w
> >   fence r,rw
> >
> > to
> >
> >   fence rw,rw
> >   amoadd.w
> >   amoadd.w
> >   fence rw,rw
> >
> > no matter Zalasr or !Zalasr.  Similarly for other atomic operations wit=
h
> > release or acquire semantics.  I guess the change was not intentional?
> > If it was intentional, it should be properly mentioned in the changelog=
.
>
> Sorry about that. It is intended. The atomic operation before
> __atomic_acquire_fence or operation after __atomic_release_fence can
> be just a single ld or sd instruction instead of amocas or amoswap. In
> such cases, when the store release operation becomes 'sd.rl', the
> __atomic_acquire_fence via 'fence r, rw' can not ensure FENCE.TSO
> anymore. Thus I replace it with 'fence rw, rw'.

This is also the common implementation on other architectures who use
aq/rl instructions like ARM. And you certainly already knew it~

>
> I will make it a separate commit and provide more messages in the
> changelog. Maybe alternative mechanism can be applied to accelerate
> it.
>
> Best Regards,
> Xu Lu
>
> >
> >   Andrea

