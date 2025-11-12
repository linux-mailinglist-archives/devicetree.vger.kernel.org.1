Return-Path: <devicetree+bounces-237696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F46CC531E5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8226A545C4D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BDA33491F3;
	Wed, 12 Nov 2025 14:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="usqyh77u"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E2033D6FC
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762959511; cv=none; b=BhNFYZ+xl+h/YRjusPvCjiWjUFrZFE7m0wZar3RyWbLLARv6DFR/X0KZfPvGkWN44AJCL2nge/0ISYdF2I/36bsMITGLcJO7F04c3qZlljbC79cTjnd8wIK0i2T2fDrrE2jEQCuN6DnsCQ2tUxAIAR2zEIUn8QBw9QSRvTFzGg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762959511; c=relaxed/simple;
	bh=4eJT0qrbYtb3tygQi78gtUWgI3MFtLtKc3+1qUbZmWE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tYaebK6ji/SsyJFKduXMpuSuhVJJ/YpmytRRZLUGX2RSW+FKiA3VnQiBkPV0yjcOpK5JFPQAQytua2N1j7S35zvKnw/RaMJYSXZdUIdp8zi6luqzpfU3KJJxbRvm6YcbuIhMWtpmqVX0t+r9Mt9ZVN0v0oFYIES9qU7cad8yN1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=usqyh77u; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762959506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nDjgIBsyp+ARuuJZr3OZhF6O45jVd9KZ8isVUEf2PrI=;
	b=usqyh77u1FXKT+x+f7SxohlrLK/h+RoZdAKZeQiCswd57L0xmFG+nciOJfdQiW0PR66IVk
	g9lqgdxrGvv+rJXHQw/qzfzh4V65cCwQPc/G1MGD6v/sOkW0bM2Hm68jm8UueRjRGVZ29y
	VAdj2mln2BWyAT5bcO9Vcw0rjQzyK+0=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: robh@kernel.org
Cc: devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	geert@linux-m68k.org,
	linux-kernel@vger.kernel.org,
	saravanak@google.com,
	yuntao.wang@linux.dev
Subject: Re: [PATCH v2] of: fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
Date: Wed, 12 Nov 2025 22:58:00 +0800
Message-ID: <20251112145806.235845-1-yuntao.wang@linux.dev>
In-Reply-To: <CAL_JsqJxar7z+VcBXwPTw5-Et2oC9bQmH_CtMtKhoo_-=zN2XQ@mail.gmail.com>
References: <CAL_JsqJxar7z+VcBXwPTw5-Et2oC9bQmH_CtMtKhoo_-=zN2XQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On Tue, 11 Nov 2025 10:56:51 -0600, Rob Herring <robh@kernel.org> wrote:

> On Wed, Nov 5, 2025 at 3:02 AM Yuntao Wang <yuntao.wang@linux.dev> wrote:
> >
> > The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
> > is in cells (4 bytes per cell).
> >
> > Comparing them directly is incorrect. Convert units before comparison.
> 
> We have 3 copies of the same code. This one plus "linux,kho-fdt" and
> "linux,kho-scratch". Please consolidate them. The few places we have
> for this type of mismatch, the better.

Hi Rob,

The link to the new patch series:

https://lore.kernel.org/linux-devicetree/20251112143520.233870-11-yuntao.wang@linux.dev/t/

Thanks,
Yuntao

> > Fixes: f7e7ce93aac1 ("of: fdt: Add generic support for handling elf core headers property")
> > Fixes: e62aaeac426ab1dd ("arm64: kdump: provide /proc/vmcore file")
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> > ---
> > v1 -> v2: Add a new Fixes tag as suggested by Geert Uytterhoeven
> >
> >  drivers/of/fdt.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 0edd639898a6..f79461f5cffc 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -812,6 +812,7 @@ static void __init early_init_dt_check_for_initrd(unsigned long node)
> >   */
> >  static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
> >  {
> > +       int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> >         const __be32 *prop;
> >         int len;
> >
> > @@ -821,7 +822,7 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
> >         pr_debug("Looking for elfcorehdr property... ");
> >
> >         prop = of_get_flat_dt_prop(node, "linux,elfcorehdr", &len);
> > -       if (!prop || (len < (dt_root_addr_cells + dt_root_size_cells)))
> > +       if (!prop || len < t_len)
> >                 return;
> >
> >         elfcorehdr_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
> > --
> > 2.51.0

