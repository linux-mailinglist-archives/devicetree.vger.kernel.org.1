Return-Path: <devicetree+bounces-238296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7512CC59A7F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B8773B3B49
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AE130BF55;
	Thu, 13 Nov 2025 19:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oitpd3Zd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193C5257845;
	Thu, 13 Nov 2025 19:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763061103; cv=none; b=jkUlulYbcUcqD3hddvllZEk7F7rfov5xX0fx92rgrZTUTTrJAElKN5sHDA9nXM4ypVoqy9EEk6U204SQFoB+tYtZ+/pCJEQA+w/KS/+KYvLSl7rVCShHL8thLcKyMdBPHYXTEiobG6rFlFNsGWfKT9yWz5gTNoxXsJV8e5ClpY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763061103; c=relaxed/simple;
	bh=XPlHEOw1uPJQDazcMEywsx61CVGNF/VpjcTn8wMkkCo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L9BMk4y1l/H/Ln4AS05gm82sH0+qwzE4OFZ0xIB7bTr2mTnM93Q4pJQ/R+BIhBVLRr5Xfld8v1BFJQABm0aFxgAN+ZhJimgwjUUvP+XXzht2gzEznHYVG+6a+k7y9c/nfrenxsER9CdoOe6elA3RYCigsk4f5Et8YvfNKBOA/Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oitpd3Zd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ED57C4CEF7;
	Thu, 13 Nov 2025 19:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763061102;
	bh=XPlHEOw1uPJQDazcMEywsx61CVGNF/VpjcTn8wMkkCo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Oitpd3ZdicpxqLH3v5bMK5Dlw1A1IeaK/f+tMTgfSeNLv6snibjasCa8fSqZIGDFS
	 ilaoa+y3l2jQcb+qTJocZRgmlzNYJaDn3EAu9DGDHd/qKIxK0tmkyjhU2Txd2cqisv
	 aNhkpdWedumHkSV5hFInFMMbkv3zrJuy4L/pysJQMAwj2LyuHGxfPnws2ZY1hL6Cwa
	 V1Ic0ZewDvDwdHjuxn5G151CvWFhEP6vH3mkDkXNug+MjJ0B4RzaKCWG0UOQtkjWVF
	 lSaCMtY9s73rD13zCeObAXRd10IO48NtEimwc7JrnRCNLaeilmBAOmnUfHvaE+uupq
	 eH2Mloms0G7lA==
Message-ID: <ae87f1fe-b107-4589-bde5-21c9f3e8f816@kernel.org>
Date: Thu, 13 Nov 2025 20:11:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/22] mm: Move the fallback definitions of pXXp_get()
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
 <Liam.Howlett@oracle.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-6-samuel.holland@sifive.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <20251113014656.2605447-6-samuel.holland@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13.11.25 02:45, Samuel Holland wrote:
> Some platforms need to fix up the values when reading or writing page
> tables. Because of this, the accessors must always be used; it is not
> valid to simply dereference a pXX_t pointer.
> 
> Move these definitions up by a few lines, so they will be in scope
> everywhere that currently dereferences a pXX_t pointer.
> 
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---

Acked-by: David Hildenbrand (Red Hat) <david@kernel.org>

-- 
Cheers

David

