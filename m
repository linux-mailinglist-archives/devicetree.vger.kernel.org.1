Return-Path: <devicetree+bounces-238774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1C3C5DE1A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EF30F387231
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA119326D4A;
	Fri, 14 Nov 2025 15:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1dzY4Oe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8632E25D546
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 15:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763133091; cv=none; b=sKmCIr3ngS8WtQyBdYQzRj6GKEZBDIG7RX5xUYidYHM2ZBxDZfQBq5fkdSsCz19WmVdZ7K28D4npuphvXB3BoRd+1kiXWuePHgZ0ihfEuoc/UbjPWMRrt7k02L/N1W+b8P84P4ovaYsh5XVm1rlOF7r3lTygnnQ6ljKrrpb+7p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763133091; c=relaxed/simple;
	bh=Ilyq+NyNFucyQ/F22T31BSiv5+fzkT9UvgbK7Z9YKm8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NfqnmHG/ECFjIdGYTfkMyk2u7Jug8EMi/YFp3H7GwL4X8DWmUbQoVk329iSUSdDHsK2J2xQdIEb249qtcJXKwT/QMaQ0U6CNiOP3ii5eiEss/goDz55onP3Nz824Exw2G4GqKlpiQW63KCbVRgbINtgv8YAlk7p1GZZnRUtLmHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1dzY4Oe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC253C2BC9E
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 15:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763133091;
	bh=Ilyq+NyNFucyQ/F22T31BSiv5+fzkT9UvgbK7Z9YKm8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=r1dzY4OeBKZrSKQOH8fdw2Xojm8qjtJYhd4wUfIuRi+E8bZEM+qIObtiY3tm5K3xB
	 65DYey7J53Yublpj6dgUJbPFVo/JlJZjWL9RKbOkvS7jrYuApXFfim8PY8By3YMJgE
	 ct1zqt2wF1b72NP9vtXeAP2QrtPS5+SSSRYBY/N6VFQ5rAwkdFl+1PqYE+moRPFIkb
	 iDcYfdqzAIwZv4/yPZZ5ovm2u/1LDm1Zw0NpP5Pw24DqOOLg5pFg3TUaTopG9Gybfu
	 PP17grHLO9x2uSkYYaN5CERwSdL+FF0x49LBPbfjeLQL3WEnEP6odUemmkWlruPKBe
	 lJ166hDgZQKDA==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso3947425a12.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:11:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTPVqntm2CADUS1a3QzuLg4LWhxR1k8ayMImWWVMx41aBOgecDhUC0TmTitt8oTpdhniLmGX2ui6fg@vger.kernel.org
X-Gm-Message-State: AOJu0YyYiBHsJsMeioX/fKubrYbsE2JauCCdnoyAgoikuEEyTpLiEWL6
	19OXKOKzdYOHJn3mSEOoJDy+2qZk99SLSffUOQj3Y7MbmIYE1Fq491iqNfhfqPvw29eesW5HhgE
	Uoq1PTgFDTjKrWtu+cc+pu5huE3L6bA==
X-Google-Smtp-Source: AGHT+IEocDLsdaLY1E8Nc4JmmlNfFwbosXTgZuG1YugEasITm1bMRn1jC1wkVdiKnzZhfEw5jS8ajVJG+KDFTpXEymo=
X-Received: by 2002:a17:907:7ba9:b0:b4c:137d:89bb with SMTP id
 a640c23a62f3a-b736792f1d4mr345741466b.29.1763133089162; Fri, 14 Nov 2025
 07:11:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251113220356.GA800052-robh@kernel.org> <20251114035600.13453-1-yuntao.wang@linux.dev>
In-Reply-To: <20251114035600.13453-1-yuntao.wang@linux.dev>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Nov 2025 09:11:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKqAaYb+ZYuLfGA8y8bSqhXM6EYJcLqw8XM_SdLC_u+8g@mail.gmail.com>
X-Gm-Features: AWmQ_bn7YCqsTvuEYQ6AhwBPv4hdzEU1lPB5KHJm_I3ukV1WFB7vGtFTE_Rg-DY
Message-ID: <CAL_JsqKqAaYb+ZYuLfGA8y8bSqhXM6EYJcLqw8XM_SdLC_u+8g@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] of/fdt: Simplify the logic of early_init_dt_scan_memory()
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: akpm@linux-foundation.org, ardb@kernel.org, bhe@redhat.com, 
	catalin.marinas@arm.com, changyuanl@google.com, devicetree@vger.kernel.org, 
	geert+renesas@glider.be, geoff@infradead.org, graf@amazon.com, 
	james.morse@arm.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, 
	rppt@kernel.org, saravanak@google.com, thunder.leizhen@huawei.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 9:56=E2=80=AFPM Yuntao Wang <yuntao.wang@linux.dev>=
 wrote:
>
> On Thu, 13 Nov 2025 16:03:56 -0600, Rob Herring <robh@kernel.org> wrote:
>
> > On Thu, Nov 13, 2025 at 11:51:02PM +0800, Yuntao Wang wrote:
> > > Use the existing helper functions to simplify the logic of
> > > early_init_dt_scan_memory()
> > >
> > > Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> > > ---
> > >  drivers/of/fdt.c | 14 ++++++--------
> > >  1 file changed, 6 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > > index 4c45a97d6652..b6b059960fc2 100644
> > > --- a/drivers/of/fdt.c
> > > +++ b/drivers/of/fdt.c
> > > @@ -1027,7 +1027,7 @@ int __init early_init_dt_scan_memory(void)
> > >
> > >     fdt_for_each_subnode(node, fdt, 0) {
> > >             const char *type =3D of_get_flat_dt_prop(node, "device_ty=
pe", NULL);
> > > -           const __be32 *reg, *endp;
> > > +           const __be32 *reg;
> > >             int l;
> > >             bool hotpluggable;
> > >
> > > @@ -1038,23 +1038,21 @@ int __init early_init_dt_scan_memory(void)
> > >             if (!of_fdt_device_is_available(fdt, node))
> > >                     continue;
> > >
> > > -           reg =3D of_get_flat_dt_prop(node, "linux,usable-memory", =
&l);
> > > +           reg =3D of_fdt_get_addr_size_prop(node, "linux,usable-mem=
ory", &l);
> > >             if (reg =3D=3D NULL)
> > > -                   reg =3D of_get_flat_dt_prop(node, "reg", &l);
> > > +                   reg =3D of_fdt_get_addr_size_prop(node, "reg", &l=
);
> > >             if (reg =3D=3D NULL)
> > >                     continue;
> > >
> > > -           endp =3D reg + (l / sizeof(__be32));
> > >             hotpluggable =3D of_get_flat_dt_prop(node, "hotpluggable"=
, NULL);
> > >
> > > -           pr_debug("memory scan node %s, reg size %d,\n",
> > > +           pr_debug("memory scan node %s, reg {addr,size} entries %d=
,\n",
> > >                      fdt_get_name(fdt, node, NULL), l);
> > >
> > > -           while ((endp - reg) >=3D (dt_root_addr_cells + dt_root_si=
ze_cells)) {
> > > +           while (l-- > 0) {
> > >                     u64 base, size;
> > >
> > > -                   base =3D dt_mem_next_cell(dt_root_addr_cells, &re=
g);
> > > -                   size =3D dt_mem_next_cell(dt_root_size_cells, &re=
g);
> > > +                   of_fdt_read_addr_size(reg, &base, &size);
> >
> > This doesn't work. of_fdt_read_addr_size() needs to take an entry index
> > to read each entry.
> >
> > Rob
>
> Hi Rob,
>
> This was entirely my mistake. I intended to pass &reg rather than reg,
> just like how dt_mem_next_cell() works.
>
> So the correct definition of of_fdt_read_addr_size() should be:
>
> void __init of_fdt_read_addr_size(const __be32 **prop, u64 *addr, u64 *si=
ze);
>
> And the correct usage should be:
>
> of_fdt_read_addr_size(&reg, &base, &size);
>
> This bug was caused by my oversight =E2=80=94 apologies for that.
>
> I didn=E2=80=99t choose an interface like `of_fdt_read_addr_size(reg, i, =
&base, &size)`
> because in normal cases the data in prop is consumed sequentially, and I =
felt
> there was no need to introduce an entry index parameter, which would incr=
ease
> the API=E2=80=99s complexity.

Yes, but giving the index mirrors how the unflattened of_property APIs
work. Not so much with the FDT, but we're trying to eliminate giving
out raw pointers (with no lifetime) to the DT data. That doesn't work
well with overlays and dynamic DTs.

> There is another issue reported by kernel test robot:
>
> drivers/of/fdt.c:903:31: error: incompatible pointer types passing 'phys_=
addr_t *' (aka 'unsigned int *') to parameter of type 'u64 *' (aka 'unsigne=
d long long *') [-Wincompatible-pointer-types]
>
> Given this, the problem exists regardless of which implementation we choo=
se.
>
> I=E2=80=99m considering two possible solutions:
>
> 1. Convert of_fdt_read_addr_size() into a macro.
> 2. Split it into two functions: of_fdt_read_addr() and of_fdt_read_size()=
.
>
> I=E2=80=99m leaning toward the second option.
>
> What do you think? Or do you have a better approach?

Just use local u64 variables and then assign the values to the struct.
This will not warn:

a_phys_addr =3D a_u64;

(It could silently truncate values, but I'm pretty sure no one runs
32-bit LPAE systems with a non-LPAE kernel on the very few systems
that even still exist).

Rob

