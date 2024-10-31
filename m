Return-Path: <devicetree+bounces-117710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 841039B7657
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 09:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 097041F2293F
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 08:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D159154C09;
	Thu, 31 Oct 2024 08:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VTWYXXDB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767AD153836
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730363054; cv=none; b=Gdb2P/LRwYf0CuW3W9zlZwQVbLr+S2SUacBIN1G8EblS5bK/+cUzYZa78VNtC3xdw5MR02oa3IwGnfWotpHxraCiuw9EBAJU9sGNkXgDXBonvqoacMDClA+wmX6dt08g0JyCgSuHKLIdRF5JNBR5Iky4A2vcOIJkRQkVrpzYq2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730363054; c=relaxed/simple;
	bh=7P9pmT/GhUsgv6g9JZZA+uaKXZv/EYRGbxtNoofZhgU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gF4iudeinEUFEBGaKq/Iw/1k/VpabZIbOnouCwcrZ1sb/FfW02z6Rnk98XlQLsywWjz/rFr0kliNpZGWo3VIVL9ne/oBckRieyN4edIJAqwULDNXYB7xhhSzQGbYj06wS8wtLQX5E+Z+HvJw4FLMIrkogIYb5f5z7TWSRCFfnUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VTWYXXDB; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d473c4bb6so526530f8f.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 01:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730363051; x=1730967851; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CUTHIFGLjfIlqltxSXJmbiVoqSs/WdXy43tuqHLqFMk=;
        b=VTWYXXDBIsjVHOhrN3t7Yq8AcHq822IF9PDo387LJWsOMAcJlG0iLpd08/XUlx8uQs
         yYqHuS1nZvR3FCrn6/IaxoKDwwuqhYJ86tZHR9Cl6Pyd48Xxw/uq0HbWqpfXXrvQUfRl
         p0f7XYFfm1oorccY3hctDgS5QeEwhP4GDmcceAqydxTDmYeWXaJ5aLtOIBYl6YqYTwiS
         Tn7SRiwJ0mjNwiquhJ2A9QjT5Vqd7rCf+1X2LZqGlBZcez7HSDWcMj8lyN7mWHRl062J
         hb3BadYq9aNy6psvmbn/HHQo01l0eSQGwJjgqjgFpBmZHbVspQSeUFmdLDRMFCnggFUD
         4iTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730363051; x=1730967851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CUTHIFGLjfIlqltxSXJmbiVoqSs/WdXy43tuqHLqFMk=;
        b=dMP/sm5ZeYu5CVAWpwehk3C2hI0J1hd3mdQgfHKqMsNEpFfnsQY49quYy+XqpxZ4rS
         amiGavVDK0WFrKlPuq5IPKjdd0ZpyzfVaTl8yaJnQYOqSmI85Oh2e9m4Jpi0fdjzsFp4
         jBJfv4APG+hfkN2pEvjUOUJUkzMFG/hkfpaKHPJJLpAL1HNHadJQf+iPWeftVwlv8bdi
         FTQ1kXIhdc9C6S0oj0OzvWwALhOuhHRncr/uWFy3aV6czZsq8jVXyQ0MNlkYw0lz+Nf5
         AW/iS3r4DPxvg5HTQ2jVpWR3jpGp6G+xXOHWYY2AHgaO6YNVITc4rNoTuTdQ/ClRrRxk
         GXWw==
X-Forwarded-Encrypted: i=1; AJvYcCXCrd1DXJb12tyAc4U8ZkaZ1oiM3iI9fhjlZnBP0TaPSoeTTpR6VJJgqH20nfzlOHYUryOKaPRk+djC@vger.kernel.org
X-Gm-Message-State: AOJu0YwF9By24bMmtpKSaVfFt+hHYxDYwcfddC6AP6a1xwgTk+DblCIr
	NFG+MADPeg5Q/0wWAWuv9ZgqbCccv4ITvbTivCHDrQGgog9N6aeXRuJVYgjkSpqzk8/mdqR9VdG
	JHIxCcqsJzXMiKrdu8qZCQQPYhoSX4VGW8RiB
X-Google-Smtp-Source: AGHT+IFtjOxxUb/w2G28nf6KGqHhzJsxP3H0ByZaNk2VjVY6wfjsY7uicwSMHS0mF9U2Nt2qmOhQJkSqHn49PHXFLj0=
X-Received: by 2002:adf:ea91:0:b0:37c:c51b:8d9c with SMTP id
 ffacd0b85a97d-38061228564mr16476136f8f.38.1730363050774; Thu, 31 Oct 2024
 01:24:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-16-dakr@kernel.org>
 <CAH5fLghVDqWiWfi2WKsNi3n=2pR_Hy3ZLwY8q2xfjAvpHuDx=w@mail.gmail.com> <ZyJ19GDyVrGPbSEM@pollux>
In-Reply-To: <ZyJ19GDyVrGPbSEM@pollux>
From: Alice Ryhl <aliceryhl@google.com>
Date: Thu, 31 Oct 2024 09:23:58 +0100
Message-ID: <CAH5fLgjADyNAmdNJG+cKRcpZPLx8iKbxAvm4ZQo=c+cVNjuw=w@mail.gmail.com>
Subject: Re: [PATCH v3 15/16] rust: platform: add basic platform device /
 driver abstractions
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2024 at 7:07=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On Wed, Oct 30, 2024 at 04:50:43PM +0100, Alice Ryhl wrote:
> > On Tue, Oct 22, 2024 at 11:33=E2=80=AFPM Danilo Krummrich <dakr@kernel.=
org> wrote:
> > > +/// Drivers must implement this trait in order to get a platform dri=
ver registered. Please refer to
> > > +/// the `Adapter` documentation for an example.
> > > +pub trait Driver {
> > > +    /// The type holding information about each device id supported =
by the driver.
> > > +    ///
> > > +    /// TODO: Use associated_type_defaults once stabilized:
> > > +    ///
> > > +    /// type IdInfo: 'static =3D ();
> > > +    type IdInfo: 'static;
> > > +
> > > +    /// The table of device ids supported by the driver.
> > > +    const ID_TABLE: IdTable<Self::IdInfo>;
> > > +
> > > +    /// Platform driver probe.
> > > +    ///
> > > +    /// Called when a new platform device is added or discovered.
> > > +    /// Implementers should attempt to initialize the device here.
> > > +    fn probe(dev: &mut Device, id_info: Option<&Self::IdInfo>) -> Re=
sult<Pin<KBox<Self>>>;
> >
> > This forces the user to put their driver data in a KBox, but they
> > might want to use an Arc instead. You don't actually *need* a KBox -
> > any ForeignOwnable seems to fit your purposes.
>
> This is intentional, I do need a `KBox` here.
>
> The reason is that I want to enforce that the returned `Pin<KBox<Self>>` =
has
> exactly the lifetime of the binding of the device and driver, i.e. from p=
robe()
> until remove(). This is the lifetime the structure should actually repres=
ent.
>
> This way we can attach things like `Registration` objects to this structu=
re, or
> anything else that should only exist from probe() until remove().
>
> If a driver needs some private driver data that needs to be reference cou=
nted,
> it is usually attached to the class representation of the driver.
>
> For instance, in Nova the reference counted stuff is attached to the DRM =
device
> and then I just have the DRM device (which itself is reference counted) e=
mbedded
> in the `Driver` structure.
>
> In any case, drivers can always embed a separate `Arc` in their `Driver`
> structure if they really have a need for that.

Is this needed for soundness of those registrations?

Also, I've often seen drivers use devm_kzalloc or similar to allocate
exactly this object. KBox doesn't allow for that.


Alice

