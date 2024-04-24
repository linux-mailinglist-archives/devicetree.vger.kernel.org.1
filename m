Return-Path: <devicetree+bounces-62253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 832C68B0761
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 12:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C735280216
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 10:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39781433AD;
	Wed, 24 Apr 2024 10:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="B4DUV3o4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4851F41C63
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 10:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713954730; cv=none; b=goBM9muCnRT9MXeg7s0J0HiBNDY04erSbSudETMyHlhisxsRJ3wQPzQmBuDwiDg+ZUuP4LyPs2MSdkno13FQLPO1/eNtXGoVKZfjOxF7uqayE8/rVWz4pkXTbtJLe082W9m2797vzrp9c+9Lt4i8G1NcCmxFnOcberqd0C+2+20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713954730; c=relaxed/simple;
	bh=o1xKJQ2Gp2Bmhyjj073820hhH3G67LFsd+0t8zBegAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fVAXRdC1SOOXP20ofherO/FXhq3EkzSpoT3Z4FtT1zjpBRWq+5Oh+xPOMNAkw28rgIHNjRAMFxwZh/J1bzwzh0lwAZx/RvEn8BqMJ+SSWAu56i1w+pzfBcx8tC3mflB0IGC2IasJlPIn9Mar2PtGEWkLRjdyuNm1Snplh8uSw7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=B4DUV3o4; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5176f217b7bso11297655e87.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 03:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713954726; x=1714559526; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=69da6UXz2pFiDL31edeqzPN31G6ffxNroQ0Z2N+KdsQ=;
        b=B4DUV3o4jMBGDBlFUWjJAUBwPtLKItec1XX1RH1aUmw9nqpbxHU9gvPLYDIE32LJ0F
         r9TLk++neaU4MItLQMqMHja8SLVa15kzCTVharAf3M0oPsZyA0hduPzDXJR55K5d+EYW
         wvgRSiQbWwUTVXdOHFYFbLi9CVAli0TzRP6ggsm52UgX+AB/xZq0kDXrmo+DYHU2sW8P
         zuy9fXFbfOlWwZpuzD4ueJxvM5m6QkjWclcMuaEfEoruuTaGbKIfdd4BWipx+f5a7y61
         +EqMa6ezJjdjOqxCDDTlkbiWFPQTAlh9TRgAqInJVLm+8A47n1EM8BaIS6JGVYoyrYdW
         huTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713954726; x=1714559526;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=69da6UXz2pFiDL31edeqzPN31G6ffxNroQ0Z2N+KdsQ=;
        b=ihI6t7y7LzCQjF88sS3uBt8znAOq95RJgo+gQ26zJzpEk9fAL1mjbaAroNdTIp2jpf
         mwPJHxFS2/cqSnl2jSXtAe8GlM7LTZlAckzMtgIi8j/Fc3gNVaUOgLGff6LwQE5FJO/8
         Xv286K7FGqHTqPSzt92VgFnGI9qOi7hoEdOpdoC7z4TGmoZv5Tg/3wdcBRqUpF3sixDg
         SmP/BULM3hkENM1a9hhtgxmBcW9JFXhWebU1J+Gi+zJQrdNg1PUqMLMidYoPdDJs2eCB
         e6VV1sF0tYiZxTSYK1Q5SdSULqM41udxzRVhRTfUu383GRTELdOz2AQNeByK1vVkr469
         Ng+w==
X-Forwarded-Encrypted: i=1; AJvYcCX7+vSzxc/ihwuzdQ3Kq9WwzLGqMYkPLDtNCLbbyqUBiKl+mb7vC+wgDi3EqNI+OdtI34Dpl0sTND5B4I9KEqHiNYKURHpKUXp0Wg==
X-Gm-Message-State: AOJu0YztNAwuJOyOuhN0R4h2RZr/j4l6mw7dsNtNz+h+h26QohMZ//sO
	40OG0LEspa069RmRN4cG2Bcx6MdBiZzUm1wepLRDVE7aIKvkEQkdF6nToVIdX0Y=
X-Google-Smtp-Source: AGHT+IEcj0tdrrmR8cPhcTUlqc6Z+F7kWLT0j9ptexs5NM6zhH3y23MG/ibcIMnGQ8n53KYceeEqdw==
X-Received: by 2002:a05:6512:793:b0:51a:affe:252e with SMTP id x19-20020a056512079300b0051aaffe252emr1747408lfr.37.1713954726126;
        Wed, 24 Apr 2024 03:32:06 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id z2-20020a17090665c200b00a55bbc4fd16sm3274471ejn.48.2024.04.24.03.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 03:32:05 -0700 (PDT)
Date: Wed, 24 Apr 2024 12:32:04 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Christoph =?utf-8?Q?M=C3=BCllner?= <christoph.muellner@vrull.eu>
Cc: Charlie Jenkins <charlie@rivosinc.com>, 
	Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, heiko@sntech.de, David.Laight@aculab.com, parri.andrea@gmail.com, 
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240424-c24522c332fcaced37339045@orel>
References: <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
 <ZiKeYRnXxtLUtkkW@ghost>
 <20240421-f63f90c2146deb0695b84441@orel>
 <ZibmfbLnGCb9gmow@ghost>
 <20240423-ed9ddb701be1df4a25e29f31@orel>
 <Zif3VZALGtLtl3D3@ghost>
 <ZigPN/iJ/gLT4DOD@ghost>
 <20240424-0e571b29835610c24409762b@orel>
 <CAEg0e7gYteAbHyQCvodO=Mh20qpW4oM9Lm42efNJvz=9muQO-g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEg0e7gYteAbHyQCvodO=Mh20qpW4oM9Lm42efNJvz=9muQO-g@mail.gmail.com>

On Wed, Apr 24, 2024 at 11:23:00AM +0200, Christoph Müllner wrote:
> On Wed, Apr 24, 2024 at 9:34 AM Andrew Jones <ajones@ventanamicro.com> wrote:
> >
> > On Tue, Apr 23, 2024 at 03:42:47PM -0400, Charlie Jenkins wrote:
> > > On Tue, Apr 23, 2024 at 02:00:53PM -0400, Charlie Jenkins wrote:
> > > > On Tue, Apr 23, 2024 at 10:46:01AM +0200, Andrew Jones wrote:
> > > > > On Mon, Apr 22, 2024 at 06:36:45PM -0400, Charlie Jenkins wrote:
> > > > > > On Sun, Apr 21, 2024 at 12:20:03PM +0200, Andrew Jones wrote:
> > > > > > > On Fri, Apr 19, 2024 at 12:40:01PM -0400, Charlie Jenkins wrote:
> > > > > ...
> > > > > > > > What would be the purpose of a vendor implementing WRS.NTO (and putting
> > > > > > > > it in the DT) that never terminates? The spec says "Then a subsequent
> > > > > > > > WRS.NTO instruction would cause the hart to temporarily stall execution
> > > > > > > > in a low- power state until a store occurs to the reservation set or an
> > > > > > > > interrupt is observed." Why is this wording for WRS.NTO not sufficient
> > > > > > > > to assume that an implementation of this instruction would eventually
> > > > > > > > terminate?
> > > > > > > >
> > > > > > >
> > > > > > > We can invoke smp_cond_load_relaxed(addr, VAL || anything_we_want()). This
> > > > > > > means we may not expect VAL ever to be written, which rules out "until a
> > > > > > > store occurs". As for "an interrupt is observed", we don't know which one
> > > > > > > to expect to arrive within a "reasonable" amount of time. We need to know
> > > > > > > which one(s), since, while wrs.nto will terminate even when interrupts are
> > > > > > > globally disabled, we still need to have the interrupt(s) we expect to be
> > > > > > > locally enabled. And, the interrupts should arrive in a "reasonable"
> > > > > > > amount of time since we want to poll anything_we_want() at a "reasonable"
> > > > > > > frequency.
> > > > > > >
> > > > > > > So, we need firmware to promise to enable exceptions if there aren't any
> > > > > > > such interrupts. Or, we could require hardware descriptions to identify
> > > > > > > which interrupt(s) would be good to have enabled before calling wrs.nto.
> > > > > > > Maybe there's already some way to describe something like that?
> > > > > > >
> > > > > > > Thanks,
> > > > > > > drew
> > > > > >
> > > > > > Ahh okay I am caught up now. So the wording we are looking at in the
> > > > > > spec is:
> > > > > >
> > > > > > "When executing in VS or VU mode, if the VTW bit is set in hstatus, the
> > > > > > TW bit in mstatus is clear, and the WRS.NTO does not complete within an
> > > > > > implementation-specific bounded time limit, the WRS.NTO instruction will
> > > > > > cause a virtual instruction exception."
> > > > >
> > > > > That's what the hypervisor should promise to do when there's no other
> > > > > guarantee of wrs.nto terminating (but the hypervisor likely wants to
> > > > > anyway since it wants guests to trap on wrs.nto in order to potentially
> > > > > schedule the lock holding VCPU). The firmware of the host should likewise
> > > > > promise to set mstatus.TW when there's no guarantee of wrs.nto
> > > > > terminating, but that's likely _not_ something it normally would want to
> > > > > do, so hopefully there will always be implementation-specific "other
> > > > > reasons" which guarantee termination.
> > > > >
> > > > > >
> > > > > > With the concern being that it is possible for "implementation-specific
> > > > > > bounded time limit" to be infinite/never times out,
> > > > >
> > > > > The implementation-defined short timeout cannot be infinite, but it only
> > > > > applies to wrs.sto. While using wrs.sto would relieve the concern, it
> > > > > cannot be configured to raise exceptions, which means it's not useful in
> > > > > guests. If we want to use wrs.sto in hosts and wrs.nto in guests then we
> > > > > need a paravirt channel which allows an "enlightened" guest to determine
> > > > > that it is a guest and that the hypervisor has configured wrs.nto to
> > > > > trap, which then indicates it's a good idea to patch wrs.sto to wrs.nto.
> > > > > But, adding paravirt stuff should be avoided whenever possible since it
> > > > > adds complexity we'd rather not maintain.
> > > > >
> > > >
> > > > That still wouldn't solve this issue, because the wrs.nto guest may still
> > > > never wakeup in the implementation-specific way?
> >
> > The paravirt approach does solve it, because wrs.nto is specified to raise
> > exceptions after an implementation-specific bounded time limit when the
> > hypervisor sets hstatus.VTW.
> >
> > >
> > > Thinking about this a bit more, this is a performance penalty and not a
> > > correctness issue.
> >
> > It's incorrect to have a design that is likely to result in bad
> > performance.
> >
> > > This line is an optimization that allows the lock
> > > holder to jump the queue if the holder directly in front is a preempted
> > > vcpu. Eventually the vcpu will be scheduled again and give up the lock.
> > > So an implementation of WRS.NTO that does not have the
> > > "implementation-specific bounded time limit" that the spec calls out for
> > > WRS.NTO to raise a virtual instruction exception, would still function,
> > > just slower.
> >
> > The problem isn't specific to virtualization. The problem is using wrs.nto
> > when it has not been configured to raise exceptions and there are not any
> > other guaranteed termination events (other than the reservation set
> > becoming invalid). While the paravirt solution is virtualization specific,
> > it works, because we would then only use wrs.nto when we know we can, and
> > otherwise use wrs.sto. But, as I said, I'd rather not have a paravirt
> > solution.
> 
> Andrew, it would be great if you could summarize this finding to the
> spec authors.
> Maybe a non-normative text added to the spec (that raises awareness
> for the issue

Sure, I'll write something up pointing out the concern with wrs.nto and
post it to a few RVI mailing lists.

> and provides a guideline to avoid it) could reduce the risk of triggering
> the issue on real HW. This might be enough justification to use WRS.NTO.
> 
> If WRS.NTO is considered as not reliable enough to wake up and therefore causing
> performance issues or CPU stalls if used for the spin lock optimization,
> it might be also reasonable to use WRS.STO instead.
> The cost of having too many wakeups seems much more acceptable than
> a stalled CPU.

wrs.sto is reasonable to use in all cases, since too many wakeups isn't
a concern. But, we can do better in the virtualization case with wrs.nto,
where the hypervisor can get involved, so, to avoid paravirt stuff, we'd
like to be able to always use wrs.nto.

Thanks,
drew

