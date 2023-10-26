Return-Path: <devicetree+bounces-12160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D33AB7D8235
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 171971C20E43
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1B42D7AE;
	Thu, 26 Oct 2023 12:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="aCskNPz2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7573A2D04E
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:04:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 201EE111;
	Thu, 26 Oct 2023 05:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698321848; x=1729857848;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bPxFPOB+uABI4b6Z29a2Va3fCZZ8fMnOaXE6EGDl+gA=;
  b=aCskNPz2t30rymQh8/G6phZ9v2r6j079OUTgrzQPlountbHNBM/l7UkY
   rIYz8FZqKn+jY0m9sfX3UIVW98INu5/B8idIqCgcvpIzGiD+8FvARzwip
   9dO+44AOsirJavxIbgGF6W6Le/+QQxw/8W+NZV9oOEJs/Sgz7ASDCpv7s
   TBOyqKZUAZjALYXcnZ3sjSBVFwLAZfnEIEoRkOjKCZvVgSqgtIsVKgd3N
   3A2Xb9lGf+kEK17GbUUZuwYg6Y2YeDh19CNoskCEiyfKvh/4z6guUMOMy
   Ma1i7nmORbAcz31KzNcFMwC2JMurv+mNpin65Z/EmDJfBJihXhLGCbuHL
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="390388811"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="390388811"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2023 05:04:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="829607382"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="829607382"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2023 05:04:03 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 4CEBF11F758;
	Thu, 26 Oct 2023 15:04:00 +0300 (EEST)
Date: Thu, 26 Oct 2023 12:04:00 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
Message-ID: <ZTpVsO9pHoPjF_JX@kekkonen.localdomain>
References: <20231010082413.1717919-1-alain.volmat@foss.st.com>
 <20231010082413.1717919-4-alain.volmat@foss.st.com>
 <ZTpJecRqYS0lMEQb@kekkonen.localdomain>
 <20231026113610.GA26306@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026113610.GA26306@pendragon.ideasonboard.com>

On Thu, Oct 26, 2023 at 02:36:10PM +0300, Laurent Pinchart wrote:
> Hi Sakari,
> 
> On Thu, Oct 26, 2023 at 11:11:53AM +0000, Sakari Ailus wrote:
> > On Tue, Oct 10, 2023 at 10:24:03AM +0200, Alain Volmat wrote:
> > > From: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > > 
> > > This V4L2 subdev driver enables Digital Camera Memory Interface
> > > Pixel Processor(DCMIPP) of STMicroelectronics STM32 SoC series.
> > > 
> > > Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > > Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> > > ---
> > >  drivers/media/platform/st/stm32/Kconfig       |  15 +
> > >  drivers/media/platform/st/stm32/Makefile      |   1 +
> > >  .../platform/st/stm32/stm32-dcmipp/Makefile   |   4 +
> > >  .../st/stm32/stm32-dcmipp/dcmipp-bytecap.c    | 916 ++++++++++++++++++
> > >  .../st/stm32/stm32-dcmipp/dcmipp-byteproc.c   | 555 +++++++++++
> > >  .../st/stm32/stm32-dcmipp/dcmipp-common.c     | 106 ++
> > >  .../st/stm32/stm32-dcmipp/dcmipp-common.h     | 216 +++++
> > >  .../st/stm32/stm32-dcmipp/dcmipp-core.c       | 603 ++++++++++++
> > >  .../st/stm32/stm32-dcmipp/dcmipp-parallel.c   | 441 +++++++++
> > >  9 files changed, 2857 insertions(+)
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/Makefile
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-byteproc.c
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.c
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-common.h
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
> > >  create mode 100644 drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-parallel.c
> 
> [snip]
> 
> > > diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > > new file mode 100644
> > > index 000000000000..4f784c5791e7
> > > --- /dev/null
> > > +++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-bytecap.c
> > > @@ -0,0 +1,916 @@
> 
> [snip]
> 
> > > +static const struct dcmipp_bytecap_pix_map *
> > > +dcmipp_bytecap_pix_map_by_pixelformat(u32 pixelformat)
> > > +{
> > > +	unsigned int i;
> > > +
> > > +	for (i = 0; i < ARRAY_SIZE(dcmipp_bytecap_pix_map_list); i++) {
> > 
> > No need for braces. Up to you.
> 
> For what it's worth, I usually ask for braces in my reviews for these
> kind of cases :-)

Well, if you read the coding style document, you may find this, but people
don't interpret it as strictly anymore anyway. I think it's fine without.

-- 
Sakari Ailus

