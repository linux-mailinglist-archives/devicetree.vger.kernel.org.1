Return-Path: <devicetree+bounces-12155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AF87D81E2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:36:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62C44B211CE
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71DD82D05A;
	Thu, 26 Oct 2023 11:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="gmSyXJoh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE4B2D022
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:36:12 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 533EB1A6;
	Thu, 26 Oct 2023 04:36:10 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4C6E983B;
	Thu, 26 Oct 2023 13:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698320152;
	bh=3J1zW6vJbN0ZPEVT41jA29B2NH3cxfkd2aquGwq/Rl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gmSyXJohwrhb64vD0qAeYE5ZQKFoszfn9eG61TKV56cR6LOaJncpo388lxekwAb0V
	 Cf4auU/IuQi+fHPzxDbtMRrc9W44M1fQfd4UVbhOBSBmVUXQuLoQH9ynKibt5VWu0l
	 GnhH5CsdythbIc9q1J35p5BBs6KHoL2JAZB242o4=
Date: Thu, 26 Oct 2023 14:36:10 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Alain Volmat <alain.volmat@foss.st.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Russell King <linux@armlinux.org.uk>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Dan Scally <dan.scally@ideasonboard.com>,
	Hugues Fruchet <hugues.fruchet@foss.st.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/5] media: stm32-dcmipp: STM32 DCMIPP camera
 interface driver
Message-ID: <20231026113610.GA26306@pendragon.ideasonboard.com>
References: <20231010082413.1717919-1-alain.volmat@foss.st.com>
 <20231010082413.1717919-4-alain.volmat@foss.st.com>
 <ZTpJecRqYS0lMEQb@kekkonen.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZTpJecRqYS0lMEQb@kekkonen.localdomain>

Hi Sakari,

On Thu, Oct 26, 2023 at 11:11:53AM +0000, Sakari Ailus wrote:
> On Tue, Oct 10, 2023 at 10:24:03AM +0200, Alain Volmat wrote:
> > From: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > 
> > This V4L2 subdev driver enables Digital Camera Memory Interface
> > Pixel Processor(DCMIPP) of STMicroelectronics STM32 SoC series.
> > 
> > Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> > ---
> >  drivers/media/platform/st/stm32/Kconfig       |  15 +
> >  drivers/media/platform/st/stm32/Makefile      |   1 +
> >  .../platform/st/stm32/stm32-dcmipp/Makefile   |   4 +
> >  .../st/stm32/stm32-dcmipp/dcmipp-bytecap.c    | 916 ++++++++++++++++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-byteproc.c   | 555 +++++++++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-common.c     | 106 ++
> >  .../st/stm32/stm32-dcmipp/dcmipp-common.h     | 216 +++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-core.c       | 603 ++++++++++++
> >  .../st/stm32/stm32-dcmipp/dcmipp-parallel.c   | 441 +++++++++
> >  9 files changed, 2857 insertions(+)
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/Makefile
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
> >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c

[snip]

> > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > new file mode 100644
> > index 000000000000..4f784c5791e7
> > --- /dev/null
> > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > @@ -0,0 +1,916 @@

[snip]

> > +static const struct dcmipp_bytecap_pix_map *
> > +dcmipp_bytecap_pix_map_by_pixelformat(u32 pixelformat)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(dcmipp_bytecap_pix_map_list); i++) {
> 
> No need for braces. Up to you.

For what it's worth, I usually ask for braces in my reviews for these
kind of cases :-)

> > +		if (dcmipp_bytecap_pix_map_list[i].pixelformat == pixelformat)
> > +			return &dcmipp_bytecap_pix_map_list[i];
> > +	}
> > +
> > +	return NULL;
> > +}

[snip]

-- 
Regards,

Laurent Pinchart

