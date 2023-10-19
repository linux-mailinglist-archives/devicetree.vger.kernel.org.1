Return-Path: <devicetree+bounces-10173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4B97CFE98
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C7BEB20E9C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A6C315AC;
	Thu, 19 Oct 2023 15:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Qd9oN9q3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AEA30FB0;
	Thu, 19 Oct 2023 15:46:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E061C433C8;
	Thu, 19 Oct 2023 15:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697730405;
	bh=dlXwrAmr23RZBJTQ4tZB3ILSltevA7NR468NS5iSreI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qd9oN9q3CDls1FHxrQ/fEHIzbFe3gGdXb9PwNIyIMVNdcHKeYaukZaB+ZRvCEElLa
	 IN5LRY41J2F9SBZ6c/hCI9wkG2d/He9mO/VpTf4aiVbz8OUqOpL6ZMkc7mc//znpQM
	 TuUnrJkSUHMZ4Zz2Q0AY/tlRHyf71pcP6uT6/L6w=
Date: Thu, 19 Oct 2023 17:46:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	miquel.raynal@bootlin.com, conor.culhane@silvaco.com,
	alexandre.belloni@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	corbet@lwn.net, joe@perches.com, linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, imx@lists.linux.dev,
	jirislaby@kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 1/5] i3c: add slave mode support
Message-ID: <2023101935-papaya-legible-5849@gregkh>
References: <20231018215809.3477437-1-Frank.Li@nxp.com>
 <20231018215809.3477437-2-Frank.Li@nxp.com>
 <dd06c2d3-e273-4356-835b-42619543dfab@linaro.org>
 <ZTFE8hrRgPBrb7e3@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZTFE8hrRgPBrb7e3@lizhi-Precision-Tower-5810>

On Thu, Oct 19, 2023 at 11:02:10AM -0400, Frank Li wrote:
> On Thu, Oct 19, 2023 at 09:00:05AM +0200, Krzysztof Kozlowski wrote:
> > On 18/10/2023 23:58, Frank Li wrote:
> > > Introduce a new slave core layer in order to support slave functions in
> > > linux kernel. This comprises the controller library and function library.
> > > Controller library implements functions specific to an slave controller
> > > and function library implements functions specific to an slave function.
> > > 
> > > Introduce a new configfs entry to configure the slave function configuring
> > > and bind the slave function with slave controller.
> > > 
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> > >  drivers/i3c/Kconfig       |  26 ++
> > >  drivers/i3c/Makefile      |   2 +
> > >  drivers/i3c/i3c-cfs.c     | 389 +++++++++++++++++++++++++++++
> > >  drivers/i3c/slave.c       | 453 ++++++++++++++++++++++++++++++++++
> > >  include/linux/i3c/slave.h | 503 ++++++++++++++++++++++++++++++++++++++
> > >  5 files changed, 1373 insertions(+)
> > >  create mode 100644 drivers/i3c/i3c-cfs.c
> > >  create mode 100644 drivers/i3c/slave.c
> > >  create mode 100644 include/linux/i3c/slave.h
> > > 
> > > diff --git a/drivers/i3c/Kconfig b/drivers/i3c/Kconfig
> > > index 30a441506f61c..d5f5ca7cd6a56 100644
> > > --- a/drivers/i3c/Kconfig
> > > +++ b/drivers/i3c/Kconfig
> > > @@ -22,3 +22,29 @@ menuconfig I3C
> > >  if I3C
> > >  source "drivers/i3c/master/Kconfig"
> > >  endif # I3C
> > > +
> > > +config I3C_SLAVE
> > 
> > It doesn't look like you follow Kernel naming convention (see coding style).
> 
> I checked I3C spec. It use words 'target'.
> Is it okay using I3C_TARGET?

Why wouldn't it be?

