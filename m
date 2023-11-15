Return-Path: <devicetree+bounces-15936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D387EC50E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:23:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09DD6280EAA
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8F928DDA;
	Wed, 15 Nov 2023 14:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="TUc6TE2b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD50528DB5;
	Wed, 15 Nov 2023 14:23:22 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66032E7;
	Wed, 15 Nov 2023 06:23:19 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8CA9020005;
	Wed, 15 Nov 2023 14:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700058197;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O8Vg7Stut/fjElSri3bzgErsvbkcqioRcCWU8kfyX+I=;
	b=TUc6TE2b6pDoxNkKRhB/CtzdzVkHboL0Nq4SYn6FZaq9Hnof+QfkAmYwCLIvEfiWlywEbZ
	Z11ZUIExplBkmG/gNCTg+yu3qQe1JHMkpk+4v7VI+O0DGrvvA2+J2iC4d1vtgkb1zgjqOW
	mkJ9DKBnKZh6zXfK4JUZysyUjiz2AibZxs43rlh/SdrckOEZGl0yf98I9nWbQt8iYQf8j+
	Yo5V9gmbyqN2yPXgfMpC7Ti9owZnKze5JA/UbrC9L838gaQO/J05QZ3UnPpL5ohrKL/KQ7
	Tv6b6kuHMOfWrinLm7AVsg9svHfri/QXodueeqjIupS5Vf09rVB7DaTdPV0oCg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 15 Nov 2023 15:23:15 +0100
Message-Id: <CWZGC158AQK7.2XQXIEEH6WO2J@tleb-bootlin-xps13-01>
Subject: Re: [PATCH 2/6] usb: cdns3-ti: move reg writes from probe into an
 init_hw helper
Cc: <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
To: "Roger Quadros" <rogerq@kernel.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Peter Chen" <peter.chen@kernel.org>, "Pawel
 Laszczak" <pawell@cadence.com>, "Nishanth Menon" <nm@ti.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.15.2
References: <20231113-j7200-usb-suspend-v1-0-ad1ee714835c@bootlin.com>
 <20231113-j7200-usb-suspend-v1-2-ad1ee714835c@bootlin.com>
 <aabf618e-9352-4555-9059-f213cb16c84f@kernel.org>
In-Reply-To: <aabf618e-9352-4555-9059-f213cb16c84f@kernel.org>
X-GND-Sasl: theo.lebrun@bootlin.com

Hello,

On Wed Nov 15, 2023 at 12:33 PM CET, Roger Quadros wrote:
> > --- a/drivers/usb/cdns3/cdns3-ti.c
> > +++ b/drivers/usb/cdns3/cdns3-ti.c

[...]

> >  static int cdns_ti_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev =3D &pdev->dev;
> >  	struct device_node *node =3D pdev->dev.of_node;
> >  	struct cdns_ti *data;
> > -	int error;
> > -	u32 reg;
> > -	int rate_code, i;
> >  	unsigned long rate;
> > +	int error, i;
>
> Should we leave rate_code and get rid of i?

I see your point about i being usually a temp variable. Using rate_code
instead of i means the for-loop becomes rather long (column 87) &
should ideally be split.

How about moving the data->usb2_refclk_rate_code assignment up, closer
to the computation of i? That way we don't reference i three blocks
down the road, seemingly out of nowhere.

Regards,

--
Th=C3=A9o Lebrun, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

------------------------------------------------------------------------

> >  	data =3D devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> >  	if (!data)
> > @@ -133,8 +169,6 @@ static int cdns_ti_probe(struct platform_device *pd=
ev)
> >  		return -EINVAL;
> >  	}
> > =20
> > -	rate_code =3D i;
> > -
> >  	pm_runtime_enable(dev);
> >  	error =3D pm_runtime_get_sync(dev)>  	if (error < 0) {
> > @@ -142,39 +176,11 @@ static int cdns_ti_probe(struct platform_device *=
pdev)
> >  		goto err;
> >  	}
> > =20
> > -	/* assert RESET */
> > -	reg =3D cdns_ti_readl(data, USBSS_W1);
> > -	reg &=3D ~USBSS_W1_PWRUP_RST;
> > -	cdns_ti_writel(data, USBSS_W1, reg);
> > -
> > -	/* set static config */
> > -	reg =3D cdns_ti_readl(data, USBSS_STATIC_CONFIG);
> > -	reg &=3D ~USBSS1_STATIC_PLL_REF_SEL_MASK;
> > -	reg |=3D rate_code << USBSS1_STATIC_PLL_REF_SEL_SHIFT;
> > -
> > -	reg &=3D ~USBSS1_STATIC_VBUS_SEL_MASK;
> >  	data->vbus_divider =3D device_property_read_bool(dev, "ti,vbus-divide=
r");
> > -	if (data->vbus_divider)
> > -		reg |=3D 1 << USBSS1_STATIC_VBUS_SEL_SHIFT;
> > -
> > -	cdns_ti_writel(data, USBSS_STATIC_CONFIG, reg);
> > -	reg =3D cdns_ti_readl(data, USBSS_STATIC_CONFIG);
> > -
> > -	/* set USB2_ONLY mode if requested */
> > -	reg =3D cdns_ti_readl(data, USBSS_W1);
> >  	data->usb2_only =3D device_property_read_bool(dev, "ti,usb2-only");
> > -	if (data->usb2_only)
> > -		reg |=3D USBSS_W1_USB2_ONLY;
> > -
> > -	/* set default modestrap */
> > -	reg |=3D USBSS_W1_MODESTRAP_SEL;
> > -	reg &=3D ~USBSS_W1_MODESTRAP_MASK;
> > -	reg |=3D USBSS_MODESTRAP_MODE_NONE << USBSS_W1_MODESTRAP_SHIFT;
> > -	cdns_ti_writel(data, USBSS_W1, reg);
> > +	data->usb2_refclk_rate_code =3D i;
>
> because 'i' seems temporary.
>
> > =20
> > -	/* de-assert RESET */
> > -	reg |=3D USBSS_W1_PWRUP_RST;
> > -	cdns_ti_writel(data, USBSS_W1, reg);
> > +	cdns_ti_init_hw(data);
> > =20
> >  	error =3D of_platform_populate(node, NULL, NULL, dev);
> >  	if (error) {
> >=20

