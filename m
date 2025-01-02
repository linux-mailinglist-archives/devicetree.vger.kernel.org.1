Return-Path: <devicetree+bounces-135209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58102A00122
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 23:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FFF53A39D9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 22:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED281BC9F6;
	Thu,  2 Jan 2025 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MzGUIbPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E451AB507
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 22:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735856314; cv=none; b=RsB4VXwKZe683rn1m4fuQdFQBK27aNMi3KD30vXewQgVrhLDoQiQ+UV7eSTv/eu/Q1zMeE0orwlklIKc01Trbxo4ivmlKDjc8cJjW0PO2En+zX4nKXOKJOBq/qR0WDJn/bgnoEBBW3ot/0ggmQQ0zEnTIa+7bv0OGZGVjkabUxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735856314; c=relaxed/simple;
	bh=qqpjOy5IlV+ONDfgYFPvMPGJh+Vt13QLfVkIS1rPCbc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bUbR4iyjGEJ8D8Zg3Pfift/OmGVduT9/Lf3uz/xGdx+/F1L8bjeKmI2chl6U7aruw+g9857bslIq5fGWo69dThK1Pthzwqgl/QKs7+MEhQE0H33MJVprnbt1QWvdBS5YGybX6QCWN/3L3ns0uTxo0oiru6kDOTvXUdNRxna+bTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MzGUIbPA; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d4e2aa7ea9so21483496a12.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 14:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1735856310; x=1736461110; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZyuuNQiDU1JAc9HQJGLLBFhsg+fChTK/ttGF2lyYwdM=;
        b=MzGUIbPAVFkh0cUq/7rQy73S6Jm1VMeeGnhiTJpNKIUSKwq3wwcg2yPmMX9Aiwv/sJ
         9J+NryUMrEHBwLsEzvBjujBW5fLYKPKO6ZZBk6U7iZwUTnoHVmmiizSPNBASLZ/L/0x0
         ywWT4PCdhxgtZDofXuUU1AyzKWUuhqoDzh8DA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735856310; x=1736461110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZyuuNQiDU1JAc9HQJGLLBFhsg+fChTK/ttGF2lyYwdM=;
        b=cc2PI//kXi4YFIZzOgGX/yUTnHeguq35fYs7O4mjG4GA3H6FExXGCUpBY7hRJgXmWG
         /kCeg0GxElbkw8nj2zBCO9NY5yKKveiPwAhfNrduajSwaCCB96p95xYAn98LajRDQZLN
         CvBDOMckDQyUbkUqOpJBfnL7Pab/UycqoEd5QQhmo+8ylNXeljkjeBDEQqUlB1ZFNCG5
         nGL9nH+53woRzLg5yM5w8C2yraslVSqb4L4FY4tWzP0PLEJ0sKewu0PqkUZAQkjBYuxY
         VDKIOQZ/dc8iEZEAqhrawbqdfoJ/3yWgSjF96hoIb8M9FMe+H5y67fZ2dL2Z1z/5smcL
         GF7g==
X-Forwarded-Encrypted: i=1; AJvYcCVGc63OM7cGXrd+VvTgbHPJdSp4BFDoscodk+xqn3Bs2JGHnOBx2bolf18GvSKxOEctXfKfPZRAGoiI@vger.kernel.org
X-Gm-Message-State: AOJu0YzF0AkvpHxbn0vFAGI5bLKxp50ZguiaxnwVW9npRXf+r6NpHSiO
	CJ40VKZ/v5YoHtro+rri9cDGRi8EkmBDNfAeWTiV2xHy2HRLvXopyy4sqn9qDw==
X-Gm-Gg: ASbGnct7Wxw8rUFlNLhaf8q5KJHBFenqno3lPj72Ga21i4nj3KkuONz+PfQFn22sKPe
	ybwmMtVOEbOuFySNsP13YnVwjzRlDVa8J8pOmer2+ws4u3AYKlNB+3Jy+07UvcxrMGZpPmvImji
	ZRQZOQZh5+2kon0GKSG83AVSQuBki38c0ZXCmUhjszyzn5de+Ibgyj/r8u8SaC0QR501674ZCDl
	u7EFxsLkAiWIgZvLAx+UsLIhuJkhPkqsNNKVlvQbahWM5s9Pbk7MB72OyJc
X-Google-Smtp-Source: AGHT+IE5McLh1bDH3Va6O0lbAcJme1AwO5iXDZ8C5qZ6fYggu95MkhA899fhudNPFXc1CvgJcxYf1w==
X-Received: by 2002:a05:6402:270d:b0:5d0:bcdd:ffa8 with SMTP id 4fb4d7f45d1cf-5d81dd83b92mr40404762a12.1.1735856310104;
        Thu, 02 Jan 2025 14:18:30 -0800 (PST)
Received: from google.com ([2a02:a31b:20c3:6680:363b:3cb9:4804:c8cd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a71fsm18692830a12.18.2025.01.02.14.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 14:18:29 -0800 (PST)
Date: Thu, 2 Jan 2025 23:18:23 +0100
From: Dmytro Maluka <dmaluka@chromium.org>
To: Rob Herring <robh@kernel.org>
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
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>,
	=?utf-8?Q?Pierre-Cl=C3=A9ment?= Tosi <ptosi@google.com>,
	Shikha Panwar <shikhapanwar@google.com>,
	Will Deacon <will@kernel.org>, Keir Fraser <keirf@google.com>,
	Michal Mazurek <mazurekm@google.com>,
	=?utf-8?Q?Bart=C5=82omiej?= Grzesik <bgrzesik@google.com>,
	Tomasz Nowicki <tnowicki@google.com>,
	Grzegorz Jaszczyk <jaszczyk@google.com>
Subject: Re: [PATCH] x86/of: Restore possibility to use both ACPI and FDT
 from bootloader
Message-ID: <Z3cQr0YW0IU8VPzy@google.com>
References: <20241223181813.224446-1-dmaluka@chromium.org>
 <20250102180807.GA73778-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250102180807.GA73778-robh@kernel.org>

On Thu, Jan 02, 2025 at 12:08:07PM -0600, Rob Herring wrote:
> On Mon, Dec 23, 2024 at 06:18:03PM +0000, Dmytro Maluka wrote:
> > There are cases when the bootloader provides information to the kernel
> > in both ACPI and DTB, not interchangeably. One such use case is virtual
> > machines in Android. When running on x86, the Android Virtualization
> > Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i.e.
> > the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in ACPI)
> > but also passes various AVF-specific boot parameters in DTB. This allows
> > reusing the same implementations of various AVF components on both
> > arm64 and x86.
> 
> Anyone booting Arm ACPI based systems with AVF?

No, on Arm side AVF is DT only.

> Where's this AVF binding documented? 

The strictly AVF-specific properties are described in [1]. When it comes
to Linux guests, actually AFAIK currently all those properties are
consumed by the guest userspace, not the guest kernel, so the role of
the kernel is in fact just to pass them over to the userspace via sysfs.

Besides that, one important DT binding used by AVF's Linux guest
kernels, not userspace, is google,open-dice documented in
Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml.
[2] describes how it is used by the protected VM firmware (pvmfw) to
securely boot protected VMs.

Cc'ing some AVF folks to keep me honest.

(AVF used to support protected VMs on arm64 only, but now we are trying
to make them work on x86. So, taking google,open-dice as an example, we
could add an ACPI binding to the open-dice driver, however bloating
pvmfw with AML support is a no go, so we want to keep passing it via DT
on x86 as well.)

> > Commit 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
> > removed the possibility to do that, since among other things
> > it introduced forcing emptying the bootloader-provided DTB if ACPI is
> > enabled (probably assuming that if ACPI is available, a DTB can only be
> > useful for applying overlays to it afterwards, for testing purposes).
> > 
> > So restore this possibility. At the same time, since the aforementioned
> > recently introduced restriction is actually useful for preventing
> > conflicts between ACPI and DT for LAPIC/IOAPIC/HPET setup, don't remove
> > this restriction completely but relax it: unflatten the bootloader
> > supplied DTB but don't try to use it for SMP setup (i.e. don't override
> > the .parse_smp_cfg callback) if ACPI is enabled. Precisely, right now
> > this prevents at least:
> > 
> > - incorrectly calling register_lapic_address(APIC_DEFAULT_PHYS_BASE)
> >   after the LAPIC was already successfully enumerated via ACPI, causing
> >   noisy kernel warnings and probably potential real issues as well
> > 
> > - failed IOAPIC setup in the case when IOAPIC is enumerated via mptable
> >   instead of ACPI (e.g. with acpi=noirq), due to
> >   mpparse_parse_smp_config() overridden by x86_dtb_parse_smp_config()
> 
> It would be better if we explicitly opt'ed into "things we want to get 
> from DT" rather than allowing anything except what we check for. There's 
> a strong desire at least for arm64 to prevent systems from using both 
> at the same time. There are growing usecases for doing just that, but I 
> think we need to have some control or restrictions in place to define 
> what we support in the kernel.

When it comes to arm64, AFAICS it already enforces this mutual
exclusion (in setup_arch()):

	if (acpi_disabled)
		unflatten_device_tree();

For Android use cases it is fine (Android doesn't use ACPI on Arm,
not for VMs anyway), so this patch doesn't change it.

> > Fixes: 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
> > Signed-off-by: Dmytro Maluka <dmaluka@chromium.org>
> > ---
> >  arch/x86/kernel/devicetree.c |  3 ++-
> >  drivers/of/fdt.c             | 10 +---------
> >  2 files changed, 3 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
> > index 59d23cdf4ed0..dd8748c45529 100644
> > --- a/arch/x86/kernel/devicetree.c
> > +++ b/arch/x86/kernel/devicetree.c
> > @@ -2,6 +2,7 @@
> >  /*
> >   * Architecture specific OF callbacks.
> >   */
> > +#include <linux/acpi.h>
> >  #include <linux/export.h>
> >  #include <linux/io.h>
> >  #include <linux/interrupt.h>
> > @@ -313,6 +314,6 @@ void __init x86_flattree_get_config(void)
> >  	if (initial_dtb)
> >  		early_memunmap(dt, map_len);
> >  #endif
> > -	if (of_have_populated_dt())
> > +	if (acpi_disabled && of_have_populated_dt())
> >  		x86_init.mpparse.parse_smp_cfg = x86_dtb_parse_smp_config;
> 
> I would make this a separate patch. Then it can be backported to kernel 
> versions without 7b937cc243e5. And then Thomas can take it and I can 
> take the DT part.

Sure, I can do that.

> 
> >  }

[1] https://android.googlesource.com/platform/packages/modules/Virtualization/+/refs/heads/main/docs/device_trees.md#dt-for-guests
[2] https://android.googlesource.com/platform/packages/modules/Virtualization/+/refs/heads/main/guest/pvmfw/#handover-abi

