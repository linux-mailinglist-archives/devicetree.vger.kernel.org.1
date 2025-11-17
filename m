Return-Path: <devicetree+bounces-239316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF73C63F48
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D6673A5939
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8866730F939;
	Mon, 17 Nov 2025 11:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="TpbHxFtd"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DDE126C02;
	Mon, 17 Nov 2025 11:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763380627; cv=none; b=ffSOpW/vg6q0wwP31KKgxPUXeXeP/E7rtdRY1Mz6oRHbJZG/1Qik1lDpT44rHaudVw3FgInoMe0UbvCkh6CORd3t/66UEjaFhNDkesoBbSgVYfYQWz5U3gBLnmi9BFg8M5PmGuEHVRN31UMfoMjYFd1RSTJLR3UJGUjZXn39f/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763380627; c=relaxed/simple;
	bh=GhgHchNZ7/ADzWp7sikBZ44pFHOrJLv/mFZXdK/C2uI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RD9kSvmcvN5RlHWExtZXuuOVYvLpqGPZtXt/bRi62bD4xs0eh+Nx/LLMuRcE/+9n8/E+0t4j2bTyP5Uutu9C++1yiK3eaaFXPb0pkS3sbTW3XkbbRqWFUgVVC8hLhBeWEQw5GxJahaZiRiVyZiHiNwDXiiX24XiUq9vMcHmcn2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=TpbHxFtd; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763380622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wWvzyzaNYcBQSNbJaSovb4vMUrMEvpKW9Fa946m9hD4=;
	b=TpbHxFtdXpW8bgUnjNpqbgulpuX9ZWGVSFxjyleyAj1P7Sf2xJ4OduDfH53xZFLQ4vKktK
	NMBQt371B6TthN/udOxgnC49NdatdphTP+tyKK1rmB/97l61iK1MpNJ3OCx6U3f5RfeRSZ
	a82gMl6y5e1pxdjBbcGyoIomvJ9Sba0=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: krzk@kernel.org
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
	robh@kernel.org,
	rppt@kernel.org,
	saravanak@google.com,
	thunder.leizhen@huawei.com,
	yuntao.wang@linux.dev
Subject: Re: [PATCH v3 1/8] of/fdt: Consolidate duplicate code into helper functions
Date: Mon, 17 Nov 2025 19:56:20 +0800
Message-ID: <20251117115621.7537-1-yuntao.wang@linux.dev>
In-Reply-To: <20251117-tasteful-peccary-of-sympathy-a4f9cb@kuoka>
References: <20251117-tasteful-peccary-of-sympathy-a4f9cb@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On Mon, 17 Nov 2025 08:01:59 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Sat, Nov 15, 2025 at 09:47:46PM +0800, Yuntao Wang wrote:
> > Currently, there are many pieces of nearly identical code scattered across
> > different places. Consolidate the duplicate code into helper functions to
> > improve maintainability and reduce the likelihood of errors.
>
> Not much improved. Please go to previous version and read the comments.
>
> Best regards,
> Krzysztof

Hi Krzysztof,

scripts/checkpatch.pl indeed still reports some warnings. I noticed them,
but I intentionally didn't fix them.

Below is a list of all the warnings, along with my reasons for leaving
them unaddressed.

1. WARNING: Missing a blank line after declarations
   #60: FILE: drivers/of/fdt.c:663:
   +	int entry_cells = dt_root_addr_cells + dt_root_size_cells;
   +	prop += entry_cells * entry_index;

The function that triggers this warning is:

void __init of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
				      u64 *addr, u64 *size)
{
	int entry_cells = dt_root_addr_cells + dt_root_size_cells;
	prop += entry_cells * entry_index;

	*addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
	*size = dt_mem_next_cell(dt_root_size_cells, &prop);
}

The warning suggests adding a blank line before

	prop += entry_cells * entry_index;

I didn't add it because, logically,

	int entry_cells = dt_root_addr_cells + dt_root_size_cells;
	prop += entry_cells * entry_index;

forms a single block, just like

	*addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
	*size = dt_mem_next_cell(dt_root_size_cells, &prop);

I think the code is more readable without the blank line.

In fact, I initially combined these two lines

	int entry_cells = dt_root_addr_cells + dt_root_size_cells;
	prop += entry_cells * entry_index;

into a single line:

	prop += (dt_root_addr_cells + dt_root_size_cells) * entry_index;

I added the entry_cells local variable specifically to improve readability.

2. CHECK: extern prototypes should be avoided in .h files
   #78: FILE: include/linux/of_fdt.h:59:
   +extern const __be32 *of_flat_dt_get_addr_size_prop(unsigned long node,

This is another warning reported by `scripts/checkpatch.pl --strict`.

This warning says that `extern` should be removed.

The reason I didn't remove it was to maintain consistency with the existing
function declarations.

In include/linux/of_fdt.h, all function declarations use the `extern` keyword.

Yes, the Linux kernel coding style document

	https://docs.kernel.org/process/coding-style.html#function-prototypes

emphasizes

	Do not use the extern keyword with function declarations as this makes lines longer and isn’t strictly necessary.

I agree with this.

However, if extern needs to be removed, I think it should be done in a
separate patch that removes all instances of extern.

Thanks,
Yuntao

