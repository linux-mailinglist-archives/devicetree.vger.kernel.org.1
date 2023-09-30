Return-Path: <devicetree+bounces-4881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A9E7B4256
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 18:50:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 3364AB20B48
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DDD7C8ED;
	Sat, 30 Sep 2023 16:50:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF5C8833
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 16:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9ECC6C433C8;
	Sat, 30 Sep 2023 16:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696092641;
	bh=OTkb1E0PPw2D7ygMLBvwA1rj6YmAqeA4kxe9Z0cnOC4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=OkTb5oFVCWTIRcVf3Mw5n2rvmNYhADdI4BU9nErg65ZEpxqZUrqjtUnFT+RTznZyb
	 H6lBWGJ8cisApYVtvTfG+BKwDZbAWXItMpeDBVnrdUalYeppLZFMuWjV+i90E21T7O
	 2drd89tICMtFz1YbSeNo4eSqFa6zHilmNzrmOAGEi9o0qMWAhRQz66gEk6H94P/6Q1
	 zeEaCvVTXWOtoqMzL4Iqn7GerPvwtiauqyq/fAIzDc0eLS3RNEfwgU9Tkf50rB0FOe
	 R09j4sKGm6BbGs1TaYDPSc37w56kRsoeONIPZXSoVJgIZMjozeqYFpJalz7Hc2RtC7
	 jU9J8klPnAyog==
Date: Sat, 30 Sep 2023 17:50:39 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com>
Cc: Andreas Kemnade <andreas@kemnade.info>, "lars@metafoo.de"
 <lars@metafoo.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "bcousson@baylibre.com"
 <bcousson@baylibre.com>, "tony@atomide.com" <tony@atomide.com>,
 "chenhuiz@axis.com" <chenhuiz@axis.com>, "andy.shevchenko@gmail.com"
 <andy.shevchenko@gmail.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-omap@vger.kernel.org"
 <linux-omap@vger.kernel.org>
Subject: Re: [PATCH v3 2/3] iio: imu: mpu6050: add level shifter flag
Message-ID: <20230930175039.2d311d6b@jic23-huawei>
In-Reply-To: <FR3P281MB1757489A956DC26596AA90B6CEC2A@FR3P281MB1757.DEUP281.PROD.OUTLOOK.COM>
References: <20230927173245.2151083-1-andreas@kemnade.info>
	<20230927173245.2151083-3-andreas@kemnade.info>
	<FR3P281MB1757489A956DC26596AA90B6CEC2A@FR3P281MB1757.DEUP281.PROD.OUTLOOK.COM>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 27 Sep 2023 19:08:31 +0000
Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com> wrote:

> Hello,
>=20
> looks good for me.
>=20
> Acked-by: Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>

Applied patches 1 and 2 to the togreg branch of iio.git which I will
initially push out as testing to let 0-day poke at it,

Thanks,

Jonathan

>=20
> Thanks,
> JB
>=20
>=20
> From: Andreas Kemnade <andreas@kemnade.info>
> Sent: Wednesday, September 27, 2023 19:32
> To: jic23@kernel.org <jic23@kernel.org>; lars@metafoo.de <lars@metafoo.de=
>; robh+dt@kernel.org <robh+dt@kernel.org>; krzysztof.kozlowski+dt@linaro.o=
rg <krzysztof.kozlowski+dt@linaro.org>; conor+dt@kernel.org <conor+dt@kerne=
l.org>; bcousson@baylibre.com <bcousson@baylibre.com>; tony@atomide.com <to=
ny@atomide.com>; andreas@kemnade.info <andreas@kemnade.info>; chenhuiz@axis=
.com <chenhuiz@axis.com>; Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@td=
k.com>; andy.shevchenko@gmail.com <andy.shevchenko@gmail.com>; linux-iio@vg=
er.kernel.org <linux-iio@vger.kernel.org>; devicetree@vger.kernel.org <devi=
cetree@vger.kernel.org>; linux-kernel@vger.kernel.org <linux-kernel@vger.ke=
rnel.org>; linux-omap@vger.kernel.org <linux-omap@vger.kernel.org>
> Subject: [PATCH v3 2/3] iio: imu: mpu6050: add level shifter flag=20
> =C2=A0
> Some boards fail in magnetometer probe if level shifter flag is not set, =
definition was found in the vendor Linux kernel v3.=E2=80=8A0. Signed-off-b=
y: Andreas Kemnade <andreas@=E2=80=8Akemnade.=E2=80=8Ainfo> Reviewed-by: An=
dy Shevchenko <andy.=E2=80=8Ashevchenko@=E2=80=8Agmail.=E2=80=8Acom>=20
> ZjQcmQRYFpfptBannerStart
> This Message Is From an External Sender=20
> This message came from outside your organization.=20
> =C2=A0
> ZjQcmQRYFpfptBannerEnd
> Some boards fail in magnetometer probe if level shifter flag is not set,
> definition was found in the vendor Linux kernel v3.0.
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> ---
>  drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c  | 13 +++++++++++++
>  drivers/iio/imu/inv_mpu6050/inv_mpu_core.c |  3 +++
>  drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h  |  1 +
>  3 files changed, 17 insertions(+)
>=20
> diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c b/drivers/iio/imu/=
inv_mpu6050/inv_mpu_aux.c
> index 7327e5723f961..8a7f2911905af 100644
> --- a/drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c
> +++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c
> @@ -71,6 +71,19 @@ int inv_mpu_aux_init(const struct inv_mpu6050_state *s=
t)
>  	unsigned int val;
>  	int ret;
> =20
> +	/*
> +	 * Code based on the vendor Linux kernel v3.0,
> +	 * the exact meaning is unknown.
> +	 */
> +	if (st->chip_type =3D=3D INV_MPU9150) {
> +		unsigned int mask =3D BIT(7);
> +
> +		val =3D st->level_shifter ? mask : 0;
> +		ret =3D regmap_update_bits(st->map, 0x1, mask, val);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	/* configure i2c master */
>  	val =3D INV_MPU6050_BITS_I2C_MST_CLK_400KHZ |
>  			INV_MPU6050_BIT_WAIT_FOR_ES;
> diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c b/drivers/iio/imu=
/inv_mpu6050/inv_mpu_core.c
> index 29f906c884bd8..3fbeef1a70186 100644
> --- a/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
> +++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
> @@ -17,6 +17,7 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/pm.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/property.h>
> =20
>  #include <linux/iio/common/inv_sensors_timestamp.h>
>  #include <linux/iio/iio.h>
> @@ -1495,6 +1496,8 @@ int inv_mpu_core_probe(struct regmap *regmap, int i=
rq, const char *name,
>  	st->irq =3D irq;
>  	st->map =3D regmap;
> =20
> +	st->level_shifter =3D device_property_read_bool(dev,
> +						      "invensense,level-shifter");
>  	pdata =3D dev_get_platdata(dev);
>  	if (!pdata) {
>  		result =3D iio_read_mount_matrix(dev, &st->orientation);
> diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h b/drivers/iio/imu/=
inv_mpu6050/inv_mpu_iio.h
> index ed5a96e78df05..7eba1439c8093 100644
> --- a/drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h
> +++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h
> @@ -203,6 +203,7 @@ struct inv_mpu6050_state {
>  	s32 magn_raw_to_gauss[3];
>  	struct iio_mount_matrix magn_orient;
>  	unsigned int suspended_sensors;
> +	bool level_shifter;
>  	u8 *data;
>  };
> =20


