Return-Path: <devicetree+bounces-238298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC77AC59B1B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3D713BB224
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF6A31B13C;
	Thu, 13 Nov 2025 19:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfBzblaG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EBF31B120;
	Thu, 13 Nov 2025 19:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763061241; cv=none; b=HvxR6FCD/xuINPONsBmeV+515YyPHwmZ9qHGZnF1inZxlT38jGgYAfZgG3tD1u46wsDig9YKy0XG6alIH2R+FsKJy/7Xb5BHuKKKjJjiGy/v08v90JEfA5c4TZaFhRnSkPGgHzOizHZrvUdsKFcHe44oXDWKdWA/VwLh1yryPZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763061241; c=relaxed/simple;
	bh=jTWDk+BqohV3m4pXD2Ea/Pvbdh3J2t6AMrMnl8XqWNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NkfdsvyoN3wqMow5ZqY/HsiIMOCelgsOZKSNSCFiPgSN2CNmr5cMV+0lkjsJSHfbeE+KPkTTRdbICwlobFg/CSJLFpZ9nMhHwUJ+caK2G9LESqR4wMfxyrZTzLeMDuqjEZwOXvRzCHhYivYTlQ0LZbPYcZo20W+nkGvkgKU61Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfBzblaG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FAFC113D0;
	Thu, 13 Nov 2025 19:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763061240;
	bh=jTWDk+BqohV3m4pXD2Ea/Pvbdh3J2t6AMrMnl8XqWNM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cfBzblaGV5hhZbOf+DAbxa0lXzHi4wNDeV83e/hMffLKgQ9aQzRt5eagWi2nPqVig
	 +OgYRY0az8+Cx1dALXALokHuXG9h4Ac0KocHu2f2aOFrh5JfP5kb5N2PGQ+jWRkgFZ
	 sQO5P/6ZVQGgc0tbu/wiJi2+KByxtaQcvyCHWokq7luXvunk4iaagmEBd7E/dILMJ7
	 O0OEDG02xpXqVoTVHxOJWhrQ1iUwv/awNcNmXnToyD9TD2PPENLItvCkEQZon2ybcL
	 cBey4qKmDoPGH+bX/4ZC4EIlu/PFZnOgoYOFnwFZ672IwX+pcaSSfkBElCf46zNrZt
	 56xqzpPXgEojg==
Message-ID: <7cfd85f6-54e9-42df-8330-d81fbe441ca5@kernel.org>
Date: Thu, 13 Nov 2025 20:13:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/22] riscv: Memory type control for platforms with
 physical memory aliases
To: Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mm@kvack.org
Cc: devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
 Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>, "Liam R . Howlett"
 <Liam.Howlett@oracle.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Joe Perches <joe@perches.com>,
 Julia Lawall <Julia.Lawall@inria.fr>, Lukas Bulwahn
 <lukas.bulwahn@gmail.com>, Nicolas Palix <nicolas.palix@imag.fr>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13.11.25 02:45, Samuel Holland wrote:
> 
> On some RISC-V platforms, including StarFive JH7100 and ESWIN EIC7700,
> DRAM is mapped to multiple physical address ranges, with each alias
> having a different set of statically-determined Physical Memory
> Attributes (PMAs), such as cacheability. Software can alter the PMAs for
> a page by selecting a PFN from the corresponding physical address range.
> On these platforms, this is the only way to allocate noncached memory
> for use with noncoherent DMA.
> 
> These physical memory aliases are only visible to architecture code.
> Generic MM code only ever sees the primary (cacheable) alias. The major
> change from v1 of this series is that I was asked to move the hooks from
> pfn_pXX()/pXX_pfn() to set_pXX()/pXXp_get().
> 
>   - Patches 1-10 ensure that architecture-specific code that hooks page
>     table reads and writes is always called, and the calls are balanced.

It is not immediately clear to me from the description why that is 
required. Can you summarize the core problem here, and why we have to 
route everything through these accessors?

-- 
Cheers

David

