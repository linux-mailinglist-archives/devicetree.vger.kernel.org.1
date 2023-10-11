Return-Path: <devicetree+bounces-7633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C252B7C4F78
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D1E32821B7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 706CE1DA23;
	Wed, 11 Oct 2023 09:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="je9/BhbW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2C61A282
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:58:44 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458CD9E;
	Wed, 11 Oct 2023 02:58:43 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 66F7036E;
	Wed, 11 Oct 2023 11:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697018319;
	bh=LcxQmeIa9oj/Guis0vtL0NOlaEfqR6B8ls2rcg9StZw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=je9/BhbWDsccD2yg+eZUEC5I8HjOvMLprv+GpAK/0VrhkdT/vDGrG5VBMNPHiGs/r
	 RF3s1M9twClha4dLXzAd6NRgwjDQ/rc4VSkwbGEo6ZKhNYkm9AC5+Y9vgSpbmK1aUs
	 dNytrl1FbvhcvhUKJZK+YvkV/tHTwC3qNeJJlV7Q=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZSTrse7OeKIA+k2t@valkosipuli.retiisi.eu>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-4-kieran.bingham@ideasonboard.com> <ZSTrse7OeKIA+k2t@valkosipuli.retiisi.eu>
Subject: Re: [PATCH 3/5] media: i2c: imx335: Implement get selection API
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, open list <linux-kernel@vger.kernel.org>, laurent.pinchart@ideasonboard.com
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Wed, 11 Oct 2023 10:58:38 +0100
Message-ID: <169701831889.277971.6656559808677876108@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_OTHER_BAD_TLD,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Sakari Ailus (2023-10-10 07:14:09)
> Hi Kieran,
>=20
> On Tue, Oct 10, 2023 at 01:51:24AM +0100, Kieran Bingham wrote:
> > Support reporting of the Sensor Native and Active pixel array areas
> > through the Selection API.
> >=20
> > The implementation reports a single target crop only for the mode that
> > is presently exposed by the driver.
> >=20
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
>=20
> Shouldn't you use the same callback for .set_selection? I guess this is
> somewhat grey area but doing so would be in line with how V4L2 API works =
in
> general.

Hrm ... I didn't think it was needed as it's not possible to /set/
anything.

I expect to change this once I add support for setting crops later
though. It was going to be something I'd add when it is used.

Only the 'get_selection' call is necessary to make this camera operate
on both i.MX8MP and RPi5 platforms with libcamera, so that's what I've
done so far. My goal of this series was to bring the existing driver up
to a point that it can be used, before I start making new feature
additions.

--
Kieran

>=20
> Cc Laurent.
>=20
> > ---
> >  drivers/media/i2c/imx335.c | 44 ++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >=20
> > diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> > index bf12b9b69fce..026777eb362e 100644
> > --- a/drivers/media/i2c/imx335.c
> > +++ b/drivers/media/i2c/imx335.c
> > @@ -55,6 +55,14 @@
> >  #define IMX335_REG_MIN               0x00
> >  #define IMX335_REG_MAX               0xfffff
> > =20
> > +/* IMX335 native and active pixel array size. */
> > +#define IMX335_NATIVE_WIDTH          2616U
> > +#define IMX335_NATIVE_HEIGHT         1964U
> > +#define IMX335_PIXEL_ARRAY_LEFT              12U
> > +#define IMX335_PIXEL_ARRAY_TOP               12U
> > +#define IMX335_PIXEL_ARRAY_WIDTH     2592U
> > +#define IMX335_PIXEL_ARRAY_HEIGHT    1944U
> > +
> >  /**
> >   * struct imx335_reg - imx335 sensor register
> >   * @address: Register address
> > @@ -651,6 +659,41 @@ static int imx335_init_pad_cfg(struct v4l2_subdev =
*sd,
> >       return imx335_set_pad_format(sd, sd_state, &fmt);
> >  }
> > =20
> > +/**
> > + * imx335_get_selection() - Selection API
> > + * @sd: pointer to imx335 V4L2 sub-device structure
> > + * @sd_state: V4L2 sub-device configuration
> > + * @sel: V4L2 selection info
> > + *
> > + * Return: 0 if successful, error code otherwise.
> > + */
> > +static int imx335_get_selection(struct v4l2_subdev *sd,
> > +                             struct v4l2_subdev_state *sd_state,
> > +                             struct v4l2_subdev_selection *sel)
> > +{
> > +     switch (sel->target) {
> > +     case V4L2_SEL_TGT_NATIVE_SIZE:
> > +             sel->r.top =3D 0;
> > +             sel->r.left =3D 0;
> > +             sel->r.width =3D IMX335_NATIVE_WIDTH;
> > +             sel->r.height =3D IMX335_NATIVE_HEIGHT;
> > +
> > +             return 0;
> > +
> > +     case V4L2_SEL_TGT_CROP:
> > +     case V4L2_SEL_TGT_CROP_DEFAULT:
> > +     case V4L2_SEL_TGT_CROP_BOUNDS:
> > +             sel->r.top =3D IMX335_PIXEL_ARRAY_TOP;
> > +             sel->r.left =3D IMX335_PIXEL_ARRAY_LEFT;
> > +             sel->r.width =3D IMX335_PIXEL_ARRAY_WIDTH;
> > +             sel->r.height =3D IMX335_PIXEL_ARRAY_HEIGHT;
> > +
> > +             return 0;
> > +     }
> > +
> > +     return -EINVAL;
> > +}
> > +
> >  /**
> >   * imx335_start_streaming() - Start sensor stream
> >   * @imx335: pointer to imx335 device
> > @@ -864,6 +907,7 @@ static const struct v4l2_subdev_pad_ops imx335_pad_=
ops =3D {
> >       .init_cfg =3D imx335_init_pad_cfg,
> >       .enum_mbus_code =3D imx335_enum_mbus_code,
> >       .enum_frame_size =3D imx335_enum_frame_size,
> > +     .get_selection =3D imx335_get_selection,
> >       .get_fmt =3D imx335_get_pad_format,
> >       .set_fmt =3D imx335_set_pad_format,
> >  };
>=20
> --=20
> Regards,
>=20
> Sakari Ailus

