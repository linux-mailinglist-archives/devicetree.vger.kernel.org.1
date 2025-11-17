Return-Path: <devicetree+bounces-239397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BEAC64663
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD5E74EF8C4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7211D33123E;
	Mon, 17 Nov 2025 13:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="hQ+k7ydX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BA032D0FF
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763386382; cv=none; b=m80cdoo7hS4AWMG+l2V8qZg7760tQBY1Gui5g52pc3zMr/FFBNzY7Qy8/ptPjTY+3LePia3xZgOo2tx7ZxK0VLTyywFYixUj6VGv140JNZ8N8Dt2Na/IzUUB9IEmAdChrMdW1ES0SY4QLI2gPV3YctXdK7RBAn9NVyLuVz0Minc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763386382; c=relaxed/simple;
	bh=xgoTkrTawMdZiBNj93ONXASSr1HRmbaFf3O6eYogPYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nOhcxar8OayVkyl1514tQdNdQvLZnaWNZUSQnrNbnLJ7kkdNimg8jAF27FT2lRtNGABZnqxmCC7Uhj5BVQCLMxxd6y7aj0OVO5BNxEu4iC6eE8AdpTKoYJmw1dlR3FNWx0YhCjLIeVv5CiEgOpk+yiaK4GtSoHgV31kbCgnVOh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=hQ+k7ydX; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763386377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E+me5MslrLbMsHSghG+RNKc4dr72G/B4Qkp1cVUaJyc=;
	b=hQ+k7ydXiMdnA1HPYzNDhs59ZKf/whLzjYCDMwu/UIcdKJjQQ+xzMnx8b4lO2uF/R/fDFs
	mXtqXSOXNAFYItpyv+NB1JTxyC4BZ/4Vorjc9bcaEW1927NAV8W9lJnYlozA/WJ0LvgFpL
	vzT/DbDkbQio4OZur5YH412LNbB3fMY=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: geert@linux-m68k.org
Cc: krzk@kernel.org,
	akpm@linux-foundation.org,
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
	robh@kernel.org,
	rppt@kernel.org,
	saravanak@google.com,
	thunder.leizhen@huawei.com,
	yuntao.wang@linux.dev
Subject: Re: [PATCH v3 1/8] of/fdt: Consolidate duplicate code into helper functions
Date: Mon, 17 Nov 2025 21:32:23 +0800
Message-ID: <20251117133223.11242-1-yuntao.wang@linux.dev>
In-Reply-To: <CAMuHMdXYcwK5vyuqV5sDXni4zBJZptDtEZb=coz-LwuNm+OKsA@mail.gmail.com>
References: <CAMuHMdXYcwK5vyuqV5sDXni4zBJZptDtEZb=coz-LwuNm+OKsA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On Mon, 17 Nov 2025 13:34:20 +0100, Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Yuntao,
>
> On Mon, 17 Nov 2025 at 12:57, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> > On Mon, 17 Nov 2025 08:01:59 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > On Sat, Nov 15, 2025 at 09:47:46PM +0800, Yuntao Wang wrote:
> > > > Currently, there are many pieces of nearly identical code scattered across
> > > > different places. Consolidate the duplicate code into helper functions to
> > > > improve maintainability and reduce the likelihood of errors.
> > >
> > > Not much improved. Please go to previous version and read the comments.
> > >
> > > Best regards,
> > > Krzysztof
> >
> > Hi Krzysztof,
> >
> > scripts/checkpatch.pl indeed still reports some warnings. I noticed them,
> > but I intentionally didn't fix them.
> >
> > Below is a list of all the warnings, along with my reasons for leaving
> > them unaddressed.
> >
> > 1. WARNING: Missing a blank line after declarations
> >    #60: FILE: drivers/of/fdt.c:663:
> >    +    int entry_cells = dt_root_addr_cells + dt_root_size_cells;
> >    +    prop += entry_cells * entry_index;
> >
> > The function that triggers this warning is:
> >
> > void __init of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
> >                                       u64 *addr, u64 *size)
> > {
> >         int entry_cells = dt_root_addr_cells + dt_root_size_cells;
> >         prop += entry_cells * entry_index;
> >
> >         *addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
> >         *size = dt_mem_next_cell(dt_root_size_cells, &prop);
> > }
> >
> > The warning suggests adding a blank line before
> >
> >         prop += entry_cells * entry_index;
> >
> > I didn't add it because, logically,
> >
> >         int entry_cells = dt_root_addr_cells + dt_root_size_cells;
> >         prop += entry_cells * entry_index;
> >
> > forms a single block, just like
> >
> >         *addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
> >         *size = dt_mem_next_cell(dt_root_size_cells, &prop);
> >
> > I think the code is more readable without the blank line.
> >
> > In fact, I initially combined these two lines
> >
> >         int entry_cells = dt_root_addr_cells + dt_root_size_cells;
> >         prop += entry_cells * entry_index;
> >
> > into a single line:
> >
> >         prop += (dt_root_addr_cells + dt_root_size_cells) * entry_index;
> >
> > I added the entry_cells local variable specifically to improve readability.
>
> What about:
>
>     void __init of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
>                                           u64 *addr, u64 *size)
>     {
>             int entry_cells = dt_root_addr_cells + dt_root_size_cells;
>
>             prop += entry_cells * entry_index;
>             *addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
>             *size = dt_mem_next_cell(dt_root_size_cells, &prop);
>     }
>
> ?
>
> 1. entry_cells is an intermediate variable,
> 2. prop is prepared just before its use.

Hi Geert,

Yes, if this warning really needs to be fixed, that's exactly how it should be done.

Thanks,
Yuntao

>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

