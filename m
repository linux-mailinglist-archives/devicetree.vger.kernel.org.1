Return-Path: <devicetree+bounces-12621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D70487DA87F
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 20:19:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 470A0281F80
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 18:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8CA517754;
	Sat, 28 Oct 2023 18:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="oS3DPgCW";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="GiK+tZOU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A8D18027
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 18:18:56 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9858ED;
	Sat, 28 Oct 2023 11:18:54 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698517132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bBi3pGj4Mfcw1N6bhhpo3vAJXxk+culoWD3EB90gevc=;
	b=oS3DPgCWxr0nnSq3G0TD9jZvabasasK6Qjwj85o+PxwXbhoBBUtk2VRdK92arHm7c8VBe6
	J0Qo5CoWDFlbZFioFFX4TWUWsFc//ln7YgKoDD57YKPe+COx33QRcKN7ROYw4fL4rr8nnS
	BjW6jatP4lvUf/jWYxsoKKr+hfPOE1T3+Mga/ezH/7/aXFocRU/bRsYY7H8FU6cHaxfzX4
	L+PlrApckVk/jnBmEdUbOK/Vj4aigw0Ly3ZWyAL4ca+HHEJ+A9NkuD5dZ3MdGy9/9GLC7t
	x3aAEarJA2xF6eq6ChA0snS7enjGZZDOl/F9Url3LQjR+K4TrBcKs0GTK8Jm+g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698517132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bBi3pGj4Mfcw1N6bhhpo3vAJXxk+culoWD3EB90gevc=;
	b=GiK+tZOUfVa0f3orWpewRXpQYcWKoqKClDpo3vBIZrHL8HZhWK80myuyx1eqlxiaAN3/jX
	2a1hyDgfDLxRUUDg==
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Anup Patel
 <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Marc Zyngier
 <maz@kernel.org>, Atish Patra <atishp@atishpatra.org>, Andrew Jones
 <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, Saravana
 Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v11 07/14] irqchip: Add RISC-V incoming MSI controller
 early driver
In-Reply-To: <87pm11wyvb.fsf@all.your.base.are.belong.to.us>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-8-apatel@ventanamicro.com>
 <878r7srx04.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2XpxYztxgD-5HQ+1kThBaRTv3pVk5eah4XHZ_8x62BwqQ@mail.gmail.com>
 <875y2ug023.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2WHw5BKZua9+qEHso3NdxuX-_nqaLKrGetO4u=R==RuHg@mail.gmail.com>
 <87pm11wyvb.fsf@all.your.base.are.belong.to.us>
Date: Sat, 28 Oct 2023 20:18:52 +0200
Message-ID: <874jia1ugj.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 26 2023 at 10:51, Bj=C3=B6rn T=C3=B6pel wrote:
>>> >> > +     raw_spin_lock_irqsave(&lpriv->ids_lock, flags);
>>> >> > +     bitmap_clear(lpriv->ids_enabled_bitmap, vec->local_id, 1);
>>> >> > +     raw_spin_unlock_irqrestore(&lpriv->ids_lock, flags);
>>> >> > +
>>> >> > +     imsic_remote_sync(vec->cpu);
>>> >>
>>> >> x86 seems to set a timer instead, for the remote cpu cleanup, which =
can
>>> >> be much cheaper, and less in instrusive. Is that applicable here?
>>> >
>>> > The issue with that approach is deciding the right duration
>>> > of timer interrupt. There might be platforms who need
>>> > immediate mask/unmask response. We can certainely
>>> > keep improving/tuning this over-time.
>>>
>>> Any concrete examples where this is an actual problem?
>>
>> Do you have a concrete timer duration with proper justification ?
>
> I would simply mimic what x86 does for now -- jiffies + 1.

That's good enough. The point is that the interrupt might still end up
on the old target CPU depending on timing, but the next one is
guaranteed to be targeted to the new target CPU.

So you can't cleanup the vector on the old target immediately, but it
does not matter at all whether you clean it up 10ms or 10s later. It's
just wasting a vector on the old target.

Doing it with an IPI (as x86 did before) only works when the IPI vector
is of lower priority than the vector which got moved. Otherwise the IPI
will be served first, find the vector pending and then it's up a creek
without a paddle because it can't retrigger the IPI as that would again
be served first. So it can't clean up ever...

The timer just avoids this and as I said the delay is completely
irrelevant.

>>> >> The reason I'm asking is because I'm pretty certain that x86 has pro=
per
>>> >> MSI support (Thomas Gleixner can answer for sure! ;-))

It has proper MSI support with some limitations.

>>> >> IMSIC smells a lot like the the LAPIC.

Eeew. :)

> My claim is that x86 does support legacy-MSI, but for design decision,
> has avoided multi-MSI.

There are two variants of PCI/MSI:

  1) MSI
  2) MSI-X

Neither of them is legacy and both support multiple vectors at the
device hardware level.

  #1 MSI

      Affinity setting requires to move all vectors to the new target in
      one go because the device gets only the base vector in the MSI
      message and uses the lower bits as index.

      So that's of limited use anyway because it's impossible to use
      that for multi-queue or other purposes where the main point is to
      spread the interrupts accross CPUs.

      It does not have mandatory masking which makes affinity changes
      even more problematic at least on x86 because the update to the
      message store in the PCI config space is non-atomic. See the dance
      which is required for a single vector in msi_set_affity().

      IOW, if the MSI message is directly delivered to the target CPU
      and the device does not support masking then single vector is
      already complext and multi-MSI support becomes a horrorshow.

      Another issue especially on x86 with the limitation of about 200
      device vectors per CPU is the requirement to allocate a
      consecutive vector space power of 2 aligned. That's pretty fast at
      the point of vector exhaustion.

      That _are_ the reasons why X86 does not support multi-MSI without
      interrupt remapping. It just does the only sane thing and limits
      to one vector per device.

      Interrupt remapping avoids the problem because it allows to steer
      the vectors individually and the affinity update is atomic. It
      obviously also lifts the requirement for a consecutive vector
      space.

      Serioulsy w/o interrupt remapping or an equivalent translation
      mechanism which allows to steer the vectors individually multi-MSI
      is absolutely pointless and not worth the trouble to support it.


  #2 MSI-X

       Has a message store per vector and mandatory per vector masking
       which makes multi vector support trivial even w/o interrupt
       remapping. It does neither require a consecutive vector space.

So if AIA is similar to the APIC, then single MSI needs the same dance
and multi-MSI needs that theatre ^ N.

> AFAIU, there are few multi-MSI devices out there.

You wish. MSI-X is "more expensive" (probaly 0.5 Cent). Now that
interrupt remapping is pretty much always available on x86, the problem
is "fixed" indirectly. So especially x86 on-chip devices still use MSI
and not MSI-X. MSI-X is primarily used in multi-queue devices as
multi-MSI is limited to 32 vectors.

Thanks,

        tglx

