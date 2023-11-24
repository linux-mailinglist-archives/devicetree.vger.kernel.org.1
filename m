Return-Path: <devicetree+bounces-18686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFA77F846E
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 20:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 030D31F21847
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 19:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337BB381D2;
	Fri, 24 Nov 2023 19:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="FSPpSIcH"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2AF730F1;
	Fri, 24 Nov 2023 11:21:43 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C96C91BF204;
	Fri, 24 Nov 2023 19:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700853702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J3b2pUDzwJvMft0yFcqw8+TzcFPQg8RIeSoNPyeUUQw=;
	b=FSPpSIcHx5vNnE623heOVHaar2z8E++07I53zby4DPyFLYnF0HTM1e0vopXAdxe3Syw1Kz
	XjuE+QCCrg3RUqrzgLLh6VoceXRvicQuGQQHEGaA3MzGSP6FeT6BSgl5/4eFtjkxZxB/mi
	CJMim6psEELHOmoVtL/eKcm9Ox2w4XewjiXWI15G5lfqliNn0NyVHdOAwaBBrNwv6yjXJ1
	q0nhm3sSYMwWOz1ezEviZYdTyx6+dEFcMi+EhK6ctSI8qEJWAQ+tpq3DB3iTm+65n+MGW7
	qXna+C1l5FVkhGVMYg3NWTjzzh52nRYlzIhpjXZ28pD2xNikZ4SmugRVqgRIPQ==
Date: Fri, 24 Nov 2023 20:21:36 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michael Walle <michael@walle.cc>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>,
 kernel@pengutronix.de
Subject: Re: [PATCH v13 4/6] nvmem: core: Rework layouts to become regular
 devices
Message-ID: <20231124202136.799db18b@xps-13>
In-Reply-To: <20231122220240.4jg245vblnh6d5zy@pengutronix.de>
References: <20231011111529.86440-1-miquel.raynal@bootlin.com>
	<20231011111529.86440-5-miquel.raynal@bootlin.com>
	<20231122220240.4jg245vblnh6d5zy@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com

Hi Marco,

m.felsch@pengutronix.de wrote on Wed, 22 Nov 2023 23:02:40 +0100:

> Hi Miquel,
>=20
> thanks a lot for your effort on this. Please see my comments inline.

Thanks for your interesting feedback! I do agree with most of your
comments and will correct them for the next version.

> > +static int onie_tlv_probe(struct nvmem_layout *layout)
> > +{
> > +	layout->add_cells =3D onie_tlv_parse_table; =20
>=20
> Nit: the add cells could be done here as well, same for the other
> layout. Would save us one indirection.

I prefer all the handling of the cells to be done in a generic place
like the core. In fact patch 5 adds something to this indirection.

...

> >  /**
> >   * struct nvmem_layout - NVMEM layout definitions
> >   *
> > - * @name:		Layout name.
> > - * @of_match_table:	Open firmware match table.
> > + * @dev:		Device-model layout device.
> > + * @nvmem:		The underlying NVMEM device
> >   * @add_cells:		Will be called if a nvmem device is found which
> >   *			has this layout. The function will add layout
> >   *			specific cells with nvmem_add_one_cell().
> >   * @fixup_cell_info:	Will be called before a cell is added. Can be
> >   *			used to modify the nvmem_cell_info.
> > - * @owner:		Pointer to struct module.
> > - * @node:		List node.
> >   *
> >   * A nvmem device can hold a well defined structure which can just be
> >   * evaluated during runtime. For example a TLV list, or a list of "nam=
e=3Dval"
> > @@ -170,17 +169,19 @@ struct nvmem_cell_table {
> >   * cells.
> >   */
> >  struct nvmem_layout { =20
>=20
> Since this became a device now should we refelct this within the struct
> name, e.g. nvmem_layout_dev, nvmem_ldev, nvm_ldev?

I'd say it is a matter of taste, in general I don't like much the _dev
suffix. We handle nvmem layout drivers and nvmem layouts, like we
have joystick drivers and joysticks, I don't feel the need to suffix
them. I would not oppose if someone would rename this structure though.

> Regards,
>   Marco
>=20

I'm fine with all your other comments and will make my best to address
them.

Thanks,
Miqu=C3=A8l

