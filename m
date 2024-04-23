Return-Path: <devicetree+bounces-62020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7C8AF77A
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 21:43:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0787B22FD4
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135191419A1;
	Tue, 23 Apr 2024 19:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="F6SXbmbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3EA3EA76
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 19:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713901374; cv=none; b=IK72xgYLwcOokFj225yrl0FFezED9rpylDcP/tQc1bAvGBNZ9y2zWxXoSL86hW2BinqBtsakpVb3QL9HhdBpMX0OiqgjSNhga2Iivhx2xX9Okckn2hlyL9SyBX/GI3OXFV2AY0h6WcdO94bqsxE8YDCLRF7iSUSGXzQM7gPQk5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713901374; c=relaxed/simple;
	bh=d7juRE6UVjBQ19KkZKcNj/CSuTks2UiGq82TxjdFrnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R8vIkPyIHYoKYMQoCZaSkUXsLVkHE9okbunMlk+ZW7TWiv66eezSyvjHWtOKxCgdWkEj4sxlja0wl9txhqn1Y7eDhtARhvpM94HTzMy+3dQ6GqN2JD3Szq7NuqF+jsndqr4jL1c9viyYmb0ayW1Nkr/m1UizCgftphEJCDjTDRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=F6SXbmbW; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-de45dba157cso4895814276.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713901370; x=1714506170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XaYZhMiM4MntjcM5EX8X8Nr2sEG/Ld443mGOWMzp3xA=;
        b=F6SXbmbW0SpfnFwxtWoZwgaAbWZ33jqyWvmW0Q2wXlJHBYlTKQDky6eZKPwsQKix2g
         we2FjZo9DKoTbm31uK0mTP9RU9+/q9OmMZ486SzcRzXCau1vHvSyJBp/a8fOIm/hoedG
         6vybMMv9MdYmNSzfI+dDq3TCvAdb3+3Gmtx7rXBVz6fsZ8ybZtluntm4mGH+bmakN2Uf
         REOZxAf8/JyMZIaklW68Z/gkz9smWOWUSUn1+iNkNfNTvPt93oFSnM2RiVE7KAdVkHcJ
         GZFGVr0GyCAddMse639mhcUXx+cYVH47iH49yQPrlhOqofod/A1ZCiMcgUrt6j1ePyWw
         IVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713901370; x=1714506170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XaYZhMiM4MntjcM5EX8X8Nr2sEG/Ld443mGOWMzp3xA=;
        b=G0pXcZ7PrIbzHcwHVofISwoPrp8RdCdPbAXzSEmokZMD3yicWVZqYimq+aeRW/e2Wh
         cMu0if20ltGW7eobjAZKTkJ4CZFWeUCMBBFRFRTAxHzpFvsrwo0mXqZ/SA9KzV87tJVd
         /ft2PjrkWxBr09aUgeGnNyf85M60ETopnnHLMoseWo7x2y2VS0QvMcGsASG/fyESkeLG
         IQFcc+T+6l6jVMJu47DJvYIzzeEgD1LxFMJCjEvs23LQ2cmY79U8q21XxS39kYlbU2Le
         nof1Eu6X4Z5BcdA+1EdM7W3MDi/FgAqQ0KiqHcDhgwl2n/LuO2RTjJilSkC3SjhHWqE9
         nxMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxQ/teb9YyJCCa3ITdoFKGYUAnxXUK/qwUHn3GMpWEl/1wBx+j4GOuC0dAO5vUNR0AoE8dAFezVvHcMl2McCT0g3KZSLoH8/7QRA==
X-Gm-Message-State: AOJu0YxPgcL0kXqk1Ge9QQ7wxbsDPfwyH0BhT9+V+MnjFx8+9tGznCPT
	3kJrh9RMIMj0Fmd8ibbP589Wzyh6CbP5AIUBjFG8ZCgPr0S13m2cayQLKQMkBhs=
X-Google-Smtp-Source: AGHT+IGASH0GLPuJ31mzppzwDBiIjS/1WAk85jfXgfijU/ui3qzj6Pg1T1LQ1Gx7eMFMqxoJpuWr8Q==
X-Received: by 2002:a25:dc0e:0:b0:de5:53ed:bce9 with SMTP id y14-20020a25dc0e000000b00de553edbce9mr669506ybe.46.1713901370397;
        Tue, 23 Apr 2024 12:42:50 -0700 (PDT)
Received: from ghost ([50.146.0.2])
        by smtp.gmail.com with ESMTPSA id y9-20020a2586c9000000b00dc9c5991ecdsm2591063ybm.50.2024.04.23.12.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 12:42:49 -0700 (PDT)
Date: Tue, 23 Apr 2024 15:42:47 -0400
From: Charlie Jenkins <charlie@rivosinc.com>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <ZigPN/iJ/gLT4DOD@ghost>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
 <ZiKeYRnXxtLUtkkW@ghost>
 <20240421-f63f90c2146deb0695b84441@orel>
 <ZibmfbLnGCb9gmow@ghost>
 <20240423-ed9ddb701be1df4a25e29f31@orel>
 <Zif3VZALGtLtl3D3@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zif3VZALGtLtl3D3@ghost>

On Tue, Apr 23, 2024 at 02:00:53PM -0400, Charlie Jenkins wrote:
> On Tue, Apr 23, 2024 at 10:46:01AM +0200, Andrew Jones wrote:
> > On Mon, Apr 22, 2024 at 06:36:45PM -0400, Charlie Jenkins wrote:
> > > On Sun, Apr 21, 2024 at 12:20:03PM +0200, Andrew Jones wrote:
> > > > On Fri, Apr 19, 2024 at 12:40:01PM -0400, Charlie Jenkins wrote:
> > ...
> > > > > What would be the purpose of a vendor implementing WRS.NTO (and putting
> > > > > it in the DT) that never terminates? The spec says "Then a subsequent
> > > > > WRS.NTO instruction would cause the hart to temporarily stall execution
> > > > > in a low- power state until a store occurs to the reservation set or an
> > > > > interrupt is observed." Why is this wording for WRS.NTO not sufficient
> > > > > to assume that an implementation of this instruction would eventually
> > > > > terminate?
> > > > >
> > > > 
> > > > We can invoke smp_cond_load_relaxed(addr, VAL || anything_we_want()). This
> > > > means we may not expect VAL ever to be written, which rules out "until a
> > > > store occurs". As for "an interrupt is observed", we don't know which one
> > > > to expect to arrive within a "reasonable" amount of time. We need to know
> > > > which one(s), since, while wrs.nto will terminate even when interrupts are
> > > > globally disabled, we still need to have the interrupt(s) we expect to be
> > > > locally enabled. And, the interrupts should arrive in a "reasonable"
> > > > amount of time since we want to poll anything_we_want() at a "reasonable"
> > > > frequency.
> > > > 
> > > > So, we need firmware to promise to enable exceptions if there aren't any
> > > > such interrupts. Or, we could require hardware descriptions to identify
> > > > which interrupt(s) would be good to have enabled before calling wrs.nto.
> > > > Maybe there's already some way to describe something like that?
> > > > 
> > > > Thanks,
> > > > drew
> > > 
> > > Ahh okay I am caught up now. So the wording we are looking at in the
> > > spec is:
> > > 
> > > "When executing in VS or VU mode, if the VTW bit is set in hstatus, the
> > > TW bit in mstatus is clear, and the WRS.NTO does not complete within an
> > > implementation-specific bounded time limit, the WRS.NTO instruction will
> > > cause a virtual instruction exception."
> > 
> > That's what the hypervisor should promise to do when there's no other
> > guarantee of wrs.nto terminating (but the hypervisor likely wants to
> > anyway since it wants guests to trap on wrs.nto in order to potentially
> > schedule the lock holding VCPU). The firmware of the host should likewise
> > promise to set mstatus.TW when there's no guarantee of wrs.nto
> > terminating, but that's likely _not_ something it normally would want to
> > do, so hopefully there will always be implementation-specific "other
> > reasons" which guarantee termination.
> > 
> > > 
> > > With the concern being that it is possible for "implementation-specific
> > > bounded time limit" to be infinite/never times out,
> > 
> > The implementation-defined short timeout cannot be infinite, but it only
> > applies to wrs.sto. While using wrs.sto would relieve the concern, it
> > cannot be configured to raise exceptions, which means it's not useful in
> > guests. If we want to use wrs.sto in hosts and wrs.nto in guests then we
> > need a paravirt channel which allows an "enlightened" guest to determine
> > that it is a guest and that the hypervisor has configured wrs.nto to
> > trap, which then indicates it's a good idea to patch wrs.sto to wrs.nto.
> > But, adding paravirt stuff should be avoided whenever possible since it
> > adds complexity we'd rather not maintain.
> > 
> 
> That still wouldn't solve this issue, because the wrs.nto guest may still
> never wakeup in the implementation-specific way?
> 
> > > and the kernel
> > > enters a WRS where the reservation set is not required to be invalidated
> > > for the condition we are waiting on to become true.
> > > 
> > > An option here would be to enforce in the spec that this time limit is
> > > finite. If the original intention of the spec was to have it be finite,
> > > then this would not be an issue. If the intention was to allow no time
> > > limit, then this would probably have to be a new extension.
> > 
> > wrs.nto has been specified to never timeout.
> > wrs.sto has been specified to never raise exceptions.
> > 
> > If we had an instruction which would timeout when mstatus.TW/hstatus.VTW
> > is clear and raise exceptions when set, then that's the one we'd choose.
> > 
> 
> Yes, this does seem like the ideal situtation.
> 
> > > 
> > > We are also able to change the kernel to not allow these conditions that
> > > would break this interpretation of WRS. I found three instances in the
> > > kernel that contain a condition that is not dependent on the wrs
> > > reservation.
> > > 
> > > 1.
> > > # queued_spin_lock_slowpath() in kernel/locking/qspinlock.c
> > > val = atomic_cond_read_relaxed(&lock->val,
> > > 			       (VAL != _Q_PENDING_VAL) || !cnt--);
> > > 
> > > The first condition will only become true if lock->val changes which
> > > should invalidate the reservation. !cnt-- on the otherhand is a counter
> > > of the number of loops that happen under-the-hood in
> > > atomic_cond_read_relaxed. This seems like an abuse of the function and
> > > could be factored out into a new bounded-iteration cond_read macro.
> > > 
> > > 2.
> > > # osq_lock() in kernel/locking/osq_lock.c
> > > if (smp_cond_load_relaxed(&node->locked, VAL || need_resched() ||
> > > 			  vcpu_is_preempted(node_cpu(node->prev))))
> > > 
> > > VAL is the first condition and won't be a problem here since changes to
> > > it will cause the reservation to become invalid. arm64 has hard-coded
> > > vcpu_is_preempted to be false for the same exact reason that riscv would
> > > want to (the wait wouldn't be woken up). There is a comment that
> > > points this out in arch/arm64/include/asm/spinlock.h. riscv currently
> > > uses the default implementation which returns false.
> > 
> > The operative word is 'currently'. I plan to eventually get riscv's
> > vcpu_is_preempted() working since we already laid the groundwork by
> > adding a preempted flag to the SBI STA struct.
> > 
> > > 
> > > need_resched() should not be a problem since this condition only changes
> > > when the hart recieves an IPI, so as long as the hart is able to receive
> > > an IPI while in WRS it will be fine.
> > > 
> > > 3.
> > > # __arm_smmu_cmdq_poll_until_msi() in drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> > > smp_cond_load_relaxed(cmd, !VAL || (ret = queue_poll(&qp)));
> > > 
> > > arm driver, not relevant.
> > > 
> > > 
> > > 
> > > The only case that would cause a problem in the current implementation
> > > of the kernel would be queued_spin_lock_slowpath() with the cnt check.
> > > We are able to either change this definition, change the spec, or leave
> > > it up to the vendor who would be hit by this issue to change it.
> > 
> > We could attempt to document restrictions on the condition given to
> > smp_cond_load_relaxed() and then change the callers to honor those
> > restrictions, but that doesn't sound too easy. How will we remove
> > vcpu_is_preempted() on x86?
> 
> The solution here seems like it would be to not use wrs for riscv in
> this case.  We really would need an alternate extension that allows wrs
> in a guest to be guaranteed to trap into the host at some point. 

Thinking about this a bit more, this is a performance penalty and not a
correctness issue. This line is an optimization that allows the lock
holder to jump the queue if the holder directly in front is a preempted
vcpu. Eventually the vcpu will be scheduled again and give up the lock.
So an implementation of WRS.NTO that does not have the
"implementation-specific bounded time limit" that the spec calls out for
WRS.NTO to raise a virtual instruction exception, would still function,
just slower.

I am not sure where the line we would draw here. Using WRS here would be
very beneficial for most implementations, but will not be optimally
efficient on some implementations of WRS in virtualization. We could
make a note that for optimal efficiency Linux recommends that a virtual
instruction exception is eventually thrown.

We also wouldn't need to mess with the cnt variable since that can only
increase during a loop by the thread that is doing the loop. It is an
optimization to break out early. Again this is purely performance. If
the implementation never breaks out without the lock variable being
changed, it will just wait until the variable is changed rather than
breaking out early.

- Charlie

> 
> > 
> > We should probably start the process of a new extension which has the
> > hybrid wrs.sto/nto instruction, but I'm reluctant to, since, in practice,
> > the current wrs.nto is probably fine. I don't really expect there to be
> > implementations that never terminate, even though I'd rather we document
> > that it's _required_ wrs.nto terminates, or that exceptions be raised.
> > Maybe I'm attempting to document it in the wrong place though. Maybe this
> > is more of a Documentation/arch/riscv/boot.rst type of thing.
> > 
> 
> wrs.nto is most likely sufficient. A new extension will take a long
> time. We could go ahead with wrs.nto, propose the extension, and when
> the extension is ready switch over to it. In the meantime have this
> behavior documented.
> 
> > Thanks,
> > drew
> 
> - Charlie
> 

