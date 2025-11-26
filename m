Return-Path: <devicetree+bounces-242350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C87FC89717
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C173C4E5A29
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3B631C567;
	Wed, 26 Nov 2025 11:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ29ELhi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF692FFDDC;
	Wed, 26 Nov 2025 11:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764155307; cv=none; b=WWshUTdGkKQbxRsKPAlRE42fWX2bOdYN+4DPJjx5TzjFf/+hldavXuczGDAQ2Trq/IzWZ0AOR8Kh+kQvR0nuwaQUuxounmh5QFW/+ncH6cwYMPqQAyx/BBHS9PamRE8fjWZ2rsN3lXKm5z5OqFppDbTfPKMbVzfr+OI9LrWbbSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764155307; c=relaxed/simple;
	bh=CVdLyC6tIhbwP1dKRBost2ptghGpeg2cmZtZEA7xGm4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HcB2vBvk1rFBQU4KywHstXVrsRmrcCsDQNOPjcptSEl5NRqoL/liV56feJPDU1w4xwQzWkXeq52vXiDtPqtcStk14woGQMjDXCCxZ1JtyOfBAQXuqkk40mHWGgDpHXAWkYM9VoycY7X/OeLKbZieQVnty7TGW22W0ZBNBBg3YBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ29ELhi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95EC6C113D0;
	Wed, 26 Nov 2025 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764155307;
	bh=CVdLyC6tIhbwP1dKRBost2ptghGpeg2cmZtZEA7xGm4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hQ29ELhin85lmtvEwxBL5KVjagO/88PonpwLzCU/2cvS4LT7AwcX9kgLwKmrPTrXx
	 GbO0IREIBGaoFUzm0IEhgiVy8pr8NL9vFTrxgsJgiNbjEP5BjdHMXljA0on33JsIgg
	 XMx2thnXWaGpKPCRCxotTZj7lPQiNP/Y0xWBT3jwEU7dGUsT2H0UFjkH9U051ciIOm
	 /CIKtWvjcs7CwMqWvV10Fn137Dwhjq0TORYIPvr8DInchqk05RqXijp8hodqJpXBwm
	 /lgMxLV86WSjPxgA69A2wa3aPUCLE2mSw/0Ghi4d8PJ+lN1uWDBeOHUdGgBUlq2p6W
	 tMjBR24MVFG+A==
Message-ID: <0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org>
Date: Wed, 26 Nov 2025 12:08:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
To: Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@redhat.com>, linux-mm@kvack.org
Cc: devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
 Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>, "Liam R . Howlett"
 <Liam.Howlett@oracle.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 Nicolas Palix <nicolas.palix@imag.fr>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-7-samuel.holland@sifive.com>
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Content-Language: fr-FR
In-Reply-To: <20251113014656.2605447-7-samuel.holland@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



Le 13/11/2025 à 02:45, Samuel Holland a écrit :
> Some platforms need to fix up the values when reading or writing page
> tables. Because of this, the accessors must always be used; it is not
> valid to simply dereference a pXX_t pointer.
> 
> Fix all of the instances of this pattern in generic code, mostly by
> applying the below coccinelle semantic patch, repeated for each page
> table level. Some additional fixes were applied manually, mostly to
> macros where type information is unavailable.
> 
> In a few places, a `pte_t *` or `pmd_t *` is actually a pointer to a PTE
> or PMDE value stored on the stack, not a pointer to a page table. In
> those cases, it is not appropriate to use the accessors, because the
> value is not globally visible, and any transformation from pXXp_get()
> has already been applied. Those places are marked by naming the pointer
> `ptentp` or `pmdvalp`, as opposed to `ptep` or `pmdp`.
> 
...

> 
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---
> This commit covers some of the same changes as an existing series from
> Anshuman Khandual[1]. Unlike that series, this commit is a purely
> mechanical conversion to demonstrate the RISC-V changes, so it does not
> insert local variables to avoid redundant calls to the accessors. A
> manual conversion like in that series could improve performance.

And this commit has the same problem as the series from Anshuman, see [2]:

Before the patch, as an exemple on powerpc/32 mm_find_pmd() was:

00001860 <mm_find_pmd>:
     1860:       80 63 00 18     lwz     r3,24(r3)
     1864:       54 84 65 3a     rlwinm  r4,r4,12,20,29
     1868:       7c 63 22 14     add     r3,r3,r4
     186c:       4e 80 00 20     blr

Now it is:

00001860 <mm_find_pmd>:
     1860:       81 23 00 18     lwz     r9,24(r3)
     1864:       54 84 65 3a     rlwinm  r4,r4,12,20,29
     1868:       7d 49 20 2e     lwzx    r10,r9,r4  <== Pointless read
     186c:       7c 69 22 14     add     r3,r9,r4
     1870:       7d 49 20 2e     lwzx    r10,r9,r4  <== Pointless read
     1874:       7d 29 20 2e     lwzx    r9,r9,r4   <== Pointless read
     1878:       4e 80 00 20     blr

To avoid it you need something like:

diff --git a/mm/rmap.c b/mm/rmap.c
index aafefc1d7955..0c61153f4ea9 100644
--- a/mm/rmap.c
+++ b/mm/rmap.c
@@ -819,15 +819,15 @@ pmd_t *mm_find_pmd(struct mm_struct *mm, unsigned 
long address)
  	pmd_t *pmd = NULL;

  	pgd = pgd_offset(mm, address);
-	if (!pgd_present(pgdp_get(pgd)))
+	if (!mm_p4d_folded(mm) && !pgd_present(pgdp_get(pgd)))
  		goto out;

  	p4d = p4d_offset(pgd, address);
-	if (!p4d_present(p4dp_get(p4d)))
+	if (!mm_pud_folded(mm) && !p4d_present(p4dp_get(p4d)))
  		goto out;

  	pud = pud_offset(p4d, address);
-	if (!pud_present(pudp_get(pud)))
+	if (!mm_pmd_folded(mm) && !pud_present(pudp_get(pud)))
  		goto out;

  	pmd = pmd_offset(pud, address);


[2] 
https://lore.kernel.org/linux-mm/f40ea8bf-0862-41a7-af19-70bfbd838568@csgroup.eu/

> 
> [1]: https://lore.kernel.org/linux-mm/20240917073117.1531207-1-anshuman.khandual@arm.com/
> 

Christophe

