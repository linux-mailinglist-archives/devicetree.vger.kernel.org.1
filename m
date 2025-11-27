Return-Path: <devicetree+bounces-242843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79203C8FC23
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 18:47:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA4FC3AC48C
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35842F39D1;
	Thu, 27 Nov 2025 17:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEQQhc+t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96EF149C6F;
	Thu, 27 Nov 2025 17:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764265667; cv=none; b=Gf9LyEZpfYou3rE2K8fm46lf6M3RSgILRoxa+npfJm4eiiNCNaK4FfSXzP9kZGwhcht4iCdmSn0vaWN9h/rijKsCINErVmpyB7uCkAsTo34znZJoiKy/MoIkJw7fxE/z23sUtH0eg0ZVOW8gcVCQBYQl99t+L/reJ/A0w2Q4PXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764265667; c=relaxed/simple;
	bh=Mlj7IZZ9H7pQFN5atJKwwNiI0cnR56p2vYQ4LsbFBWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ry8qSeUpqH7GDZQyNaMURNjyki1MafYuJ1cZ2KrB07ix+jfgu+BS0rkOGlZixkw9EWU4qJuINUXrGwlTRkzjEOfIvjyFqB+fQ4b+qyHRfrox+kvNclTQXHJ8FmYCGfto0U8X2k1UbBq0hIvHsz50qNzYn+xkMjqb13SZ6pXEX5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEQQhc+t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50BA4C4CEF8;
	Thu, 27 Nov 2025 17:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764265667;
	bh=Mlj7IZZ9H7pQFN5atJKwwNiI0cnR56p2vYQ4LsbFBWg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iEQQhc+ttHIHJkNB4yomtmyZLO6gdTFX5PHlESo0TWPWQL5MlnAywIoAm1AvBiW/5
	 nrB+DeAsOtyZPTc/P2z5EmWv6f4s9q9xTRzwyPn5V/xzzWFwxMzlrHThBl8AUy8ICg
	 9ZrBpeodUN5Q6lvikvYgjXz3KzIHK3eoiv8A6LXSMSl7HWJqvzOkTJQB7M60mpnosl
	 DYWSlcTeWY/75NXidb/E0FWSvZ/AsC6BhYZBodRJJi9JU+NWOQl5appR4AQ3DePDII
	 EI4DFC0FWXGhMp6Jhe07jPc/d9LGLcY1XSCmbC9JIngzm2WjeHo45t7mTu4YBHJbcs
	 MyQiKQ7x3LlsQ==
Message-ID: <c2597d43-d909-4259-bb5b-9294e4069385@kernel.org>
Date: Thu, 27 Nov 2025 18:47:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/22] mm: Allow page table accessors to be
 non-idempotent
To: Ryan Roberts <ryan.roberts@arm.com>,
 Samuel Holland <samuel.holland@sifive.com>,
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
 <Liam.Howlett@oracle.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-9-samuel.holland@sifive.com>
 <fbfef7fc-4030-462b-b514-498eea6620aa@arm.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <fbfef7fc-4030-462b-b514-498eea6620aa@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/27/25 17:57, Ryan Roberts wrote:
> On 13/11/2025 01:45, Samuel Holland wrote:
>> Currently, some functions such as pte_offset_map() are passed both
>> pointers to hardware page tables, and pointers to previously-read PMD
>> entries on the stack. To ensure correctness in the first case, these
>> functions must use the page table accessor function (pmdp_get()) to
>> dereference the supplied pointer. However, this means pmdp_get() is
>> called twice in the second case. This double call must be avoided if
>> pmdp_get() applies some non-idempotent transformation to the value.
>>
>> Avoid the double transformation by calling set_pmd() on the stack
>> variables where necessary to keep set_pmd()/pmdp_get() calls balanced.
> 
> I don't think this is a good solution.

Agreed,

	set_pmd(&pmd, pmd);

is rather horrible.

-- 
Cheers

David

