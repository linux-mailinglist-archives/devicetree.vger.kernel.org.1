Return-Path: <devicetree+bounces-7579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A3D7C4B89
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5AEC1C20C1D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC26179BE;
	Wed, 11 Oct 2023 07:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ofek58a8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4B2179B9
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:15:33 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEDDCCA;
	Wed, 11 Oct 2023 00:15:30 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 872AB20008;
	Wed, 11 Oct 2023 07:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697008529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FLic967F7xVWAQS01EJJVyWRdikOCnBlhxP8uIsZpxo=;
	b=ofek58a8XMiySPLmjgK3tew5LoJ1n8A6jKYGJoSWWmt45/+rNqpz/qH3SRSogulXulKS3m
	rw+ZIpvKGCWjd9GJ0Z5F2Dz3yf4WkIkFyTbf7Xq1DzNvrjbkDvpWxpeMcUEly86CAKkoe1
	S141GEc5bhbrtPeWLg7laiHNL1EbXgYy9HAu3fyPEz30+EG+xwzPJTZnGd+X4q/AHJBLkj
	KaY7KPXyRY1sijhH56hrbvg9onBH301bnia7fjgeaw4QEXrBRqkqwPV1wLo8BBYWupYti4
	jPEtb9fM9c2reiwx9MGBYGTBxC/ohFQDsmFKlsrkuJ7iGGvlwm/HA08gL/iv2Q==
Date: Wed, 11 Oct 2023 09:15:24 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Michael Walle
 <michael@walle.cc>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Robert Marko
 <robert.marko@sartura.hr>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 7/7] nvmem: core: Expose cells through sysfs
Message-ID: <20231011091524.0c9ecc55@xps-13>
In-Reply-To: <318fe799-f53e-64ed-b631-d099bb5202f4@linaro.org>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
	<20231005155907.2701706-8-miquel.raynal@bootlin.com>
	<318fe799-f53e-64ed-b631-d099bb5202f4@linaro.org>
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

Hi Srinivas,

> > +{
> > +	struct bin_attribute **cells_attrs, *attrs;
> > +	struct nvmem_cell_entry *entry;
> > +	unsigned int ncells =3D 0, i =3D 0;
> > +	int ret =3D 0;
> > +
> > +	mutex_lock(&nvmem_mutex);
> > +
> > +	if (list_empty(&nvmem->cells) || nvmem->sysfs_cells_populated) {
> > +		nvmem_cells_group.bin_attrs =3D NULL;
> > +		goto unlock_mutex;
> > +	}
> > +
> > +	/* Allocate an array of attributes with a sentinel */
> > +	ncells =3D list_count_nodes(&nvmem->cells);
> > +	cells_attrs =3D devm_kcalloc(&nvmem->dev, ncells + 1,
> > +				   sizeof(struct bin_attribute *), GFP_KERNEL);
> > +	if (!cells_attrs) {
> > +		ret =3D -ENOMEM;
> > +		goto unlock_mutex;
> > +	}
> > +
> > +	attrs =3D devm_kcalloc(&nvmem->dev, ncells, sizeof(struct bin_attribu=
te), GFP_KERNEL);
> > +	if (!attrs) {
> > +		ret =3D -ENOMEM;
> > +		goto unlock_mutex;
> > +	}
> > +
> > +	/* Initialize each attribute to take the name and size of the cell */
> > +	list_for_each_entry(entry, &nvmem->cells, node) {
> > +		sysfs_bin_attr_init(&attrs[i]);
> > +		attrs[i].attr.name =3D devm_kasprintf(&nvmem->dev, GFP_KERNEL,
> > +						    "%s@%x", entry->name,
> > +						    entry->offset);
> > +		attrs[i].attr.mode =3D 0444;
> > +		attrs[i].size =3D entry->bytes;
> > +		attrs[i].read =3D &nvmem_cell_attr_read;
> > +		attrs[i].private =3D entry;
> > +		if (!attrs[i].attr.name) {
> > +			ret =3D -ENOMEM;
> > +			goto unlock_mutex;
> > +		}
> > +
> > +		cells_attrs[i] =3D &attrs[i];
> > +		i++;
> > +	}
> > +
> > +	nvmem_cells_group.bin_attrs =3D cells_attrs;
> > +
> > +	ret =3D devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
> > +	if (ret)
> > +		goto unlock_mutex; =20
>=20
> This is going to create groups after the nvmem device is added, isn't thi=
s going to be problem with user space notifications?

Greg said it was not. I hope I understood correctly :-)

And anyway, cells have never been available to userspace, so there is
nothing userspace might expect yet?

Thanks,
Miqu=C3=A8l

