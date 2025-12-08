Return-Path: <devicetree+bounces-245260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 89036CADCF2
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 18:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD2F3301738A
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 17:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB274279DB4;
	Mon,  8 Dec 2025 17:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRy2pZ8n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FCC2594BD;
	Mon,  8 Dec 2025 17:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765213708; cv=none; b=TGAe0p4g0GJflhB1pHXMEwF5G8EW79bhHTznw5+tueBntIIuBwrv9EPCz8meqTEeYBOz1cs5nVfiZge33t1XipAqlLoXOBJy5jEYcRGAMEZbB//qNrAfTFrA5qZ/XrQi6R3zYh5DqfAc2GMhobIUiAQsFDulP7njd84zwl+Y7zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765213708; c=relaxed/simple;
	bh=XuL/pB20YInvkttkmAkMKq7NAlNvxseizSt7WitdL7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tnG6WcXJdLCONsmPnv+gmMfbG0YskUlYHZqAgzKAlRi8aF1O1RIET86/PeNfzWtSnaAu/VyKmwf/4UZeFds4EJ6sdfppXGLtfexXb0OL55tpWzUYkq4Eih4NHdAyvHAEkdr0yK2lkQGZAk+/TPw1No+KtqSgAa2dTk8l1J2lvpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRy2pZ8n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9A27C4CEF1;
	Mon,  8 Dec 2025 17:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765213708;
	bh=XuL/pB20YInvkttkmAkMKq7NAlNvxseizSt7WitdL7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jRy2pZ8nuWUMfxylwrnxq1G1Gu3e7gJ9KkH3uacBJ9yU65CzDsEJrVWcvygoErML5
	 Yy4xrt4AkMoUFOSYy9TxL8yvrDLjgBfW4r4aQ/u2CdVii8e/36txalNwRawF4etQig
	 Z8di6Ch5QfW7GFWTUFEBv+x7zQ5toXDoAU+DoAjeQ4hqzSe0NJuhOn5/wOlkwY+9z1
	 zAlQgDMu6Qy1d8G4PqESSvj2LToFoT4YVSUKw+OGoxN1OsazTIL/DwMI3+hA+dHD8r
	 vYBr1QkyoSjhTM5sQttama+NWIhKgNGaLDf0AlylMQ/1TTPrnjO64DX04jO4ocbfDN
	 HaHSKnrEzQfjg==
Date: Mon, 8 Dec 2025 11:08:25 -0600
From: Rob Herring <robh@kernel.org>
To: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
Cc: saravanak@google.com, quic_obabatun@quicinc.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: kdump: Fix elfcorehdr overlap caused by reserved
 memory processing reorder
Message-ID: <20251208170825.GA2056564-robh@kernel.org>
References: <20251205015934.700016-1-jianpeng.chang.cn@windriver.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205015934.700016-1-jianpeng.chang.cn@windriver.com>

On Fri, Dec 05, 2025 at 09:59:34AM +0800, Jianpeng Chang wrote:
> Commit 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
> memory regions are processed") changed the processing order of reserved
> memory regions, causing elfcorehdr to overlap with dynamically allocated
> reserved memory regions during kdump kernel boot.
> 
> The issue occurs because:
> 1. kexec-tools allocates elfcorehdr in the last crashkernel reserved
>    memory region and passes it to the second kernel
> 2. The problematic commit moved dynamic reserved memory allocation
>    (like bman-fbpr) to occur during fdt_scan_reserved_mem(), before
>    elfcorehdr reservation in fdt_reserve_elfcorehdr()
> 3. bman-fbpr with 16MB alignment requirement can get allocated at
>    addresses that overlap with the elfcorehdr location
> 4. When fdt_reserve_elfcorehdr() tries to reserve elfcorehdr memory,
>    overlap detection identifies the conflict and skips reservation
> 5. kdump kernel fails with "Unable to handle kernel paging request"
>    because elfcorehdr memory is not properly reserved
> 
> The boot log:
> Before 8a6e02d0c00e:
>   OF: fdt: Reserving 1 KiB of memory at 0xf4fff000 for elfcorehdr
>   OF: reserved mem: 0xf3000000..0xf3ffffff bman-fbpr
> 
> After 8a6e02d0c00e:
>   OF: reserved mem: 0xf4000000..0xf4ffffff bman-fbpr
>   OF: fdt: elfcorehdr is overlapped
> 
> Fix this by ensuring elfcorehdr reservation occurs before dynamic
> reserved memory allocation.
> 
> Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
> Signed-off-by: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
> ---
> This BUG is manifested on NXP LS1043 platforms, while other
> platforms don't trigger this issue, it represents a general problem,
> and it's more safer to follow original reservation order.
> 
>  drivers/of/fdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

Rob

