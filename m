Return-Path: <devicetree+bounces-238428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F68C5B10A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D52084E1E47
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F69824113D;
	Fri, 14 Nov 2025 03:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="xrkbjYqH"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1ACA23D7DD
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763089832; cv=none; b=JY7zhf3qNIjV9xATVrNCKRd97oX4DKYPiih+Kl2h0gNmSyANudgkoT1Ct2+KJwQ5Yn4LU0Iki8fFOn3D0u6bZtFLx5aL0ssOBAMQfjhqLQ4CBkAHGXlPQdHAZ+T7mNocfQEJjcV8UFVszZkracby67VM4E6IPzVAjmeHrENWz78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763089832; c=relaxed/simple;
	bh=xrbU7LKWaNaSmjzL0+xGJZsd8ksCwwjaoIPdfrSCarU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ax6Wd4BqTancqI7ya8hhbN10ByxdAEvDbQqt7Jztn8VuwyiF+X+PAStiLL2BrGaqQOj971PSSkCQ5GM81GTCzsh7gvJH6KkeGGWvPw2AN2O/PFRNly0jlBWaaY2r+YkVGYfQLDgweKOEewmLSFPiDVm7aPrO3VuHwF1/5aWVH9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=xrkbjYqH; arc=none smtp.client-ip=95.215.58.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763089826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z4TyvLR17xTGumffm2ZvM2J7gPzIlU2hkFvEIBvBEEg=;
	b=xrkbjYqH3aMSvdlbAGi7ErChhk+FuQ6r9n8n5QPoEhTUNZFQg2EAbgy7KpbhYIEYkSVSfV
	GxTe6pmZF+C4LclkEHsPIUxW7eVjg4T25hnsO9/kPKXb2rinhFwIDSjfKQMBW8wZNwzZLC
	9UaZaYcpTY4mI94Q2il0YDT8qCoob+I=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: robh@kernel.org
Cc: akpm@linux-foundation.org,
	ardb@kernel.org,
	bhe@redhat.com,
	catalin.marinas@arm.com,
	changyuanl@google.com,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	geoff@infradead.org,
	graf@amazon.com,
	james.morse@arm.com,
	linux-kernel@vger.kernel.org,
	mark.rutland@arm.com,
	rppt@kernel.org,
	saravanak@google.com,
	thunder.leizhen@huawei.com,
	yuntao.wang@linux.dev
Subject: Re: [PATCH v2 1/7] of/fdt: Consolidate duplicate code into helper functions
Date: Fri, 14 Nov 2025 11:09:54 +0800
Message-ID: <20251114030954.8738-1-yuntao.wang@linux.dev>
In-Reply-To: <20251113223859.GB800052-robh@kernel.org>
References: <20251113223859.GB800052-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On Thu, 13 Nov 2025 16:38:59 -0600, Rob Herring <robh@kernel.org> wrote:

> On Thu, Nov 13, 2025 at 11:50:58PM +0800, Yuntao Wang wrote:
> > Currently, there are many pieces of nearly identical code scattered across
> > different places. Consolidate the duplicate code into helper functions to
> > improve maintainability and reduce the likelihood of errors.
> > 
> > Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> > ---
> >  drivers/of/fdt.c       | 41 +++++++++++++++++++++++++++++++++++++++++
> >  include/linux/of_fdt.h |  5 +++++
> >  2 files changed, 46 insertions(+)
> > 
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 0edd639898a6..5e0eabc1449f 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -625,6 +625,47 @@ const void *__init of_get_flat_dt_prop(unsigned long node, const char *name,
> >  	return fdt_getprop(initial_boot_params, node, name, size);
> >  }
> >  
> > +const __be32 *__init of_fdt_get_addr_size_prop(unsigned long node,
> > +                                               const char *name, int *entries)
> > +{
> > +	const __be32 *prop;
> > +	int len, elen = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> > +
> > +	prop = of_get_flat_dt_prop(node, name, &len);
> > +	if (!prop) {
> > +		*entries = 0;
> > +		return NULL;
> > +	}
> > +
> > +	if (len % elen) {
> > +		*entries = -1;
> 
> I don't think it's really important to distinguish a length error from 
> any other error. Either we can read the property or we can't.

Hi Rob,

I didn't originally split it into two checks, but later I noticed that in
__reserved_mem_reserve_reg(), the two error conditions return different
error codes. I was concerned about breaking compatibility, so I made the
change this way.

If compatibility isn't an issue, I'd be happy to merge the two checks into one.

> 
> > +		return NULL;
> > +	}
> > +
> > +	*entries = len / elen;
> > +	return prop;
> > +}
> > +
> > +bool __init of_fdt_get_addr_size(unsigned long node, const char *name,
> > +                                 u64 *addr, u64 *size)
> > +{
> > +	const __be32 *prop;
> > +	int len, elen = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> 
> Still have 2 locations to get the same calculation wrong...
> 
> > +
> > +	prop = of_get_flat_dt_prop(node, name, &len);
> > +	if (!prop || len < elen)
> > +		return false;
> 
> Why doesn't calling of_fdt_get_addr_size_prop() work here? If 'len < 
> elen', then 'len % elen' will also be true except in the 0 length case. 
> For that case, of_fdt_get_addr_size_prop() needs to handle it too.

I'm fully in favor of calling of_fdt_get_addr_size_prop() directly here,
that was my original intention as well, which is also why I placed this
function right after of_fdt_get_addr_size_prop().

But again, due to compatibility concerns, I had to implement it this way.

For example, suppose prop points to data like:

[addr, size, other data]

With the previous `len < elen` check, addr and size could still be read
successfully. But if we switch to the `len % elen` check, this type of
data may fail.

If compatibility is not a concern, I can certainly change it to something
like the following:

prop = of_fdt_get_addr_size_prop(node, name, &len);
if (!prop || len != 1)
  return false;

> 
> > +
> > +	of_fdt_read_addr_size(prop, addr, size);
> > +	return true;
> > +}
> > +
> > +void __init of_fdt_read_addr_size(const __be32 *prop, u64 *addr, u64 *size)
> > +{
> > +	*addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
> > +	*size = dt_mem_next_cell(dt_root_size_cells, &prop);
> > +}
> > +
> >  /**
> >   * of_fdt_is_compatible - Return true if given node from the given blob has
> >   * compat in its compatible list
> > diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
> > index b8d6c0c20876..3a0805ff6c7b 100644
> > --- a/include/linux/of_fdt.h
> > +++ b/include/linux/of_fdt.h
> > @@ -55,6 +55,11 @@ extern int of_get_flat_dt_subnode_by_name(unsigned long node,
> >  					  const char *uname);
> >  extern const void *of_get_flat_dt_prop(unsigned long node, const char *name,
> >  				       int *size);
> > +extern const __be32 *of_fdt_get_addr_size_prop(unsigned long node,
> > +                                               const char *name, int *entries);
> > +extern bool of_fdt_get_addr_size(unsigned long node, const char *name,
> > +                                 u64 *addr, u64 *size);
> > +extern void of_fdt_read_addr_size(const __be32 *prop, u64 *addr, u64 *size);
> >  extern int of_flat_dt_is_compatible(unsigned long node, const char *name);
> 
> Looks like of_flat_dt_* would be more consistent with existing naming.

Naming is hard :-)

I spent quite a while thinking about the names of these functions.

In drivers/of/fdt.c and include/linux/of_fdt.h, there are several naming
styles in use, such as of_fdt_, of_flat_dt_, and others.

I chose of_fdt_ as the prefix, or namespace, for these functions mainly
because:

1. Compared to of_flat_dt_, it's simpler and shorter, and fdt can represent
   flat_dt, or flattened device tree.

2. of_fdt_ matches the file names drivers/of/fdt.c and include/linux/of_fdt.h better.

3. In the libfdt library, functions consistently use the fdt_ prefix, so using
   a similar of_fdt_ prefix in of/fdt.c seems reasonable.

But if you prefer the of_flat_dt_ nameing convention, I can change it.

> 
> >  extern unsigned long of_get_flat_dt_root(void);
> >  extern uint32_t of_get_flat_dt_phandle(unsigned long node);
> > -- 
> > 2.51.0
> > 

