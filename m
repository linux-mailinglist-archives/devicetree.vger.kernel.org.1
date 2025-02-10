Return-Path: <devicetree+bounces-144919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A37A2FB26
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBB903A22A5
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4F91C07F3;
	Mon, 10 Feb 2025 20:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b="AzQ/E1zV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9C61BD9F8
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739221120; cv=none; b=SWSsAhCNeM/lpBq5RFxpVzyffRbf4KDKO762k5YmkMhZR3E2LdHB8k4Wi5DTnFPIkKgPPwvJYHOxOIdnB1CZpNH5uSMS94UL7rf+6TJLJxUGmwp7xKPXWnQrWNY/kMUPA04haGkcoC3oAdu8g3K+rpoDdfA6+XG/PXz/YGs1t2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739221120; c=relaxed/simple;
	bh=11XGu+b0HW/rRG+UoKPdLv3p1YZWVhTMtobxaORYQf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D2xAyaWYR0d2cgyNBpPri+1PJx2O9fv2veC24CT0V/SG8b18SGTQBhY6pW9Vm8ka9y4UkT3Mqa98sly5hg4NMdl9bzoFjyMGlKz5qk4NCDWjBwa8YEqKCzvyv3WCG6joJMaqywy20vWZY2vWAKar7MZZueDR+dTksXWiMPRf7lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com; spf=pass smtp.mailfrom=soleen.com; dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b=AzQ/E1zV; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=soleen.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-471953ab6d8so7074961cf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1739221118; x=1739825918; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wl/1DFtCVA8JUg3JrvOVSDvXuYWKhgnuN/JPe0OCyKE=;
        b=AzQ/E1zVbhsWSha6H71yA872pTWK5X/qO7x3pzC+66ygVSwwc1CEG3/BdfTf+4sqiy
         bWXaEd2Ic/oePmzfDnIj/l5E+RvuLsDKh8DKzvYBOC5ElNrLJEyF/t+fZqwCNcBUGHP1
         P1ZhLaxtbOiGZE8yOcOhtG3a5t9SLc2cjoIFKewYmFFUttSGyX7H3CfqJo5hsjD88r7R
         qIoNela05feDdhFRQEgGptkz+CoPs+bYwvvNSRTxkFmSBBtm/yZWb3Wlx5R1j5IDzsh+
         Wm6wmu5hZnId/c8wTw/SOt/mrHDxL7N7cAlNq8Y53873mIC9ky6cbyclMzcoxLApcx5n
         eJiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739221118; x=1739825918;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wl/1DFtCVA8JUg3JrvOVSDvXuYWKhgnuN/JPe0OCyKE=;
        b=FIVsRodk5r+HxPACKx6AF91noRONUzgSq7Hnt8Rvy3EpVC0BgcCSKLKkZ+9t0XM/gh
         XGIW3p/V8Athll4F+VrJ/FFda8CjJ4GFPQNWSppYFK168Lqwl2MhToFYkcR48lBJFO0H
         i2TvePTpwtO8wJE5pZwbyzyREU504Gdgb++qtxKHYB9uxbsraaF0MbJuxMAg4D4NQU5h
         0qDVRO7808uV11DPhKlXeU0YQRR6PB81hD+lP2DEq0w1+MT9PI+Vt2XwBhzIowdUAoOa
         Yjsa0q8BXaNIyy8pUBVr9BHY0WmIyI8oVeWpGtH8loqyV04/jgjMe9SYZmXtKEPSpsH6
         1g5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbDYMptxSyHrlCa1b/FdqUt7LnkhBkNBJxU6I6KE98z+hWEDY6UpuIQNk15OkpvqT52s0371Jsit4n@vger.kernel.org
X-Gm-Message-State: AOJu0YzDCFKCGAlBBfPrIDYXnFHFC4dwaLYnRlKPUg7HgsvQtnPYMeJ9
	alk9mWZyGHwXhc86dY6MHtf/enliewQ//lgdNWLMxzMTcYEebQP7E91yBFCxkciQobAitta7JqW
	FM0b8CFYbPx6RloZQNoA3TTGR21hEE5LH5x0hew==
X-Gm-Gg: ASbGncvTvAHd3kOEfG5SAXqeQbF0BNweujk6irYhYYjcNumCbqumDn7VYg74ingB2Uk
	V+DoNfH04uNnSqIxmyd1Oy41ORnAf9iQG8CHAhFKIEXGpgra+xVXAxr0ta/TEZNTGLa/QHA==
X-Google-Smtp-Source: AGHT+IETHCKadrtvKNJ7fIHLak3uf8ALu7tDsyEEqgrBMvB7GxxInEvWUg2pBVKBZMO1RROtaHb319Yhs3eTr5CpbD4=
X-Received: by 2002:a05:622a:1a05:b0:46c:86d8:fc5 with SMTP id
 d75a77b69052e-471679cb76emr238937621cf.5.1739221117601; Mon, 10 Feb 2025
 12:58:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206132754.2596694-1-rppt@kernel.org> <20250206132754.2596694-6-rppt@kernel.org>
 <20250210202220.GC3765641@nvidia.com>
In-Reply-To: <20250210202220.GC3765641@nvidia.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 10 Feb 2025 15:58:00 -0500
X-Gm-Features: AWEUYZnfXstpOnVhbWRWzg5zc_KYEQnAl1ReknkHBBoTgx3FQhtVYh2voma8nHI
Message-ID: <CA+CK2bBBX+HgD0HLj-AyTScM59F2wXq11BEPgejPMHoEwqj+_Q@mail.gmail.com>
Subject: Re: [PATCH v4 05/14] kexec: Add Kexec HandOver (KHO) generation helpers
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Mike Rapoport <rppt@kernel.org>, linux-kernel@vger.kernel.org, 
	Alexander Graf <graf@amazon.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Andy Lutomirski <luto@kernel.org>, Anthony Yznaga <anthony.yznaga@oracle.com>, 
	Arnd Bergmann <arnd@arndb.de>, Ashish Kalra <ashish.kalra@amd.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Borislav Petkov <bp@alien8.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Dave Hansen <dave.hansen@linux.intel.com>, 
	David Woodhouse <dwmw2@infradead.org>, Eric Biederman <ebiederm@xmission.com>, 
	Ingo Molnar <mingo@redhat.com>, James Gowans <jgowans@amazon.com>, Jonathan Corbet <corbet@lwn.net>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Peter Zijlstra <peterz@infradead.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, 
	Stanislav Kinsburskii <skinsburskii@linux.microsoft.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Tom Lendacky <thomas.lendacky@amd.com>, 
	Usama Arif <usama.arif@bytedance.com>, Will Deacon <will@kernel.org>, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2025 at 3:22=E2=80=AFPM Jason Gunthorpe <jgg@nvidia.com> wr=
ote:
>
> On Thu, Feb 06, 2025 at 03:27:45PM +0200, Mike Rapoport wrote:
> > diff --git a/Documentation/ABI/testing/sysfs-kernel-kho b/Documentation=
/ABI/testing/sysfs-kernel-kho
> > new file mode 100644
> > index 000000000000..f13b252bc303
> > --- /dev/null
> > +++ b/Documentation/ABI/testing/sysfs-kernel-kho
> > @@ -0,0 +1,53 @@
> > +What:                /sys/kernel/kho/active
> > +Date:                December 2023
> > +Contact:     Alexander Graf <graf@amazon.com>
> > +Description:
> > +             Kexec HandOver (KHO) allows Linux to transition the state=
 of
> > +             compatible drivers into the next kexec'ed kernel. To do s=
o,
> > +             device drivers will serialize their current state into a =
DT.
> > +             While the state is serialized, they are unable to perform
> > +             any modifications to state that was serialized, such as
> > +             handed over memory allocations.
> > +
> > +             When this file contains "1", the system is in the transit=
ion
> > +             state. When contains "0", it is not. To switch between th=
e
> > +             two states, echo the respective number into this file.
>
> I don't think this is a great interface for the actual state machine..

In our next proposal we are going to remove this "activate" phase.

>
> > +What:                /sys/kernel/kho/dt_max
> > +Date:                December 2023
> > +Contact:     Alexander Graf <graf@amazon.com>
> > +Description:
> > +             KHO needs to allocate a buffer for the DT that gets
> > +             generated before it knows the final size. By default, it
> > +             will allocate 10 MiB for it. You can write to this file
> > +             to modify the size of that allocation.
>
> Seems gross, why can't it use a non-contiguous page list to generate
> the FDT? :\

We will consider some of these ideas in the future version. I like the
idea of using preserved memory to carry sparse KHO tree: i.e FDT over
sparse memory, maybe use the anchor page to describe how it should be
vmapped into a virtually contiguous tree in the next kernel?

>
> See below for a suggestion..
>
> > +static int kho_serialize(void)
> > +{
> > +     void *fdt =3D NULL;
> > +     int err =3D -ENOMEM;
> > +
> > +     fdt =3D kvmalloc(kho_out.dt_max, GFP_KERNEL);
> > +     if (!fdt)
> > +             goto out;
> > +
> > +     if (fdt_create(fdt, kho_out.dt_max)) {
> > +             err =3D -EINVAL;
> > +             goto out;
> > +     }
> > +
> > +     err =3D fdt_finish_reservemap(fdt);
> > +     if (err)
> > +             goto out;
> > +
> > +     err =3D fdt_begin_node(fdt, "");
> > +     if (err)
> > +             goto out;
> > +
> > +     err =3D fdt_property_string(fdt, "compatible", "kho-v1");
> > +     if (err)
> > +             goto out;
> > +
> > +     /* Loop through all kho dump functions */
> > +     err =3D blocking_notifier_call_chain(&kho_out.chain_head, KEXEC_K=
HO_DUMP, fdt);
> > +     err =3D notifier_to_errno(err);
>
> I don't see this really working long term. I think we'd like each
> component to be able to serialize at its own pace under userspace
> control.
>
> This design requires that the whole thing be wrapped in a notifier
> callback just so we can make use of the fdt APIs.
>
> It seems like a poor fit me.
>
> IMHO if you want to keep using FDT I suggest that each serializing
> component (ie driver, ftrace whatever) allocate its own FDT fragment
> from scratch and the main KHO one just link to the memories that holds
> those fragements.
>
> Ie the driver experience would be more like
>
>  kho =3D kho_start_storage("my_compatible_string,v1", some_kind_of_instan=
ce_key);
>
>  fdt...(kho->fdt..)
>
>  kho_finish_storage(kho);
>
> Where this ends up creating a stand alone FDT fragment:
>
> /dts-v1/;
> / {
>   compatible =3D "linux-kho,my_compatible_string,v1";
>   instance =3D some_kind_of_instance_key;
>   key-value-1 =3D <..>;
>   key-value-1 =3D <..>;
> };
>
> And then kho_finish_storage() would remember the phys/length until the
> kexec fdt is produced as the very last step.
>
> This way we could do things like fdbox an iommufd and create the above
> FDT fragment completely seperately from any notifier chain and,
> crucially, disconnected from the fdt_create() for the kexec payload.
>
> Further, if you split things like this (it will waste some small
> amount of memory) you can probably get to a point where no single FDT
> is more than 4k. That looks like it would simplify/robustify alot of
> stuff?
>
> Jason
>

