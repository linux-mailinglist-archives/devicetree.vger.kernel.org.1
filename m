Return-Path: <devicetree+bounces-61196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C84848ABEEF
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 12:20:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B7D6B20ABB
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 10:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A977E10A01;
	Sun, 21 Apr 2024 10:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Rr2gNeV1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D1033D5
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 10:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713694809; cv=none; b=D21R20UR18C8qSm/3FTRAf3ia4TtNnmUT61eJpatD5rH8fFnnzxb48a+27ceaVoKdov5vQpbbctS5S2jK9XUo36vQ3UNXojckiWmtpF/P9ZT/V9Dp+tzbnwccl0Pslo1v//SaIhFKVthVwOaiGJeqy+ZLYTw5dk6yLXRQd//Rag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713694809; c=relaxed/simple;
	bh=nPphRiryGCuxRttR9brQZ7EvvVXwElj2sw1/g4Av6jo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d9yXcAbc3Y6s+uj190LaaAp+plq0P63qcBVek+dZFeolPRLHIXjscYvCNgSAXG/NoscJ0hkJS0llS4I1+OYnm/vPgKkLGBNgt9Tvo97w1IWduvKgCWUxeEXXIwJaF3wDiffYE3FrRNSQYd0s5LAa2X8L+l0QcBYEhpX3wrqTwyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Rr2gNeV1; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2db101c11beso39615171fa.0
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 03:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713694805; x=1714299605; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NQ34QbYUP42radFqcG4Fu2rfSxDEHqCa4xcp8CRb+6I=;
        b=Rr2gNeV1KN/LkV9FIdQChRSIPOZXw8I87TNhn1VCg6jtcvg9oHeW5F7211mxJeKAPt
         rh5QyYYCRTz/QtPopyx8SxzhbeGCrDO20qHREPakPPcWQwQx3z8uXVoj0XzX1M4+EBIy
         pgQzccjxHQZDAvlVdxRH7BNyzjEgPweiGfgYXm30eC5/G4V9+ZTMkUz9L0DH9afTzxv4
         etWN9zcOC9mrJiOBwXKpf4xqFvd5b27MO1fc7K3r0rNVAWkc1nIiO3tjUL0EeNl0eUNQ
         1/JyAPC4/yuwWKS7gxk9LTCA/lH4ohcKth5f9QpLK2i30lqeIVfJDUdfZxIDmx21te97
         t9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713694805; x=1714299605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQ34QbYUP42radFqcG4Fu2rfSxDEHqCa4xcp8CRb+6I=;
        b=ILD3ARMNGxFrUQ4LWoxnmTFlTQLfyVyY1l2iQSYnIs+N4P7qc+Kvyox+ZtYXdas3tk
         00RmnEqa11Ayb6ya9nh/4cRYwkTDQmaKoxgfmgerY+Nz8OPt+Xw3JkvuB9rfLFA/MeiF
         O4TPGttjX2i6X8FkPr7SHOskjDu6Py98saHKrNoD50DaaHU5UTtUkRIR8x6y6mY/lAhW
         xxn6gUt803EitMkslE7XjPkL/kS5cxf/89JvYDqe6TD0u4E9QZ21NWQpCYIaxmcu03Wf
         02OoNCy6LF4aZwskz5ykbrcR+zi6orQmQDMLFHKtRLLH3xsGYLaDCFmjThE5iT212mqT
         wzEg==
X-Forwarded-Encrypted: i=1; AJvYcCW07cYuy8iUHpJP0HmqY100IUOZux1KWlJo2oljW8lg/pdDX18hxbqug+PKd1Db0+NwJMyy7ESk1HuqkCUR9DYH9V3NsH3hfDBeTQ==
X-Gm-Message-State: AOJu0Ywukd3g/8huQSC5f1XoUKsDewlCOgKUawotFwNmt7cjlIQowsYN
	nCl2EY3wtxOspeHVTpSs0aOV5m8LBpZ4Bykd+QM9Hh7rjvs0eYWwTVSm8t1rB6xqqbrbWli3Iy8
	gAgI=
X-Google-Smtp-Source: AGHT+IEAP5ccnT87Gjlugcu7UBPy8RZkCrhchcaaIW1xoFta2k9UOHEQVI4x2dhSEVzyP+LDuaDHTw==
X-Received: by 2002:a05:6512:4809:b0:518:d4c3:4682 with SMTP id eo9-20020a056512480900b00518d4c34682mr4163280lfb.24.1713694805349;
        Sun, 21 Apr 2024 03:20:05 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id b61-20020a509f43000000b0056e51535a2esm4426362edf.82.2024.04.21.03.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 03:20:04 -0700 (PDT)
Date: Sun, 21 Apr 2024 12:20:03 +0200
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
Message-ID: <20240421-f63f90c2146deb0695b84441@orel>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
 <ZiKeYRnXxtLUtkkW@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiKeYRnXxtLUtkkW@ghost>

On Fri, Apr 19, 2024 at 12:40:01PM -0400, Charlie Jenkins wrote:
> On Fri, Apr 19, 2024 at 04:19:52PM +0100, Conor Dooley wrote:
> > On Fri, Apr 19, 2024 at 05:16:05PM +0200, Andrew Jones wrote:
> > > On Fri, Apr 19, 2024 at 03:45:46PM +0100, Conor Dooley wrote:
> > > > On Fri, Apr 19, 2024 at 03:53:24PM +0200, Andrew Jones wrote:
> > > > > Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
> > > > > which was ratified in commit 98918c844281 of riscv-isa-manual.
> > > > > 
> > > > > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > > > > ---
> > > > >  .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
> > > > >  1 file changed, 12 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > > index 468c646247aa..584da2f539e5 100644
> > > > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > > @@ -177,6 +177,18 @@ properties:
> > > > >              is supported as ratified at commit 5059e0ca641c ("update to
> > > > >              ratified") of the riscv-zacas.
> > > > >  
> > > > > +        - const: zawrs
> > > > > +          description: |
> > > > > +            The Zawrs extension for entering a low-power state or for trapping
> > > > > +            to a hypervisor while waiting on a store to a memory location, as
> > > > > +            ratified in commit 98918c844281 ("Merge pull request #1217 from
> > > > > +            riscv/zawrs") of riscv-isa-manual.
> > > > 
> > > > This part is fine...
> > > > 
> > > > 
> > > > > Linux assumes that WRS.NTO will
> > > > > +            either always eventually terminate the stall due to the reservation
> > > > > +            set becoming invalid, implementation-specific other reasons, or
> > > > > +            because a higher privilege level has configured it to cause an
> > > > > +            illegal instruction exception after an implementation-specific
> > > > > +            bounded time limit.
> > > > 
> > > > ...but I don't like this bit. The binding should just describe what the
> > > > property means for the hardware, not discuss specifics about a
> > > > particular OS.
> > > > 
> > > > And with my dt-bindings hat off and my kernel hat on, I think that if we
> > > > want to have more specific requirements than the extension provides we
> > > > either need to a) document that zawrs means that it will always
> > > > terminate or b) additionally document a "zawrs-always-terminates" that
> > > > has that meaning and look for it to enable the behaviour.
> > > 
> > > IIUC, the text above mostly just needs to remove 'Linux assumes' in order
> > > to provide what we want for (a)? I'm not sure about (b). If Zawrs is
> > > unusable as is, then we should probably just go back to the specs and get
> > > a new standard extension name for a new version which includes the changes
> > > we need.
> > 
> > An (official) new name for the behaviour that you actually want, especially
> > if the patchset sent the other day does not have the more stringent
> > requirement (I won't even pretend to understand Zawrs well enough to know
> > whether it does or not), sounds like the ideal outcome. That way you're
> > also sorted on the ACPI side.
> 
> What would be the purpose of a vendor implementing WRS.NTO (and putting
> it in the DT) that never terminates? The spec says "Then a subsequent
> WRS.NTO instruction would cause the hart to temporarily stall execution
> in a low- power state until a store occurs to the reservation set or an
> interrupt is observed." Why is this wording for WRS.NTO not sufficient
> to assume that an implementation of this instruction would eventually
> terminate?
>

We can invoke smp_cond_load_relaxed(addr, VAL || anything_we_want()). This
means we may not expect VAL ever to be written, which rules out "until a
store occurs". As for "an interrupt is observed", we don't know which one
to expect to arrive within a "reasonable" amount of time. We need to know
which one(s), since, while wrs.nto will terminate even when interrupts are
globally disabled, we still need to have the interrupt(s) we expect to be
locally enabled. And, the interrupts should arrive in a "reasonable"
amount of time since we want to poll anything_we_want() at a "reasonable"
frequency.

So, we need firmware to promise to enable exceptions if there aren't any
such interrupts. Or, we could require hardware descriptions to identify
which interrupt(s) would be good to have enabled before calling wrs.nto.
Maybe there's already some way to describe something like that?

Thanks,
drew

