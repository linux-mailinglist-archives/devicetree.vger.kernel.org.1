Return-Path: <devicetree+bounces-137569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 624F1A09873
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:26:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 640631699AF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE2E2139D4;
	Fri, 10 Jan 2025 17:26:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3C9213E6E;
	Fri, 10 Jan 2025 17:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736529964; cv=none; b=SUXpn9udz2BBhw9IkdAQAw12j4PwfjTrrK5Pn7bGK2MnzBH6AqdP0xv8zRhE2ud2tPmR5iVfNdVJ5jCCYQ0woWcLkxmG3bVeHnm863yqLqFhINU4ZK7e+Uq3ltlgOQJ7T8DJWyeub2/nvqKpTce2ah3rXgK49s6P1Jp+K4LZID4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736529964; c=relaxed/simple;
	bh=tJgrwbUufKspjDWqQMfUtETLVlNigcFG030QfQtnCsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CIvz8q6TTgvaU4sFGB9HfnlsRz7wvtPV3+vJIqK1szvb7J8E8WXoK2vBwmkPP0OQq4xHhcJpWsbv0jqEAolz+X3vdSZLjUPmXaXsN7B6AkbLDWVeibAsh3yETrX2atDsjqQ51yslOr88L2gwrfoMdQUiG7B/8Dz2+sFcokchJz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D26CF1477;
	Fri, 10 Jan 2025 09:26:28 -0800 (PST)
Received: from J2N7QTR9R3 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 604A33F66E;
	Fri, 10 Jan 2025 09:25:58 -0800 (PST)
Date: Fri, 10 Jan 2025 17:25:50 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Alireza Sanaee <alireza.sanaee@huawei.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh@kernel.org, linuxarm@huawei.com,
	shameerali.kolothum.thodi@huawei.com, Jonathan.Cameron@huawei.com,
	jiangkunkun@huawei.com, yangyicong@hisilicon.com,
	zhao1.liu@intel.com
Subject: Re: [PATCH] arm64: of: handle multiple threads in ARM cpu node
Message-ID: <Z4FYHvbVhMHrGQI4@J2N7QTR9R3>
References: <20250110161057.445-1-alireza.sanaee@huawei.com>
 <Z4FJZPRg75YIUR2l@J2N7QTR9R3>
 <20250110170211.00004ac2@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110170211.00004ac2@huawei.com>

On Fri, Jan 10, 2025 at 05:02:11PM +0000, Alireza Sanaee wrote:
> On Fri, 10 Jan 2025 16:23:00 +0000
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> Hi Mark,
> 
> Thanks for prompt feedback.
> 
> Please look inline.
> 
> > On Fri, Jan 10, 2025 at 04:10:57PM +0000, Alireza Sanaee wrote:
> > > Update `of_parse_and_init_cpus` to parse reg property of CPU node as
> > > an array based as per spec for SMT threads.
> > > 
> > > Spec v0.4 Section 3.8.1:  
> > 
> > Which spec, and why do we care?
> 
> For the spec, this is what I looked
> into https://github.com/devicetree-org/devicetree-specification/releases/download/v0.4/devicetree-specification-v0.4.pdf 
> Section 3.8.1 
> 
> Sorry I didn't put the link in there.

Ok, so that's "The devicetree specification v0.4 from ${URL}", rather
than "Spec v0.4".

> One limitation with the existing approach is that it is not really
> possible to describe shared caches for SMT cores as they will be seen
> as separate CPU cores in the device tree. Is there anyway to do so?

Can't the existing cache bindings handle that? e.g. give both threads a
next-level-cache pointing to the shared L1?

> More discussion over sharing caches for threads
> here https://lore.kernel.org/kvm/20241219083237.265419-1-zhao1.liu@intel.com/

In that thread Rob refers to earlier discussions, so I don't think
that thread alone has enough context.

> > > The value of reg is a <prop-encoded-**array**> that defines a unique
> > > CPU/thread id for the CPU/threads represented by the CPU node.
> > > **If a CPU supports more than one thread (i.e.  multiple streams of
> > > execution) the reg property is an array with 1 element per
> > > thread**.  The address-cells on the /cpus node specifies how many
> > > cells each element of the array takes. Software can determine the
> > > number of threads by dividing the size of reg by the parent node's
> > > address-cells.  
> > 
> > We already have systems where each thread gets a unique CPU node under
> > /cpus, so we can't rely on this to determine the topology.
> 
> I assume we can generate unique values even in reg array, but probably
> makes things more complicated.

The other bindings use phandles to refer to threads, and phandles point
to nodes in the dt, so it's necessary for threads to be given separate
nodes.

Note that the CPU topology bindings use that to describe threads, see

  Documentation/devicetree/bindings/cpu/cpu-topology.txt

> > Further, there are bindings which rely on being able to address each
> > CPU/thread with a unique phandle (e.g. for affinity of PMU
> > interrupts), which this would break.

> > Regardless, as above I do not think this is a good idea. While it
> > allows the DT to be written in a marginally simpler way, it makes
> > things more complicated for the kernel and is incompatible with
> > bindings that we already support.
> > 
> > If anything "the spec" should be relaxed here.
> 
> Hi Rob,
> 
> If this approach is too disruptive, then shall we fallback to the
> approach where go share L1 at next-level-cache entry?

Ah, was that previously discussed, and were there any concerns against
that approach?

To be clear, my main concern here is that threads remain represented as
distinct nodes under /cpus; I'm not wedded to the precise solution for
representing shared caches.

Mark.

