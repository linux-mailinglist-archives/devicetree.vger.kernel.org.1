Return-Path: <devicetree+bounces-135131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A098F9FFD65
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D74691883093
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9713B16DEB3;
	Thu,  2 Jan 2025 18:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeFZQ0/E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCBC26AC3;
	Thu,  2 Jan 2025 18:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735841290; cv=none; b=qVx8o6M9xDClXCBTRbj26HtSIs3m0P6wqrmrYNvYLipjuaScFGiSvfClPcNSB4VANYP0ir7zhMshssCIRg4PiffK84JC1lwUS6pcDdW7UsFazwMkDJVW3VBjrOit0q48OSjG86uNOcea1xTbuvY5DaIDRtFVRWfKhX9dxvuxv/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735841290; c=relaxed/simple;
	bh=KrMQsYS6gIM/8jGNdxebD4Dcl2FQu4pzRjQl1XEjhy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PAdyyewx070ibS21zWx8UpfuouOmLdK5dnKyNlq9+evmNxfzEehlIc5l2iJfv8YXSPW9X93rYwg5UbOytS/RGeyeG68x8/QMvMQr/kP9APcPgexKn7Ywg/t71i4MPd4J4cEGQp+Tlc4BVjJXfB4bu+cTY8e2hyN84U2z2mUvZt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeFZQ0/E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B32EEC4CED0;
	Thu,  2 Jan 2025 18:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735841289;
	bh=KrMQsYS6gIM/8jGNdxebD4Dcl2FQu4pzRjQl1XEjhy8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oeFZQ0/E3uptL0R8dNZtI1ZMJLP7ylVSVJmp/XeyIi2nHqztKi4YE6xaYEQt6WXzS
	 mRRVnOxcKLF2UjE0IBcSg9I83JF7CVjxOqESGnRh4SOxdTWVPYpQuwjjTAz0XX0SGd
	 gNQKN/miYgH0XBNOZoWFQW6FB2CraOjRDKVtamwQgfRLk/ltAiQ9yu+GjFDX7qdKSd
	 9E0LqtwI2Djake4noylbJNVU5n6QBstNQMuCJXBtnLhtSO9TrsVQBz2uGycYwGwDms
	 3lGtxeDhperYpV06FSeDQ2lQSOdf/wN9TFdHLHWOyQkQCL0J4MG40dqLiTHNq3Xynn
	 PeLAnfJUR55oA==
Date: Thu, 2 Jan 2025 12:08:07 -0600
From: Rob Herring <robh@kernel.org>
To: Dmytro Maluka <dmaluka@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Saravana Kannan <saravanak@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	"open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] x86/of: Restore possibility to use both ACPI and FDT
 from bootloader
Message-ID: <20250102180807.GA73778-robh@kernel.org>
References: <20241223181813.224446-1-dmaluka@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223181813.224446-1-dmaluka@chromium.org>

On Mon, Dec 23, 2024 at 06:18:03PM +0000, Dmytro Maluka wrote:
> There are cases when the bootloader provides information to the kernel
> in both ACPI and DTB, not interchangeably. One such use case is virtual
> machines in Android. When running on x86, the Android Virtualization
> Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i.e.
> the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in ACPI)
> but also passes various AVF-specific boot parameters in DTB. This allows
> reusing the same implementations of various AVF components on both
> arm64 and x86.

Anyone booting Arm ACPI based systems with AVF?

Where's this AVF binding documented? 

> Commit 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
> removed the possibility to do that, since among other things
> it introduced forcing emptying the bootloader-provided DTB if ACPI is
> enabled (probably assuming that if ACPI is available, a DTB can only be
> useful for applying overlays to it afterwards, for testing purposes).
> 
> So restore this possibility. At the same time, since the aforementioned
> recently introduced restriction is actually useful for preventing
> conflicts between ACPI and DT for LAPIC/IOAPIC/HPET setup, don't remove
> this restriction completely but relax it: unflatten the bootloader
> supplied DTB but don't try to use it for SMP setup (i.e. don't override
> the .parse_smp_cfg callback) if ACPI is enabled. Precisely, right now
> this prevents at least:
> 
> - incorrectly calling register_lapic_address(APIC_DEFAULT_PHYS_BASE)
>   after the LAPIC was already successfully enumerated via ACPI, causing
>   noisy kernel warnings and probably potential real issues as well
> 
> - failed IOAPIC setup in the case when IOAPIC is enumerated via mptable
>   instead of ACPI (e.g. with acpi=noirq), due to
>   mpparse_parse_smp_config() overridden by x86_dtb_parse_smp_config()

It would be better if we explicitly opt'ed into "things we want to get 
from DT" rather than allowing anything except what we check for. There's 
a strong desire at least for arm64 to prevent systems from using both 
at the same time. There are growing usecases for doing just that, but I 
think we need to have some control or restrictions in place to define 
what we support in the kernel.

> Fixes: 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
> Signed-off-by: Dmytro Maluka <dmaluka@chromium.org>
> ---
>  arch/x86/kernel/devicetree.c |  3 ++-
>  drivers/of/fdt.c             | 10 +---------
>  2 files changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
> index 59d23cdf4ed0..dd8748c45529 100644
> --- a/arch/x86/kernel/devicetree.c
> +++ b/arch/x86/kernel/devicetree.c
> @@ -2,6 +2,7 @@
>  /*
>   * Architecture specific OF callbacks.
>   */
> +#include <linux/acpi.h>
>  #include <linux/export.h>
>  #include <linux/io.h>
>  #include <linux/interrupt.h>
> @@ -313,6 +314,6 @@ void __init x86_flattree_get_config(void)
>  	if (initial_dtb)
>  		early_memunmap(dt, map_len);
>  #endif
> -	if (of_have_populated_dt())
> +	if (acpi_disabled && of_have_populated_dt())
>  		x86_init.mpparse.parse_smp_cfg = x86_dtb_parse_smp_config;

I would make this a separate patch. Then it can be backported to kernel 
versions without 7b937cc243e5. And then Thomas can take it and I can 
take the DT part.

>  }

