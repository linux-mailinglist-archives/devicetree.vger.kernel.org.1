Return-Path: <devicetree+bounces-243950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A949BC9E9C3
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47E8C3A1D51
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA3722E0925;
	Wed,  3 Dec 2025 09:58:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EF92DFA25
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755893; cv=none; b=jPKi4wTel6SAPLIR4FusaJx+3vP1POzl5ySyo0ISYXULBAxwJ24jnsYbOz5UyeStY58NcHS0zOhSRgRrXWMp7x3ZXrtkQ36aSl6xT2itofvkYiPO0YC2xuPx1quTdog012wcwzbxdEyORf4PRNVMY7Cl0QrC/RJbv7oYPXLsQwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755893; c=relaxed/simple;
	bh=YAFPxdupWUFxop2aj04TfEB6sEAT7or4x1FgdjfuJsE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dtMhHMuUw1R8JvoElXYH2wA2BljZNoOxPjxYzH+8R4VVxC7cvBoQnT2kBMqhMG0YOoUOa1Gt+2XIR7gvp5DHk9i1dvYVGnnz7CUDvdMo68ah9zEsn+ZyPfKNkbEusqDSMpyiXDwuSsYiacrQ7H+u9AEYgH4rew+RgYys8gi4JWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9372164d768so519824241.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:58:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764755890; x=1765360690;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wEiUmc2Mo7T6/EfgHh7KJK7Yklp38OsDecqZ5en7MfQ=;
        b=Li5gzKh9c0ANHfPuNwPv3ux+yGs1Q/PJrHeW66h6oKtrQ8TYeu669H6U5lIt2XC/uS
         AhdutUiSSIDlZLHWKOwQYUjiE27NSs9OM3vaDiKvxAq9h6SZVXu908A7ztszksprcc0G
         SEmldDNeEGwOcdnYyGse0OpZwGlKdzPUrfAj8jpoRzpxIEXUANjvqfGKIuPWWK2bFKhO
         +Vq3Dwx85sUvPEMaEF+Ac7WML/XSNTNEWXl2Ys4cNcCkcg4lC60Oey01Fr9LydoopZQh
         k3wr6M3Xfi19iuFoO903iPAxwkQLPfwsRaLyOI6Too3Rq7RoTv4Z26vL8SvwJBQNjQeb
         xo/w==
X-Forwarded-Encrypted: i=1; AJvYcCUu7pjAkUa4ceawK5kaDgKRWsTYjTTUJa1ohHCe3hve4Mt1ArVUpqznOgZjcPd4cqBLSKusBAr9ZTzF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1j31lYSLspwVzcUi3VB+4y3V6VErsRxoOE7Tvt1rVsSAm2f3H
	Ywwop/VNQ9ZAu1B4jYx4jlMpAOoXaAAln7ILrN6YRiUaBig5GdSvCXXNIViuHZfn
X-Gm-Gg: ASbGncv6cQH10r3KRiVRcaPnjflX7j6PqUCQRwNAHFRhpZ1tqzK/bzxNOyT60Md8WZ3
	6p4xoK+rloQ8Npq5rKUCvn+mD0ptpf0t6dPk7Q+PiQaodX6kH1vIppE8EiKo+XKJ2PXHIhCYib2
	kANNuCU1PTa9kODgdkWyy2/f1tgMafKsMutd/wwkcgYeyU0w/v3kUwxc55+hcVqAU3z09s+7DLO
	0IzksKpnWlYrfo4ourYou2Wo8e93mZm1S+lK15rodhk7fbBvCnv+Hv6vU2TWy+ctykFTf+xabNd
	eMbf+pzv3ABgv/zxHxalZI2ZlbEcp7Qwl50FWZWX81kqh9qBfvZdQ70iinEbm+BIG8iM2hD6Ktn
	h9fGsqeA38G3kC5nACRsHim4V1JxLF1AGvoIzvwmq4AhvhccxRLTtrb9ilpbCZ7pC8QfMkDsal/
	2/pU0XGK8Cuzc5BH4ECVc81wHGblcmOgcb+UjgXqlLEZaTXJxe
X-Google-Smtp-Source: AGHT+IFpQECu3/FkCb2hPQXKGPEZzA3Kfgq2LP2EcTTdhkK4DAiQlh1d8g0erNiNoLMNF3ieOCc8gw==
X-Received: by 2002:a05:6102:15c4:b0:5df:aaa8:865f with SMTP id ada2fe7eead31-5e4875e111bmr524989137.6.1764755890322;
        Wed, 03 Dec 2025 01:58:10 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d917860sm7136614137.2.2025.12.03.01.58.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 01:58:10 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-93917ebde8aso512293241.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:58:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXSsNs+wjL8gOGE34Wgal7RPd3b38WfMGYqXumxnDcitk036owLP4+oZ7O9PY5miKKPU2u8APHU5qGD@vger.kernel.org
X-Received: by 2002:a05:6102:a49:b0:5d4:1499:99a4 with SMTP id
 ada2fe7eead31-5e40c7f3573mr2813640137.13.1764755889796; Wed, 03 Dec 2025
 01:58:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fbe6fc3657070fe2df7f0529043542b52b827449.1763116833.git.geert+renesas@glider.be>
 <dyaqe3ssrn65r5xndlwe7tlbiw2lbwvu3q3lzusfgr5mgycp6h@gfzyxk7uyva7>
 <CAL_JsqJ4q2=UJbuhfbvsbr2T+SRGXsPSXCLk6iXZid_qwYrN4g@mail.gmail.com>
 <bgieskezxsscyg65ihbzq45opwfjavcfut7bz7ywsvufeeaoqe@47hx5fvmsi22>
 <CAL_JsqJ9YUe6cy0YEMLvQhGTGmog6onTA9W5owQBP4q1viijug@mail.gmail.com> <5rzkayfk4o37v3xakexmjtkahb4wey2lsaiw2l3qobva5ajhr2@u3lrgkdjgk3x>
In-Reply-To: <5rzkayfk4o37v3xakexmjtkahb4wey2lsaiw2l3qobva5ajhr2@u3lrgkdjgk3x>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 3 Dec 2025 10:57:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWumcKQaU0hym7xdOzwYZWzhNRtH9RU45ZsLtShkkO53A@mail.gmail.com>
X-Gm-Features: AWmQ_blCEK01_Lczu_uMObyo4dsIf5LXvG5VyIcPEzsBrrm0vi_AIT5ljCOk_wo
Message-ID: <CAMuHMdWumcKQaU0hym7xdOzwYZWzhNRtH9RU45ZsLtShkkO53A@mail.gmail.com>
Subject: Re: [PATCH v2] of/irq: Ignore interrupt parent for nodes without interrupts
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel@sholland.org>, Marc Zyngier <maz@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ionana,

On Wed, 3 Dec 2025 at 10:48, Ioana Ciornei <ioana.ciornei@nxp.com> wrote:
> On Tue, Dec 02, 2025 at 03:19:17PM -0600, Rob Herring wrote:
> > On Tue, Dec 2, 2025 at 10:36=E2=80=AFAM Ioana Ciornei <ioana.ciornei@nx=
p.com> wrote:
> > > On Mon, Dec 01, 2025 at 06:09:19AM -0600, Rob Herring wrote:
> > > > On Fri, Nov 28, 2025 at 10:43=E2=80=AFAM Ioana Ciornei <ioana.ciorn=
ei@nxp.com> wrote:
> > > > > On Fri, Nov 14, 2025 at 11:47:54AM +0100, Geert Uytterhoeven wrot=
e:
> > > > > > The Devicetree Specification states:
> > > > > >
> > > > > >     The root of the interrupt tree is determined when traversal=
 of the
> > > > > >     interrupt tree reaches an interrupt controller node without=
 an
> > > > > >     interrupts property and thus no explicit interrupt parent.
> > > > > >
> > > > > > However, of_irq_init() gratuitously assumes that a node without
> > > > > > interrupts has an actual interrupt parent if it finds an
> > > > > > interrupt-parent property higher up in the device tree.  Hence =
when such
> > > > > > a property is present (e.g. in the root node), the root interru=
pt
> > > > > > controller may not be detected as such, causing a panic:
> > > > > >
> > > > > >     OF: of_irq_init: children remain, but no parents
> > > > > >     Kernel panic - not syncing: No interrupt controller found.
> > > > > >
> > > > > > Commit e91033621d56e055 ("of/irq: Use interrupts-extended to fi=
nd
> > > > > > parent") already fixed a first part, by checking for the presen=
ce of an
> > > > > > interrupts-extended property.  Fix the second part by only call=
ing
> > > > > > of_irq_find_parent() when an interrupts property is present.
> > > > > >
> > > > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > > > > This change irq-ls-extirq and commit 6ba51b7b34ca ("of/irq: Handl=
e
> > > > > explicit interrupt parent") does not help with the issue.

> > > I just tried converting ls-extirq to a proper platform driver and it'=
s
> > > pretty straightforward. The problem is getting that driver to probe o=
n
> > > the ls-extirq dt node since of_platform_populate() is not called on i=
ts
> > > parent node.
> > >
> > > I would avoid changing the DT and adding a "simple-bus" compatible to
> > > the parent nodes. The other option is to add another simple driver wh=
ich
> > > just calls of_platform_populate() for all compatible strings defined =
in
> > > fsl,layerscape-scfg.yaml.
> >
> > The simplest solution might be adding 'syscon' to the default match
> > list for of_platform_populate(). That's kind of a big hammer though
> > and could break something. Not sure, but I'm willing to stick that in
> > linux-next and see.
> >
> > Another option is hijack the simple-pm-bus driver which already does
> > just what you said.
>
> I would prefer the second option since that doesn't impact other
> platforms.
>
> Geert, since you are the module author, are you ok with the following
> diff?
>
> --- a/drivers/bus/simple-pm-bus.c
> +++ b/drivers/bus/simple-pm-bus.c
> @@ -142,6 +142,12 @@ static const struct of_device_id simple_pm_bus_of_ma=
tch[] =3D {
>         { .compatible =3D "simple-mfd",   .data =3D ONLY_BUS },
>         { .compatible =3D "isa",          .data =3D ONLY_BUS },
>         { .compatible =3D "arm,amba-bus", .data =3D ONLY_BUS },
> +       { .compatible =3D "fsl,ls1021a-scfg", },
> +       { .compatible =3D "fsl,ls1043a-scfg", },
> +       { .compatible =3D "fsl,ls1046a-scfg", },
> +       { .compatible =3D "fsl,ls1088a-isc", },
> +       { .compatible =3D "fsl,ls2080a-isc", },
> +       { .compatible =3D "fsl,lx2160a-isc", },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, simple_pm_bus_of_match);

Fine for me.

Alternatively, these could be added to the match_table[] in
drivers/of/platform.c:of_platform_default_populate()?

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

