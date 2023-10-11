Return-Path: <devicetree+bounces-7602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EC07C4D37
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 631D3282193
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D3979F2;
	Wed, 11 Oct 2023 08:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="XIxL46gT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3031A70B
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:33:15 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12C849D;
	Wed, 11 Oct 2023 01:33:12 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 03B661C000B;
	Wed, 11 Oct 2023 08:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697013191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UGFcONc2aMR+cU6na+bydlH0She/NxveqVxUH0lHnGg=;
	b=XIxL46gTKxHURV3N2CRPsXNdPr2ck39uN1Iu5rAOknw7vXplf+SYFPVQhsTXrU0VykyAib
	JZRVl3rLFagxdKqsn4M7hev6SpNdWMwPGnSw+SKsyCKRhRGB8eQ+0ik1CudL5aUbDwNu7y
	MQZZebJArK/b2FjYwvH9ao+ZXaSSUifysoEYV5FvJAnoa4vbo1qPTicGc7drOjq5IHbGKc
	6Blgjwf00m43kw7ylhAF+5r7etWWU7iVwSsV2X/GjL5j26fJ2QwSGFeKQf+x4A3EtU1C8N
	2uZCGmLZU9x3RD+MXxq6AmSZXdCeSzpJlNzk7dqX/hLhc0niFPigkAnFaYYKXA==
Date: Wed, 11 Oct 2023 10:33:06 +0200
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
Message-ID: <20231011103306.08f1fbd4@xps-13>
In-Reply-To: <548849a8-9f11-5274-778e-f291267603bb@linaro.org>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
	<20231005155907.2701706-8-miquel.raynal@bootlin.com>
	<318fe799-f53e-64ed-b631-d099bb5202f4@linaro.org>
	<20231011091524.0c9ecc55@xps-13>
	<548849a8-9f11-5274-778e-f291267603bb@linaro.org>
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
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Srinivas,

srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 09:27:20 +0100:

> On 11/10/2023 08:15, Miquel Raynal wrote:
> >>> +
> >>> +	nvmem_cells_group.bin_attrs =3D cells_attrs;
> >>> +
> >>> +	ret =3D devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
> >>> +	if (ret)
> >>> +		goto unlock_mutex; =20
> >> This is going to create groups after the nvmem device is added, isn't =
this going to be problem with user space notifications? =20
> > Greg said it was not. I hope I understood correctly =F0=9F=98=84
> >=20
> > And anyway, cells have never been available to userspace, so there is
> > nothing userspace might expect yet? =20
> I agree, but once we add sysfs uapi then this is going to change.

Can you elaborate? I'm not sure I follow you here. Is there still a
problem you fear or you think it's okay?

Thanks,
Miqu=C3=A8l

