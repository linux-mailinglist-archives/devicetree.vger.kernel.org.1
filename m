Return-Path: <devicetree+bounces-248113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 891CDCCEED1
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9ACA63037C19
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96192E5427;
	Fri, 19 Dec 2025 08:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p89JPvBN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE892E540C;
	Fri, 19 Dec 2025 08:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131993; cv=none; b=qvV/Xdejh5u+9mtHuoMiyePF1jZAV3Xu2c3riZPtOP8G/LJRJD6ULDZFWIwAo+h8FxdJnwEYlgm5cedPM4BcuBV8l+wTrpoJowDp+24YR6rcfY5rJ80iryJoufa3vf1kjqFTEjbGZ3XZ007LR6LJN5rd8FSvhdgpSkXj9jGZ8kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131993; c=relaxed/simple;
	bh=+A23adoC9TayllzNX6/T+neHMWZRAShmj4hgCmrmgJ4=;
	h=Content-Type:MIME-Version:Subject:From:Message-Id:Date:References:
	 In-Reply-To:To:Cc; b=QIG+zqaekdHMkePaZuk24LpwqY9oPGqR+AYADE2RdTnnCKS6s/SEizNgl//U04EU/kxzGr4IImLNXVVSBIncdrreZ6hIogNs7anX7jMtVcK2XQPAVSMLHpRpwqZqfAY18rNVBPrcInDrppPyj2QGehr1Kx0AX2i/dtz9osnNjnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p89JPvBN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA6E1C4CEF1;
	Fri, 19 Dec 2025 08:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766131992;
	bh=+A23adoC9TayllzNX6/T+neHMWZRAShmj4hgCmrmgJ4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=p89JPvBNTfp1Zxaf6AHlXPUAW5vH+0h/aZBWlIuoc8rpJoH+z3qETdxMxuFJAV6k7
	 amnpVXf6MZnK9NgXMRyK02DHNlLTm9j0h7DawEXTIpuZXjAZYo4vvcWq5huGMRsQPE
	 mtOfS164rBVpeq7K9IWV1kqWnbV0UyCNdUO7eYnA9/AFYIn+lY6r8/UfQ3lncDahyR
	 RL4Txwr0Cuo9wikDA271JZSSCweDDkIMAvfxGNY5ZYTQ+ImUbEPxYAz6Ca9qcSQC37
	 PKnkuVb8wyAiMT/frsE2y4GUuxmeZ6cqN8jbYtjxbXpYApAc3Nwlw7e2vh9rlhpZW7
	 hhT3fx+FdWTWQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F3393380AA50;
	Fri, 19 Dec 2025 08:10:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v3 00/22] riscv: Memory type control for platforms with
 physical memory aliases
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: 
 <176613180179.3684357.1299267450443574866.git-patchwork-notify@kernel.org>
Date: Fri, 19 Dec 2025 08:10:01 +0000
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: linux-riscv@lists.infradead.org, palmer@dabbelt.com, pjw@kernel.org,
 akpm@linux-foundation.org, david@redhat.com, linux-mm@kvack.org,
 devicetree@vger.kernel.org, surenb@google.com, linux-kernel@vger.kernel.org,
 rppt@kernel.org, mhocko@suse.com, conor@kernel.org,
 lorenzo.stoakes@oracle.com, krzk+dt@kernel.org, alex@ghiti.fr,
 kernel@esmil.dk, robh+dt@kernel.org, vbabka@suse.cz, Liam.Howlett@oracle.com,
 apw@canonical.com, dwaipayanray1@gmail.com, joe@perches.com,
 Julia.Lawall@inria.fr, lukas.bulwahn@gmail.com, nicolas.palix@imag.fr

Hello:

This series was applied to riscv/linux.git (fixes)
by Andrew Morton <akpm@linux-foundation.org>:

On Wed, 12 Nov 2025 17:45:13 -0800 you wrote:
> On some RISC-V platforms, including StarFive JH7100 and ESWIN EIC7700,
> DRAM is mapped to multiple physical address ranges, with each alias
> having a different set of statically-determined Physical Memory
> Attributes (PMAs), such as cacheability. Software can alter the PMAs for
> a page by selecting a PFN from the corresponding physical address range.
> On these platforms, this is the only way to allocate noncached memory
> for use with noncoherent DMA.
> 
> [...]

Here is the summary with links:
  - [v3,01/22] mm/ptdump: replace READ_ONCE() with standard page table accessors
    https://git.kernel.org/riscv/c/11119b19f62d
  - [v3,02/22] mm: replace READ_ONCE() with standard page table accessors
    https://git.kernel.org/riscv/c/c0efdb373c3a
  - [v3,03/22] mm/dirty: replace READ_ONCE() with pudp_get()
    https://git.kernel.org/riscv/c/b4e53984f240
  - [v3,04/22] perf/events: replace READ_ONCE() with standard page table accessors
    (no matching commit)
  - [v3,05/22] mm: Move the fallback definitions of pXXp_get()
    (no matching commit)
  - [v3,06/22] mm: Always use page table accessor functions
    (no matching commit)
  - [v3,07/22] checkpatch: Warn on page table access without accessors
    (no matching commit)
  - [v3,08/22] mm: Allow page table accessors to be non-idempotent
    (no matching commit)
  - [v3,09/22] riscv: hibernate: Replace open-coded pXXp_get()
    (no matching commit)
  - [v3,10/22] riscv: mm: Always use page table accessor functions
    (no matching commit)
  - [v3,11/22] riscv: mm: Simplify set_p4d() and set_pgd()
    (no matching commit)
  - [v3,12/22] riscv: mm: Deduplicate _PAGE_CHG_MASK definition
    (no matching commit)
  - [v3,13/22] riscv: ptdump: Only show N and MT bits when enabled in the kernel
    (no matching commit)
  - [v3,14/22] riscv: mm: Fix up memory types when writing page tables
    (no matching commit)
  - [v3,15/22] riscv: mm: Expose all page table bits to assembly code
    (no matching commit)
  - [v3,16/22] riscv: alternative: Add an ALTERNATIVE_3 macro
    (no matching commit)
  - [v3,17/22] riscv: alternative: Allow calls with alternate link registers
    (no matching commit)
  - [v3,18/22] riscv: Fix logic for selecting DMA_DIRECT_REMAP
    (no matching commit)
  - [v3,19/22] dt-bindings: riscv: Describe physical memory regions
    (no matching commit)
  - [v3,20/22] riscv: mm: Use physical memory aliases to apply PMAs
    (no matching commit)
  - [v3,21/22] riscv: dts: starfive: jh7100: Use physical memory ranges for DMA
    (no matching commit)
  - [v3,22/22] riscv: dts: eswin: eic7700: Use physical memory ranges for DMA
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



