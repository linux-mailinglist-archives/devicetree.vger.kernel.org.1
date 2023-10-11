Return-Path: <devicetree+bounces-7631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CB07C4F6E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C626C28224C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00BAE1D699;
	Wed, 11 Oct 2023 09:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="qTufg/sk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F31A282
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:54:49 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 871459D;
	Wed, 11 Oct 2023 02:54:48 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C4F1536E;
	Wed, 11 Oct 2023 11:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697018084;
	bh=KGRaSnGmodRsiOLgPmKHJ75sB+a4VRuhYaC1ejv5CPI=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=qTufg/sku2LlG62RMJRhrMGud5o8xSAgMULLSAklYe3Ju6TC5jtK4O15uCogy6ryj
	 UiufwwDS23h3L4pg9omaioh/R4RIoN5/iCkFj2Y6ChyPZW6sKX7z5gPLgAEVkvzvmA
	 3SsbYRkR9+xpffh4EH9yLCiyKsLq8CX14akXHbUQ=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <b9eb03cd-41b3-7d1c-d8c0-fb4fc98af8e1@ideasonboard.com>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-3-kieran.bingham@ideasonboard.com> <b9eb03cd-41b3-7d1c-d8c0-fb4fc98af8e1@ideasonboard.com>
Subject: Re: [PATCH 2/5] media: i2c: imx335: Enable regulator supplies
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, open list <linux-kernel@vger.kernel.org>
To: Umang Jain <umang.jain@ideasonboard.com>, devicetree@vger.kernel.org, linux-media@vger.kernel.org
Date: Wed, 11 Oct 2023 10:54:44 +0100
Message-ID: <169701808415.277971.3274627906952591215@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Umang Jain (2023-10-10 05:06:45)
> Hi Kieran,
>=20
> Thank you for the patch.
>=20
> On 10/10/23 6:21 AM, Kieran Bingham wrote:
> > Provide support for enabling and disabling regulator supplies to control
> > power to the camera sensor.
> >
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > ---
> >   drivers/media/i2c/imx335.c | 41 ++++++++++++++++++++++++++++++++++++--
> >   1 file changed, 39 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> > index ec729126274b..bf12b9b69fce 100644
> > --- a/drivers/media/i2c/imx335.c
> > +++ b/drivers/media/i2c/imx335.c
> > @@ -75,6 +75,19 @@ struct imx335_reg_list {
> >       const struct imx335_reg *regs;
> >   };
> >  =20
> > +static const char * const imx335_supply_name[] =3D {
> > +     /*
> > +      * Turn on the power supplies so that they rise in order of
> > +      *           1.2v,-> 1.8 -> 2.9v
> > +      * All power supplies should finish rising within 200ms.
> > +      */
> > +     "avdd", /* Analog (2.9V) supply */
> > +     "ovdd", /* Digital I/O (1.8V) supply */
> > +     "dvdd", /* Digital Core (1.2V) supply */
> > +};
> > +
> > +#define IMX335_NUM_SUPPLIES ARRAY_SIZE(imx335_supply_name)
> > +
> >   /**
> >    * struct imx335_mode - imx335 sensor mode structure
> >    * @width: Frame width
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
> >  =20
> > +     for (i =3D 0; i < IMX335_NUM_SUPPLIES; i++)
> > +             imx335->supplies[i].supply =3D imx335_supply_name[i];
> > +
> > +     ret =3D devm_regulator_bulk_get(imx335->dev,
> > +                                   IMX335_NUM_SUPPLIES,
> > +                                   imx335->supplies);
>=20
> Shouldn't this go directly in=C2=A0 probe() function ? (Taking IMX219 dri=
ver=20
> as a reference..)

I don't think it needs to no. This is a convenience function called
"imx335_parse_hw_config()" which is called from probe(). It just wraps
all of the interactions with the device-tree/firmware layer, and I think
identifying regulators counts as within that remit.


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
> >  =20
> > +     ret =3D regulator_bulk_enable(IMX335_NUM_SUPPLIES,
> > +                                 imx335->supplies);
> > +     if (ret) {
> > +             dev_err(dev, "%s: failed to enable regulators\n",
> > +                     __func__);
> > +             return ret;
> > +     }
> > +
> > +     usleep_range(500, 550); /* Tlow */
> > +
> > +     /* Set XCLR */
> >       gpiod_set_value_cansleep(imx335->reset_gpio, 1);
> >  =20
> >       ret =3D clk_prepare_enable(imx335->inclk);
> > @@ -867,7 +904,7 @@ static int imx335_power_on(struct device *dev)
> >               goto error_reset;
> >       }
> >  =20
> > -     usleep_range(20, 22);
> > +     usleep_range(20, 22); /* T4 */
>=20
> It would be help to document this addition of comment in the commit=20
> message as well.

Yes, I can add a statement saying that "I also extend the comments of the
existing code regarding the power on sequence". T4 in this instance
relates to the entry in the data sheet which specifies how long this
delay should be, and the 'reset_gpio' is known as XCLR in the datasheet.

> >  =20
> >       return 0;
> >  =20
> > @@ -889,8 +926,8 @@ static int imx335_power_off(struct device *dev)
> >       struct imx335 *imx335 =3D to_imx335(sd);
> >  =20
> >       gpiod_set_value_cansleep(imx335->reset_gpio, 0);
> > -
> >       clk_disable_unprepare(imx335->inclk);
> > +     regulator_bulk_disable(IMX335_NUM_SUPPLIES, imx335->supplies);
> >  =20
> >       return 0;
> >   }
>

