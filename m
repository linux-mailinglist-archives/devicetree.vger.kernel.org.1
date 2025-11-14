Return-Path: <devicetree+bounces-238515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA22C5BE2D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9979F4E9477
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E5629ACFD;
	Fri, 14 Nov 2025 08:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI40eeQv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E2726CE25;
	Fri, 14 Nov 2025 08:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763107473; cv=none; b=Fpsn2JlRQe59RnhanKvpDFKQmA/ZZipcpRlIDxmD3P13ca8l+8EZnVNa1RWg+2DrgulBe0W86fuVdVT3deT/XLTKZh6ylSrzaIKM5ObpYUQHd6IIXkvhF+mTFC75R/MpqIHUs4h095ZCZ6uSKka8HSRc4+jT6TGsmI8QKkKp3JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763107473; c=relaxed/simple;
	bh=qZW5+EEfmCEz+6blA54yX9DO8128VYnR0kuEXdzm3LI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dXEWbCuRaAFspvaI2J4Ks/+FWPNQGra5R3rCoWjVHliuaQmmaxW6NtPbV+SzRvnyNY/ugU/OC0MgUm+HkhFGDOu7J6nVqV39vkHNeud3faJ+GBbISF85P7SBZfA3Z/mpYahviPOfwM5/75SqQ6BxzJ8lkpNKgcl+46P3HZ/FGZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI40eeQv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61212C4CEF1;
	Fri, 14 Nov 2025 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763107472;
	bh=qZW5+EEfmCEz+6blA54yX9DO8128VYnR0kuEXdzm3LI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WI40eeQvqf2en0Kz2r519U2HxQ0ynX75tpPD/ncx3jDRGylNeuuC8Ozf3i+oQcuWT
	 W2XxNHNQVmd17qqR2pNhRkWPAyGlw3UDCbzphxk+MRP1iwc4uY2ts2HXSIssuGh0Lx
	 p8lOyXVPwMg+99AWe4UqtE82MUJ5my0VquIE1c9vubQaBBCCwRRYJL399OsDgw3FXl
	 j2MT4PggrRglNWMfx7SqJHZJsQunkno1PAZYu8T8AvEF2oKBC/B205FCsSHrHL/WRN
	 dCjrGWpeDtwb5UiZGmQjHeBMrPlDks7KfuPG/Peo/YUlOw1aGTOJ7ZvuuBJ+tcAJz7
	 6tCHqPoqxNAXg==
Date: Fri, 14 Nov 2025 09:04:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Baoquan He <bhe@redhat.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Geoff Levand <geoff@infradead.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Changyuan Lyu <changyuanl@google.com>, 
	Alexander Graf <graf@amazon.com>, "Mike Rapoport (Microsoft)" <rppt@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] of/fdt: Some bug fixes and cleanups
Message-ID: <20251114-watchful-sceptical-jerboa-a19d5c@kuoka>
References: <20251113155104.226617-1-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251113155104.226617-1-yuntao.wang@linux.dev>

On Thu, Nov 13, 2025 at 11:50:57PM +0800, Yuntao Wang wrote:
> This patch series fixes several bugs related to dt_root_addr_cells and
> dt_root_size_cells, and performs some cleanup.
> 
> Changelog:
> 
> v1: Consolidate duplicate code into helper functions

Your patchset has multiple checkpatch warnings and errors. In multiple
patches.

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Please run standard kernel tools for static analysis, like coccinelle,
smatch and sparse, and fix reported warnings. Also please check for
warnings when building with W=1 for gcc and clang. Most of these
commands (checks or W=1 build) can build specific targets, like some
directory, to narrow the scope to only your code. The code here looks
like it needs a fix. Feel free to get in touch if the warning is not
clear.

Best regards,
Krzysztof


