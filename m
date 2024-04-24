Return-Path: <devicetree+bounces-62179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E09B8B0341
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:34:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B22821C231FD
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A60157E6F;
	Wed, 24 Apr 2024 07:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CLslLjrb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696A7154BF4
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713944095; cv=none; b=SWsanp1Ix5ZJTVS/kYy9+Q1O61NPBX6JF4Rta1jvJBvu7cjx5HK9FOc038YCTv3u2bkCOH2btKMXC9A2cI63fRpZYF5kNzYWzzfLXFqIy/bv7x/Wh3ZNTSBoH1qEnIMnYRrdJBKYLh1iUCYqj9MjoP9fv3f/j2LbqxYu3il99so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713944095; c=relaxed/simple;
	bh=D8imE3mj8/q/8ShxqbYB6yAfEc0UkvmWmBOE17RA7TQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fbHzZE5hpvRox04j9cc8sUnOMLKWjko/rayuUdOGD1Dad0OwYJviRU2VJ4diIzSSWPCsSnGktq+OP7MqmcaXD9dGqN5y5psFAcXOUN4g8qJWxrv2WLeZarzq2B/aPMyy3TKiTFlSb3qjcl7dualZTXaxZttXTlyKSYZzrWqQ2vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CLslLjrb; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a58989cd1f8so19601366b.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713944092; x=1714548892; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4LXEJgLHvhHFf/LPY+jkXymit/X1z2rV/5NPnlDmp7s=;
        b=CLslLjrbhFc9g9rZy6WXq0dVa0k+8LF3OS7W98AuyyfD6dVfvj7BZipaMqLC/izkC9
         9y5+UDRP40kL9KaJWZnekWcloSvEuvhPrjA1mf0v3Y5lq5bavNn/zmPGwi7Pwu+mQDo3
         VjdgP36To0q/8/UwT4Xcbb89zL+fuw8tTUiIQQG1p/MYPVWTQrJ2J0QOTi4J8HCqEo3g
         Tr+GJAkfOlBm5x+0WySHv+aeZswveuc9H6ED+kqwf1tC8z7pidw+PwDDHVmrt5YbPD3D
         vvlVd87SLR0JDpH4nIMxk1fgXSwoVwE3IqHr0mwKyLJkhzTkgtqx4caDtq4mbykOFD6r
         rSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713944092; x=1714548892;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LXEJgLHvhHFf/LPY+jkXymit/X1z2rV/5NPnlDmp7s=;
        b=ROhhEzT/aBLG5cFA8Y/9hFnOBUtRHEcSN0DlePYc/riqPJunnfv4nLXPPvNWnGB1rK
         0SFIC0TuvctwwGoTTXmwbYaIRZm6wVxWTyJzMO+ch/sVESfr32spN4RL2viyraEAnHKt
         gxy2G7Nu4WZIug1OYf4ko/JB/xiTGtFMk2N02wbuKPCYYrDBBcIT1oXY0FU5HAzS7u5S
         m/JvOT4U0OaN/N+VXESj5l3zhK8suYI11dsW6pcclrq+hArzpWnqNRXlQRQIOmrX2QcV
         /hs0eKFam48MeSxmqfrQ9mZ5w9BYZOfsN5sltZI55aADKGzUkbI71SzLriyjgsVBBxsJ
         vqbg==
X-Forwarded-Encrypted: i=1; AJvYcCXqXSOGgwes5EHTtucEZjRUR41iJCtdupW1Te955/guLL8n7qmC4UmG1MBxUA+B9e7pLQRnHDUljrx6Ah8pTcIM/ZbybEbmnmUjIw==
X-Gm-Message-State: AOJu0YwD1DbVpG5Yqv+pAVuvdvFMLUyJM9uxVDzfS5KagTyGSBrZ2bxZ
	wQWwMnfpYLFwoT1dJys3/m7xkl4i4OrYWDsHmbmIvBoLFM+EcD3L1u+DdkkUQ78=
X-Google-Smtp-Source: AGHT+IGQqz4abAXug0TgscjnGx3pComSEUeb+rvZU+uo756JTnYJ8qq+lK6IMXc9NV5paOnTtvA4iw==
X-Received: by 2002:a17:906:d206:b0:a4d:fcc9:905c with SMTP id w6-20020a170906d20600b00a4dfcc9905cmr889054ejz.20.1713944091520;
        Wed, 24 Apr 2024 00:34:51 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id gc24-20020a170906c8d800b00a55ac217235sm4236045ejb.90.2024.04.24.00.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 00:34:51 -0700 (PDT)
Date: Wed, 24 Apr 2024 09:34:50 +0200
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
Message-ID: <20240424-0e571b29835610c24409762b@orel>
References: <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
 <ZiKeYRnXxtLUtkkW@ghost>
 <20240421-f63f90c2146deb0695b84441@orel>
 <ZibmfbLnGCb9gmow@ghost>
 <20240423-ed9ddb701be1df4a25e29f31@orel>
 <Zif3VZALGtLtl3D3@ghost>
 <ZigPN/iJ/gLT4DOD@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZigPN/iJ/gLT4DOD@ghost>

On Tue, Apr 23, 2024 at 03:42:47PM -0400, Charlie Jenkins wrote:
> On Tue, Apr 23, 2024 at 02:00:53PM -0400, Charlie Jenkins wrote:
> > On Tue, Apr 23, 2024 at 10:46:01AM +0200, Andrew Jones wrote:
> > > On Mon, Apr 22, 2024 at 06:36:45PM -0400, Charlie Jenkins wrote:
> > > > On Sun, Apr 21, 2024 at 12:20:03PM +0200, Andrew Jones wrote:
> > > > > On Fri, Apr 19, 2024 at 12:40:01PM -0400, Charlie Jenkins wrote:
> > > ...
> > > > > > What would be the purpose of a vendor implementing WRS.NTO (and putting
> > > > > > it in the DT) that never terminates? The spec says "Then a subsequent
> > > > > > WRS.NTO instruction would cause the hart to temporarily stall execution
> > > > > > in a low- power state until a store occurs to the reservation set or an
> > > > > > interrupt is observed." Why is this wording for WRS.NTO not sufficient
> > > > > > to assume that an implementation of this instruction would eventually
> > > > > > terminate?
> > > > > >
> > > > > 
> > > > > We can invoke smp_cond_load_relaxed(addr, VAL || anything_we_want()). This
> > > > > means we may not expect VAL ever to be written, which rules out "until a
> > > > > store occurs". As for "an interrupt is observed", we don't know which one
> > > > > to expect to arrive within a "reasonable" amount of time. We need to know
> > > > > which one(s), since, while wrs.nto will terminate even when interrupts are
> > > > > globally disabled, we still need to have the interrupt(s) we expect to be
> > > > > locally enabled. And, the interrupts should arrive in a "reasonable"
> > > > > amount of time since we want to poll anything_we_want() at a "reasonable"
> > > > > frequency.
> > > > > 
> > > > > So, we need firmware to promise to enable exceptions if there aren't any
> > > > > such interrupts. Or, we could require hardware descriptions to identify
> > > > > which interrupt(s) would be good to have enabled before calling wrs.nto.
> > > > > Maybe there's already some way to describe something like that?
> > > > > 
> > > > > Thanks,
> > > > > drew
> > > > 
> > > > Ahh okay I am caught up now. So the wording we are looking at in the
> > > > spec is:
> > > > 
> > > > "When executing in VS or VU mode, if the VTW bit is set in hstatus, the
> > > > TW bit in mstatus is clear, and the WRS.NTO does not complete within an
> > > > implementation-specific bounded time limit, the WRS.NTO instruction will
> > > > cause a virtual instruction exception."
> > > 
> > > That's what the hypervisor should promise to do when there's no other
> > > guarantee of wrs.nto terminating (but the hypervisor likely wants to
> > > anyway since it wants guests to trap on wrs.nto in order to potentially
> > > schedule the lock holding VCPU). The firmware of the host should likewise
> > > promise to set mstatus.TW when there's no guarantee of wrs.nto
> > > terminating, but that's likely _not_ something it normally would want to
> > > do, so hopefully there will always be implementation-specific "other
> > > reasons" which guarantee termination.
> > > 
> > > > 
> > > > With the concern being that it is possible for "implementation-specific
> > > > bounded time limit" to be infinite/never times out,
> > > 
> > > The implementation-defined short timeout cannot be infinite, but it only
> > > applies to wrs.sto. While using wrs.sto would relieve the concern, it
> > > cannot be configured to raise exceptions, which means it's not useful in
> > > guests. If we want to use wrs.sto in hosts and wrs.nto in guests then we
> > > need a paravirt channel which allows an "enlightened" guest to determine
> > > that it is a guest and that the hypervisor has configured wrs.nto to
> > > trap, which then indicates it's a good idea to patch wrs.sto to wrs.nto.
> > > But, adding paravirt stuff should be avoided whenever possible since it
> > > adds complexity we'd rather not maintain.
> > > 
> > 
> > That still wouldn't solve this issue, because the wrs.nto guest may still
> > never wakeup in the implementation-specific way?

The paravirt approach does solve it, because wrs.nto is specified to raise
exceptions after an implementation-specific bounded time limit when the
hypervisor sets hstatus.VTW.

> 
> Thinking about this a bit more, this is a performance penalty and not a
> correctness issue.

It's incorrect to have a design that is likely to result in bad
performance.

> This line is an optimization that allows the lock
> holder to jump the queue if the holder directly in front is a preempted
> vcpu. Eventually the vcpu will be scheduled again and give up the lock.
> So an implementation of WRS.NTO that does not have the
> "implementation-specific bounded time limit" that the spec calls out for
> WRS.NTO to raise a virtual instruction exception, would still function,
> just slower.

The problem isn't specific to virtualization. The problem is using wrs.nto
when it has not been configured to raise exceptions and there are not any
other guaranteed termination events (other than the reservation set
becoming invalid). While the paravirt solution is virtualization specific,
it works, because we would then only use wrs.nto when we know we can, and
otherwise use wrs.sto. But, as I said, I'd rather not have a paravirt
solution.

Thanks,
drew

