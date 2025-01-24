Return-Path: <devicetree+bounces-140859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D52DA1BE28
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 22:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF97C168995
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 21:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFB21E7C3C;
	Fri, 24 Jan 2025 21:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7nwlIFh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004D51E7C2F;
	Fri, 24 Jan 2025 21:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737755834; cv=none; b=DIzCGestodV9YxQhWxncZn/6hzG8KUof1Htx/C3aH9fdb+rKcMBPUeGaLDtGP6w6g8GMT87xqM4mUpd6jImWH4XCL78BK12Pb8qtsLOqyf50sGznNZK1lTIWn0x4+k/ZSqQXiC6LaiU9Mb7Em60n8yH2KWeUQdGzHklNmjlvel0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737755834; c=relaxed/simple;
	bh=Q7uTIGXnF3+V6UGj2SMBqxcD5RmKtDs9tMyDUPoZADI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QeJrB7x1T86cYhwjnb783Y3pdhGM8uWqS8lE3PhmNTiY8axhGHUT0n6Ot9xGPYGM8NRqI0Q1Rl7FXuWUsq7RT33TBkZ5EmActDkaIIgl3IpcKbZ0fPZQ4KZM7tzzXl8+hx9MO9J4Xl2XedmitQDCsTyzQtXEvL6TUvb65GeT4tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7nwlIFh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45749C4CEDF;
	Fri, 24 Jan 2025 21:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737755833;
	bh=Q7uTIGXnF3+V6UGj2SMBqxcD5RmKtDs9tMyDUPoZADI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O7nwlIFhQzDHVN4GlbYBhabf9FYfEySS1lUn3cEWm059ZM0fWugC+LiiizVivxhuv
	 0+gOAcdgLudJtdXnleuoBRgEx6w6PhBgt3vgU4sqmzt/mqf9QJ17JnIWGnc+aI8T21
	 6qROb6XLTYNLtT31fwwIOy1JsuI1mtUPYuZyLCsCWsx8q72kdmtw5seox8czu7sdWR
	 K3ON8X7vxLDb7fwQs/OKJ7oxzMsCDkqymksw8PmcM2cPsx6SfsWJmPOIqGCEclWirg
	 UgZHlxyd1Z0Rn7LzgWkzCeyv6nT8Y1fyGMQq+mEvxBJ+jJwoqi4QoleK6DPf00JkuR
	 sXZYf0buiIU9Q==
Date: Fri, 24 Jan 2025 15:57:12 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Dmytro Maluka <dmaluka@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	=?utf-8?Q?Bart=C5=82omiej?= Grzesik <bgrzesik@google.com>,
	Shikha Panwar <shikhapanwar@google.com>, x86@kernel.org,
	devicetree@vger.kernel.org,
	=?iso-8859-1?Q?Pierre-Cl=E9ment?= Tosi <ptosi@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Grzegorz Jaszczyk <jaszczyk@google.com>,
	Keir Fraser <keirf@google.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Michal Mazurek <mazurekm@google.com>,
	Borislav Petkov <bp@alien8.de>, Will Deacon <will@kernel.org>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	Tomasz Nowicki <tnowicki@google.com>,
	Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org,
	Frank Rowand <frowand.list@gmail.com>,
	Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v2 2/2] of/fdt: Restore possibility to use both ACPI and
 FDT from bootloader
Message-ID: <173775582906.2508547.16287496501873966942.robh@kernel.org>
References: <20250105172741.3476758-1-dmaluka@chromium.org>
 <20250105172741.3476758-3-dmaluka@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250105172741.3476758-3-dmaluka@chromium.org>


On Sun, 05 Jan 2025 17:27:41 +0000, Dmytro Maluka wrote:
> There are cases when the bootloader provides information to the kernel
> in both ACPI and DTB, not interchangeably. One such use case is virtual
> machines in Android. When running on x86, the Android Virtualization
> Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i.e.
> the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in ACPI)
> but also passes various AVF-specific boot parameters in DTB. This allows
> reusing the same implementations of various AVF components on both
> arm64 and x86.
> 
> Commit 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
> removed the possibility to do that, since among other things
> it introduced forcing emptying the bootloader-provided DTB if ACPI is
> enabled (probably assuming that if ACPI is available, a DTB can only be
> useful for applying overlays to it afterwards, for testing purposes).
> 
> So restore this possibility. Instead of completely preventing using ACPI
> and DT together, rely on arch-specific setup code to prevent using both
> to set up the same things (see various acpi_disabled checks under arch/).
> 
> Fixes: 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
> Signed-off-by: Dmytro Maluka <dmaluka@chromium.org>
> ---
>  drivers/of/fdt.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 

Applied, thanks!


