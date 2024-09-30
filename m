Return-Path: <devicetree+bounces-106379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74066989E8E
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FAFF1F210C9
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15ED8189F35;
	Mon, 30 Sep 2024 09:36:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A06189534
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727689011; cv=none; b=XgPh00iyJy9dgyfK4o15+YB6FPUPoRAfgX8p737wwIEiyuuh7OPDdrFCd6TXs1tILkBMeRtP3vxvLVBogYpgMiHBxsWp23ENqrMwiBBIfq92C+MQQ7xtJNH4/WISGVL8fGp+TQd2OB+o3gkEJEpARihRCbztLmyJkQ0lo8Ab6eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727689011; c=relaxed/simple;
	bh=75HLQ9+IqltsCPrGAxL2EswaZtDD+k+SkO5Veskm9/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E7kq8PptF+0Ttp8QS/5YKoaP3p+Il4uEjnHZ/Yu86F/LBMxeNKUkg2UBHuXKbA/vVd0WjFfUKumoVxc6DEMX9iqgR/RfnbMYoigLODjynp9CsJbFL/LXs01emsYtHfzHfEHlQeb+r8gyLdwvB3GWdaSDtq6clyQPLChya2IaTao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1svCpY-0005oj-Vr; Mon, 30 Sep 2024 11:36:37 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1svCpX-002bLD-Ok; Mon, 30 Sep 2024 11:36:35 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1svCpX-00328M-25;
	Mon, 30 Sep 2024 11:36:35 +0200
Date: Mon, 30 Sep 2024 11:36:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Pratyush Yadav <pratyush@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v2 2/3] mtd: spi-nor: support vcc-supply regulator
Message-ID: <20240930093635.6pyp4qole3qynllq@pengutronix.de>
References: <20240930-spi-v2-0-ed7f6bcbe0df@nxp.com>
 <20240930-spi-v2-2-ed7f6bcbe0df@nxp.com>
 <20240930111914.4b412581@xps-13>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240930111914.4b412581@xps-13>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Miquel,

On 24-09-30, Miquel Raynal wrote:
> Hi,
> 
> peng.fan@oss.nxp.com wrote on Mon, 30 Sep 2024 17:22:25 +0800:
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > SPI NOR flashes needs power supply to work properly. The power supply
> > maybe software controllable per board design. So add the support
> > for an vcc-supply regulator.
> > 
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/mtd/spi-nor/core.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> > index 9d6e85bf227b..5249c8b13916 100644
> > --- a/drivers/mtd/spi-nor/core.c
> > +++ b/drivers/mtd/spi-nor/core.c
> > @@ -17,6 +17,7 @@
> >  #include <linux/mtd/spi-nor.h>
> >  #include <linux/mutex.h>
> >  #include <linux/of_platform.h>
> > +#include <linux/regulator/consumer.h>
> >  #include <linux/sched/task_stack.h>
> >  #include <linux/sizes.h>
> >  #include <linux/slab.h>
> > @@ -3462,6 +3463,10 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >  	if (!nor->bouncebuf)
> >  		return -ENOMEM;
> >  
> > +	ret = devm_regulator_get_enable(dev, "vcc");
> 
> 					_optional ?

The regulator optional API is different compared to other optional APIs.
If we would use optional here, we would need to check the returned error
code. On the other hand if the non optional API is used and the
regualtor is missing, a dummy regualtor is returned (as pointed out by
Marc).

Please see the _optional API doc to see more information about the
_optional usage.

Regards,
  Marco

> > +	if (ret)
> > +		return ret;
> > +
> >  	ret = spi_nor_hw_reset(nor);
> >  	if (ret)
> >  		return ret;
> > 
> 
> 
> Thanks,
> Miquèl
> 

