Return-Path: <devicetree+bounces-11754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D18FC7D687B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60EC8B21064
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F87E262A7;
	Wed, 25 Oct 2023 10:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NJg/COsA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1B2262B1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:28:46 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07651D56;
	Wed, 25 Oct 2023 03:28:37 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5B933C000C;
	Wed, 25 Oct 2023 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698229715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=z0VFej7lIc8Tw0pWBz/Y9lLcMVb2c7+L+vzZC6J9dkI=;
	b=NJg/COsAqjIcBAKiAewVyxisum8g8jw2yKZDrcOgvL50JsuerikogK/QEV5UDj4/t7fG+X
	XHhErbRpsQIlBkQo/GS9wgm+W2p2Bce/ktmDbX1kDJox9om/2UOTS8L52JkWlAbfHFD+IF
	stWud9REKlD8zyrq29m3zNpdfyrOOQjXLSxJqTXTYfDO2FjyFsCKLfTXoDN8GLoYomGKd3
	SjcFKGoLGWoy//xy3oSz5108shFAQfeGutzg+/C/etrAMeNh4ll0d60pnekQZ/mhXdT0og
	ch+xgsrwmvvZiWsDu2wWq8jICQDqqyuEMcxO5VOAjMaNrvjmTd+bJyUTpcovLQ==
Date: Wed, 25 Oct 2023 12:28:33 +0200
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, mchehab@kernel.org,
	heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, ezequiel@vanguardiasur.com.ar,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com
Subject: Re: [PATCH v8 2/3] media: rockchip: Add a driver for Rockhip's
 camera interface
Message-ID: <ZTjt0VUMTbeP3mxb@pc-70.home>
References: <cover.1697446303.git.mehdi.djait@bootlin.com>
 <3790470ff7606fc075ec742d43254e52dde5d120.1697446303.git.mehdi.djait@bootlin.com>
 <ee4034b9-85f6-42cc-abca-d61004aa0a6c@wolfvision.net>
 <ZTjWsf69QdXoJNKj@aptenodytes>
 <a57db26a-704f-4859-a528-26d87c555576@wolfvision.net>
 <ZTjkWIbhV0OsvepD@aptenodytes>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZTjkWIbhV0OsvepD@aptenodytes>
X-GND-Sasl: mehdi.djait@bootlin.com

Hi Paul, Hi Michael

Thank you for the review!

On Wed, Oct 25, 2023 at 11:48:08AM +0200, Paul Kocialkowski wrote:
> Michael,
> 
> On Wed 25 Oct 23, 11:38, Michael Riesch wrote:
> > Hi Paul,
> > 
> > On 10/25/23 10:49, Paul Kocialkowski wrote:
> > > Hi,
> > > 
> > > On Mon 23 Oct 23, 15:28, Michael Riesch wrote:
> > >> Typo in the subject: "Rockhip's" -> "Rockchip's"
> > >> I think this typo has been in there for a while now ;-)
> > > 
> > > Great hips make for great dancing!
> > 
> > ...to rock music, obviously.
> 
> :)
> 
> > > [...]
> > >>> +#define write_vip_reg(base, addr, val)  writel(val, (addr) + (base))
> > >>> +#define read_vip_reg(base, addr) readl((addr) + (base))
> > >>
> > >> Please provide those helpers as proper inline functions. As to the
> > >> naming, the "_reg" suffix seems unnecessary.
> > >>
> > >> Alternatively, you could consider converting the driver to use regmap.
> > > 
> > > Come to think of it, I feel like it would make more sense to have an inline
> > > function which is given a struct rk_vip_device instead of having to dereference
> > > it every time in the caller to access the base address.
> > 
> > Indeed. Either using regmap, e.g.,
> > 
> > int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
> > 
> > or something equivalant
> > 
> > static inline int cif_write(struct cif_device *device, unsigned int reg,
> > unsigned int val);
> 
> Looks good to me!
> 

Yes, I will change it ro cif_write()

> > Not sure what you agreed on in terms of a method prefix. The Rockchip
> > RGA driver uses "rga_something", the Rockchip ISP driver uses
> > "rkisp1_something". This would mean either "cif_something" or
> > "rkcif_something", right?

I am going with cif_*()

> 
> Yeah I don't really have strong opinions on this so I'll let Mehdi decide
> (as long as it's consistent everywhere in the code).
> 
> I guess there is a slight readability advantage in using "cif_" instead of
> "rkcif_".
> 
> > > [...]
> > >>> +	struct rk_vip_sensor_info	sensor;
> > >>
> > >> Using "sensor" as name does not seem correct. As pointed out above it
> > >> could be a video decoder just as well. Something with "subdevice" maybe?
> > > 
> > > Agreed. I suggest renaming the struct "rk_vip_sensor_info" -> "rk_cif_remote"
> > > and just calling the member "remote".

Yes "remote" sounds right in this situation

--
Kind Regards
Mehdi Djait

