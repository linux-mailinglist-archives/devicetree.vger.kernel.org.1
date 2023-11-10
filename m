Return-Path: <devicetree+bounces-14929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE947E793E
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:24:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC2261C20C4F
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 06:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 648AB63B0;
	Fri, 10 Nov 2023 06:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="g1QU7QP1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89009A40
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:24:28 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE8D6F87;
	Thu,  9 Nov 2023 22:24:27 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0C23515675E;
	Fri, 10 Nov 2023 06:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1699596008; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=pGAPimGotaSJcRtKrDnmSbjkSfOKuNnfaSzdhYkcmXo=;
	b=g1QU7QP1VD0oscW8sjske7Ntfl7CbqIKOn2vcAlWA7LvoLMyKLBWvFM78k60qh24GHqB6z
	xDYhNMyfSIQNLZTYhtWgffN1s5eXTUXft9oQaqoiF/fa0PBzGfv7P5VdkaxDbpXPmRWH7F
	XFhLYYaB6djHz19uz9nGKwJ4PTz6ofeimGtx0/Qi3i0s0UTFD2PN8Tl1MqJtGW/W1u1f0h
	zl983JV/CU/QvPATxM18yZp2hMoXRcMBbjHevmOpq7SxYLTqIeO7XHDZaNaBkpntoMNaY1
	CSpFzdnKyldZZJPAOgo5grDfxTWvp+zqqY7SnT+UDrrUgF8CQnFzST+zSIxUbA==
Message-ID: <d12f0909623088f1f66ab57b1868dee2e0fb6387.camel@lexina.in>
Subject: Re: [PATCH] firmware: meson-sm: change sprintf to scnprintf
From: Viacheslav Bocharov <adeep@lexina.in>
To: David Laight <David.Laight@ACULAB.COM>, Neil Armstrong
 <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, Kevin
 Hilman <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
Cc: "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
  "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Date: Fri, 10 Nov 2023 09:00:06 +0300
In-Reply-To: <bd3a9ca738444c99855c6aabe318e351@AcuMS.aculab.com>
References: <20231109085029.2079176-1-adeep@lexina.in>
	 <bd3a9ca738444c99855c6aabe318e351@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3

Hi!

On Thu, 2023-11-09 at 17:59 +0000, David Laight wrote:
> From: Viacheslav Bocharov
> > Sent: 09 November 2023 08:50
> >=20
> > Update sprintf in serial_show frunction to scnprintf command to
> > prevent sysfs buffer overflow (buffer always is PAGE_SIZE bytes).
>=20
> Isn't the correct function sysfs_emit() ?
Good catch. There's always something new to find)



> In any case that particular example can't possibly overflow.
Practically in this example, I agree. But nevertheless, ideologically,=C2=
=A0
a pointer to the buffer is passed to the function, but its size is not=C2=
=A0
passed. This may cause an overflow error when making changes in the=C2=A0
code.=C2=A0Yes, the lengths of %12phN and PAGE_SIZE are very different at=
=C2=A0
the moment.=C2=A0But what happens if both of these numbers change=C2=A0
unpredictably in future changes?


> 	David
>=20
> >=20
> > Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
> > ---
> >  drivers/firmware/meson/meson_sm.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson=
/meson_sm.c
> > index ed60f1103053..c1c694b485ee 100644
> > --- a/drivers/firmware/meson/meson_sm.c
> > +++ b/drivers/firmware/meson/meson_sm.c
> > @@ -265,7 +265,7 @@ static ssize_t serial_show(struct device *dev, stru=
ct device_attribute *attr,
> >  		return ret;
> >  	}
> >=20
> > -	ret =3D sprintf(buf, "%12phN\n", &id_buf[SM_CHIP_ID_OFFSET]);
> > +	ret =3D scnprintf(buf, PAGE_SIZE, "%12phN\n", &id_buf[SM_CHIP_ID_OFFS=
ET]);
> >=20
> >  	kfree(id_buf);
> >=20
> > --
> > 2.34.1
>=20
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1=
 1PT, UK
> Registration No: 1397386 (Wales)
>=20
>=20
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic


