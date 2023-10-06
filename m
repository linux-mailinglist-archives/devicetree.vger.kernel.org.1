Return-Path: <devicetree+bounces-6562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B55B87BBCCB
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D87328202A
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CAA21CA92;
	Fri,  6 Oct 2023 16:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oNoPy6Su"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0528E0A
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:33:45 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C836B9;
	Fri,  6 Oct 2023 09:33:42 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 990EA1BF211;
	Fri,  6 Oct 2023 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696610021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VfJelQFnwa56H+6/+mIriGMXn/wXqjlj1wHqN5EwtYU=;
	b=oNoPy6Su0Z99klFNRhnrdmcy+/ovW4/lKX5Ttfg/6r7vWQVI3N9XGd3eOFRBm1j6qE6tJX
	wPzf/alCUJ3/G73gzZ0yLfLyLYkbM7H3Yf2tf7A0mHbGYvKG/gzicm01RcvOSJv7tDweG+
	oTL9jBshyfxRSJkF1UvOrtQJusw/wQvPQkmr0PXA6c9Baq95MJCdsW0j9ZBtVtQ/z2wUaY
	gkhXxg2SUWYZJD8FKGWd0/6Z3SVbMI4ecwD7Z7NTFGv1Ck+zqY1TDFyr0W226UlVny+7Ay
	z5hHIyp/6WVfNrEyuGIDQR9XVVIHsn3lTmgk5XIpWR0yULBxzwtAhkBR1mInbA==
Date: Fri, 6 Oct 2023 18:33:37 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michael Walle <michael@walle.cc>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular
 devices
Message-ID: <20231006183337.18c285e2@xps-13>
In-Reply-To: <f2ac55b6361264a6a4b0dbb1b4af11a6@milecki.pl>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
	<20231005155907.2701706-6-miquel.raynal@bootlin.com>
	<f2ac55b6361264a6a4b0dbb1b4af11a6@milecki.pl>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rafa=C5=82,

rafal@milecki.pl wrote on Fri, 06 Oct 2023 13:49:49 +0200:

> On 2023-10-05 17:59, Miquel Raynal wrote:
> > +static struct bus_type nvmem_layout_bus_type =3D {
> > +	.name		=3D "nvmem-layouts",
> > +	.match		=3D nvmem_layout_bus_match,
> > +};
> > +
> > +static struct device nvmem_layout_bus =3D {
> > +	.init_name	=3D "nvmem-layouts",
> > +}; =20
>=20
> Nitpicking: would it be more consistent and still make sense to use
> singular form "nvmem-layout"?
>=20
> By looking at my /sys/bus/ I can see there:
> 1. cpu (not cpus)
> 2. gpio (not gpios)
> 3. node (not nodes)
> 4. nvmem (not nvmems)
> etc.
>=20

Probably, yes. I will wait for more feedback on this series but I'm
fine with the renaming you proposed, makes sense.

Thanks,
Miqu=C3=A8l

