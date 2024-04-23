Return-Path: <devicetree+bounces-61745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF098AE032
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 10:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E4AD1C2289B
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 08:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66EBB1E526;
	Tue, 23 Apr 2024 08:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="hc5XMF7H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCE24206B
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 08:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713861967; cv=none; b=Kd34zDDl8JKKCGDEVGG0Y1S+xO1pElJP/12VN6KvLhscyG7FqioKJ9cg5+hiw1F52pGtUGdaV47JCDlqcvbhjHNrWDt0G/rQZp9kOlIvGsHAXSHHPowEIucKuUHQRGjq9NA3VUKwfyhpcqverJXRKlZnCzDU5KQBPC+uCnhxDbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713861967; c=relaxed/simple;
	bh=aZGNWj0/x8eJFYXti4RY9vX6okMEZPVKPUg0ZNZJVjw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aPR3Wqk7pTgS0/+tafjQABFwFP2brXZegSFCFgYykFek/aOpVfw68hiINyNvrJOzne0+KsgBmkLT9jvgcV8t5q76fPXQILh10EEmvXY9kI0Wx6cVqG0x4rAJxo8Os89SX6Gs93eHVhFrJt1PprMjaoxs5GPzfwErTiNwsf1zVRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=hc5XMF7H; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-41aa45251eeso7215795e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 01:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713861963; x=1714466763; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EYT22GsV3A5P8ueZZt11dcI2jOZF4ZKlrXL+GIVN7l0=;
        b=hc5XMF7H2veZERZuXy/kc/tPPM5cNCCteKFqWhi3KMi0P08neUYcjPDgVVtfzWYWIz
         BoBBMM0bLuaM6SEhdYBwEdXp0knx5rBAAahYYy4MBFhE2jcinBjm0YqtiVcIbJ1u4al0
         5YyuKSRM9kuAUNeEuexIirxdwPvL7RFEUaMcSRUn9TLVyqH+VeJ0p1n7t/D1d+BG+OS1
         KFC+k1y0ZDsP6ku0qIfAlnGuwrV5UPys/WG2eMxS8vZ7KJCEMcFx6tlS0PpiHOuXjppq
         hMEnaABD1G7iWCo4s8Xa8Uoiyn4ELr1WlbpYbo30HigHafc+rNzGuqtqJNsArI9QG5Q+
         6SWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713861963; x=1714466763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYT22GsV3A5P8ueZZt11dcI2jOZF4ZKlrXL+GIVN7l0=;
        b=nSeEhpH5J58CbCkkAN9jEk7yByH89ct62ydWue4Gc/XUFcM0JYRoSor56EkikARk/L
         OV13XGgxe9e1RCQRKHGCJ8xFndj9Qp6DKinp9ZK8WVvZehn4VCDbsuZKiNbiEgBHUh9x
         y891gL1Znsl/GU477/jfLZCNFBZKz37JDQwa3CR9WbBpRzLVseDJNgFdBzPLNp+Dvn5u
         bav1QQT0om46yy+mr7RRK/VToHLB/1pyTSbdSH8PFvSdgMGQregV/CAPkZUcuiHCrXMC
         iCQvJC09igbCFUSfdP1kYT6EekzlLUDloeLz/RwynsQyro6TkPncllRA89bS2l8rrq6/
         inHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEKSxufxmvEB4917Q91txzTzALJQUFOa+lbqJgRJSaqZPsxDD6AeJ7w9uamfxqGgBvnRyyqK+ntCZyZ/Ij3hSf/8gDbppgfc+18Q==
X-Gm-Message-State: AOJu0YyaT2qbfM7oNrWrV5pwEsR4B8BxyL+2h/o6h/tndvAiS3ejFMpX
	pxDOVB0UZlTk2zyQTJK856r4enaVN7m5g0q3/YAXzFTT7CYVYeXaM7BPYp4j0XQ=
X-Google-Smtp-Source: AGHT+IGfX/ApBhjAcZ/SG9W0CDS/oh4BCmECmpGyfrNr9GYcoK+TGqNIeSDm66Wdm4CSwnRJ/0jkbQ==
X-Received: by 2002:a05:600c:4707:b0:419:a1b:d11f with SMTP id v7-20020a05600c470700b004190a1bd11fmr8007309wmo.17.1713861963197;
        Tue, 23 Apr 2024 01:46:03 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id fl5-20020a05600c0b8500b0041abeaaf7f0sm1156345wmb.28.2024.04.23.01.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 01:46:02 -0700 (PDT)
Date: Tue, 23 Apr 2024 10:46:01 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, conor.dooley@microchip.com, 
	anup@brainfault.org, atishp@atishpatra.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, christoph.muellner@vrull.eu, 
	heiko@sntech.de, David.Laight@aculab.com, parri.andrea@gmail.com, 
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240423-ed9ddb701be1df4a25e29f31@orel>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
 <ZiKeYRnXxtLUtkkW@ghost>
 <20240421-f63f90c2146deb0695b84441@orel>
 <ZibmfbLnGCb9gmow@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZibmfbLnGCb9gmow@ghost>

On Mon, Apr 22, 2024 at 06:36:45PM -0400, Charlie Jenkins wrote:
> On Sun, Apr 21, 2024 at 12:20:03PM +0200, Andrew Jones wrote:
> > On Fri, Apr 19, 2024 at 12:40:01PM -0400, Charlie Jenkins wrote:
...
> > > What would be the purpose of a vendor implementing WRS.NTO (and putting
> > > it in the DT) that never terminates? The spec says "Then a subsequent
> > > WRS.NTO instruction would cause the hart to temporarily stall execution
> > > in a low- power state until a store occurs to the reservation set or an
> > > interrupt is observed." Why is this wording for WRS.NTO not sufficient
> > > to assume that an implementation of this instruction would eventually
> > > terminate?
> > >
> > 
> > We can invoke smp_cond_load_relaxed(addr, VAL || anything_we_want()). This
> > means we may not expect VAL ever to be written, which rules out "until a
> > store occurs". As for "an interrupt is observed", we don't know which one
> > to expect to arrive within a "reasonable" amount of time. We need to know
> > which one(s), since, while wrs.nto will terminate even when interrupts are
> > globally disabled, we still need to have the interrupt(s) we expect to be
> > locally enabled. And, the interrupts should arrive in a "reasonable"
> > amount of time since we want to poll anything_we_want() at a "reasonable"
> > frequency.
> > 
> > So, we need firmware to promise to enable exceptions if there aren't any
> > such interrupts. Or, we could require hardware descriptions to identify
> > which interrupt(s) would be good to have enabled before calling wrs.nto.
> > Maybe there's already some way to describe something like that?
> > 
> > Thanks,
> > drew
> 
> Ahh okay I am caught up now. So the wording we are looking at in the
> spec is:
> 
> "When executing in VS or VU mode, if the VTW bit is set in hstatus, the
> TW bit in mstatus is clear, and the WRS.NTO does not complete within an
> implementation-specific bounded time limit, the WRS.NTO instruction will
> cause a virtual instruction exception."

That's what the hypervisor should promise to do when there's no other
guarantee of wrs.nto terminating (but the hypervisor likely wants to
anyway since it wants guests to trap on wrs.nto in order to potentially
schedule the lock holding VCPU). The firmware of the host should likewise
promise to set mstatus.TW when there's no guarantee of wrs.nto
terminating, but that's likely _not_ something it normally would want to
do, so hopefully there will always be implementation-specific "other
reasons" which guarantee termination.

> 
> With the concern being that it is possible for "implementation-specific
> bounded time limit" to be infinite/never times out,

The implementation-defined short timeout cannot be infinite, but it only
applies to wrs.sto. While using wrs.sto would relieve the concern, it
cannot be configured to raise exceptions, which means it's not useful in
guests. If we want to use wrs.sto in hosts and wrs.nto in guests then we
need a paravirt channel which allows an "enlightened" guest to determine
that it is a guest and that the hypervisor has configured wrs.nto to
trap, which then indicates it's a good idea to patch wrs.sto to wrs.nto.
But, adding paravirt stuff should be avoided whenever possible since it
adds complexity we'd rather not maintain.

> and the kernel
> enters a WRS where the reservation set is not required to be invalidated
> for the condition we are waiting on to become true.
> 
> An option here would be to enforce in the spec that this time limit is
> finite. If the original intention of the spec was to have it be finite,
> then this would not be an issue. If the intention was to allow no time
> limit, then this would probably have to be a new extension.

wrs.nto has been specified to never timeout.
wrs.sto has been specified to never raise exceptions.

If we had an instruction which would timeout when mstatus.TW/hstatus.VTW
is clear and raise exceptions when set, then that's the one we'd choose.

> 
> We are also able to change the kernel to not allow these conditions that
> would break this interpretation of WRS. I found three instances in the
> kernel that contain a condition that is not dependent on the wrs
> reservation.
> 
> 1.
> # queued_spin_lock_slowpath() in kernel/locking/qspinlock.c
> val = atomic_cond_read_relaxed(&lock->val,
> 			       (VAL != _Q_PENDING_VAL) || !cnt--);
> 
> The first condition will only become true if lock->val changes which
> should invalidate the reservation. !cnt-- on the otherhand is a counter
> of the number of loops that happen under-the-hood in
> atomic_cond_read_relaxed. This seems like an abuse of the function and
> could be factored out into a new bounded-iteration cond_read macro.
> 
> 2.
> # osq_lock() in kernel/locking/osq_lock.c
> if (smp_cond_load_relaxed(&node->locked, VAL || need_resched() ||
> 			  vcpu_is_preempted(node_cpu(node->prev))))
> 
> VAL is the first condition and won't be a problem here since changes to
> it will cause the reservation to become invalid. arm64 has hard-coded
> vcpu_is_preempted to be false for the same exact reason that riscv would
> want to (the wait wouldn't be woken up). There is a comment that
> points this out in arch/arm64/include/asm/spinlock.h. riscv currently
> uses the default implementation which returns false.

The operative word is 'currently'. I plan to eventually get riscv's
vcpu_is_preempted() working since we already laid the groundwork by
adding a preempted flag to the SBI STA struct.

> 
> need_resched() should not be a problem since this condition only changes
> when the hart recieves an IPI, so as long as the hart is able to receive
> an IPI while in WRS it will be fine.
> 
> 3.
> # __arm_smmu_cmdq_poll_until_msi() in drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> smp_cond_load_relaxed(cmd, !VAL || (ret = queue_poll(&qp)));
> 
> arm driver, not relevant.
> 
> 
> 
> The only case that would cause a problem in the current implementation
> of the kernel would be queued_spin_lock_slowpath() with the cnt check.
> We are able to either change this definition, change the spec, or leave
> it up to the vendor who would be hit by this issue to change it.

We could attempt to document restrictions on the condition given to
smp_cond_load_relaxed() and then change the callers to honor those
restrictions, but that doesn't sound too easy. How will we remove
vcpu_is_preempted() on x86?

We should probably start the process of a new extension which has the
hybrid wrs.sto/nto instruction, but I'm reluctant to, since, in practice,
the current wrs.nto is probably fine. I don't really expect there to be
implementations that never terminate, even though I'd rather we document
that it's _required_ wrs.nto terminates, or that exceptions be raised.
Maybe I'm attempting to document it in the wrong place though. Maybe this
is more of a Documentation/arch/riscv/boot.rst type of thing.

Thanks,
drew

