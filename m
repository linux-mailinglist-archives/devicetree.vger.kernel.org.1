Return-Path: <devicetree+bounces-304707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K1aHVYRG2qC+wgAu9opvQ
	(envelope-from <devicetree+bounces-304707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 18:33:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C9E60E3F5
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 18:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7D2130293F8
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 16:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B865F34104B;
	Sat, 30 May 2026 16:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNZulNZW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0CA284896;
	Sat, 30 May 2026 16:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780158335; cv=none; b=cwhWopL2xD1Umg46DC+dKvBm2pLvCozeyFFYcRsBIycvUK0Cee1xHVEqRrLo4esQTonn94CAmPJgAYcXeXABklh839YMpuWyMfbQ/aGrQOPWECespuY+HXKO9o1kAaCv7iup98QEyEUuhG2ULJ5YT5U14uCWwE6UETrGqAAtpME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780158335; c=relaxed/simple;
	bh=UI6qIUcdsGpcmlZEaRcN8lnF8eMeDTz+BLiIgpkN3xo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CogE72AEwKuhotX86FtgOv8pzBN12Zir3P+XaRuvQD7JucQSUj/YQvihsThgSOTyY48vsvfT0PpNlukdrKi78V/ulo92/fienGAo07k8I2dMyGk3lIleiUDlcMWqIXPQekNJ0nxe4UOzpAxugoJXfFaLrAxbdNYTK6Dc3mp4HuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNZulNZW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB20F1F00893;
	Sat, 30 May 2026 16:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780158334;
	bh=1suTZzjeKKm1M2CPVaqVj1nFGVAvH1OGHJ6QIFVOJpU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZNZulNZWopBoouy0/z4gcjC11VMW+fTvUrQ09qpmPKznqSj+bQDP9lcOybTNBz00u
	 jq7ay/ejY+Cb+GCmiHvxtp2t6DeCzHRKhhyy+f5sufkOPpJR0B+nFfwxWfJvFRce2s
	 VqGaGsio2ebJiwUKmS4D+Mr1+pnZZjeL8cHrQV8cEEaGQoQExr8ByXCCUH5EpMbUp4
	 NNX5fsoQ/L/HfuSCRU2U4PvdPmeW8OcKs8RQkEBbDMlPiVfQTcx3Eaz1uAR/9130L6
	 Mi2kaeXpxLG0x3MrzfXvcWrftE68RFqLXGMiYQs8S31o7y6Phs/1MZY6/armSuLsIF
	 hk7vRncNndt8w==
Date: Sat, 30 May 2026 19:25:22 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Will Deacon <will@kernel.org>
Cc: Wandun Chen <chenwandun1@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, kexec@lists.infradead.org,
	iommu@lists.linux.dev, zhaomeijing@lixiang.com,
	catalin.marinas@arm.com, chenhuacai@kernel.org, kernel@xen0n.name,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, robh@kernel.org, saravanak@kernel.org,
	akpm@linux-foundation.org, bhe@redhat.com,
	pasha.tatashin@soleen.com, pratyush@kernel.org,
	ruirui.yang@linux.dev, m.szyprowski@samsung.com,
	robin.murphy@arm.com, quic_obabatun@quicinc.com
Subject: Re: [PATCH v3 09/11] arm64: kdump: exclude non-dumpable reserved
 memory regions from vmcore
Message-ID: <ahsPcv8G1BR9rLah@kernel.org>
References: <20260527032917.3385849-1-chenwandun1@gmail.com>
 <20260527032917.3385849-10-chenwandun1@gmail.com>
 <ahmr-UjoApj2j5JS@willie-the-truck>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ahmr-UjoApj2j5JS@willie-the-truck>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,vger.kernel.org,lists.linux.dev,lixiang.com,arm.com,kernel.org,xen0n.name,dabbelt.com,eecs.berkeley.edu,ghiti.fr,linux-foundation.org,redhat.com,soleen.com,linux.dev,samsung.com,quicinc.com];
	TAGGED_FROM(0.00)[bounces-304707-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D6C9E60E3F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 04:08:41PM +0100, Will Deacon wrote:
> On Wed, May 27, 2026 at 11:29:15AM +0800, Wandun Chen wrote:
> > From: Wandun Chen <chenwandun@lixiang.com>
> > 
> > Reserved memory regions are excluded from vmcore by default unless
> > marked dumpable. Honor the dumpable flag to filter out device firmware
> > regions (e.g., GPU, DSP, modem) reserved via device tree, since they
> > typically contain data not useful for kernel crash analysis and can
> > significantly increase vmcore size.
> > 
> > Use of_reserved_mem_kdump_exclude() to perform the exclusion, and
> > pre-size the crash_mem array via of_reserved_mem_kdump_nr_ranges().
> > 
> > Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
> > Tested-by: Meijing Zhao <zhaomeijing@lixiang.com>
> > ---
> >  arch/arm64/kernel/machine_kexec_file.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> > index e31fabed378a..1d65320c6ba4 100644
> > --- a/arch/arm64/kernel/machine_kexec_file.c
> > +++ b/arch/arm64/kernel/machine_kexec_file.c
> > @@ -17,6 +17,7 @@
> >  #include <linux/memblock.h>
> >  #include <linux/of.h>
> >  #include <linux/of_fdt.h>
> > +#include <linux/of_reserved_mem.h>
> >  #include <linux/slab.h>
> >  #include <linux/string.h>
> >  #include <linux/types.h>
> > @@ -51,6 +52,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
> >  	nr_ranges = 2; /* for exclusion of crashkernel region */
> >  	for_each_mem_range(i, &start, &end)
> >  		nr_ranges++;
> > +	nr_ranges += of_reserved_mem_kdump_nr_ranges();
> >  
> >  	cmem = kmalloc_flex(*cmem, ranges, nr_ranges);
> >  	if (!cmem)
> > @@ -75,6 +77,10 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
> >  			goto out;
> >  	}
> >  
> > +	ret = of_reserved_mem_kdump_exclude(cmem);
> > +	if (ret)
> > +		goto out;
> > +
> >  	ret = crash_prepare_elf64_headers(cmem, true, addr, sz);
> 
> This looks fine to me:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Although I do wonder whether there's scope to consolidate some of the
> arch code here. Now that you have a helper for reserved memory, perhaps
> the core code could also handle the crashkernel reservation itself as
> well? If the arch code passed in its number of memory regions, the
> core code could take care of (a) allocating the crash_mem ranges array
> (b) excluding the crashkernel and (c) excluding the reserved regions
> (the part you have here).
> 
> Obviously that would be follow-up work, but the fact that you're having
> to apply basically the same diff to three architectures is a bit of a
> giveaway that this could benefit from some wider cleanup.

There are patches that move common code to kernel/crash_core.c:

https://lore.kernel.org/all/20260525084932.934910-1-ruanjinjie@huawei.com
 
Review from arch maintainers would be helpful there ;-)

> Will

-- 
Sincerely yours,
Mike.

