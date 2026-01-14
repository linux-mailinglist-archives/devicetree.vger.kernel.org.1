Return-Path: <devicetree+bounces-255217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B72E3D21471
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 312D0300FD67
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8001E3587AF;
	Wed, 14 Jan 2026 21:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQlP4ogz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C11D339719;
	Wed, 14 Jan 2026 21:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768424941; cv=none; b=MVHB7I3uvYe1TflcsHK1yWB04CyfkfbPHhbeRtdpuJBiAqHrWKjmNISFC3ql3M8aUSeCbN516OkQk0HvUPS/se8MFShpvheu2zVOJJci9NrgRIs4wp2cLVbRoRGM1jKjC+/18o4TUmPI5+z+KmlEAF4qhaYfBrH09oQ2phHD/q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768424941; c=relaxed/simple;
	bh=WY2v7TTkVAMIoJ6VgjyCIHMaXfZc57Ip7xvQxHTv4p8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZPhFG7z9Q+9m0ETSIpB1nhevmUgxZRinPdWix40eXGx46fHqDWB/SOv3VftD8vDybl0alI1DeYxG1bHAx5WCXum6JK8oRYQWXXSKTWn1ETGr129vkBxQCBtfKZarmcoKJIKrjOEEv/AnxnyEEmv2rISFUto/KsJ6DLxYem5bcOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQlP4ogz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F8A1C4CEF7;
	Wed, 14 Jan 2026 21:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768424940;
	bh=WY2v7TTkVAMIoJ6VgjyCIHMaXfZc57Ip7xvQxHTv4p8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MQlP4ogzmIg+JA/pCvyHUUO5wvv/C5zQHlnBqXHSLlASijL8pmOpQxN6Mp9g8yjZF
	 JSbWr/fkUFCssMc/dFWx53WUUKe4zHJ6ZYkSjNd6r1yX3mp12SLuUxgl9ozv63ZnlZ
	 jl3raBW0MaXvD6R6YWE58deFr8RmXTmk8TGzXsH0Sdi35Ya/1ZFr2ubX1tizPnxouv
	 dvucGK7xwkmHYbzM9vwJrQRTq/Y/S9jRrITCBXqvHPHWZJixTXbAVxA08Spk1KIgSe
	 lOZgKwHm4frxFppMK3Q/ZKKdz7ijGrqpXG3ah1bIYM6EXceqoiApHVgyMomBL50l0S
	 HZqj6PBTuoFBQ==
Date: Wed, 14 Jan 2026 15:08:59 -0600
From: Rob Herring <robh@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>,
	Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <20260114210859.GA3197242-robh@kernel.org>
References: <20251226141116.1379601-1-coxu@redhat.com>
 <CAL_JsqLEsUV34tMZWSMc6w-xDV=M0JpOmS95TxrtbbBMRoD3Jw@mail.gmail.com>
 <aV49pPV3OViTDe8c@Rk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aV49pPV3OViTDe8c@Rk>

On Wed, Jan 07, 2026 at 07:39:24PM +0800, Coiby Xu wrote:
> On Tue, Jan 06, 2026 at 09:44:37AM -0600, Rob Herring wrote:
> > On Fri, Dec 26, 2025 at 8:11 AM Coiby Xu <coxu@redhat.com> wrote:
> > > 
> > > Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds
> > > LUKS-encrypted device dump target support to ARM64 by addressing two
> > > challenges [1],
> > >  - Kdump kernel may not be able to decrypt the LUKS partition. For some
> > >    machines, a system administrator may not have a chance to enter the
> > >    password to decrypt the device in kdump initramfs after the 1st kernel
> > >    crashes
> > > 
> > >  - LUKS2 by default use the memory-hard Argon2 key derivation function
> > >    which is quite memory-consuming compared to the limited memory reserved
> > >    for kdump.
> > > 
> > > 1st kernel will add device tree property dmcryptkeys as similar to
> > > elfcorehdr to pass the memory address of the stored info of dm-crypt
> > > keys to the kdump kernel.
> > 
> > Is there not any security issue with putting the key into the DT? The
> > DT is provided to userspace. There's provisions already to not expose
> > "security-*" properties to userspace (see __of_add_property_sysfs).
> > Though I think that has a hole in that the FDT is also provided as-is.
> > However, I don't even know who or what uses these properties.
> > 
> > Rob
> 
> Hi Rob,
> 
> Thanks for raising the concern! If I understand DT correctly, this
> property is only accessible to the kexec'ed kdump kernel. A new DT is
> allocated and set up by of_kexec_alloc_and_setup_fdt. Btw, to be
> precise, it's putting the memory address where the key is stored but
> not the key itself into DT. The key is stored in the memory exclusively
> reserved for kdump. For more info on by who and how this property will
> used, I've created a dt-schema pull request as suggested by Krzysztof,
> https://github.com/devicetree-org/dt-schema/pull/181

Okay, that's a bit less sensitive. That still could expose a memory 
address to user space which has generally been locked down in recent 
years. Though I'm not sure we'd consider addresses of blobs passed by 
kexec sensitive or secure.

> 
> And yes, there is no need for even userspace of the kdump kernel to
> access it. So this idea of "security-*" properties/__of_add_property_sysfs
> seems desirable. Thanks for bringing it up! I'll give it a try.

Since it is just the memory address, kdump just moving the key would be 
sufficient. Or the property can be removed early on. I think we do that 
with kaslr seed IIRC.

Rob

