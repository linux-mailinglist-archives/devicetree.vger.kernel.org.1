Return-Path: <devicetree+bounces-151266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A6A45270
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 02:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F8C4188A43D
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 01:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5540A19DF75;
	Wed, 26 Feb 2025 01:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="IxBcWrj3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67CCEBE
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 01:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740534842; cv=none; b=S0FdDNeT925uwodUtCFDPjCCpRkhFHXSnsJ7HfNq4QsF8eQDP9yxjzxwlu28zTcqGeBHFBWcGr7R8a6MPlC+PTph7bJV9SeHI09yui2NHEdNX+bNhAZILEm//Kvjof1zCyCQTFpZ1QHbtlYriag7poohVnV76EAOUg/LUq8NCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740534842; c=relaxed/simple;
	bh=TMOCx62dTFFxp0Ei0PiOWoSAdlVlJQXsVWSIqOsW1JM=;
	h=Date:In-Reply-To:Mime-Version:Message-ID:Subject:From:To:Cc:
	 Content-Type; b=dE7tz0goyzO0BPwUB8XWnMbNlpcKKtR1v+d0Szbr1duLfI1G0y8NW3YmGz95yrzluD9zTkpigdxgGN/PoKDhuTbDWg9UsAUlOWQd5m7EFPT7ivu2hreT0rmaGiUDsUXTWce58kL43JMSSu+nyxnHnvWpKX2wiVJC0NQ9lVAzV04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=IxBcWrj3; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-220d8599659so115989395ad.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1740534840; x=1741139640; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:in-reply-to:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WEgQbAyN812Od1PLDKL03NyhRQA8kQhgcIrLRcSGxlQ=;
        b=IxBcWrj3X2hOWXGwU5vk6qkIK/76Ib6n0VwlfOnyuQTKA5WfxWqLSC1Zi04EHSEu0e
         eAl8BPoETBvKfZbC0c4+DAsy64tmI+K9teVLjOE+vt4l+4BJQ31vvuf8hWVOQTOcVpWT
         eRPXSzq0vx+gB69x2fqTjG+rENavIuyuBUJhXKNF1DxcEvJGperr5TdHYbPp9CON/ZqJ
         Mp1YmrirpS8AS3pvA20HCq7mqxHA+v4+fzwlJeKpJFc5w+/qh9Yj7SPMq79FALqrnY4r
         mxsE6/r9rPJf0sY1qHeTUfC1pKByRLeFmJh1X8rol3kklc5LC2wBA04QWVc1HCfxB+TK
         o/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740534840; x=1741139640;
        h=cc:to:from:subject:message-id:mime-version:in-reply-to:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WEgQbAyN812Od1PLDKL03NyhRQA8kQhgcIrLRcSGxlQ=;
        b=dz/s0qyRjU28ZyAuugJq529DzBo7pUgDGdMH5Vh9wsHqKtICEj3oYD48yMbA3W+rYN
         FfOgwTXhafhkx7eTy/2PaGRVCXG5ny7fHits+CL2RzHNGIWBPctNQBejOzvta7UY0lZU
         FJEwtoR5T8yPzs7iWHdKu0aNoRn3nVu+XDnmV9sFQDur+I9R0PMfD6TbO6Y0kXREXExD
         +IWFCXNAIOGJyBMfmB9lKeyGMmTbYWDM5BgaTDr+pRNccijMyEA3JjQauiZHmNBi63MV
         Zdcz/hP/T1B1s/8b1IYQs5tgMAihC0sCSMhUbUeKKY6OUbRRdFwnYOzBtr+dme2lk9/l
         LEIA==
X-Forwarded-Encrypted: i=1; AJvYcCXLkTN+GyiIJbndSl1mO2a3Qe0/9Q+UTnbXF9MzuJ0h59TXVngC6Fuve4kcGsHdzlyJNzXfL9DZi5bs@vger.kernel.org
X-Gm-Message-State: AOJu0YxDG21bPvBL6s8UCe3BFQ31/guM8JNNaDfx2NwWOO8qgMwerrUX
	8vP9SBp/6qZsI8YOgvdCoqy5pxqSgPeyYiiKz1KBtFIzBRd4jyMBNqE5iCvvp++LsHoLDx7j1Yg
	Sjgk4x0bPKQN/GwxWSw==
X-Google-Smtp-Source: AGHT+IFkznZMkNBk5de2vOfANCIGfGmFUq4ZoIai/G7n3JkeCyYN8XDtQ2NLIWeTlmgvn0M2N7vBP6JVrlIIeeRX
X-Received: from pfbna17.prod.google.com ([2002:a05:6a00:3e11:b0:732:502c:4a0f])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:2e1e:b0:725:df1a:285 with SMTP id d2e1a72fcca58-7348bdd003bmr2703166b3a.12.1740534840070;
 Tue, 25 Feb 2025 17:54:00 -0800 (PST)
Date: Tue, 25 Feb 2025 17:53:39 -0800
In-Reply-To: <20250206132754.2596694-3-rppt@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.48.1.711.g2feabab25a-goog
Message-ID: <20250226015342.2136669-1-changyuanl@google.com>
Subject: Re: [PATCH v4 02/14] memblock: add MEMBLOCK_RSRV_KERN flag
From: Changyuan Lyu <changyuanl@google.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: Changyuan Lyu <changyuanl@google.com>, Alexander Graf <graf@amazon.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Anthony Yznaga <anthony.yznaga@oracle.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ashish Kalra <ashish.kalra@amd.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dave Hansen <dave.hansen@linux.intel.com>, David Woodhouse <dwmw2@infradead.org>, 
	Eric Biederman <ebiederm@xmission.com>, Ingo Molnar <mingo@redhat.com>, 
	James Gowans <jgowans@amazon.com>, Jonathan Corbet <corbet@lwn.net>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, Pasha Tatashin <pasha.tatashin@soleen.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, 
	Stanislav Kinsburskii <skinsburskii@linux.microsoft.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Tom Lendacky <thomas.lendacky@amd.com>, 
	Usama Arif <usama.arif@bytedance.com>, Will Deacon <will@kernel.org>, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Mike,

On Thu,  6 Feb 2025 15:27:42 +0200, Mike Rapoport <rppt@kernel.org> wrote:
> From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
>
> to denote areas that were reserved for kernel use either directly with
> memblock_reserve_kern() or via memblock allocations.
>
> Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> ---
>  include/linux/memblock.h | 16 +++++++++++++++-
>  mm/memblock.c            | 32 ++++++++++++++++++++++++--------
>  2 files changed, 39 insertions(+), 9 deletions(-)
>
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index e79eb6ac516f..65e274550f5d 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> ......
> @@ -116,7 +117,19 @@ int memblock_add_node(phys_addr_t base, phys_addr_t size, int nid,
>  int memblock_add(phys_addr_t base, phys_addr_t size);
>  int memblock_remove(phys_addr_t base, phys_addr_t size);
>  int memblock_phys_free(phys_addr_t base, phys_addr_t size);
> -int memblock_reserve(phys_addr_t base, phys_addr_t size);
> +int __memblock_reserve(phys_addr_t base, phys_addr_t size, int nid,
> +		       enum memblock_flags flags);
> +
> +static __always_inline int memblock_reserve(phys_addr_t base, phys_addr_t size)
> +{
> +	return __memblock_reserve(base, size, NUMA_NO_NODE, 0);

Without this patch `memblock_reserve` eventually calls `memblock_add_range`
with `MAX_NUMNODES`, but with this patch, `memblock_reserve` calls
`memblock_add_range` with `NUMA_NO_NODE`. Is it intended or an
accidental typo? Thanks!

> ......
>
> -int __init_memblock memblock_reserve(phys_addr_t base, phys_addr_t size)
> +int __init_memblock __memblock_reserve(phys_addr_t base, phys_addr_t size,
> +				       int nid, enum memblock_flags flags)
>  {
>  	phys_addr_t end = base + size - 1;
>
> -	memblock_dbg("%s: [%pa-%pa] %pS\n", __func__,
> -		     &base, &end, (void *)_RET_IP_);
> +	memblock_dbg("%s: [%pa-%pa] nid=%d flags=%x %pS\n", __func__,
> +		     &base, &end, nid, flags, (void *)_RET_IP_);
>
> -	return memblock_add_range(&memblock.reserved, base, size, MAX_NUMNODES, 0);

Originally `memblock_reserve` calls `memblock_add_range` with `MAX_NUMNODES`,
See my comments above.

Best,
Changyuan

