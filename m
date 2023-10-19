Return-Path: <devicetree+bounces-10024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AB77CF657
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:12:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B741FB20FC1
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39BBD18C17;
	Thu, 19 Oct 2023 11:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC8F18C0A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:12:32 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26089116;
	Thu, 19 Oct 2023 04:12:30 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.206])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SB4kK4yCFz67M2K;
	Thu, 19 Oct 2023 19:10:01 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Thu, 19 Oct
 2023 12:12:27 +0100
Date: Thu, 19 Oct 2023 12:12:26 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>
CC: Jonathan Cameron <jic23@kernel.org>, Jagath Jog J
	<jagathjog1996@gmail.com>, Matti Vaittinen
	<matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Dmitry Rokosov
	<DDRokosov@sberdevices.ru>, Cosmin Tanislav <demonsingur@gmail.com>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Mehdi Djait <mehdi.djait.k@gmail.com>
Subject: Re: [PATCH v5 2/3] iio: accel: Support Kionix/ROHM KX022A
 accelerometer
Message-ID: <20231019121226.000078fe@Huawei.com>
In-Reply-To: <ceaf7033-d86b-4d63-b8e0-bc7445cf0df0@gmail.com>
References: <cover.1666614295.git.mazziesaccount@gmail.com>
	<758b00d6aea0a6431a5a3a78d557d449c113b21e.1666614295.git.mazziesaccount@gmail.com>
	<CAM+2Eu+Xp6j1ppLd+zHMTu6jfc6DQKBShfe-nAyokVi0MUmoSA@mail.gmail.com>
	<20231018203423.06f20a6c@jic23-huawei>
	<ceaf7033-d86b-4d63-b8e0-bc7445cf0df0@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected

On Thu, 19 Oct 2023 08:53:31 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> On 10/18/23 22:34, Jonathan Cameron wrote:
> > On Wed, 18 Oct 2023 01:37:12 +0530
> > Jagath Jog J <jagathjog1996@gmail.com> wrote: =20
>=20
> Hi Jagath - and thanks!
>=20
> >> Hi Matti,
> >>
> >> On Mon, Oct 24, 2022 at 6:10=E2=80=AFPM Matti Vaittinen
> >> <mazziesaccount@gmail.com> wrote: =20
> >>>
> >>> KX022A is a 3-axis accelerometer from ROHM/Kionix. The sensor features
> >>> include variable ODRs, I2C and SPI control, FIFO/LIFO with watermark =
IRQ,
> >>> tap/motion detection, wake-up & back-to-sleep events, four accelerati=
on
> >>> ranges (2, 4, 8 and 16g), and probably some other cool features. =20
> >>
> >> This is a nice driver, and I found it very helpful as a reference.
> >> One question regarding scale please see below.
> >> =20
> >>> + * range is typically +-2G/4G/8G/16G, distributed over the amount of=
 bits.
> >>> + * The scale table can be calculated using
> >>> + *     (range / 2^bits) * g =3D (range / 2^bits) * 9.80665 m/s^2
> >>> + *     =3D> KX022A uses 16 bit (HiRes mode - assume the low 8 bits a=
re zeroed
> >>> + *     in low-power mode(?) )
> >>> + *     =3D> +/-2G  =3D> 4 / 2^16 * 9,80665 * 10^6 (to scale to micro)
> >>> + *     =3D> +/-2G  - 598.550415
> >>> + *        +/-4G  - 1197.10083
> >>> + *        +/-8G  - 2394.20166
> >>> + *        +/-16G - 4788.40332
> >>> + */
> >>> +static const int kx022a_scale_table[][2] =3D {
> >>> +       { 598, 550415 },
> >>> +       { 1197, 100830 },
> >>> +       { 2394, 201660 },
> >>> +       { 4788, 403320 },
> >>> +}; =20
> >>
> >> Given that the integer part is non-zero, and
> >> IIO_VAL_INT_PLUS_MICRO is returned for read_scale,
> >> As raw value will never be fractional how does this
> >> correspond to a reading of 9.8 m/s=C2=B2 for the Z-axis? =20
> >=20
> > Definitely suspicious as should be in m/s^2 for an acceleration and
> > it should be
> >=20
> > 9.8*16/2^bits
> >=20
> > So I think these are out by a factor of 10^6 =20
> I think you are right. Looks like I misinterpreted the meaning of=20
> IIO_VAL_INT_PLUS_MICRO when I took my first tour in the IIO with this=20
> driver. The comment above the scale table does support that assumption=20
> ... 10^6 would match such a brainfart. (This is my first thought. I will=
=20
> take better look at this later today and see if I can come up with a fix=
=20
> if no-one else has sent a patch already).
>=20
> I CC'd Mehdi who has also been working on this driver.
>=20
> Regarding the KX022A - I am not aware of upstream users of this IC=20
> (yet). May be you're the first lucky one :) Hence, I am tempted to just=20
> fixing the driver - but it's Jonathan who will take the splatters when=20
> **** hits the fan - so it's his call to decide whether we can still fix=20
> this. _If_ there are users who have adapted to this buggy scale (users I=
=20
> am not aware of) then fix will break their apps. Mehdi, do you know any=20
> users of this upstream driver?

It's an ABI usage bug so allowed fix even if it has impacts...
Hopefully those aren't too painful for people to fix :(

So we fix and get it into stable asap.


>=20
> I will ping the HQ guy who has contacts to those who might be using the=20
> driver in a downstream repository and ask him to inform potential users.
>=20
> It'd be very nice to get this fixed.
>=20
> Sorry and thanks!
>=20
> Yours,
> 	-- Matti
>=20


