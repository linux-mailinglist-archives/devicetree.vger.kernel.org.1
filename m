Return-Path: <devicetree+bounces-251802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F56CF73C7
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 09:12:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2D6930D2801
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 08:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA25430E84B;
	Tue,  6 Jan 2026 08:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzV+F+tS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9118430DED7;
	Tue,  6 Jan 2026 08:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767686752; cv=none; b=okrs56nVQ2qLrt3CVhisKHkVnuWKnSsjx7MTqT9+QFofJe839hC1E3YB5Sy4NYLBDt30tXXtQLL9gOCNF0q+d8nPgFIq5yYKm6bV0SW++fAMmgPiUU++/br+7xd9i5Z9q+kLDMvly8p6OvwwcdFdprxmqr5UB9Z0gU83MpWvXr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767686752; c=relaxed/simple;
	bh=MhlFTdwsDfjttLwAEC+WP59n2v37830ZfqL8GiFjHlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kma2hftNyaTXSh2hHc6HUsmqWM/tyH5gaxJBhdryXSnqY5HcVPuvLWU9knM5XmRe3ItpUYgq4BW7G0ne6nHyIw2O2o6AQC/OlmL0+eTH5ereTHSkYMbcfP+91slCF3W76KEU+nuhs+W1dl1i1KjNU3CBy3WdIJ3FpFREKYGA134=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzV+F+tS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90659C116C6;
	Tue,  6 Jan 2026 08:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767686752;
	bh=MhlFTdwsDfjttLwAEC+WP59n2v37830ZfqL8GiFjHlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lzV+F+tSLv113051K/7/MB6HLDp2meAlNfZy5efM/FPt8Q48hkpMyz9Oi2d3VEUvh
	 RFkeiW6Yo2OODKd9Tf+6TIA6tx/0BDEr8HcEWklZnKig8r8oeMjK5XVeBCiKAyJc8J
	 gLyAk4IgdxTrmcAgGWew3eELKzzpHVAIfSZq1MCXLlbVy25QhQe+ETgW0i+SbGoLrj
	 ZqXE2WB9Cyhk7eS0I/4+TEAaT3IYtf0sLgISDeJZOPBfhKBlhGsxiEqPsctkzRvb5p
	 5QIuFG9g/81zDjF6ZYW/0tf05f+Ad5FDAdGpBLii27U8QxhsoN2FQGbdO+BS9XxW+m
	 OqREHwjkEAYTQ==
Date: Tue, 6 Jan 2026 09:05:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <20260106-mammoth-of-wondrous-blizzard-e30d62@quoll>
References: <20251226141116.1379601-1-coxu@redhat.com>
 <20260106062231.448170-1-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260106062231.448170-1-coxu@redhat.com>

On Tue, Jan 06, 2026 at 02:22:30PM +0800, Coiby Xu wrote:
> CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
> device dump target by addressing two challenges [1],
>  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>    machines, a system administrator may not have a chance to enter the
>    password to decrypt the device in kdump initramfs after the 1st kernel
>    crashes
> 
>  - LUKS2 by default use the memory-hard Argon2 key derivation function
>    which is quite memory-consuming compared to the limited memory reserved
>    for kdump.
> 
> To also enable this feature for ARM64, we only need to add device tree
> property dmcryptkeys [2] as similar to elfcorehdr to pass the memory
> address of the stored info of dm-crypt keys to the kdump kernel.
> 
> [1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
> [2] https://github.com/devicetree-org/dt-schema/pull/181
> 
> Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
> Cc: Baoquan he <bhe@redhat.com>
> Cc: Dave Young <dyoung@redhat.com>
> Cc: Kairui Song <ryncsn@gmail.com>
> Cc: Pingfan Liu <kernelfans@gmail.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Coiby Xu <coxu@redhat.com>
> ---
> v2
> - Krzysztof
>   - Use imperative mood for commit message
>   - Add dt-schema ABI Documentation
> - Don't print dm-crypt keys address via pr_debug

Your changelog should explicitly document that this has external
dependency on dtschema pull request, so that maintainers know that.

Also, in the future:
Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets. See also:
https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830

Best regards,
Krzysztof


