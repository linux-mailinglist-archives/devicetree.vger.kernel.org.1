Return-Path: <devicetree+bounces-135801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD70A02410
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF56F3A4948
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 11:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC61B1DC9BF;
	Mon,  6 Jan 2025 11:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="1s0ScdPa"
X-Original-To: devicetree@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24035192B74;
	Mon,  6 Jan 2025 11:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736162187; cv=none; b=LU+ggPh3um6u4hzTCV8n2KA9cFf8K2eGCnsvrlI9IJEYaDbDGWZE9qdLOA8UWfOLhR3VckHeMffQXTIXpPynFWtNO8bFv/TPJGDGvwI8hLAM3p1/hIBV7Z9fBopydEVuPblfMYPBF0L+N2+OBvDcXmCH4nlagMtsgE4dfpgCf9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736162187; c=relaxed/simple;
	bh=O7+PrnBJ4OTlDDXAoBnl2CJ0wpU0GlLm3yH07U/HGkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mFErmyHREkMvIJWUgOJr/ZzUQWwao8I/k7x7GEN20KY/zU7pGizRKP3VKEfjqStqiHa4fWeuybVDLv29M/DMOBLsQIrBABrYzIHnXCUKNdZ9mMYfaphdjXYZ/h7oD2P7cWtJajBFIkOquqYSZuGFwNX33ooN/GHwLRzu+NFbBzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=bombadil.srs.infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=1s0ScdPa; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=O7+PrnBJ4OTlDDXAoBnl2CJ0wpU0GlLm3yH07U/HGkw=; b=1s0ScdPaFqKNX3UmzacVtOlbop
	VA7F+JD0XrtU3NH0xlWGyGGyqiqZ/shsEtOmURatNGkCGlN/LWnGLA+t2rKGuALuD3mvEG0HFb357
	1lu7+s4KjJnUaSCOM3ZTleG/QMduNbKGqboho6R2UTwEpREzrd3ORlfha8MLFs3YL6d0UguzkeBMe
	KfdX6KFdi4pkpTWFA62w+omANkAYuSGwzq/cXuQVT/eFb7ZEriDzCJXZCYVdf0H1RkLEAzI+TAL5F
	ZAMgqtFwoC/q9rfc8DmsaXUKYYO/i+b0r4gpBS+PZEGA7kKDyfpPsgwx8lS1mrF4s1+aCs+ZzHS3s
	E+JDwhlw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat Linux))
	id 1tUl5j-000000010dO-2m8K;
	Mon, 06 Jan 2025 11:16:15 +0000
Date: Mon, 6 Jan 2025 03:16:15 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Dmytro Maluka <dmaluka@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	"open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] x86/of: Restore possibility to use both ACPI and FDT
 from bootloader
Message-ID: <Z3u7f4goH5Hq545b@infradead.org>
References: <20241223181813.224446-1-dmaluka@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223181813.224446-1-dmaluka@chromium.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html

On Mon, Dec 23, 2024 at 06:18:03PM +0000, Dmytro Maluka wrote:
> There are cases when the bootloader provides information to the kernel
> in both ACPI and DTB, not interchangeably. One such use case is virtual
> machines in Android. When running on x86, the Android Virtualization
> Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i.e.
> the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in ACPI)
> but also passes various AVF-specific boot parameters in DTB. This allows
> reusing the same implementations of various AVF components on both
> arm64 and x86.

What are these "AVF-specific boot parameters"?


