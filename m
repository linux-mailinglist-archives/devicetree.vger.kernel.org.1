Return-Path: <devicetree+bounces-1463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A087A66C2
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA90D1C20E3E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F192AB34;
	Tue, 19 Sep 2023 14:32:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38D0374C8
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 14:32:56 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C0483;
	Tue, 19 Sep 2023 07:32:54 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4RqkXj1xPXz67ZCr;
	Tue, 19 Sep 2023 22:28:05 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 19 Sep
 2023 15:32:52 +0100
Date: Tue, 19 Sep 2023 15:32:51 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>
CC: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, <ak@it-klinger.de>,
	<andriy.shevchenko@linux.intel.com>, <ang.iglesiasg@gmail.com>,
	<bbara93@gmail.com>, <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jic23@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>, <lars@metafoo.de>,
	<linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<matti.vaittinen@fi.rohmeurope.com>, <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/3] iio: pressure: Support ROHM BU1390
Message-ID: <20230919153251.000024d3@Huawei.com>
In-Reply-To: <7ec2ac97-8ee3-186b-ef25-ceb5ec57751a@gmail.com>
References: <cover.1694760170.git.mazziesaccount@gmail.com>
	<f378a401cec4fb0b9287b52ab159f00dd77569a6.1694760170.git.mazziesaccount@gmail.com>
	<cdc9a8f8-fbd5-1eb3-7bac-1e6e5893bc9b@wanadoo.fr>
	<7ec2ac97-8ee3-186b-ef25-ceb5ec57751a@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


> >> +static int bm1390_read_raw(struct iio_dev *idev,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct iio_chan_spec const=
 *chan,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int *val, int *val2, long =
mask)
> >> +{
> >> +=A0=A0=A0 struct bm1390_data *data =3D iio_priv(idev);
> >> +=A0=A0=A0 int ret;
> >> +
> >> +=A0=A0=A0 switch (mask) {
> >> +=A0=A0=A0 case IIO_CHAN_INFO_SCALE:
> >> +=A0=A0=A0=A0=A0=A0=A0 if (chan->type =3D=3D IIO_TEMP) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *val =3D 31;
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *val2 =3D 250000;
> >> +
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return IIO_VAL_INT_PLUS_MICRO;
> >> +=A0=A0=A0=A0=A0=A0=A0 } else if (chan->type =3D=3D IIO_PRESSURE) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *val =3D 0;
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /*
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * pressure in hPa is register va=
lue divided by 2048.
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * This means kPa is 1/20480 time=
s the register value,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * which equals to 48828.125 * 10=
 ^ -9
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * This is 48828.125 nano kPa.
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * When we scale this using IIO_V=
AL_INT_PLUS_NANO we
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * get 48828 - which means we los=
e some accuracy. Well,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * let's try to live with that.
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 */
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *val2 =3D 48828;
> >> +
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return IIO_VAL_INT_PLUS_NANO;
> >> +=A0=A0=A0=A0=A0=A0=A0 }
> >> +
> >> +=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> >> +=A0=A0=A0 case IIO_CHAN_INFO_RAW:
> >> +=A0=A0=A0=A0=A0=A0=A0 ret =3D iio_device_claim_direct_mode(idev);
> >> +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> +
> >> +=A0=A0=A0=A0=A0=A0=A0 ret =3D bm1390_read_data(data, chan, val, val2);
> >> +=A0=A0=A0=A0=A0=A0=A0 iio_device_release_direct_mode(idev);
> >> +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> +
> >> +=A0=A0=A0=A0=A0=A0=A0 return IIO_VAL_INT;
> >> +=A0=A0=A0 default:
> >> +=A0=A0=A0=A0=A0=A0=A0 return -EINVAL; =20
> >=20
> > Certainly useless, but should we break and return -EINVAL after the=20
> > switch, so that it is more explicit that bm1390_read_raw() always=20
> > returns a value? =20
>=20
> I think there is also opposite opinions on this. For my eyes the return=20
> at the end of the function would also be clearer - but I think I have=20
> been asked to drop the useless return when I've been working with other=20
> sensors in IIO domain :) My personal preference would definitely be:
>=20
> int ret;
>=20
> switch (foo)
> {
> case BAR:
> 	ret =3D func1();
> 	if (ret)
> 		break;
>=20
> 	ret =3D func2();
> 	if (ret)
> 		break;
>=20
> ...
> 	break;
>=20
> case BAZ:
> 	ret =3D -EINVAL;
> 	break;
> }
>=20
> return ret;
>=20
> - but I've learned to think this is not the IIO preference.

Some static analyzers get confused (probably when there is a little
bit more going on after the function) by that and moan that some
cases are not considered in the switch.  I got annoyed enough with the
noise they were generating to advocate always having explicit defaults.


>=20
>=20


