Return-Path: <devicetree+bounces-14857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9937F7E70FF
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 18:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D698CB20C06
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 17:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A176D3158E;
	Thu,  9 Nov 2023 17:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F0F328D8
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 17:59:36 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0FDB3AA6
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 09:59:35 -0800 (PST)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-33-bLC80emNPv-UQE7EuSLIUQ-1; Thu, 09 Nov 2023 17:59:32 +0000
X-MC-Unique: bLC80emNPv-UQE7EuSLIUQ-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Thu, 9 Nov
 2023 17:59:24 +0000
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Thu, 9 Nov 2023 17:59:24 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Viacheslav Bocharov' <adeep@lexina.in>, Neil Armstrong
	<neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, "Kevin
 Hilman" <khilman@baylibre.com>, Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>, "linux-amlogic@lists.infradead.org"
	<linux-amlogic@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: RE: [PATCH] firmware: meson-sm: change sprintf to scnprintf
Thread-Topic: [PATCH] firmware: meson-sm: change sprintf to scnprintf
Thread-Index: AQHaEunNN2AngpIfEUOhTXwrGwSTX7ByRpLw
Date: Thu, 9 Nov 2023 17:59:24 +0000
Message-ID: <bd3a9ca738444c99855c6aabe318e351@AcuMS.aculab.com>
References: <20231109085029.2079176-1-adeep@lexina.in>
In-Reply-To: <20231109085029.2079176-1-adeep@lexina.in>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From: Viacheslav Bocharov
> Sent: 09 November 2023 08:50
>=20
> Update sprintf in serial_show frunction to scnprintf command to
> prevent sysfs buffer overflow (buffer always is PAGE_SIZE bytes).

Isn't the correct function sysfs_emit() ?

In any case that particular example can't possibly overflow.

=09David

>=20
> Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
> ---
>  drivers/firmware/meson/meson_sm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/m=
eson_sm.c
> index ed60f1103053..c1c694b485ee 100644
> --- a/drivers/firmware/meson/meson_sm.c
> +++ b/drivers/firmware/meson/meson_sm.c
> @@ -265,7 +265,7 @@ static ssize_t serial_show(struct device *dev, struct=
 device_attribute *attr,
>  =09=09return ret;
>  =09}
>=20
> -=09ret =3D sprintf(buf, "%12phN\n", &id_buf[SM_CHIP_ID_OFFSET]);
> +=09ret =3D scnprintf(buf, PAGE_SIZE, "%12phN\n", &id_buf[SM_CHIP_ID_OFFS=
ET]);
>=20
>  =09kfree(id_buf);
>=20
> --
> 2.34.1

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


