Return-Path: <devicetree+bounces-7625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF657C4F4C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0368228253D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5151F1CFA3;
	Wed, 11 Oct 2023 09:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="gZoVv+dF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CB61856
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:42:05 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D5B791;
	Wed, 11 Oct 2023 02:42:03 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5EE328C;
	Wed, 11 Oct 2023 11:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697017319;
	bh=TM4r+A4qVuoh6k/VR895QUIac3sI+k/sOOesSsvdlR4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=gZoVv+dFNzzTywvO0kNj0wC6bN3mxfH2mi4Do2gfkh9Vt1cZvmWhQt8o24mD4ZXmi
	 lErWQJ0++q8z1vDjwVOhCa3B0qHh15f+Gm8sWF9INKAzb31LUqWFypdyukBpnAZkoe
	 ZagUYHqR3bC+zBSrsAMLohd4O1JoelRom3wgkAkM=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZSTrOB10pDhJq6gG@valkosipuli.retiisi.eu>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-3-kieran.bingham@ideasonboard.com> <ZSTrOB10pDhJq6gG@valkosipuli.retiisi.eu>
Subject: Re: [PATCH 2/5] media: i2c: imx335: Enable regulator supplies
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, open list <linux-kernel@vger.kernel.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Wed, 11 Oct 2023 10:41:59 +0100
Message-ID: <169701731909.277971.10840095252716847805@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Sakari Ailus (2023-10-10 07:12:08)
> Hi Kieran,
>=20
> On Tue, Oct 10, 2023 at 01:51:23AM +0100, Kieran Bingham wrote:
> > Provide support for enabling and disabling regulator supplies to control
> > power to the camera sensor.
> >=20
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > ---
> >  drivers/media/i2c/imx335.c | 41 ++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 39 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> > index ec729126274b..bf12b9b69fce 100644
> > --- a/drivers/media/i2c/imx335.c
> > +++ b/drivers/media/i2c/imx335.c
> > @@ -75,6 +75,19 @@ struct imx335_reg_list {
> >       const struct imx335_reg *regs;
> >  };
> > =20
> > +static const char * const imx335_supply_name[] =3D {
> > +     /*
> > +      * Turn on the power supplies so that they rise in order of
> > +      *           1.2v,-> 1.8 -> 2.9v
>=20
> This won't happen with regulator_bulk_enable(). Does the spec require thi=
s?

Every camera I've ever seen handles this in hardware. (I know that's not
an excuse as somewhere there could be a device that routes each of these
separately).

Perhaps I shouldn't have added the comment ;-) But I thought it was
useful while I was working through anyway, and could be important for
other devices indeed.

The datasheet states:

```
1. Turn On the power supplies so that the power supplies rise in order
of 1.2 V power supply (DVDD1, DVDD2) =E2=86=92 1.8 V power supply (OVDD) =
=E2=86=92 2.9 V
power supply (AVDD1, AVDD2). In addition, all power supplies should
finish rising within 200 ms.

2. The register values are undefined immediately after power-on, so the
system must be cleared. Hold XCLR at Low level for 500 ns or more after
all the power supplies have finished rising. (The register values after
a system clear are the default values.)

3. The system clear is applied by setting XCLR to High level. The maser
clock input after setting the XCLR pin to High level.

4. Make the sensor setting by register communication after the system clear.
```

Regarding 1: T0, and T1 minimum values are '0', so they can all be
enabled at the same time - but of course there will be 'some' interval
between each one. I don't know if that still stipulates the exact
ordering is essential. Perhaps it does.

I don't know how far splitting this out becomes overengineering. Are
there other sensor drivers that already split out each regulator line
with a dedicated ordering? If so - this probably calls for some sort of
ordered bulk regulator enable helper.


> > +      * All power supplies should finish rising within 200ms.
> > +      */
> > +     "avdd", /* Analog (2.9V) supply */
> > +     "ovdd", /* Digital I/O (1.8V) supply */
> > +     "dvdd", /* Digital Core (1.2V) supply */
> > +};
> > +
> > +#define IMX335_NUM_SUPPLIES ARRAY_SIZE(imx335_supply_name)
> > +
> >  /**
> >   * struct imx335_mode - imx335 sensor mode structure
> >   * @width: Frame width
> > @@ -126,6 +139,8 @@ struct imx335 {
> >       struct v4l2_subdev sd;
> >       struct media_pad pad;
> >       struct gpio_desc *reset_gpio;
> > +     struct regulator_bulk_data supplies[IMX335_NUM_SUPPLIES];
> > +
> >       struct clk *inclk;
> >       struct v4l2_ctrl_handler ctrl_handler;
> >       struct v4l2_ctrl *link_freq_ctrl;
> > @@ -781,6 +796,17 @@ static int imx335_parse_hw_config(struct imx335 *i=
mx335)
> >               return PTR_ERR(imx335->reset_gpio);
> >       }
> > =20
> > +     for (i =3D 0; i < IMX335_NUM_SUPPLIES; i++)
> > +             imx335->supplies[i].supply =3D imx335_supply_name[i];
> > +
> > +     ret =3D devm_regulator_bulk_get(imx335->dev,
> > +                                   IMX335_NUM_SUPPLIES,
> > +                                   imx335->supplies);
> > +     if (ret) {
> > +             dev_err(imx335->dev, "Failed to get regulators\n");
> > +             return ret;
> > +     }
> > +
> >       /* Get sensor input clock */
> >       imx335->inclk =3D devm_clk_get(imx335->dev, NULL);
> >       if (IS_ERR(imx335->inclk)) {
> > @@ -859,6 +885,17 @@ static int imx335_power_on(struct device *dev)
> >       struct imx335 *imx335 =3D to_imx335(sd);
> >       int ret;
> > =20
> > +     ret =3D regulator_bulk_enable(IMX335_NUM_SUPPLIES,
> > +                                 imx335->supplies);
> > +     if (ret) {
> > +             dev_err(dev, "%s: failed to enable regulators\n",
> > +                     __func__);
> > +             return ret;
> > +     }
> > +
> > +     usleep_range(500, 550); /* Tlow */
>=20
> You're not handling the error case later on in the function.

Ah yes - thanks. I'll fix this.

--
Kieran


>=20
> > +
> > +     /* Set XCLR */
> >       gpiod_set_value_cansleep(imx335->reset_gpio, 1);
> > =20
> >       ret =3D clk_prepare_enable(imx335->inclk);
> > @@ -867,7 +904,7 @@ static int imx335_power_on(struct device *dev)
> >               goto error_reset;
> >       }
> > =20
> > -     usleep_range(20, 22);
> > +     usleep_range(20, 22); /* T4 */
> > =20
> >       return 0;
> > =20
> > @@ -889,8 +926,8 @@ static int imx335_power_off(struct device *dev)
> >       struct imx335 *imx335 =3D to_imx335(sd);
> > =20
> >       gpiod_set_value_cansleep(imx335->reset_gpio, 0);
> > -
> >       clk_disable_unprepare(imx335->inclk);
> > +     regulator_bulk_disable(IMX335_NUM_SUPPLIES, imx335->supplies);
> > =20
> >       return 0;
> >  }
>=20
> --=20
> Regards,
>=20
> Sakari Ailus

