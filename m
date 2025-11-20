Return-Path: <devicetree+bounces-240734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 528BCC749A8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6F2E64E4073
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14041DF72C;
	Thu, 20 Nov 2025 14:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJrRbU0t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E561DE8BB;
	Thu, 20 Nov 2025 14:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763649136; cv=none; b=iFhlFZ085CHjtDPlVpzoqYE12JpHEeIzaXU9zMNp3SjdtW5UbNaOPVq27cbeqpsAiW2KOsRR/zlEwIyTjZRQgc5TdTTfaFRJU0TcvXZRUK6wDKAo7BFAnRzyWe1qJv6DxnfnufSzzcGnNpBXwOxYC5CyoNhv9aSWwhmAUBlzP9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763649136; c=relaxed/simple;
	bh=U8zbGG01z7p4Cuy4VpxIsRZ+5mJPuvKfvCJwdqaAoLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcBboTrd2QS5wXHWjxSnXvSljebK+C/ZnDV9JsMs+sZXZoxs8pd3keyXlRfC/HtSa7QA84+vxH4cQ4BNfriviT9b4OwJ7oTAnGi9HJR8E0qdm2Bruqu5eTYN/6KcqmMF6g+T++DdnPRW/ULHOLcAGfPXKKn3/t5rDIrlwm9+fFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJrRbU0t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5C7FC4CEF1;
	Thu, 20 Nov 2025 14:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763649136;
	bh=U8zbGG01z7p4Cuy4VpxIsRZ+5mJPuvKfvCJwdqaAoLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TJrRbU0tQFCz02hwsFt/y+TgevZFen7yZ/1M5cA0K5V69CScW20+Y+ulZpOjylKd2
	 xtqxFbfTO74ZLbAbmbQdjZC5tb5P/LQML6NxB64qadgNKMydTvzzHDtzPMfXIgSxSf
	 rXV/HhIedrRMbYemHFtr/EQ/BSBzK+T30YJNo2NVnyJc/RZO7G5vwGPL+kPUyvACkQ
	 5j9moIdnL4bf7XEECWmlBL6MSTOz+Y+fEyBsrtX14oFHXW3mu8EVTKq1qbIiW3Yd7J
	 zvoMijfL3Y+N9ByKs43x2W1BkEE7oPFvGWo35WK8MxmFPAnoTMFhpO7C3josJ+Yo0F
	 FPNvN9Z+ZngGw==
Date: Thu, 20 Nov 2025 08:32:14 -0600
From: Rob Herring <robh@kernel.org>
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>, Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Geoff Levand <geoff@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/8] of/fdt: Some bug fixes and cleanups
Message-ID: <20251120143214.GA3608321-robh@kernel.org>
References: <20251115134753.179931-1-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251115134753.179931-1-yuntao.wang@linux.dev>

On Sat, Nov 15, 2025 at 09:47:45PM +0800, Yuntao Wang wrote:
> This patch series fixes several bugs related to dt_root_addr_cells and
> dt_root_size_cells, and performs some cleanup.
> 
> Changelog:
> 
> v2 -> v3:
>   - Use of_flat_dt_ instead of of_fdt_ as the prefix for the newly added
>     helper functions
> 
>   - Improve the internal logic of of_flat_dt_get_addr_size_prop() and
>     of_flat_dt_get_addr_size()
> 
>   - Introduce the entry_index parameter for of_flat_dt_read_addr_size()
> 
>   - Fix some warnings and coding-style issues
> 
> v1 -> v2:
>   - Consolidate duplicate code into helper functions
> 
> Links to previous patch series:
> 
> v2: https://lore.kernel.org/linux-devicetree/20251113155104.226617-1-yuntao.wang@linux.dev/
> v1: https://lore.kernel.org/linux-devicetree/20251112143520.233870-1-yuntao.wang@linux.dev/
> 
> Yuntao Wang (8):
>   of/fdt: Consolidate duplicate code into helper functions
>   of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
>   of/fdt: Fix the len check in
>     early_init_dt_check_for_usable_mem_range()
>   of/fdt: Fix incorrect use of dt_root_addr_cells in
>     early_init_dt_check_kho()
>   of/fdt: Simplify the logic of early_init_dt_scan_memory()
>   of/reserved_mem: Simplify the logic of __reserved_mem_reserve_reg()
>   of/reserved_mem: Simplify the logic of
>     fdt_scan_reserved_mem_reg_nodes()
>   of/reserved_mem: Simplify the logic of __reserved_mem_alloc_size()

I've applied the series. I was going to send the first 4 for 6.18, 
but since we're pretty close to the merge window, I decided to 
keep it all together for 6.19.

Thanks for all the clean-ups.

Rob

