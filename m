Return-Path: <devicetree+bounces-6802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F2D7BCE99
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DFCA1C20896
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C1FC2D0;
	Sun,  8 Oct 2023 13:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="m0v2eknn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507DF8820
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 13:39:34 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2BEAD6;
	Sun,  8 Oct 2023 06:39:30 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 66CEB60004;
	Sun,  8 Oct 2023 13:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696772367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IBXkYS6fQ5HNeBmYBLasOhlEeE8uByHUo5jMn0E96xE=;
	b=m0v2eknngWwC18FYvgvuMt5MCXsPIUxJRHrztGTLfHwS+Z1Ev3pCEv42Z8kGipcBBTr03q
	j9B1DeYbgnQfE5Xz0vCrqj/eDoZmzf9AutJqKT7VNL5t3b7489ikRDP36zjga6RXO3Wk3S
	e0Yjcl34c+c0t88shUPRUgBlI1bBNvs4Xo4RrIJqXC3pTXtWwGLuZJQ+seSmb3mmR/5pz3
	/s7Bifn5Y5EyRJHzpVw4WJ1u4dWdvkajnkdhapk7E10HqTjqCan4tlLmzvWl3629YWicbs
	mXjGCGCTrhY4jCdknbMfbBSUR/tyr3wh/NsMAlkkWgROrTtefrVwoMaezgCUeg==
Date: Sun, 8 Oct 2023 15:39:19 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michael Walle <michael@walle.cc>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 2/7] nvmem: Clarify the situation when there is no
 DT node available
Message-ID: <20231008153919.5b8e2562@xps-13>
In-Reply-To: <2e3ea6a4e63e0c6bebf4c18b165250e5@milecki.pl>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
	<20231005155907.2701706-3-miquel.raynal@bootlin.com>
	<05cd4592d0cfe0fb86aeb24db01de547@milecki.pl>
	<20231006183229.51cd8e60@xps-13>
	<2e3ea6a4e63e0c6bebf4c18b165250e5@milecki.pl>
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
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rafa=C5=82,

rafal@milecki.pl wrote on Sat, 07 Oct 2023 18:09:06 +0200:

> One comment below
>=20
> On 2023-10-06 18:32, Miquel Raynal wrote:
> > rafal@milecki.pl wrote on Fri, 06 Oct 2023 13:41:52 +0200:
> >  =20
> >> On 2023-10-05 17:59, Miquel Raynal wrote: =20
> >> > At a first look it might seem that the presence of the of_node point=
er
> >> > in the nvmem device does not matter much, but in practice, after > l=
ooking
> >> > deep into the DT core, nvmem_add_cells_from_dt() will simply and alw=
ays
> >> > return NULL if this field is not provided. As most mtd devices don't
> >> > populate this field (this could evolve later), it means none of their
> >> > children cells will be populated unless no_of_node is explicitly set=
 to
> >> > false. In order to clarify the logic, let's add clear check at the
> >> > beginning of this helper. =20
> >> >> I'm somehow confused by above explanation and code too. I read it =
=20
> >> carefully 5 times but I can't see what exactly this change helps with.=
 =20
> >> >> At first look at nvmem_add_cells_from_legacy_of() I can see it uses=
 =20
> >> "of_node" so I don't really agree with "it might seem that the >> pres=
ence
> >> of the of_node pointer in the nvmem device does not matter much". =20
> >> >> You really don't need to look deep into DT core (actually you don't=
 >> have =20
> >> to look into it at all) to understand that nvmem_add_cells_from_dt()
> >> will return 0 (nitpicking: not NULL) for a NULL pointer. It's all made
> >> of for_each_child_of_node(). Obviously it does nothing if there is
> >> nothing to loop over. =20
> >=20
> > That was not obvious to me as I thought it would start from /, which I
> > think some other function do when you don't provide a start node. =20
>=20
> What about documenting that function instead of adding redundant code?

Yeah would work as well. But I will just get rid of this, with your
other patch that solves the fact that of_node will be there with mtd
devices, it's no longer relevant.

Thanks,
Miqu=C3=A8l

