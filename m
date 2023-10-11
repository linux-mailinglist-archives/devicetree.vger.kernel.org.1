Return-Path: <devicetree+bounces-7722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CDE7C5293
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E137D1C209A6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86D81EA76;
	Wed, 11 Oct 2023 11:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="QsGzcFvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D55D1EA72
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:54:41 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC16393;
	Wed, 11 Oct 2023 04:54:40 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0282036E;
	Wed, 11 Oct 2023 13:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697025277;
	bh=uSJHF77+bdJywKSApm8/+rmMQM9COQywfVb+d0e7I/c=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=QsGzcFvQ4klLkB6FlMO2RSne6qj0OPfBrCZPiSP3ocFmz1481irLKVsptGAlsZYKJ
	 YYTujmNPaIqkVMmf+om75p1JtbuLXqAEkx91h6ypUh+omXgvr2Si3Z81PZ/XOFNWif
	 ZuCq21efMszFh7FBI9UXmrkj+uMpdSlWghWRj+Ks=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZSaBq5ucJ5PrxI00@valkosipuli.retiisi.eu>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com> <20231010005126.3425444-3-kieran.bingham@ideasonboard.com> <ZSTrOB10pDhJq6gG@valkosipuli.retiisi.eu> <169701731909.277971.10840095252716847805@ping.linuxembedded.co.uk> <ZSaBq5ucJ5PrxI00@valkosipuli.retiisi.eu>
Subject: Re: [PATCH 2/5] media: i2c: imx335: Enable regulator supplies
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>, Paul J. Murphy <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, open list <linux-kernel@vger.kernel.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Wed, 11 Oct 2023 12:54:36 +0100
Message-ID: <169702527676.3973464.1153045528248913183@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Sakari Ailus (2023-10-11 12:06:19)
> Hi Kieran,
>=20
> On Wed, Oct 11, 2023 at 10:41:59AM +0100, Kieran Bingham wrote:
> > Quoting Sakari Ailus (2023-10-10 07:12:08)
> > > Hi Kieran,
> > >=20
> > > On Tue, Oct 10, 2023 at 01:51:23AM +0100, Kieran Bingham wrote:
> > > > Provide support for enabling and disabling regulator supplies to co=
ntrol
> > > > power to the camera sensor.
> > > >=20
> > > > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > > > ---
> > > >  drivers/media/i2c/imx335.c | 41 ++++++++++++++++++++++++++++++++++=
++--
> > > >  1 file changed, 39 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> > > > index ec729126274b..bf12b9b69fce 100644
> > > > --- a/drivers/media/i2c/imx335.c
> > > > +++ b/drivers/media/i2c/imx335.c
> > > > @@ -75,6 +75,19 @@ struct imx335_reg_list {
> > > >       const struct imx335_reg *regs;
> > > >  };
> > > > =20
> > > > +static const char * const imx335_supply_name[] =3D {
> > > > +     /*
> > > > +      * Turn on the power supplies so that they rise in order of
> > > > +      *           1.2v,-> 1.8 -> 2.9v
> > >=20
> > > This won't happen with regulator_bulk_enable(). Does the spec require=
 this?
> >=20
> > Every camera I've ever seen handles this in hardware. (I know that's not
> > an excuse as somewhere there could be a device that routes each of these
> > separately).
> >=20
> > Perhaps I shouldn't have added the comment ;-) But I thought it was
> > useful while I was working through anyway, and could be important for
> > other devices indeed.
> >=20
> > The datasheet states:
> >=20
> > ```
> > 1. Turn On the power supplies so that the power supplies rise in order
> > of 1.2 V power supply (DVDD1, DVDD2) =E2=86=92 1.8 V power supply (OVDD=
) =E2=86=92 2.9 V
> > power supply (AVDD1, AVDD2). In addition, all power supplies should
> > finish rising within 200 ms.
>=20
> That's an annoying requirement but I'd presume this to work just fine in
> practice. The device is reset in any case (as you describe below). Some
> boards might not wire the reset GPIO though, and then it's when it gets
> interesting.

Correct - this board does not expose the reset/XCLR to me anyway, so I
can not control that.

> To literally implement the documented sequence, you should separately
> enable the regulators one by one.
>=20
> Although I don't object just removing the comment either.

Given that neither the existing user, nor this user (me) need this,
*and* the schematics of my (working) camera module show that it's fine
to enable all regulators at the same time - I'll remove the comment.

--
Thanks

Kieran

>=20
> --=20
> Regards,
>=20
> Sakari Ailus

