Return-Path: <devicetree+bounces-62224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8929D8B05F0
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 142771F234F1
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F655158D90;
	Wed, 24 Apr 2024 09:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vrull.eu header.i=@vrull.eu header.b="Zt8H20+S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91F4158D74
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 09:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713950625; cv=none; b=QEFbNb2a4I/Is6wewA1k+E/KkIdl6QcXvHnuDYxlnOaiFOg8wd35LhESd2CVUwHjZ1MKZQD5ogkYtiIkOKLdhV0gB+jFIpAr44gkTq4SDe1lVzLHRs1L/6zULVbg/Kzh3xMOR+uXq+2IrF5dBtijguVz5fjuwoBLy8xhPb0Kf1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713950625; c=relaxed/simple;
	bh=v7BdP0uJEv7/jkC6eOGbVJWNsJFfTwDmB/EUSm7gPko=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iLL3rCFUXy/IJmRN9QMe3iwWeldcKYJc0RAHG4JLvawVpYGmOvL6I2wXZm6nI0GLCEw7KhUADNOqp38+SJ5JUhNj4SDsxypQnhgmh8Z3nC9ID5NT0w8/8ZLT6+F5rpvi+W9Ox9TTB9VWnmY6Tfe7CxPKKA2Ng4g7De3rJOaXi9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vrull.eu; spf=pass smtp.mailfrom=vrull.eu; dkim=pass (2048-bit key) header.d=vrull.eu header.i=@vrull.eu header.b=Zt8H20+S; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vrull.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vrull.eu
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6ed32341906so6363801b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 02:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vrull.eu; s=google; t=1713950623; x=1714555423; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7BdP0uJEv7/jkC6eOGbVJWNsJFfTwDmB/EUSm7gPko=;
        b=Zt8H20+SlNaVVjrrFOsFOgFiMM1QgkA2G61JuzKE/4IMovdAdWRzRH6vm9tDZ6JJpP
         VUH7diXbySeF+KlumJ66dJyLUdd9A2bbDxykz1OhVpqCy2qmdMhsfJ4jyebR4kBGEB1z
         vLvfTm41P/96bKMqTIPhuwHCZUZlvpFuq4U4TM8b4IKogkY+akxKVsrqxcQ7ekzhWH9v
         C9qRF+cU6/daXrJjBTRYLD61IRfpw9KwZsm+AuVWLBFRqXLfyL9x3LxuYvtKFqHk+mep
         IDZ17R9ClsfP+6bB5IUzecAwAuBfpmRVD7pyeLbSyZqaTIHjR1xO3rNwpOi+B+ZmZBdU
         vKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713950623; x=1714555423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v7BdP0uJEv7/jkC6eOGbVJWNsJFfTwDmB/EUSm7gPko=;
        b=Z+q0nJkfS4qym0Gyrcsi19mo4UlF8Wqj+AnRzO6pPv7uvYYYwn9N9zzRmuS23yv7Qi
         rNLCzdLVznTja7WOmmPjCzrF69a97Ufwfhbiz2N0bprh31Df9wFMOWt3jJBtalHtmDyk
         ZajQufp/CDC9838IyfHVmgXLKz1EsqCGxYcT6eJ8g9ZSsC1/NyfMgI2PgpFxjGDCNk0s
         pJBhMW1n1QB3oMHY+3pRV9y1yUnSEH0f6XOJHIup2DaUkECZ2Dm7JZb8DVDG31jvlHpV
         Bz7PIccZUShuUZSNseSrWfFj8TqXAKHf82eDTkkbVftcGS2IY7mQDtWEBmfAjqViA+4Z
         kGtg==
X-Forwarded-Encrypted: i=1; AJvYcCVeVimzlrsMVwlC5gbZ/cTB+GNvi3Q0KKML2CKVCp+p/R8IB9WS1RaxA8atx/lKB+yNdlUR94s73lZGZzrwSUuTURs8NI43FgpY5w==
X-Gm-Message-State: AOJu0Yw1Yg9pGnLOb0msH4GYRMczVt1vzQcYziNAhX8GfGoNI7UFjz1J
	WLKex9ZgeEyUiwPCpN6Pd+6Tg5shL7Q1KbWox+LVa4md0WDUv7twudjbCNtlocOYwuvzcibJQHT
	Ip3U9uYcbjq/5PmQSntfbMkE/sfaDUcBBxIHK/g==
X-Google-Smtp-Source: AGHT+IHMI5QdTAo8sdi8RnwCRa6eiz/6Qb/xkd7d1PJxV/s3Ex/lwlCQAspb8BIaXyT49C3PHy0oLEUUjwuHahT8emU=
X-Received: by 2002:a05:6a20:244f:b0:1a7:91b0:4f2a with SMTP id
 t15-20020a056a20244f00b001a791b04f2amr2008888pzc.41.1713950622880; Wed, 24
 Apr 2024 02:23:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud> <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud> <ZiKeYRnXxtLUtkkW@ghost>
 <20240421-f63f90c2146deb0695b84441@orel> <ZibmfbLnGCb9gmow@ghost>
 <20240423-ed9ddb701be1df4a25e29f31@orel> <Zif3VZALGtLtl3D3@ghost>
 <ZigPN/iJ/gLT4DOD@ghost> <20240424-0e571b29835610c24409762b@orel>
In-Reply-To: <20240424-0e571b29835610c24409762b@orel>
From: =?UTF-8?Q?Christoph_M=C3=BCllner?= <christoph.muellner@vrull.eu>
Date: Wed, 24 Apr 2024 11:23:00 +0200
Message-ID: <CAEg0e7gYteAbHyQCvodO=Mh20qpW4oM9Lm42efNJvz=9muQO-g@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension description
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Charlie Jenkins <charlie@rivosinc.com>, Conor Dooley <conor@kernel.org>, 
	linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, heiko@sntech.de, David.Laight@aculab.com, 
	parri.andrea@gmail.com, luxu.kernel@bytedance.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2024 at 9:34=E2=80=AFAM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
>
> On Tue, Apr 23, 2024 at 03:42:47PM -0400, Charlie Jenkins wrote:
> > On Tue, Apr 23, 2024 at 02:00:53PM -0400, Charlie Jenkins wrote:
> > > On Tue, Apr 23, 2024 at 10:46:01AM +0200, Andrew Jones wrote:
> > > > On Mon, Apr 22, 2024 at 06:36:45PM -0400, Charlie Jenkins wrote:
> > > > > On Sun, Apr 21, 2024 at 12:20:03PM +0200, Andrew Jones wrote:
> > > > > > On Fri, Apr 19, 2024 at 12:40:01PM -0400, Charlie Jenkins wrote=
:
> > > > ...
> > > > > > > What would be the purpose of a vendor implementing WRS.NTO (a=
nd putting
> > > > > > > it in the DT) that never terminates? The spec says "Then a su=
bsequent
> > > > > > > WRS.NTO instruction would cause the hart to temporarily stall=
 execution
> > > > > > > in a low- power state until a store occurs to the reservation=
 set or an
> > > > > > > interrupt is observed." Why is this wording for WRS.NTO not s=
ufficient
> > > > > > > to assume that an implementation of this instruction would ev=
entually
> > > > > > > terminate?
> > > > > > >
> > > > > >
> > > > > > We can invoke smp_cond_load_relaxed(addr, VAL || anything_we_wa=
nt()). This
> > > > > > means we may not expect VAL ever to be written, which rules out=
 "until a
> > > > > > store occurs". As for "an interrupt is observed", we don't know=
 which one
> > > > > > to expect to arrive within a "reasonable" amount of time. We ne=
ed to know
> > > > > > which one(s), since, while wrs.nto will terminate even when int=
errupts are
> > > > > > globally disabled, we still need to have the interrupt(s) we ex=
pect to be
> > > > > > locally enabled. And, the interrupts should arrive in a "reason=
able"
> > > > > > amount of time since we want to poll anything_we_want() at a "r=
easonable"
> > > > > > frequency.
> > > > > >
> > > > > > So, we need firmware to promise to enable exceptions if there a=
ren't any
> > > > > > such interrupts. Or, we could require hardware descriptions to =
identify
> > > > > > which interrupt(s) would be good to have enabled before calling=
 wrs.nto.
> > > > > > Maybe there's already some way to describe something like that?
> > > > > >
> > > > > > Thanks,
> > > > > > drew
> > > > >
> > > > > Ahh okay I am caught up now. So the wording we are looking at in =
the
> > > > > spec is:
> > > > >
> > > > > "When executing in VS or VU mode, if the VTW bit is set in hstatu=
s, the
> > > > > TW bit in mstatus is clear, and the WRS.NTO does not complete wit=
hin an
> > > > > implementation-specific bounded time limit, the WRS.NTO instructi=
on will
> > > > > cause a virtual instruction exception."
> > > >
> > > > That's what the hypervisor should promise to do when there's no oth=
er
> > > > guarantee of wrs.nto terminating (but the hypervisor likely wants t=
o
> > > > anyway since it wants guests to trap on wrs.nto in order to potenti=
ally
> > > > schedule the lock holding VCPU). The firmware of the host should li=
kewise
> > > > promise to set mstatus.TW when there's no guarantee of wrs.nto
> > > > terminating, but that's likely _not_ something it normally would wa=
nt to
> > > > do, so hopefully there will always be implementation-specific "othe=
r
> > > > reasons" which guarantee termination.
> > > >
> > > > >
> > > > > With the concern being that it is possible for "implementation-sp=
ecific
> > > > > bounded time limit" to be infinite/never times out,
> > > >
> > > > The implementation-defined short timeout cannot be infinite, but it=
 only
> > > > applies to wrs.sto. While using wrs.sto would relieve the concern, =
it
> > > > cannot be configured to raise exceptions, which means it's not usef=
ul in
> > > > guests. If we want to use wrs.sto in hosts and wrs.nto in guests th=
en we
> > > > need a paravirt channel which allows an "enlightened" guest to dete=
rmine
> > > > that it is a guest and that the hypervisor has configured wrs.nto t=
o
> > > > trap, which then indicates it's a good idea to patch wrs.sto to wrs=
.nto.
> > > > But, adding paravirt stuff should be avoided whenever possible sinc=
e it
> > > > adds complexity we'd rather not maintain.
> > > >
> > >
> > > That still wouldn't solve this issue, because the wrs.nto guest may s=
till
> > > never wakeup in the implementation-specific way?
>
> The paravirt approach does solve it, because wrs.nto is specified to rais=
e
> exceptions after an implementation-specific bounded time limit when the
> hypervisor sets hstatus.VTW.
>
> >
> > Thinking about this a bit more, this is a performance penalty and not a
> > correctness issue.
>
> It's incorrect to have a design that is likely to result in bad
> performance.
>
> > This line is an optimization that allows the lock
> > holder to jump the queue if the holder directly in front is a preempted
> > vcpu. Eventually the vcpu will be scheduled again and give up the lock.
> > So an implementation of WRS.NTO that does not have the
> > "implementation-specific bounded time limit" that the spec calls out fo=
r
> > WRS.NTO to raise a virtual instruction exception, would still function,
> > just slower.
>
> The problem isn't specific to virtualization. The problem is using wrs.nt=
o
> when it has not been configured to raise exceptions and there are not any
> other guaranteed termination events (other than the reservation set
> becoming invalid). While the paravirt solution is virtualization specific=
,
> it works, because we would then only use wrs.nto when we know we can, and
> otherwise use wrs.sto. But, as I said, I'd rather not have a paravirt
> solution.

Andrew, it would be great if you could summarize this finding to the
spec authors.
Maybe a non-normative text added to the spec (that raises awareness
for the issue
and provides a guideline to avoid it) could reduce the risk of triggering
the issue on real HW. This might be enough justification to use WRS.NTO.

If WRS.NTO is considered as not reliable enough to wake up and therefore ca=
using
performance issues or CPU stalls if used for the spin lock optimization,
it might be also reasonable to use WRS.STO instead.
The cost of having too many wakeups seems much more acceptable than
a stalled CPU.

BR
Christoph

