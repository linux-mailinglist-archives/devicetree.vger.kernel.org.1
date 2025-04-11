Return-Path: <devicetree+bounces-165708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5539A8525F
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 06:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8928D1BA6588
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 04:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4115A27CB3D;
	Fri, 11 Apr 2025 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="adqYb6en"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CE727CB29
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744344153; cv=none; b=uslemC7Bcn7rHqKARZvZ6Wlz+UloWjHIcOAgrN75cGkZl2aUD+N1hM0W6xkyXFIxs00sRanuoyA3FDvXBD+Q6MG4PcRhwXLEFdaVG+Eqxj1zNZPU5cNKvEluXzisrHOvjrzAVr7YVqdeFsbrdhvtF90f7AADFGugs7BE2h8WSpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744344153; c=relaxed/simple;
	bh=ICkMdvtP2NNeMeVNHo3ZX6PisY9isa+Tl4JqggQB0fE=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=STeL2lXctPUquT4rFuHvhEMuR1XVutXGvvSlcFIkChdPhiTxAMWiZLrL1yJK67UeSrQ+4Zx+Z4k6KiIiN8r4KUiJyvZ5n5xbU7AEW3Q45uWewde26W2kUdM7kRcaKAvAM6pM/+iHaNDhF5/9YVYMLuTtlm2TRLTmiqIh3sVussE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=adqYb6en; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b048d1abbbfso819206a12.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 21:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744344151; x=1744948951; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wf2ji0GFvpjHRr4bYeHuRuHgc+Z7uvA9rI8tjfanbZY=;
        b=adqYb6enV3lQm17l+LqjMCOY6oi3iqjnNibdXBpDcLBMaKE5EuSDhmWKU3SYTdZJSI
         nkkwmdfiKUdrJbH/k4ZVG0P+iD1mgMtgq7KnlHq3KAdVv2gyyRs8woaTbEPNszUXAoQC
         zNAOpZI19ZHsUGthhfpUn7/+nHm2ZpIDOi5E8t3lwLxtKbbwDb5mjlofN7TCXiQ6JTEL
         ncgQvZCroo/Ke+PhaKpbHgMmYIqgWKAm1ZoORsrNYyw0nrU9eassY/VcuF8FwPeykw5Q
         OIcZkS8hmlLA5k91ks0JCFxJj1bsJ3HfOO8OP5xOFrXOZXxfHzNrpvYXLCBKQIPbUvNx
         Semg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744344151; x=1744948951;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wf2ji0GFvpjHRr4bYeHuRuHgc+Z7uvA9rI8tjfanbZY=;
        b=A/E3z8rECDz0qbTtgmnKPvCTwB3XiJsCRzegpDJmK+cslk8FxTf6T9+RkjrF0agi+l
         ZJRtHo9sRO1VniNhzuTl2YYsRbPw1QL+Dgkea36QDL06SpZ/n2QEvKeUcr1hngwoLSBP
         6hmvCjdoIwxjlIuKWbF9SOPwRp1dzGtAjepYF8l3WlqPbDXEEpbZyy3Wmv4EdMVjMAui
         +/hhOSc68DRCJWFwF+rgRlJ87du7PgbwnRZXyAQe6e4xNS+NHoIQrpjDy+7xFYi9utu5
         K54XejRkG/QpxOfgxVOnufU8R+NQNpYiAQaB5Yj25+WiRtT3JFYJlHWdyPf3j1DpuLEN
         v0Xw==
X-Forwarded-Encrypted: i=1; AJvYcCVWPo6H3dI8v6k0jcv0mcuSOUYjZQxqAOfhUkRxBnYUbDICTwr6JmNbfrPmyX1H3hqpn2IJ2Zhymaj3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2h93jX1RA/Ey5WgXcqnH4K6+yQlTu6PKOS0c7DFlLEw7IdCL1
	iZbSK3yL4mvPDUHGOV8eqQNcpNBouBAcmwRaYrwCLoUvr6CCs3KeCcrA86mM8fmCtCTQK6aD4kR
	XctcrxpRHUaVdrn3K1Q==
X-Google-Smtp-Source: AGHT+IFO60SlOVXFGfc/szhJVpc75spqpNw2IzzXevlhy4U/0PpbLpo4ep7Q2sEdRzo+JtTGmKQPtisVnvfyVrfn
X-Received: from plbkv16.prod.google.com ([2002:a17:903:28d0:b0:227:e456:d436])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:cf04:b0:220:bd61:a337 with SMTP id d9443c01a7336-22bea4c62b2mr18031945ad.23.1744344150948;
 Thu, 10 Apr 2025 21:02:30 -0700 (PDT)
Date: Thu, 10 Apr 2025 21:02:07 -0700
In-Reply-To: <mafs05xjmqsqc.fsf@amazon.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <mafs05xjmqsqc.fsf@amazon.de>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250411040207.1785245-1-changyuanl@google.com>
Subject: Re: [PATCH v5 09/16] kexec: enable KHO support for memory preservation
From: Changyuan Lyu <changyuanl@google.com>
To: ptyadav@amazon.de
Cc: akpm@linux-foundation.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, changyuanl@google.com, corbet@lwn.net, 
	dave.hansen@linux.intel.com, devicetree@vger.kernel.org, dwmw2@infradead.org, 
	ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, jgg@nvidia.com, 
	jgowans@amazon.com, kexec@lists.infradead.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, luto@kernel.org, 
	mark.rutland@arm.com, mingo@redhat.com, pasha.tatashin@soleen.com, 
	pbonzini@redhat.com, peterz@infradead.org, robh+dt@kernel.org, 
	robh@kernel.org, rostedt@goodmis.org, rppt@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, tglx@linutronix.de, thomas.lendacky@amd.com, 
	will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Pratyush,

Thanks for reviewing!

On Wed, Apr 02, 2025 at 19:16:27 +0000, Pratyush Yadav <ptyadav@amazon.de> wrote:
> Hi Changyuan,
>
> On Wed, Mar 19 2025, Changyuan Lyu wrote:
> > [...]
> > +int kho_preserve_phys(phys_addr_t phys, size_t size)
> > +{
> > +	unsigned long pfn = PHYS_PFN(phys), end_pfn = PHYS_PFN(phys + size);
> > +	unsigned int order = ilog2(end_pfn - pfn);
>
> This caught my eye when playing around with the code. It does not put
> any limit on the order, so it can exceed NR_PAGE_ORDERS.

I agree with Mike that this should not be a problem.

> Also, when
> initializing the page after KHO, we pass the order directly to
> prep_compound_page() without sanity checking it. The next kernel might
> not support all the orders the current one supports. Perhaps something
> to fix?

Yes the new kernel should check the order.

> > +	unsigned long failed_pfn;
> > +	int err = 0;
> > +
> > +	if (!kho_enable)
> > +		return -EOPNOTSUPP;
> > +
> > +	down_read(&kho_out.tree_lock);
> > +	if (kho_out.fdt) {
> > +		err = -EBUSY;
> > +		goto unlock;
> > +	}
> > +
> > +	for (; pfn < end_pfn;
> > +	     pfn += (1 << order), order = ilog2(end_pfn - pfn)) {
> > +		err = __kho_preserve(&kho_mem_track, pfn, order);

I realized another bug here: we did not check if "pfn" is aligned to
1 << order. For example, if the function input is
@phys = 4096, @size = 8192, in the 1st iteration, pfn = 1, end_pfn = 3,
order = 1. This is problematic since these 2 pages should be viewed
as 2 folios of order 0, instead of 1 folio of order 1.

> > +		if (err) {
> > +			failed_pfn = pfn;
> > +			break;
> > +		}
> > +	}
> [...]

I will fix the 2 bugs above in V6.

Best,
Changyuan

