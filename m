Return-Path: <devicetree+bounces-230329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E95C01810
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AE7E1A650B4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4EE6320CB1;
	Thu, 23 Oct 2025 13:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="LH2vi9ON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FEF30F7F7
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761226476; cv=none; b=QLFu11seE47w4k2c9J3aW7XyYWyGOCD1G0rnEfJQMzVsSP0H6GPXwJiiy+db4PikdCY9tmh+DwYA+ZRUBWE3dx7E9sE99MOEWdzLC1Abxw3zBCMEZbst3GDRgOUmuYDauyhWJUf6/3x0fWuL6UXUDtWGhiVy5PUN1hSDfhq3hwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761226476; c=relaxed/simple;
	bh=BGypRWtRH4GCCLjVOjdaAYR1rBxJQZZWkASDRYy047w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ib2wBNyNvwdgN/mkHMFZZ1I5QuhHBxwvLUHbi1UsjWTVUUq71hSqbh71LekKgXZYa/9Z6KmaOEBPIcysCGFgi93gDfLrCttiB/qTEmG0mOGo4RitvcxPxcITNg7CmYN/O1f6ul6C8szs4ldwJdBDn9M+tDHvyJHCVoukJ+nfYmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=LH2vi9ON; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-3c97e10e8ffso100276fac.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761226474; x=1761831274; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BGypRWtRH4GCCLjVOjdaAYR1rBxJQZZWkASDRYy047w=;
        b=LH2vi9ONdRf8GXmChPfOX4YCw6dCVeiHdVUkbXEhcFfwHCrzt+mqWaZ29cKZvFFpUs
         V0XSRNr+F9zvg+lfowmXwlL7XD2HDO0F0nyLHK52Y2/JKtmGFsV9T3iT7SDk9F4mKdVU
         LkTfVcHAxjusXRVamig9aL2GxrUP9HIyMWVM4teB5lN7E9VOYAAiL7AWh2NbOdXj1XX7
         rxIlsz6ilKrHpgW6OW2/QSsoHX2W5UGiAlmGHODTjNtcD985IpYZ8UJEqIoc1GTej4E4
         tUokPK5RfOjk05r0vxZgQ1bDU7fngUGRHZbjghvEQpSGPs5hOYceGVkGORfd65YGK/PH
         ZsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761226474; x=1761831274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BGypRWtRH4GCCLjVOjdaAYR1rBxJQZZWkASDRYy047w=;
        b=aYioulGD2dmouDNHeCq/Nxd9sQQdqgUPNoAs0QSaSbFl9QQBqyZYNz8BkCInrAkzd/
         CZzg5IDgdYOy10SsKJD/Lkb/yYKnIhXvzq5wAa+wkxXEF3mEQ134iyPMZdOGNjEP1Bue
         4YXgPKHnXe4Qzu6MnEa8tZ4W6fyPHb0WntEMENksMp20i9BC9WGuzJUk2SrywniUq4S0
         /G4aPXTjxsxqMoC3PNNkCFCbxWoY403QlWogy/E2iLhIFthfQ2OP0qHLUN4F4V98gpPE
         C3xl26I6L1J6bob9u817TLZAmGeaS7AIiNHH2Ptn0vKpu5sp+s0i9ll1iEIbU57LNmLY
         SudQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcYG0DH46x9ycDXDJKKblw8lbeQxR27OHpOOmvSRT4TzLXa0IFCzDNJNcjhHxYC83Vgy9QcM7147jE@vger.kernel.org
X-Gm-Message-State: AOJu0YyKaME3rUlV/Ftmld+mKr8L7gvLGPaf3IXVEpXNk9T9E4Q3vMox
	pgpIMyzcVk3HJHzgxgfsHC9qViC0rSLKTK3WxyWKXlyDI99GIQ74c24MjEx3e9nqfdmiVqPw0Kj
	TxuW07l+Zbd0PLifIT3AaKPJlq2s7qEyLpI9mDtwc
X-Gm-Gg: ASbGncsb9eQyDI5YLUVGFUVAfcCPSbYYvV2PxH+eBmaq98SddLbeeJPtFpH82bSYO64
	M5QnYiePi67A17QYBJ4JNzV20RR9T5FED0i9za+igirrE3qzYD+m9NXmnq127HS7gtHTtTb0VpC
	mjSXYcErNlUHuKniB+4Gsg2cSEBURUGVHj1VK/WuCYM6z90fLPYeIHhjM6VCIZGjCxiPtZrKW+h
	nfajhvdw265hC5p5RxPMSE7yNgRWETpJwhb2dkGSaqR9QXcu1/UsRA00FxDXpjEL01ZtT0sVX1i
	Dz0YADYzZnusYL/VPWlew9qNDTSl+A==
X-Google-Smtp-Source: AGHT+IFbCH1wMJbHft6KCFRjWJmRFnsdT6NCdLjJearbDRj4mpBcZOH6HHk1KJKlPqzTm3qoTE++x2VsPguqGpd+ivA=
X-Received: by 2002:a05:6871:a90b:b0:3c9:88eb:39ba with SMTP id
 586e51a60fabf-3cd88b2efabmr2240846fac.2.1761226473911; Thu, 23 Oct 2025
 06:34:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
 <20251022114527.618908-1-adriana@arista.com> <20251022201953.GA206947-robh@kernel.org>
 <CAERbo5z6BzHqQxXdxPxmxE_eDR7GGGbt3A8kB0gQiWFBE-28Ug@mail.gmail.com> <CAMj1kXGYinTKiyYhNYWJvoJeUJScCGnyq=ozLgjKAm7_wzG8QA@mail.gmail.com>
In-Reply-To: <CAMj1kXGYinTKiyYhNYWJvoJeUJScCGnyq=ozLgjKAm7_wzG8QA@mail.gmail.com>
From: Adriana Nicolae <adriana@arista.com>
Date: Thu, 23 Oct 2025 16:34:22 +0300
X-Gm-Features: AS18NWDeHYUzE6dvFi0wYxAayb8teAidHkRUOvFoL7_vU4rg66Qd1SaXRDkvd7M
Message-ID: <CAERbo5waY-=6BLZ2SiJSFAXzvU57mJdM9q05vAZw8zR2yExQ5w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] DMI: Scan for DMI table from DTS info
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Rob Herring <robh@kernel.org>, krzk@kernel.org, jdelvare@suse.com, 
	frowand.list@gmail.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, vasilykh@arista.com, arm.ebbr-discuss@arm.com, 
	boot-architecture@lists.linaro.org, linux-efi@vger.kernel.org, 
	uefi-discuss@lists.uefi.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 11:21=E2=80=AFAM Ard Biesheuvel <ardb@kernel.org> w=
rote:
>
> On Thu, 23 Oct 2025 at 04:21, Adriana Nicolae <adriana@arista.com> wrote:
> >
> > On Wed, Oct 22, 2025 at 11:19=E2=80=AFPM Rob Herring <robh@kernel.org> =
wrote:
> > >
> > > On Wed, Oct 22, 2025 at 04:45:25AM -0700, adriana wrote:
> > > > Some bootloaders like U-boot, particularly for the ARM architecture=
,
> > > > provide SMBIOS/DMI tables at a specific memory address. However, th=
ese
> > > > systems often do not boot using a full UEFI environment, which mean=
s the
> > > > kernel's standard EFI DMI scanner cannot find these tables.
> > >
> > > I thought u-boot is a pretty complete UEFI implementation now. If
> > > there's standard way for UEFI to provide this, then that's what we
> > > should be using. I know supporting this has been discussed in context=
 of
> > > EBBR spec, but no one involved in that has been CC'ed here.
> >
> > Regarding the use of UEFI, the non UEFI boot is used on Broadcom iProc =
which
> > boots initially into a Hardware Security Module which validates U-boot =
and then
> > loads it. This specific path does not utilize U-Boot's UEFI
> > implementation or the
> > standard UEFI boot services to pass tables like SMBIOS.
> >
>
> What prevents this HSM validated copy of u-boot from loading the kernel v=
ia EFI?
The vendor's U-Boot configuration for this specific secure boot path
(involving the
HSM) explicitly disables the CMD_BOOTEFI option due to security
mitigations, only
a subset of U-boot commands are whitelisted. We could patch the U-boot
to include
that but it is preferable to follow the vendor's recommandations and
just patch U-boot
to fill that memory location with SMBIOS address or directly with the
entry point.
>
> > Because there's no UEFI configuration table available in this boot mode=
, we need
> > an alternative mechanism to pass the SMBIOS table address to the kernel=
. The
> > /chosen node seemed like the most straightforward way for the bootloade=
r to
> > communicate this non-discoverable information.
> >
> > I wasn't aware of the EBBR discussions covering this. I've added the
> > boot-architecture and arm.ebbr-discuss lists to the Cc. If there's a pr=
eferred
> > EBBR-compliant way to handle this for non-UEFI boots, I'm happy to adap=
t
> > the approach.
> >
>
> For the record, I don't see a huge problem with accepting SMBIOS
> tables in this manner, but it would be better if a description of this
> method was contributed to the DMTF spec, which currently states that
> the only way to discover SMBIOS tables on non-x86 systems is via the
> SMBIOS/SMBIOS3 EFI configuration tables. Doing so should prevent other
> folks from inventing their own methods for their own vertically
> integrated systems. (Other OSes exist, and from a boot arch PoV, we
> try to avoid these Linux-only shortcuts)
>
> However, the DT method should *only* be used when not booting via
> UEFI, to avoid future surprises, and to ensure that existing OSes
> (including older Linux) can always find the SMBIOS tables when booting
> via UEFI.
>
> Also, I would suggest to pull the entire entrypoint into DT, rather
> than the address in memory of either/both entrypoint(s). Both just
> carry some version fields, and the address of the actual SMBIOS data
> in memory, and the only difference between SMBIOS and SMBIOS3 is the
> size of the address field (32 vs 64 bits)
I understand the points raised about UEFI taking precedence and the
preference for standardization (DMTF). If this DT method is accepted
as a fallback only for non-UEFI boots like this one, the kernel implementat=
ion
will respect that precedence.

Regarding the alternative to place the full SMBIOS entry point structure in=
to
a DT property (as a byte array) instead of just its memory address. Both
approaches seem feasible from the U-Boot side. I opted initially for passin=
g
the address to reuse the existing kernel functions (dmi_smbios3_present and
dmi_present) which already handle mapping and validation of the entry point
read from memory (as done for the EFI case).

Which model (passing the address or the structure directly) would the kerne=
l
maintainers prefer if this DT fallback as an alternative for non UEFI
boot is ok?

Adriana

