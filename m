Return-Path: <devicetree+bounces-6713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 330AA7BC87E
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 17:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3189E1C20951
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 15:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3109728E27;
	Sat,  7 Oct 2023 15:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97EAE171C2
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 15:03:43 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DB58B9;
	Sat,  7 Oct 2023 08:03:42 -0700 (PDT)
Received: from p5dc58360.dip0.t-ipconnect.de ([93.197.131.96] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qp8q5-004cjc-Ky; Sat, 07 Oct 2023 17:03:33 +0200
Date: Tue, 12 Sep 2023 20:56:47 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: dmitry.torokhov@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, lee@kernel.org,
 bcousson@baylibre.com, tony@atomide.com, mturquette@baylibre.com,
 sboyd@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 4/5] clk: twl: add clock driver for TWL6032
Message-ID: <20230912205647.4be3b753@aktux>
In-Reply-To: <a9b646c7-2c02-8a69-a4c8-7e981a630eef@wanadoo.fr>
References: <20230911221346.1484543-1-andreas@kemnade.info>
	<20230911221346.1484543-5-andreas@kemnade.info>
	<a9b646c7-2c02-8a69-a4c8-7e981a630eef@wanadoo.fr>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 12 Sep 2023 19:15:54 +0200
Christophe JAILLET <christophe.jaillet@wanadoo.fr> wrote:

> Le 12/09/2023 =C3=A0 00:13, Andreas Kemnade a =C3=A9crit=C2=A0:
> > The TWL6032 has some clock outputs which are controlled like
> > fixed-voltage regulators, in some drivers for these chips
> > found in the wild, just the regulator api is abused for controlling
> > them, so simply use something similar to the regulator functions.
> > Due to a lack of hardware available for testing, leave out the
> > TWL6030-specific part of those functions.
> >=20
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---
> >   drivers/clk/Kconfig   |   9 ++
> >   drivers/clk/Makefile  |   1 +
> >   drivers/clk/clk-twl.c | 197 ++++++++++++++++++++++++++++++++++++++++++
> >   3 files changed, 207 insertions(+)
> >   create mode 100644 drivers/clk/clk-twl.c
> >  =20
>=20
> ...
>=20
> > +static int twl_clks_probe(struct platform_device *pdev)
> > +{
> > +	struct clk_hw_onecell_data *clk_data;
> > +	const struct twl_clks_data *hw_data;
> > +
> > +	struct twl_clock_info *cinfo;
> > +	int ret;
> > +	int i;
> > +	int count;
> > +
> > +	hw_data =3D twl6032_clks;
> > +	for (count =3D 0; hw_data[count].init.name; count++)
> > +		; =20
>=20
> Nit: does removing the /* sentinel */ and using=20
> ARRAY_SIZE(twl_clks_data) would make sense and be simpler?
>=20
well, I would like to have it prepared for different arrays
passed in some device data in the future, so I am choosing that
approach.

Regards,
Andreas

