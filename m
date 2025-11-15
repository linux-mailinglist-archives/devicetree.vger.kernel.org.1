Return-Path: <devicetree+bounces-238998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD2FC60687
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:01:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 652083AF333
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE9E275AF0;
	Sat, 15 Nov 2025 14:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="toEOUAPg"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D3A4A32
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763215261; cv=none; b=B/BvaJOt1eUEZC2GOBxW31T6DIMl4e1P+BxdLAKucHmeOV8je28PlkN4R+iaTPbnDNqcjwgD14PZiFZgz8URtrk8uGhx6+csoKtAmtVMoKOcUdRc784d5BuIf5x6oMtA6UOuP9QZLuDgvNqF9x36u420CIpvjD9B1c6tJvU5VW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763215261; c=relaxed/simple;
	bh=Mi4i20cJqJ+Z/8j60CbnLDSsEpv52/KcengAD46mkE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=akmJkoeauXlmgh81keVtj07aV5VzUGW6WZU+rsSvhMBYO7rtQhKFO3eB+QsAJ0iVprcnm9+jZwvuAG87U61awTjllAB+WwYm6JPD8UqlNLeC19V0FqpDyVD89ubWbdBJ+/ojnyIjqnp3nJ0MCLmOJTvfyU7xn0wq3NaFzaswJic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=toEOUAPg; arc=none smtp.client-ip=95.215.58.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763215256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z8NMA0mm1b2tQxBqcSqu3zbhpnWadSHLFLH6HP4EMl8=;
	b=toEOUAPg5P0R9SGVoKj8VFCmhxC0E7WPdGKVFH6w1VAv1CsDxH7gvYbPxEoUbMzV+0uhzV
	RzpQZlS2eCKC8328tpyhkP2BYZGt8prExGPAY1FSTs6X0TuJFXZhRbiFIR/163esP0Ms5B
	l/CD52as2U0eoJt+QgQputctWKBE/Sc=
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
Subject: Re: [PATCH v2 5/7] of/fdt: Simplify the logic of early_init_dt_scan_memory()
Date: Sat, 15 Nov 2025 22:00:29 +0800
Message-ID: <20251115140031.181716-1-yuntao.wang@linux.dev>
In-Reply-To: <CAL_JsqKqAaYb+ZYuLfGA8y8bSqhXM6EYJcLqw8XM_SdLC_u+8g@mail.gmail.com>
References: <CAL_JsqKqAaYb+ZYuLfGA8y8bSqhXM6EYJcLqw8XM_SdLC_u+8g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On Fri, 14 Nov 2025 09:11:18 -0600, Rob Herring <robh@kernel.org> wrote:

> On Thu, Nov 13, 2025 at 9:56 PM Yuntao Wang <yuntao.wang@linux.dev> wrote:
> >
> > On Thu, 13 Nov 2025 16:03:56 -0600, Rob Herring <robh@kernel.org> wrote:
> >
> > > On Thu, Nov 13, 2025 at 11:51:02PM +0800, Yuntao Wang wrote:
> > > > Use the existing helper functions to simplify the logic of
> > > > early_init_dt_scan_memory()
> > > >
> > > > Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> > > > ---
> > > >  drivers/of/fdt.c | 14 ++++++--------
> > > >  1 file changed, 6 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > > > index 4c45a97d6652..b6b059960fc2 100644
> > > > --- a/drivers/of/fdt.c
> > > > +++ b/drivers/of/fdt.c
> > > > @@ -1027,7 +1027,7 @@ int __init early_init_dt_scan_memory(void)
> > > >
> > > >     fdt_for_each_subnode(node, fdt, 0) {
> > > >             const char *type = of_get_flat_dt_prop(node, "device_type", NULL);
> > > > -           const __be32 *reg, *endp;
> > > > +           const __be32 *reg;
> > > >             int l;
> > > >             bool hotpluggable;
> > > >
> > > > @@ -1038,23 +1038,21 @@ int __init early_init_dt_scan_memory(void)
> > > >             if (!of_fdt_device_is_available(fdt, node))
> > > >                     continue;
> > > >
> > > > -           reg = of_get_flat_dt_prop(node, "linux,usable-memory", &l);
> > > > +           reg = of_fdt_get_addr_size_prop(node, "linux,usable-memory", &l);
> > > >             if (reg == NULL)
> > > > -                   reg = of_get_flat_dt_prop(node, "reg", &l);
> > > > +                   reg = of_fdt_get_addr_size_prop(node, "reg", &l);
> > > >             if (reg == NULL)
> > > >                     continue;
> > > >
> > > > -           endp = reg + (l / sizeof(__be32));
> > > >             hotpluggable = of_get_flat_dt_prop(node, "hotpluggable", NULL);
> > > >
> > > > -           pr_debug("memory scan node %s, reg size %d,\n",
> > > > +           pr_debug("memory scan node %s, reg {addr,size} entries %d,\n",
> > > >                      fdt_get_name(fdt, node, NULL), l);
> > > >
> > > > -           while ((endp - reg) >= (dt_root_addr_cells + dt_root_size_cells)) {
> > > > +           while (l-- > 0) {
> > > >                     u64 base, size;
> > > >
> > > > -                   base = dt_mem_next_cell(dt_root_addr_cells, &reg);
> > > > -                   size = dt_mem_next_cell(dt_root_size_cells, &reg);
> > > > +                   of_fdt_read_addr_size(reg, &base, &size);
> > >
> > > This doesn't work. of_fdt_read_addr_size() needs to take an entry index
> > > to read each entry.
> > >
> > > Rob
> >
> > Hi Rob,
> >
> > This was entirely my mistake. I intended to pass &reg rather than reg,
> > just like how dt_mem_next_cell() works.
> >
> > So the correct definition of of_fdt_read_addr_size() should be:
> >
> > void __init of_fdt_read_addr_size(const __be32 **prop, u64 *addr, u64 *size);
> >
> > And the correct usage should be:
> >
> > of_fdt_read_addr_size(&reg, &base, &size);
> >
> > This bug was caused by my oversight — apologies for that.
> >
> > I didn’t choose an interface like `of_fdt_read_addr_size(reg, i, &base, &size)`
> > because in normal cases the data in prop is consumed sequentially, and I felt
> > there was no need to introduce an entry index parameter, which would increase
> > the API’s complexity.
>
> Yes, but giving the index mirrors how the unflattened of_property APIs
> work. Not so much with the FDT, but we're trying to eliminate giving
> out raw pointers (with no lifetime) to the DT data. That doesn't work
> well with overlays and dynamic DTs.
>
> > There is another issue reported by kernel test robot:
> >
> > drivers/of/fdt.c:903:31: error: incompatible pointer types passing 'phys_addr_t *' (aka 'unsigned int *') to parameter of type 'u64 *' (aka 'unsigned long long *') [-Wincompatible-pointer-types]
> >
> > Given this, the problem exists regardless of which implementation we choose.
> >
> > I’m considering two possible solutions:
> >
> > 1. Convert of_fdt_read_addr_size() into a macro.
> > 2. Split it into two functions: of_fdt_read_addr() and of_fdt_read_size().
> >
> > I’m leaning toward the second option.
> >
> > What do you think? Or do you have a better approach?
>
> Just use local u64 variables and then assign the values to the struct.
> This will not warn:
>
> a_phys_addr = a_u64;
>
> (It could silently truncate values, but I'm pretty sure no one runs
> 32-bit LPAE systems with a non-LPAE kernel on the very few systems
> that even still exist).
>
> Rob

Hi Rob,

The link to the v3 patch series:

https://lore.kernel.org/linux-devicetree/20251115134753.179931-1-yuntao.wang@linux.dev/

Thanks,
Yuntao

