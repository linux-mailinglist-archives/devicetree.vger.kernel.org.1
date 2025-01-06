Return-Path: <devicetree+bounces-135911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 250E1A02FF5
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C182161DAE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 18:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC6B86359;
	Mon,  6 Jan 2025 18:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fQYj0UG+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA74149DF4
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 18:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736189474; cv=none; b=Q5TWMJzk/MQoyJRURg2pV5xYYj7kw7UfAu/WxHehJEn2dCHa6CNvw5fP2ri5iCKcW6t9UMfEfUMAzqN7/EGhOlaz3wRXVu+q+E3uGKfuMCmry4eoGJMrH+Oslk9W0qisAAhts4t+xjkrzgupLER7uELCO1ozlyOxyZMIEZwAE7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736189474; c=relaxed/simple;
	bh=5ojvMFQpa1twefDybnqj5z7xLC46CL5p9sy8XUIxCNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CbgcYc9tvl67SxIziecboPBlU6W3tKKwc9TinU2k4PSrFoKy4lWkfre+Jhc5xl3GRZA7flobL/jmJE3Z6AbVeN32QlPcq+NhJeD8Hhm2UL65IcxZqJBoCcGzHaBjThI1jaENTL6Gk00f3TUKloZQrgAeJgnBRshsXYQWD6cpwWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fQYj0UG+; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54021daa6cbso14899740e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 10:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736189471; x=1736794271; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EaQfHsLDsnfvGcNBRlbWsLfc9KqwWwjY11rs6ucaAkk=;
        b=fQYj0UG+jEYjSUdAT5OjCmLy3VFou+VFjw07XhrhtIp2cmdEJSQvqVIvxAsID9oSg1
         iOcGO5nfP/p+/wP2yhmiIUPayTwTjvRQDsnWqEwMNn7n+y22+5CRSWEg0lLUh3fwbSWl
         Opi5xvrOqQpUwJG+mniTOVTmCJ4UCSwJBjIMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736189471; x=1736794271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaQfHsLDsnfvGcNBRlbWsLfc9KqwWwjY11rs6ucaAkk=;
        b=hkX2zF4mxsgoctygTZmGN5atErstAxExhf7lmrKPmqFOR8hHFxRRXqGLxvp1Exrg+Q
         5mCkR5mlPlFbx0Apt1oy+r/Db6rA5AWJzlx+hcZmU6dPWVkwvToU6eWZat51rJ5cWkFg
         9/3JDeivCiJNJM50oUaJZUYUXUCH2zWwmrI6L5vqCBTwBB7MDoAnBI8N3g31Cn2nC+uA
         QX7i7VqiFyHTF8pOjQycJzlwt9YPszCrzY+SoGDfgT0nITgIRo3tsR8n0jaiClie3OIC
         aSu+Et13WAmqTVD2iytJeUvs6p00nxNZ0Ck1fJc/F0e7O9FN+Hv535q/JYl40A5A/H6q
         G7qA==
X-Forwarded-Encrypted: i=1; AJvYcCUvSE48HcRfGmEwrFE3bj5n6DCKOPEAKoQ0kzQyuBnjRJ5gvObapbtvsm+tbLmzsjJuJiQACx4ENUUS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+H+ysZhad8BYVBnV0GFNjXRT6BN1/4ek2R10VBFiIFHn/Ntkp
	AT2pzS57XoFfUuT1FQEW45lIVmV90hn7g7ccgg3bWe8Hp7TeFVd7z4rOk/HWng==
X-Gm-Gg: ASbGnctUc3A1apYUkhTPs3kcEqa8NxstQ5N57ZsCFa/XGNBtHNMhwjPGI8EEWPWswT3
	L3zQ4Hklc47098s7EOWEeUtZxwepyrq3d8e6Vler/SbPFqk9wNfRSGaW4G57hum6zdcfEYVyHd8
	t/lUf8wyOzJEqoKkdPgixjb5yZQFjMYWt4oqzIxsOEu9GtjJkgfEjyNSJwozMzJDtFN3hF749Ca
	x5JvVcu9+M7zseDpV6VzRpSe5dhHKA4cXDvJ+xOThPEf//kvmHaahdSO8s=
X-Google-Smtp-Source: AGHT+IFE/SlAbvZK2aLwBVBgEZktlXOxSsiXwjRwGpB0e2i8DlDaH8ekZr/csOmbHuIhRAM5BpWzCA==
X-Received: by 2002:a05:6512:3f20:b0:542:1ba3:984c with SMTP id 2adb3069b0e04-54229524515mr19599262e87.6.1736189471197;
        Mon, 06 Jan 2025 10:51:11 -0800 (PST)
Received: from google.com ([2a02:a31b:20c3:6680:f0a3:772a:c99:9bab])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422382fa6asm4967356e87.229.2025.01.06.10.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 10:51:10 -0800 (PST)
Date: Mon, 6 Jan 2025 19:51:04 +0100
From: Dmytro Maluka <dmaluka@chromium.org>
To: Christoph Hellwig <hch@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>, Rob Herring <robh@kernel.org>,
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
Message-ID: <Z3wmGIOG-ge63Hce@google.com>
References: <20241223181813.224446-1-dmaluka@chromium.org>
 <Z3u7f4goH5Hq545b@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z3u7f4goH5Hq545b@infradead.org>

On Mon, Jan 06, 2025 at 03:16:15AM -0800, Christoph Hellwig wrote:
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
> What are these "AVF-specific boot parameters"?

Let me quote my reply to Rob:

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

[1] https://android.googlesource.com/platform/packages/modules/Virtualization/+/refs/heads/main/docs/device_trees.md#dt-for-guests
[2] https://android.googlesource.com/platform/packages/modules/Virtualization/+/refs/heads/main/guest/pvmfw/#handover-abi

