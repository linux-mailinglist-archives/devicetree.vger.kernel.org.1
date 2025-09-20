Return-Path: <devicetree+bounces-219505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B88B8C061
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 08:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 113E6175B4D
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 06:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5892B22156B;
	Sat, 20 Sep 2025 06:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E87JIFfu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323482629D
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758348292; cv=none; b=hQ3sP0uqQ4UnhoxiX5/SBgrRztsyxDPNepvhn8rn/6AvqeO8FvgNWXF+fEgkRJtVe2W6GV4beQtnatc2OdaM0OGiRtsknLSwgyra10pjCZXEBUscCD9ru6P9i86wqfiBV+Ky9mvwE9cjLIP+5PxOKpcVw/0n7OFPVJ4UeFdsFp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758348292; c=relaxed/simple;
	bh=bUSo76FiAKZcTtDrgA2WJVYVNUq/3jJzR2LwBGYiPys=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pfqs0bs56ZjPrSnPJgNcrjapLIWDacyNPpxSmDJHnCm9kBy/90e/OsZ9voS8AYPENRnnXCAKqrc1M+B2f6+BGmp7llsdH/bP5Rsv4g7GH4n02sNC2Dl0KZRXa0cqR6vjydbXUUBxCy9rFDooioqJ1LlEywH8e0f6TiLNW8GR2sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E87JIFfu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4518C4CEFF
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758348291;
	bh=bUSo76FiAKZcTtDrgA2WJVYVNUq/3jJzR2LwBGYiPys=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=E87JIFfuz3gPrA5uk0Fal7g5QdzSXNMElDgzjPwklZSaCjTN0uJGTgxKfHx0qg49I
	 7NYlUWFm4BCurUCakVrCJVYmwCyhh7p8d2r2PPiaLqm2NSyP2k9o0M4MNoC8Eyn452
	 1CMZ8Rd05WCmiqOzbfawckGselSHfwpAdGQio5UBPA4+9rZw3rj2KW6lHTFVEAxgFZ
	 jfu2i+u6bI/WS0zbSLbsyr4wH468Ob1gVGbcZGeBtRbrJ9UxZCihXgG8HwLEp2kG0W
	 sVfBVbY5CSLIVNGvg4Grn+2+6bX1zTdgCfkqE5ZfWJAMjIBvC/WOaoCgHjSoe0Oabn
	 1/laTrDP+tAog==
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso2139649f8f.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 23:04:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXEmGD8PjPI+qGtTnFe0emFUjEJVgovFX2e5YgN8P9vUq4Xzm5wYILMB5bi4aN7w4/haInK0ObugsOL@vger.kernel.org
X-Gm-Message-State: AOJu0YyEvgwHMILoVMiTCM6tawUUSL5bGW390u3HG4gMQwsELQNnjbzd
	8xdNFOp2A0hAgp/fq4o8FuPPB609Pgf3sJos1VnZtirCtHuoxgwezE3mdGS9IUsAKwUpRIhmZG+
	a7dGZ2qNJKJHrDjgkkbnLLSVHfCUvoqw=
X-Google-Smtp-Source: AGHT+IHVBstz0hyh2FjBGMmeldYqXqfklk1YzzcXGWCTr4A8BwrONyFaN+09clPKxJqBQbjEB4/rMmOa8D3VMOosbR4=
X-Received: by 2002:a05:6000:3109:b0:3ec:4fe:880 with SMTP id
 ffacd0b85a97d-3ee7c552822mr4209207f8f.1.1758348290125; Fri, 19 Sep 2025
 23:04:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
 <aLciY2putG8g2P9F@andrea> <aMoyntAydNMtcl+3@gmail.com> <aMw3504EwlnDOJI0@gmail.com>
 <CAPYmKFt=5=t_nxY4FadG0_vSgAu1tXyO15OCvo5x6QorqM+BAw@mail.gmail.com>
In-Reply-To: <CAPYmKFt=5=t_nxY4FadG0_vSgAu1tXyO15OCvo5x6QorqM+BAw@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Sat, 20 Sep 2025 14:04:38 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRpnaL=K=qGLntG77X61n=Bc011Rq+6045D_HF_raeYYA@mail.gmail.com>
X-Gm-Features: AS18NWBczq_ysm8InHadaqF1t8jSqDooIQYfRrTjuTn5kR1Hlb7xDVelX9zqbVA
Message-ID: <CAJF2gTRpnaL=K=qGLntG77X61n=Bc011Rq+6045D_HF_raeYYA@mail.gmail.com>
Subject: Re: [External] Re: [PATCH v2 0/4] riscv: Add Zalasr ISA extension support
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: Andrea Parri <parri.andrea@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, ajones@ventanamicro.com, 
	brs@rivosinc.com, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 11:18=E2=80=AFAM Xu Lu <luxu.kernel@bytedance.com> =
wrote:
>
> Hi Guo Ren,
>
> Thanks for your advice.
>
> On Fri, Sep 19, 2025 at 12:48=E2=80=AFAM Guo Ren <guoren@kernel.org> wrot=
e:
> >
> > On Wed, Sep 17, 2025 at 12:01:34AM -0400, Guo Ren wrote:
> > > On Tue, Sep 02, 2025 at 06:59:15PM +0200, Andrea Parri wrote:
> > > > > Xu Lu (4):
> > > > >   riscv: add ISA extension parsing for Zalasr
> > > > >   dt-bindings: riscv: Add Zalasr ISA extension description
> > > > >   riscv: Instroduce Zalasr instructions
> > > > >   riscv: Use Zalasr for smp_load_acquire/smp_store_release
> > > >
> > > > Informally put, our (Linux) memory consistency model specifies that=
 any
> > > > sequence
> > > >
> > > >   spin_unlock(s);
> > > >   spin_lock(t);
> > > >
> > > > behaves "as it provides at least FENCE.TSO ordering between operati=
ons
> > > > which precede the UNLOCK+LOCK sequence and operations which follow =
the
> > > > sequence".  Unless I missing something, the patch set in question b=
reaks
> > > > such ordering property (on RISC-V): for example, a "release" annota=
tion,
> > > > .RL (as in spin_unlock() -> smp_store_release(), after patch #4) pa=
ired
> > > > with an "acquire" fence, FENCE R,RW (as could be found in spin_lock=
() ->
> > > > atomic_try_cmpxchg_acquire()) do not provide the specified property=
.
> > > >
> > > > I _think some solutions to the issue above include:
> > > >
> > > >  a) make sure an .RL annotation is always paired with an .AQ annota=
tion
> > > >     and viceversa an .AQ annotation is paired with an .RL annotatio=
n
> > > >     (this approach matches the current arm64 approach/implementatio=
n);
> > > >
> > > >  b) on the opposite direction, always pair FENCE R,RW (or occasiona=
lly
> > > >     FENCE R,R) with FENCE RW,W (this matches the current approach/t=
he
> > > >     current implementation within riscv);
> > > >
> > > >  c) mix the previous two solutions (resp., annotations and fences),=
 but
> > > >     make sure to "upgrade" any releases to provide (insert) a FENCE=
.TSO.
> > > I prefer option c) at first, it has fewer modification and influence.
> > Another reason is that store-release-to-load-acquire would give out a
> > FENCE rw, rw according to RVWMO PPO 7th rule instead of FENCE.TSO, whic=
h
> > is stricter than the Linux requirement you've mentioned.
>
> The existing implementation of spin_unlock, when followed by
> spin_lock, is equal to 'FENCE rw, rw' for operations before
Yes, it's also stricter than option c), the same as ".RL->.AQ" sequence.

You give out another reason for option c).

> spin_unlock
>  and after spin_lock:
>
> spin_unlock:
>     fence rw, w
>     sd
> spin_lock:
>     amocas
>     fence r, rw
>
> The store-release semantics in spin_unlock, is used to ensure that
> when the other cores can watch the store, they must also watch the
> operations before the store, which is a more common case than calling
> spin_unlock immediately followed by spin_lock on the same core. And
> the existing implementation 'fence rw, w' 'fence r, rw' is stricter
> than '.aq' '.rl'. That is why we want to modify it.
>
> I have reimplemented the code and it now looks like the attached text
> file. I will send the patch out later.
>
> Best Regards.
>
> Xu Lu
>
> >
> > >
> > > asm volatile(ALTERNATIVE("fence rw, w;\t\nsb %0, 0(%1)\t\n",  \
> > > -                       SB_RL(%0, %1) "\t\nnop\t\n",          \
> > > +                       SB_RL(%0, %1) "\t\n fence.tso;\t\n",  \
> > >                         0, RISCV_ISA_EXT_ZALASR, 1)           \
> > >                         : : "r" (v), "r" (p) : "memory");     \
> > >
> > > I didn't object option a), and I think it could be done in the future=
.
> > > Acquire Zalasr extension step by step.
> > >
> > > >
> > > > (a) would align RISC-V and ARM64 (which is a good thing IMO), thoug=
h it
> > > > is probably the most invasive approach among the three approaches a=
bove
> > > > (requiring certain changes to arch/riscv/include/asm/{cmpxchg,atomi=
c}.h,
> > > > which are already relatively messy due to the various ZABHA plus ZA=
CAS
> > > > switches).  Overall, I'm not too exited at the idea of reviewing an=
y of
> > > > those changes, but if the community opts for it, I'll almost defini=
tely
> > > > take a closer look with due calm.  ;-)
> > > >
> > > >   Andrea
> > > >
> > > > _______________________________________________
> > > > linux-riscv mailing list
> > > > linux-riscv@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > > >
> > >
> > > _______________________________________________
> > > linux-riscv mailing list
> > > linux-riscv@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > >



--=20
Best Regards
 Guo Ren

