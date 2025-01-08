Return-Path: <devicetree+bounces-136842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E04A068AB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D5A87A2A37
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F02204C2E;
	Wed,  8 Jan 2025 22:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHr2/3Xt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0F3204C2C;
	Wed,  8 Jan 2025 22:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736376223; cv=none; b=kjGBAk6INFnmmj4J7i4m2qmmAmLB0aNwbclT9GzesNrdEXFaTbFbYGrm2LStQryneFGPBbJwP42wOI2y0g3NpdiT8l2Kan9o7SjWn7IsH75eep9cWRnS6zulvM760mXdspC2m7PNadV5pB2suz2iXjgPc9WpGIzF02fqtfl0aQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736376223; c=relaxed/simple;
	bh=RAdH3xyNDjlY7o34z/lOpEGF3/pUFhzFt/n00JDaEko=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kr+/TryHXWef30OHxgUOb8WQq5tOKg70UWOMydqNYjCeShezXrlK9K7nDrUXZd1x2kj3pNM1b32Dxz295LvFWM+SNp54UE6G65NM7KgG18I32sgbm+44bE9yah1xL0m6WUS113vYyC3bRIm4h0ZlRnlr+4f0/fjfRYu9Uen3RTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHr2/3Xt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12341C4CEE5;
	Wed,  8 Jan 2025 22:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736376222;
	bh=RAdH3xyNDjlY7o34z/lOpEGF3/pUFhzFt/n00JDaEko=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FHr2/3Xtod4oakXCCFN4wWo/OA9XZqJa/PyBAbA98a1unn7kPTWVP9DLuMFh5w7PS
	 0ONqdkXq9B+rb9bsHg15/Pseae6siRjANAOz1JMGwPzciLYxF2wkjSrpWC5CAb6BG9
	 WDwGBT0GUEa3u0bYk7TpkO3QuxC0eLB2W5EdvXN0naUhMKH9cUGDLtzIBZvsXbZRxD
	 d+auQiUO2QDsFf38zZkOXQYbjjJQkKU8e3WtVl0p0T+JLBad7tFBDl5UTHBtbKYM5z
	 XH8CLdsHPHDoQrhdbU7kStJxiHxoy2qhUdEdnGuuM7sUICBUyF1L09kW2vrdjfKzTY
	 MGnG5YpivBwWA==
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e549a71dd3dso503091276.0;
        Wed, 08 Jan 2025 14:43:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUlIro8IEM2q/GtWZwFSLipfDXjvq49n1O9s8+alylC6VIWDa7UfQ5xxoaXG32v+hWpe0LttfNOEg32a8vv@vger.kernel.org, AJvYcCXBYUrnVLvmEnPls1aM83oNBDfQp9iZBZMZh2GK7NlA8qjYv2GcwCCb57m1bYdrS+FmqZ7fgyX91hHk@vger.kernel.org
X-Gm-Message-State: AOJu0YyQde03oY76dS4LCKKqAlG63bdLRtAy0LdcXJo2we/v5o6tbQa6
	9CWSfu8csKY1Ai0gLdpzVBW02LcKP3Vo/Z1SF6e7QG6Gnwp20B83Qld95H4ZRHTWJzvZM2K4RyU
	JDgN5oxwiNLzTzx8IJfertv4AlQ==
X-Google-Smtp-Source: AGHT+IHebptiUC2IooqZqj6nRRfRj+vGpf4w0zNYFHU3vSx9U6vxKXCpBBUSy1BHrnDt5zHmhbtAyv5ncJM6R6rhH0Y=
X-Received: by 2002:a05:690c:6a85:b0:6ef:6e34:6561 with SMTP id
 00721157ae682-6f5312dd8c2mr41203567b3.32.1736376221245; Wed, 08 Jan 2025
 14:43:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87mskbqher.fsf@mail.lhotse> <20250108140414.13530-1-basharath@couthit.com>
In-Reply-To: <20250108140414.13530-1-basharath@couthit.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 8 Jan 2025 16:43:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLLGW_o9i6a5wcUj=Z=4nL-GhzHwAQMFtQkb9OSHuSgTA@mail.gmail.com>
X-Gm-Features: AbW1kvYjEG7vM8QkFQpwL9KtJtQb_zQFjb2jzkS5oK731zVX9h8TThp663OOIXE
Message-ID: <CAL_JsqLLGW_o9i6a5wcUj=Z=4nL-GhzHwAQMFtQkb9OSHuSgTA@mail.gmail.com>
Subject: Re: [PATCH] of: address: Unify resource bounds overflow checking
To: Basharath Hussain Khaja <basharath@couthit.com>
Cc: mpe@ellerman.id.au, thomas.weissschuh@linutronix.de, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, saravanak@google.com, danishanwar@ti.com, 
	krishna@couthit.com, mohan@couthit.com, parvathi@couthit.com, 
	pmohan@couthit.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2025 at 8:04=E2=80=AFAM Basharath Hussain Khaja
<basharath@couthit.com> wrote:
>
> Hi,
>
> >> Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.de> writes:
> >> > The members "start" and "end" of struct resource are of type
> >> > "resource_size_t" which can be 32bit wide.
> >> > Values read from OF however are always 64bit wide.
> >> >
> >> > Refactor the diff overflow checks into a helper function.
> >> > Also extend the checks to validate each calculation step.
> >> >
> >> > Signed-off-by: Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.d=
e>
> >> > ---
> >> >  drivers/of/address.c | 45 ++++++++++++++++++++++++++---------------=
----
> >> >  1 file changed, 26 insertions(+), 19 deletions(-)
> >> >
> >> > diff --git a/drivers/of/address.c b/drivers/of/address.c
> >> > index 7e59283a4472..df854bb427ce 100644
> >> > --- a/drivers/of/address.c
> >> > +++ b/drivers/of/address.c
> >> > @@ -198,6 +198,25 @@ static u64 of_bus_pci_map(__be32 *addr, const _=
_be32 *range, int na, int ns,
> >> >
> >> >  #endif /* CONFIG_PCI */
> >> >
> >> > +static int __of_address_resource_bounds(struct resource *r, u64 sta=
rt, u64 size)
> >> > +{
> >> > +     u64 end =3D start;
> >> > +
> >> > +     if (overflows_type(start, r->start))
> >> > +             return -EOVERFLOW;
> >> > +     if (size =3D=3D 0)
> >> > +             return -EOVERFLOW;
> >> > +     if (check_add_overflow(end, size - 1, &end))
> >> > +             return -EOVERFLOW;
> >> > +     if (overflows_type(end, r->end))
> >> > +             return -EOVERFLOW;
> >>
> >> This breaks PCI on powerpc qemu. Part of the PCI probe reads a resourc=
e
> >> that's zero sized, which used to succeed but now fails due to the size
> >> check above.
> >>
> >> The diff below fixes it for me.
> >
> > I fixed it up with your change.
>
>
> This commit is breaking Ethernet functionality on the TI AM57xx platform =
due to zero byte SRAM block size allocation during initialization. Prior to=
 this patch, zero byte block sizes were handled properly.

What driver and where exactly?

Rob

