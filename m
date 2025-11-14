Return-Path: <devicetree+bounces-238763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C96C5DE95
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2FD183672A6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8392232C312;
	Fri, 14 Nov 2025 14:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2R7b97K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609F232A3F9
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132164; cv=none; b=Y6quOUmNDyaBvbx2peZCyepsAiaG25XDoA0qx/Kl1h4fBSdzG0QIfm73lj1+gzLLqY0SSGx+udjl8xG4YkEy0UMF4dT5USMiq4UicsrArumIAL5kLbEFWn7jGjkwA9EOAbFg8N+9EhGEcQWnGQ20Bmd85JM+MCGLeUXZi/rgNbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132164; c=relaxed/simple;
	bh=Hm35Kpu8wDtxPaRNylrFfo4pK22w1ThwQCWTxtV76yw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lE9OwfMuSYshQkR5f831qBZ5mfvkQkqufl2awao3NLZnE1ayAa+r3dYI0vrbQ8P84CU/2zVqdqZdt4Jpl/q7cxWKK+o4O8QWGHIdLqthF5ftu9JvIFibcsxCOY9uRvc13CLZcf442ArrdAb3yEYjUhgvTf8gGq3E59yzDip88Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2R7b97K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E136C4CEF5
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132164;
	bh=Hm35Kpu8wDtxPaRNylrFfo4pK22w1ThwQCWTxtV76yw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=t2R7b97KTZaNbJbqPZN18mMT3+YiA0un05+Ba7Gu7eKIURL18KKtxE3I4R0DHiTlD
	 CWfTUUyKK0R0i/c2zNJHOvtBpJje06CTnXyEi31SFl7/KJwJzkI9ONkgCDEmpy+8Cy
	 ET2jGzw8aLf7jEWr0lbDjzJJlUjuWjm7SsXfbSFm4KGYzJN0nXeqDPRssel5EZbWiu
	 E9OsGe2X91Gb4WOoR5OcN0QQEMoIKjYbXZ6auomlR5nX8eR2oOAWz3GqMYHBlHdYfZ
	 mv2lO82BHAwV0oxWPF8MuoOaoeNEW74pTOCBvv6tftqhany95BsCj28b4it8RBH+2s
	 KoyNSRt3G5MBw==
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b73161849e1so349956066b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:56:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWgHRsqOPFnxlV2G4+xCGiyQp7wh0lItt8VuafahYLPum0pAn2X7/UGSXR9lV3DNZEc3OChOirBedvX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa9PrNi/U6oD8qlO/ctS1P+SDIr/9JOFplzoub9ImtrGXyrlth
	KtMsnS3+/uEvWvpfiRo7GTDhBdT6fP5jTmjiWvIJKrwAYv0iZMWcNru+vPh33ySEU+0V0KED40t
	v0+LfNNmQ9KrXI0n5jMsQO3qhKd+8Vw==
X-Google-Smtp-Source: AGHT+IHFOMmFGuFiOT6TwXyreOpnCVb55w8kOZgCvsU+uKZEZH+kwho1l5m2rvT/YZL/0A8L6l6875tceyDZ2hPxxbc=
X-Received: by 2002:a17:906:ee89:b0:b43:b7ec:b8a1 with SMTP id
 a640c23a62f3a-b736780de83mr325756666b.24.1763132162447; Fri, 14 Nov 2025
 06:56:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251113223859.GB800052-robh@kernel.org> <20251114030954.8738-1-yuntao.wang@linux.dev>
In-Reply-To: <20251114030954.8738-1-yuntao.wang@linux.dev>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Nov 2025 08:55:50 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKz6LHhPPVETMuDvXuUjEZw2XHQzmU9vsXeK-fd3Mf7tg@mail.gmail.com>
X-Gm-Features: AWmQ_bm_R9llgL_ODkwnHlYbieB5CpPDrL1FJAf6j5EvCL4NqK0dgg0Sv8tFIP8
Message-ID: <CAL_JsqKz6LHhPPVETMuDvXuUjEZw2XHQzmU9vsXeK-fd3Mf7tg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] of/fdt: Consolidate duplicate code into helper functions
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: akpm@linux-foundation.org, ardb@kernel.org, bhe@redhat.com, 
	catalin.marinas@arm.com, changyuanl@google.com, devicetree@vger.kernel.org, 
	geert+renesas@glider.be, geoff@infradead.org, graf@amazon.com, 
	james.morse@arm.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, 
	rppt@kernel.org, saravanak@google.com, thunder.leizhen@huawei.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 9:10=E2=80=AFPM Yuntao Wang <yuntao.wang@linux.dev>=
 wrote:
>
> On Thu, 13 Nov 2025 16:38:59 -0600, Rob Herring <robh@kernel.org> wrote:
>
> > On Thu, Nov 13, 2025 at 11:50:58PM +0800, Yuntao Wang wrote:
> > > Currently, there are many pieces of nearly identical code scattered a=
cross
> > > different places. Consolidate the duplicate code into helper function=
s to
> > > improve maintainability and reduce the likelihood of errors.
> > >
> > > Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> > > ---
> > >  drivers/of/fdt.c       | 41 ++++++++++++++++++++++++++++++++++++++++=
+
> > >  include/linux/of_fdt.h |  5 +++++
> > >  2 files changed, 46 insertions(+)
> > >
> > > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > > index 0edd639898a6..5e0eabc1449f 100644
> > > --- a/drivers/of/fdt.c
> > > +++ b/drivers/of/fdt.c
> > > @@ -625,6 +625,47 @@ const void *__init of_get_flat_dt_prop(unsigned =
long node, const char *name,
> > >     return fdt_getprop(initial_boot_params, node, name, size);
> > >  }
> > >
> > > +const __be32 *__init of_fdt_get_addr_size_prop(unsigned long node,
> > > +                                               const char *name, int=
 *entries)
> > > +{
> > > +   const __be32 *prop;
> > > +   int len, elen =3D (dt_root_addr_cells + dt_root_size_cells) * siz=
eof(__be32);
> > > +
> > > +   prop =3D of_get_flat_dt_prop(node, name, &len);
> > > +   if (!prop) {
> > > +           *entries =3D 0;
> > > +           return NULL;
> > > +   }
> > > +
> > > +   if (len % elen) {
> > > +           *entries =3D -1;
> >
> > I don't think it's really important to distinguish a length error from
> > any other error. Either we can read the property or we can't.
>
> Hi Rob,
>
> I didn't originally split it into two checks, but later I noticed that in
> __reserved_mem_reserve_reg(), the two error conditions return different
> error codes. I was concerned about breaking compatibility, so I made the
> change this way.
>
> If compatibility isn't an issue, I'd be happy to merge the two checks int=
o one.

You'll have to adjust the handling of -ENOENT case, but yes I think
that is fine. IMO, the kernel can either read and parse a property or
it can't. The exact reason it can't is generally not important.

> > > +           return NULL;
> > > +   }
> > > +
> > > +   *entries =3D len / elen;
> > > +   return prop;
> > > +}
> > > +
> > > +bool __init of_fdt_get_addr_size(unsigned long node, const char *nam=
e,
> > > +                                 u64 *addr, u64 *size)
> > > +{
> > > +   const __be32 *prop;
> > > +   int len, elen =3D (dt_root_addr_cells + dt_root_size_cells) * siz=
eof(__be32);
> >
> > Still have 2 locations to get the same calculation wrong...
> >
> > > +
> > > +   prop =3D of_get_flat_dt_prop(node, name, &len);
> > > +   if (!prop || len < elen)
> > > +           return false;
> >
> > Why doesn't calling of_fdt_get_addr_size_prop() work here? If 'len <
> > elen', then 'len % elen' will also be true except in the 0 length case.
> > For that case, of_fdt_get_addr_size_prop() needs to handle it too.
>
> I'm fully in favor of calling of_fdt_get_addr_size_prop() directly here,
> that was my original intention as well, which is also why I placed this
> function right after of_fdt_get_addr_size_prop().
>
> But again, due to compatibility concerns, I had to implement it this way.
>
> For example, suppose prop points to data like:
>
> [addr, size, other data]
>
> With the previous `len < elen` check, addr and size could still be read
> successfully. But if we switch to the `len % elen` check, this type of
> data may fail.

Only if 'other data' is not a multiple of [addr,size], but that's
completely invalid*.

(*The dts format does allow something as complex as '<0x12345678>,
"string", /bits 8/ <0xab>', but you would have to be completely insane
to do that when there's no type information in the DTB.)

> If compatibility is not a concern, I can certainly change it to something
> like the following:
>
> prop =3D of_fdt_get_addr_size_prop(node, name, &len);
> if (!prop || len !=3D 1)
>   return false;
> >
> > > +
> > > +   of_fdt_read_addr_size(prop, addr, size);
> > > +   return true;
> > > +}
> > > +
> > > +void __init of_fdt_read_addr_size(const __be32 *prop, u64 *addr, u64=
 *size)
> > > +{
> > > +   *addr =3D dt_mem_next_cell(dt_root_addr_cells, &prop);
> > > +   *size =3D dt_mem_next_cell(dt_root_size_cells, &prop);
> > > +}
> > > +
> > >  /**
> > >   * of_fdt_is_compatible - Return true if given node from the given b=
lob has
> > >   * compat in its compatible list
> > > diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
> > > index b8d6c0c20876..3a0805ff6c7b 100644
> > > --- a/include/linux/of_fdt.h
> > > +++ b/include/linux/of_fdt.h
> > > @@ -55,6 +55,11 @@ extern int of_get_flat_dt_subnode_by_name(unsigned=
 long node,
> > >                                       const char *uname);
> > >  extern const void *of_get_flat_dt_prop(unsigned long node, const cha=
r *name,
> > >                                    int *size);
> > > +extern const __be32 *of_fdt_get_addr_size_prop(unsigned long node,
> > > +                                               const char *name, int=
 *entries);
> > > +extern bool of_fdt_get_addr_size(unsigned long node, const char *nam=
e,
> > > +                                 u64 *addr, u64 *size);
> > > +extern void of_fdt_read_addr_size(const __be32 *prop, u64 *addr, u64=
 *size);
> > >  extern int of_flat_dt_is_compatible(unsigned long node, const char *=
name);
> >
> > Looks like of_flat_dt_* would be more consistent with existing naming.
>
> Naming is hard :-)

Indeed.

> I spent quite a while thinking about the names of these functions.
>
> In drivers/of/fdt.c and include/linux/of_fdt.h, there are several naming
> styles in use, such as of_fdt_, of_flat_dt_, and others.

It's a bit of a mess...

> I chose of_fdt_ as the prefix, or namespace, for these functions mainly
> because:
>
> 1. Compared to of_flat_dt_, it's simpler and shorter, and fdt can represe=
nt
>    flat_dt, or flattened device tree.
>
> 2. of_fdt_ matches the file names drivers/of/fdt.c and include/linux/of_f=
dt.h better.
>
> 3. In the libfdt library, functions consistently use the fdt_ prefix, so =
using
>    a similar of_fdt_ prefix in of/fdt.c seems reasonable.

If we started fresh, I would agree with all of this.

> But if you prefer the of_flat_dt_ nameing convention, I can change it.

I do primarily because that aligns with the other functions which read
specific properties (e.g. of_flat_dt_is_compatible(),
of_flat_dt_translate_address()).

Rob

