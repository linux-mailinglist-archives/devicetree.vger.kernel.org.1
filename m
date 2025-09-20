Return-Path: <devicetree+bounces-219504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E3AB8C040
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 08:00:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB61F58534A
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 06:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8470723AB9D;
	Sat, 20 Sep 2025 06:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtKc4BMc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCAD239E8B
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758348010; cv=none; b=mJX3v1yNI0P4uKt0Bij0wvDEpfyezyDZ5FMgCGz5epAeIxkRaEN/ptpTMMSrKzLr51gaj81qnrR3SsVNXBqNUeSABc317QcCGhGQP5N5uvzF+/LaTHkjj8iTqXVJaxt5+QchM1klAOBxMWXYpHH3tE1BXiTAw9G1qJ7Y3lxev3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758348010; c=relaxed/simple;
	bh=hVtNHfJwSNFGIfBeLBsVK4wWa6+5QGlREP4ggQs41xE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WAaGKgx7uBxnpyPGVihtIdcCM/z+5Yty6a4oVhHcOYPjadjrf6RK3f5525M4blxbahdCeePbc670lIjbLUlQdsfClIQKO3vgX98ZAO+h3r26DfC8UvnrCv+pnzolR1l7xakuRadLXa4O2aMxGFXqDVl7mOevUoSdhXlpaCgNHco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtKc4BMc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED562C4CEFA
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758348010;
	bh=hVtNHfJwSNFGIfBeLBsVK4wWa6+5QGlREP4ggQs41xE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=LtKc4BMc6bw7mV2L+4lBdinSApl7l6PlkIHq7rGyZ8Q7uwuQck+ehpdnIjBYkrYJ7
	 00ztBflA1qa+82OXJDZbdqM4MoGln/yuM/XFdWJ1kDbO2O+rXi8vP9Ej/r1Y9rp4uO
	 mXfcAOGcQtTsMG6tXSPpbXdb8Mpa/vLH0m4ic50Ixf7HdsSV8KDmhu2bJm4krhzfes
	 GR7Y60bu6gkSUbqs0pXVlaaIT8kEmze6n/rpBOWZcEFKizxle5Wbj7w8BgjSjRuXkx
	 5QAaD4KDsGI0IBmpwfH0bBUpZlJIsV4m9NyRYTjF6he/Maay88As713rz7mv99lYKs
	 LiKQmaODEixbg==
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3f2ae6fadb4so663586f8f.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 23:00:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXo4z6il03GspTOUZ5kGc4keaRDDBm1WzLRs0TR363OUHJQ32nQfJjI+RsWlcQ39dTnWxnBgeFz6HTg@vger.kernel.org
X-Gm-Message-State: AOJu0YwSW/suYdEucTPBhXXM0VxlxyrUWqDu5hToU4jOBAJWM52/SS5Z
	bTirMNr7AII0zcYbQ2UBgqvRpDjXZ8HzutnrAx5yd58ysGG1FVwAJ1hgwx6gfzVptABklHH2vF4
	ebNjswdY2/q2eRJyUjwS3xiXZbORoc8k=
X-Google-Smtp-Source: AGHT+IFyJP166p60BtFnlLt5+NsmTblIm8XMHGMCgm5M6+8c5BhNRkh3BVGKN6xz3Bv9bUS2dpxlRmgerLQCcFFxnNU=
X-Received: by 2002:a05:6000:4024:b0:3ec:d80d:e59b with SMTP id
 ffacd0b85a97d-3ee7bad121emr5519041f8f.10.1758348008426; Fri, 19 Sep 2025
 23:00:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
 <aLciY2putG8g2P9F@andrea> <aMoyntAydNMtcl+3@gmail.com> <aMw3504EwlnDOJI0@gmail.com>
 <aMx4mS0K8f_aDV_q@andrea>
In-Reply-To: <aMx4mS0K8f_aDV_q@andrea>
From: Guo Ren <guoren@kernel.org>
Date: Sat, 20 Sep 2025 13:59:56 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSELHo6mSUB9ODvrOkDOtbT85waC9O7T7DUoF3MVZEseQ@mail.gmail.com>
X-Gm-Features: AS18NWDTKwMZzzONVJiFtjB5mojteYAsvxvGQeOAEukpl-IbwwpPq-YvEBjnFOk
Message-ID: <CAJF2gTSELHo6mSUB9ODvrOkDOtbT85waC9O7T7DUoF3MVZEseQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] riscv: Add Zalasr ISA extension support
To: Andrea Parri <parri.andrea@gmail.com>
Cc: Xu Lu <luxu.kernel@bytedance.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, ajones@ventanamicro.com, 
	brs@rivosinc.com, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 5:24=E2=80=AFAM Andrea Parri <parri.andrea@gmail.co=
m> wrote:
>
> [merging replies]
>
> > > I prefer option c) at first, it has fewer modification and influence.
> > Another reason is that store-release-to-load-acquire would give out a
> > FENCE rw, rw according to RVWMO PPO 7th rule instead of FENCE.TSO, whic=
h
> > is stricter than the Linux requirement you've mentioned.
>
> I mean, if "fewer modification" and "not-a-full-fence" were the only
> arguments, we would probably just stick with the current scheme (b),
> right?  What other arguments are available?  Don't get me wrong: no a
> priori objection from my end; I was really just wondering about the
> various interests/rationales in the RISC-V kernel community.  (It may
> surprise you, but some communities did consider that "UNLOCK+LOCK is
> not a full memory barrier" a disadvantage, because briefly "locking
> should provide strong ordering guarantees and be easy to reason about";
> in fact, not just "locking" if we consider x86 or arm64...)

The ld.aq is really faster than the "ld + fence r, rw" in microarch. I
don't care about the performance of the "UNLOCK+LOCK" scenario.

>
>
> > > asm volatile(ALTERNATIVE("fence rw, w;\t\nsb %0, 0(%1)\t\n",        \
> > > -                     SB_RL(%0, %1) "\t\nnop\t\n",          \
> > > +                     SB_RL(%0, %1) "\t\n fence.tso;\t\n",  \
> > >                       0, RISCV_ISA_EXT_ZALASR, 1)           \
> > >                       : : "r" (v), "r" (p) : "memory");     \
>
> nit: Why placing the fence after the store?  I imagine that FENCE.TSO
> could precede the store, this way, the store would actually not need
> to have that .RL annotation.  More importantly,
Yes, fence.tso is stricter than fence rw, w, it gives an additional
fence r, r barrier.

>
> That for (part of) smp_store_release().  Let me stress that my option
> (c) was meant to include similar changes for _every releases (that is,
> cmpxchg_release(), atomic_inc_return_release(), and many other), even
> if most of such releases do not currently create "problematic pairs"
> with a corresponding acquire: the concern is that future changes in the
> RISC-V atomics implementation or in generic locking code will introduce
> pairs of the form FENCE RW,W + .AQ or .RL + FENCE R,RW without anyone
> noticing...  In other words, I was suggesting that RISC-V _continues
> to meet the ordering property under discussion "by design" rather than
> "by Andrea or whoever's code auditing/review" (assuming it's feasible,
> i.e. that it doesn't clash with other people's arguments?); options (a)
> and (b) were also "designed" following this same criterion.
>
>   Andrea
--
Best Regards
 Guo Ren

