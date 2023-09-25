Return-Path: <devicetree+bounces-3149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F367AD780
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B9EF6281D2C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 158BB1B26C;
	Mon, 25 Sep 2023 12:04:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2600A1B265
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:04:31 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9298E76;
	Mon, 25 Sep 2023 05:04:29 -0700 (PDT)
Received: from pd9e2f713.dip0.t-ipconnect.de ([217.226.247.19] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qkkK2-004AN8-EF; Mon, 25 Sep 2023 14:04:18 +0200
Date: Mon, 25 Sep 2023 14:04:15 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 bcousson@baylibre.com, tony@atomide.com, jean-baptiste.maneyrol@tdk.com,
 chenhuiz@axis.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH 2/3] iio: imu: mpu6050: add level shifter flag
Message-ID: <20230925140415.00130082@aktux>
In-Reply-To: <CAHp75VfvmED4ZsmrH4B6m9kGsH=68-zjQd5JMszb6UBTtbF0bw@mail.gmail.com>
References: <20230924222559.2038721-1-andreas@kemnade.info>
	<20230924222559.2038721-3-andreas@kemnade.info>
	<CAHp75VfvmED4ZsmrH4B6m9kGsH=68-zjQd5JMszb6UBTtbF0bw@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 25 Sep 2023 14:07:58 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Mon, Sep 25, 2023 at 1:26=E2=80=AFAM Andreas Kemnade <andreas@kemnade.=
info> wrote:
> >
> > Some boards fail in magnetometer probe if flag is not set. =20
>=20
> Which flag? Can you elaborate a bit more?
>=20
well see $subj. The level shifter flag.

> Does it deserve the Fixes tag?
>=20
As there are only certain boards affected, they would also have
to add the flag in dtb, I do not think it deservers a Fixes tag.
Even in the board I have here, there are basically two
mpu9150 connected per cable, only one of them needs the flag.

> ...
>=20
> >         unsigned int val;
> >         int ret; =20
>=20
> > +       ret =3D regmap_update_bits(st->map, 0x1, 0x80,
> > +                                st->level_shifter ? 0x80 : 0); =20
>=20
> This is a bit cryptic, what does 1 stand for?
>=20
Well, I do not find anything in
https://invensense.tdk.com/wp-content/uploads/2015/02/MPU-9150-Register-Map=
.pdf
I have just found a similar line in the ancient 3.0 vendor kernel. No symbo=
lic
names there.

Regards,
Andreas

