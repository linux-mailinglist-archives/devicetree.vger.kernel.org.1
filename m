Return-Path: <devicetree+bounces-7642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D33527C502F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FAD11C20DF7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCC41095B;
	Wed, 11 Oct 2023 10:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Vc516wah"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A0410957
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:33:43 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8109792;
	Wed, 11 Oct 2023 03:33:41 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A99F640008;
	Wed, 11 Oct 2023 10:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697020419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NMc547evd8LnPOnBrC1MZnEbM8rxfz9r+nKmvxJ3r0A=;
	b=Vc516wahyW3fDn24P8bi9r4qgErjJHSAlpqt9hnK7cyEcYOHkwJbpuCU1WPr6Zfwey6OxA
	/lzTHvErIZVPhZYFwfs+pq15ZELjfFKg7Wm+D92iVgmGRPSjgewpaI8PaaJ/+IpQgXpJRy
	L7pJffgWm+4QzHDPek5KHM+vqbXswVH5vnHU/csEVwD69kdj+GNqeUB8TODvq9lEdYNgKW
	ttBuj6gfKJREauxhxB9BjEHtflhlzvzSg3K9WuvxXei9jIraph4GeIOfrfLka7H/Rg/Wrt
	3hwF2pFJXjnA93xnZLPuGjJKUW8qNF5c2wySkBuaGxmjAZt8OLRTcfpDn3vpdg==
Date: Wed, 11 Oct 2023 12:33:36 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Michael Walle
 <michael@walle.cc>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular
 devices
Message-ID: <20231011123336.642881b8@xps-13>
In-Reply-To: <2023100722-stallion-unquote-a3b1@gregkh>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
	<20231005155907.2701706-6-miquel.raynal@bootlin.com>
	<2023100722-stallion-unquote-a3b1@gregkh>
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
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Greg,

gregkh@linuxfoundation.org wrote on Sat, 7 Oct 2023 18:31:00 +0200:

> On Thu, Oct 05, 2023 at 05:59:05PM +0200, Miquel Raynal wrote:
> > --- a/drivers/nvmem/internals.h
> > +++ b/drivers/nvmem/internals.h
> > @@ -28,8 +28,30 @@ struct nvmem_device {
> >  	nvmem_reg_read_t	reg_read;
> >  	nvmem_reg_write_t	reg_write;
> >  	struct gpio_desc	*wp_gpio;
> > +	struct device		*layout_dev;
> >  	struct nvmem_layout	*layout;
> >  	void *priv;
> >  }; =20
>=20
> Wait, is this now 2 struct device in the same structure?  Which one is
> the "real" owner of this structure?  Why is a pointer to layout_dev
> needed here as a "struct device" and not a real "struct
> nvmem_layout_device" or whatever it's called?
>=20
> >  struct nvmem_layout {
> > -	const char *name;
> > -	const struct of_device_id *of_match_table;
> > +	struct device *dev; =20
>=20
> Shouldn't this be a "real" struct device and not just a pointer?  If
> not, what does this point to?  Who owns the reference to it?

Good point, I've initially tried to create the simplest possible bus,
but you're right it will be nicer if the layout device structure
carries the 'struct device'. I've added a bit of infrstracture but it
looks better, thanks for the suggestion.

Thanks,
Miqu=C3=A8l

