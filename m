Return-Path: <devicetree+bounces-6524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1133A7BBAFF
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:58:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE9CB282365
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C5D26E34;
	Fri,  6 Oct 2023 14:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPjyBcaw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CCA1CA9A
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 14:58:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BECF7C116A3;
	Fri,  6 Oct 2023 14:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696604328;
	bh=AXCXHLWdA2qo6nB4YyX+uUf1c5v5SfVHTy0epxZzqcI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FPjyBcawx/D50X7FUVmVkh5x91DEYjZ8XyRo+bRJ01O1CK/hyb65bkXs2SyntcK12
	 +7fb7tJqpo/SM8ixUNzr7JjLhcO7cW90QZkkiBLqOuVRH9vW8sc2WBVVgUsDrxhm9y
	 q+Ew1wTrXghdLAU3sKfVihaSx5Ih+ZWve8Vany0T+HgE0JDgG0LTC16s2XjYgTM2Dn
	 9czZXoefWHJgESQTRkQqSuurNcxsNIb/czhsdeVd6usBUuTZxuNJSJ1B/K79ZmKfor
	 enocjOJjpuF4k5rIrdLe9vRkpbAUC8KlofTCsSSJyjxmW2BX1L4ufuI274znVZPCkW
	 X5Gx6ocZ9Ay8w==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so2817476e87.1;
        Fri, 06 Oct 2023 07:58:48 -0700 (PDT)
X-Gm-Message-State: AOJu0YyEi81WkSEpbNEzHwOYcFeHhyjHRn3XUxVTz3tONSMAQI8Wo/JW
	YJXopm6VcOq3VNeCjyfvgyDZEUKo/7C4rYXjyg==
X-Google-Smtp-Source: AGHT+IF9c4JksyddIA4XMnsHQLGMxKeD4RWiwFhSUZVPaOaFwkElhfNHrBreSbHfWZCSQs2x8pg5PBOf5Yj5IPxhp0g=
X-Received: by 2002:a05:6512:545:b0:503:58e:becb with SMTP id
 h5-20020a056512054500b00503058ebecbmr7860725lfl.9.1696604326925; Fri, 06 Oct
 2023 07:58:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230818075600.24277-1-biju.das.jz@bp.renesas.com>
 <20230818075600.24277-5-biju.das.jz@bp.renesas.com> <ZN9WCKQ/hv4zKfsK@smile.fi.intel.com>
 <OS0PR01MB5922F93ABF408AA9037A8EAC861BA@OS0PR01MB5922.jpnprd01.prod.outlook.com>
 <ZN+IDGfc0MJfqOV9@smile.fi.intel.com> <CAMuHMdWwo1hYnbztoRUtHD7iw53f7Np-vPsfMMBdwbMP7-Q98A@mail.gmail.com>
 <20230828152137.2db2668d@jic23-huawei>
In-Reply-To: <20230828152137.2db2668d@jic23-huawei>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Oct 2023 09:58:34 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+dcabJ14w793TBneipwZUFnXuA2vvPzEq9Kr98edakBA@mail.gmail.com>
Message-ID: <CAL_Jsq+dcabJ14w793TBneipwZUFnXuA2vvPzEq9Kr98edakBA@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] iio: magnetometer: ak8975: Drop deprecated enums
 from OF table
To: Jonathan Cameron <jic23@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 28, 2023 at 9:22=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Fri, 18 Aug 2023 17:17:44 +0200
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> > Hi Andy,
> >
> > CC devicetree
> >
> > On Fri, Aug 18, 2023 at 5:03=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Fri, Aug 18, 2023 at 11:40:37AM +0000, Biju Das wrote:
> > > > > Subject: Re: [PATCH v2 4/5] iio: magnetometer: ak8975: Drop depre=
cated
> > > > > enums from OF table
> > > > >
> > > > > On Fri, Aug 18, 2023 at 08:55:59AM +0100, Biju Das wrote:
> > > > > > Drop deprecated enums from OF table as corresponding entries ar=
e
> > > > > > removed from bindings and it also saves memory.
> > > > >
> > > > > You can't do this.
> > > > >
> > > > > Only sorting by "prefixed first" criteria is possible.
> > > >
> > > > The rule applies only for fallback compatible. I checked bindings a=
nd I don't
> > > > find any fallback compatibles. All compatibles are just enums. Am I=
 missing
> > > > anything here??
> > >
> > > Yes. As per above patch. The _whole_ world is not under your / our co=
ntrol.
> > > NAK to this change, sorry.
> >
> > The single user ever in the upstream kernel was fixed in commit
> > 9846210b1ec9bbaa ("ARM: tegra: seaboard: add missing DT vendor
> > prefixes") in v3.8 back in 2012.
> > And it had to be fixed again 9 years later in commit fa0fdb78cb5d4cde
> > ("ARM: dts: am335x: Use correct vendor prefix for Asahi Kasei Corp.").
> >
> > There may be other out-of-tree users, which would be broken by this
> > change.  Typically we wait a few years between deprecating a compatible
> > value and removing support from the driver.
> >
> > As Biju is only deprecating these compatible values in PATCH 3/5 of
> > his series, this may be a bit premature.
> Absolutely.  I'd go a bit further.
> Unless there is a maintenance reason to remove these (after a few years f=
rom
> removal in the binding doc) then we never remove them as it can only hurt=
 users.

I'm tracking undocumented compatibles (with 'make
dt_compatible_check') in the kernel tree. Dropping the binding makes
these undocumented (and now showing up in my diff between Linus and
next). So please apply both or none.

Rob

