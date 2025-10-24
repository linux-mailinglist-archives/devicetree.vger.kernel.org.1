Return-Path: <devicetree+bounces-230942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF638C07A78
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 20:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFFE23B5F40
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 18:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1498B337BA2;
	Fri, 24 Oct 2025 18:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="LXqCrfAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40E335BCD
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 18:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761329273; cv=none; b=oAkXXi7Q60DKMZ5nCIQQF/7CdaT3vNRAY0KIKn2cJTw/21UQGsW20WaWe5E2bF/PiGqOXMUSw1V8pYJmB3cH16+v25Rqfk6QBnGWQzg/5JZIJwAITcwzqGv6fNlRQ4/GrRZv2a8SWJFCJhID8KQTGZ9SRLZjzIFSNWozdT4M49g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761329273; c=relaxed/simple;
	bh=OKklzTl7XZxkfVb3PCGSM8TNNNKDFlBKHCbNE13T0aE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pd97xdeAYeJrTQRAiKRjjDPKpwDH6vC38o2NBtKY028y05d3sHKCsKcpVAUG9jzYeXSG6dCfEggWjVVWmtIRgMZXVC3vn0+Jc/4bL8FmVZebNmh23PtiTkOKLJL3QqxKif6zMzLQEfbn+dZKbepbtnqPYA06ZOJGGb1URu7nEn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=LXqCrfAS; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7c51c7ad0b6so738824a34.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1761329270; x=1761934070; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OKklzTl7XZxkfVb3PCGSM8TNNNKDFlBKHCbNE13T0aE=;
        b=LXqCrfASIsbLO+SA2DYuAaUx0AS4DEQj7/VPR9LPN8CebJ3sDF6+sSA/+IIcekXInL
         5BAPo/qgAxpgpBl0lncn5Ku+lU5TfZJp5IegkvENVvG8/YkteTm/u33ESKRrB8UqDsy/
         T4mQDa5VN3uQ5FVAoonDQTrvqerH5pEXW83GQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761329270; x=1761934070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OKklzTl7XZxkfVb3PCGSM8TNNNKDFlBKHCbNE13T0aE=;
        b=gAyaYYrkPWfZKUS9JUrm4499fqzZGfb1ivYlKD0PAT0FN+UGuuD+/uz00sXfteXjAw
         gs5Gt8yxKk8MeCjBGtXKzhZVoISyHL20TWOCIorWvJ8ursH9G8/sTfYmCv719HcDHHmY
         AW9q9JWS6jpW1EfbspxRVf0h8WFqnBcUJJuxX5cJbyVNIWmopqcm4CFLt+wccR3fwqME
         FghaYgLUHHhWPlw+QTgqufIonlWRBpbphhut7yhU46rsHKqcQYxbMlhatFdsa/JswbNF
         SMVs3OPbUWXd3NHbQDostB2Sc0VJ3l+o865Wl1L6omKJ53/52VCaD+L14Ai14gNcvblT
         mnuw==
X-Forwarded-Encrypted: i=1; AJvYcCXYaNEvQUh9ZiqI3U34pgDwaVQU4mk6OLwOLCzsHGTY4bBm8EkRJRajeb5xwW822CkKQlmRfXTMPclr@vger.kernel.org
X-Gm-Message-State: AOJu0YySkv81lyaLl+D6H6o896AkrpMlcnzXBMSfxJcZcLkLg0D0OY8G
	5VJedI3SuQKDMu8cIFRcdpi7mSSEhgKwl4uj5AEUViCxpUwvKbS7Cd9+aIbY/KyU5dE=
X-Gm-Gg: ASbGncuZWhIhG3qWygmKiicGjoovLYUwRN7BMjgJWNNH7v1UOzU+XskXzmBRvSipnqq
	ww8WTfcVk12sKZmucsa6tbM2O8n1JqgJ6PEogHTZC4oTxE5NhH4B1owafPONMxGPU50ZMGhcFAv
	XtX/CGX8AfgrxWaZnBR9frmYiXriDOGZpy1/UK0XlywcOFxJdm2pvTE6+Pr16/8rnAD4kVbLb6B
	/mJKaZTo3efvvlK+jU6BCtBNjFeTIHwKHUUReCZynX6X5N2gjtQrX2dvScUPJNeMmDOf3XRnSu4
	017r11VpvKcCevAUPm7DjhwiJemX7oEdk0WfVeOgwOZWtLLAwiwsHWtTx8gZ1t0wU/ALz1a6eML
	csI2uRD4S1/L+ZRo0gGAEnwegDHzVq9gOalLxfj08FyGl0+iaqEPWzSsqC2TdCAd1QbELXrvwSQ
	WguPiTT1IfiKBlrWtkrwQgahhGsml8hYZfic+jXk8Lns1Ie4QSKA==
X-Google-Smtp-Source: AGHT+IFRDulQPC2WfvWC6MHNbG8ZjN3lKhCb3bn+Uo7GV5yUHZ45PDvygNs6SdpFx/7sNDoXiJFqQw==
X-Received: by 2002:a05:6830:f8f:b0:78b:8caf:4906 with SMTP id 46e09a7af769-7c5240679bcmr2004161a34.13.1761329270173;
        Fri, 24 Oct 2025 11:07:50 -0700 (PDT)
Received: from bill-the-cat (fixed-187-190-202-235.totalplay.net. [187.190.202.235])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c51b059913sm1751074a34.32.2025.10.24.11.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 11:07:49 -0700 (PDT)
Date: Fri, 24 Oct 2025 12:07:46 -0600
From: Tom Rini <trini@konsulko.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Adriana Nicolae <adriana@arista.com>,
	Rob Herring <robh@kernel.org>, krzk@kernel.org, jdelvare@suse.com,
	frowand.list@gmail.com, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, vasilykh@arista.com,
	arm.ebbr-discuss@arm.com, boot-architecture@lists.linaro.org,
	linux-efi@vger.kernel.org, uefi-discuss@lists.uefi.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] DMI: Scan for DMI table from DTS info
Message-ID: <20251024180746.GT6688@bill-the-cat>
References: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
 <20251022114527.618908-1-adriana@arista.com>
 <20251022201953.GA206947-robh@kernel.org>
 <CAERbo5z6BzHqQxXdxPxmxE_eDR7GGGbt3A8kB0gQiWFBE-28Ug@mail.gmail.com>
 <CAMj1kXGYinTKiyYhNYWJvoJeUJScCGnyq=ozLgjKAm7_wzG8QA@mail.gmail.com>
 <CAERbo5waY-=6BLZ2SiJSFAXzvU57mJdM9q05vAZw8zR2yExQ5w@mail.gmail.com>
 <CAMj1kXHin5YacS98ttzHqFqy6HMukXKoLZtr-+bLwVRsWZUugQ@mail.gmail.com>
 <CAERbo5zgS8XoGcFB3wejqDpx14-SBr5oWn7pu3=PE0djRiKZqg@mail.gmail.com>
 <CAMj1kXEnSKF4VcMdOvUUuM-pOEWB38qPhWvUm13rnkQiZXp6SA@mail.gmail.com>
 <CAC_iWjKQ5Smx5hOM9Lgyq_KD6D7OXyDsfJ4mcEnfw4JuRtxy-g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9oR5kehjwfSOVgAj"
Content-Disposition: inline
In-Reply-To: <CAC_iWjKQ5Smx5hOM9Lgyq_KD6D7OXyDsfJ4mcEnfw4JuRtxy-g@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett


--9oR5kehjwfSOVgAj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 24, 2025 at 02:07:43PM +0300, Ilias Apalodimas wrote:
> Hi Ard, Adriana
>=20
> Thanks for cc'ing me.
>=20
> On Fri, 24 Oct 2025 at 12:49, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 23 Oct 2025 at 16:48, Adriana Nicolae <adriana@arista.com> wrot=
e:
> > >
> > > On Thu, Oct 23, 2025 at 4:54=E2=80=AFPM Ard Biesheuvel <ardb@kernel.o=
rg> wrote:
> > > >
> > > > (cc Ilias)
> > > >
> > > > On Thu, 23 Oct 2025 at 15:34, Adriana Nicolae <adriana@arista.com> =
wrote:
> > > > >
> > > > > On Thu, Oct 23, 2025 at 11:21=E2=80=AFAM Ard Biesheuvel <ardb@ker=
nel.org> wrote:
> > > > > >
> > > > > > On Thu, 23 Oct 2025 at 04:21, Adriana Nicolae <adriana@arista.c=
om> wrote:
> > > > > > >
> > > > > > > On Wed, Oct 22, 2025 at 11:19=E2=80=AFPM Rob Herring <robh@ke=
rnel.org> wrote:
> > > > > > > >
> > > > > > > > On Wed, Oct 22, 2025 at 04:45:25AM -0700, adriana wrote:
> > > > > > > > > Some bootloaders like U-boot, particularly for the ARM ar=
chitecture,
> > > > > > > > > provide SMBIOS/DMI tables at a specific memory address. H=
owever, these
> > > > > > > > > systems often do not boot using a full UEFI environment, =
which means the
> > > > > > > > > kernel's standard EFI DMI scanner cannot find these table=
s.
> > > > > > > >
> > > > > > > > I thought u-boot is a pretty complete UEFI implementation n=
ow. If
> > > > > > > > there's standard way for UEFI to provide this, then that's =
what we
> > > > > > > > should be using. I know supporting this has been discussed =
in context of
> > > > > > > > EBBR spec, but no one involved in that has been CC'ed here.
> > > > > > >
> > > > > > > Regarding the use of UEFI, the non UEFI boot is used on Broad=
com iProc which
> > > > > > > boots initially into a Hardware Security Module which validat=
es U-boot and then
> > > > > > > loads it. This specific path does not utilize U-Boot's UEFI
> > > > > > > implementation or the
> > > > > > > standard UEFI boot services to pass tables like SMBIOS.
> > > > > > >
> > > > > >
> > > > > > What prevents this HSM validated copy of u-boot from loading th=
e kernel via EFI?
> > > > > The vendor's U-Boot configuration for this specific secure boot p=
ath
> > > > > (involving the
> > > > > HSM) explicitly disables the CMD_BOOTEFI option due to security
> > > > > mitigations, only
> > > > > a subset of U-boot commands are whitelisted. We could patch the U=
-boot
> > > > > to include
> > > > > that but it is preferable to follow the vendor's recommandations =
and
> > > > > just patch U-boot
> > > > > to fill that memory location with SMBIOS address or directly with=
 the
> > > > > entry point.
> > > >
> > > > And what security mitigations are deemed needed for the EFI code? Y=
ou
> > > > are aware that avoiding EFI boot means that the booting kernel keeps
> > > > all memory protections disabled for longer than it would otherwise.=
 Is
> > > > this allowlisting based on simply minimizing the code footprint?
> > > >
> > > From the information I have, it might be just minimizing the footprint
> > > but the vendor's U-Boot configuration for this specific path
> > > explicitly disables the CMD_BOOTEFI option. While the vendor cites
> > > security mitigations for this configuration, the specific details
> > > could be a set of mitigation removing different boot methods and some
> > > memory access commands.
> > >
> > > The core issue is that this non-EFI boot path is the vendor-validated
> > > configuration. Enabling EFI would deviate from this setup, require
> > > significant revalidation, and could impact vendor support. Modifying
> > > U-Boot to populate the DT is a contained change without modifying the
> > > U-boot vendor configuration.
> > >
> >
> > I'm not sure I follow why changing U-Boot's code would not require
> > revalidation if simply changing its build configuration without
> > modifying the source code would require that.
> >
> > > Beyond our specific vendor constraints, this DT method might be used
> > > by any other non-UEFI arm system needing to expose SMBIOS tables to
> > > the kernel.
> > >
> >
> > Fair point. So let's do this properly: get buy-in from the U-Boot
> > folks and contribute your u-boot changes as well. And ideally, we'd
> > get this into the DMTF spec but if you are not set up for that (I
> > think you might need to be a member to be able to contribute), we can
> > find some ARM folks who are.
>=20
> +1
> U-Boot does offer an EFI implementation indeed, but we can't magically
> force people to use it.
> The problem with SMBIOS is that afaict is still widely used by various
> debugging tools, so we might as well support it.
> I agree with Ard here. I think the best thing we can do is
> - Make the node standard in the DT spec, so everyone gets a reference
> - Gatekeep any alternative implementations for the kernel until
> someone gets this into the DMTF spec as well
> - Send a patch to U-Boot that adds that mode dynamically if booting is
> !EFI and SMIOS support is enabled

This sounds like a good plan to me, from the U-Boot side of things.

--=20
Tom

--9oR5kehjwfSOVgAj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTzzqh0PWDgGS+bTHor4qD1Cr/kCgUCaPvAcgAKCRAr4qD1Cr/k
Cl0JAQCUcCV+kUm96vHRiAbLB20hAwcJt3oIn8U3QBbLUjGHMAEA+21ItWi4sJ9d
t7aKVsKPX8WICEe/+i8LMaUG1P0v5AQ=
=ytOr
-----END PGP SIGNATURE-----

--9oR5kehjwfSOVgAj--

