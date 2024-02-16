Return-Path: <devicetree+bounces-42564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BBB857C18
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 12:51:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EA3F1C21373
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3533D77F3C;
	Fri, 16 Feb 2024 11:51:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCC877F2F
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708084290; cv=none; b=bEKbK0KKt5TGfGLBBoG47aMDi6bXLJ7v4xc1aZJTqr0hpMhc+JfDnHvczVz5rKgiCOVSQnsFwc6L3iCyNWm8DlECWOWizgdAbDSBDrFtLcd9xLJqFh1G9uLVw0piEi3BtNKWaEXPzdOGYwb/1jwUTbZCBeS44xJP3o6fViKp6p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708084290; c=relaxed/simple;
	bh=gOU05o6di6P7VLW0Qm6Mpvx6veKPyUCKqJ5gy9TqUc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sRqZRHpGFFJYA13aLh6xfHGGb+vg/XLTdqqDsT4/DP0a6q/Ym/BPWaRdXC9COhuUtGOxHyue1rLEmuGG1/QYFKWXOj9u1fWU5d7KTnJzQNk8kwiQYQzOekGgOTo+L3j6nnNkp333zAWuYt1nmeVfgU8vyiDdXtsZzszrrErmvps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rawkP-0004zc-GT; Fri, 16 Feb 2024 12:51:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rawkO-001486-7w; Fri, 16 Feb 2024 12:51:16 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rawkO-00BUNd-0V;
	Fri, 16 Feb 2024 12:51:16 +0100
Date: Fri, 16 Feb 2024 12:51:16 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Cc: puranjay12@gmail.com, lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	thomas.haemmerle@leica-geosystems.com
Subject: Re: [RESEND PATCH 2/2] iio: temperature: tmp117: add support for
 vcc-supply
Message-ID: <20240216115116.w7hra5c7w3sbq3d5@pengutronix.de>
References: <20240216102820.1395815-1-m.felsch@pengutronix.de>
 <20240216102820.1395815-2-m.felsch@pengutronix.de>
 <20240216112910.4059a09b@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240216112910.4059a09b@jic23-huawei>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-16, Jonathan Cameron wrote:
> On Fri, 16 Feb 2024 11:28:20 +0100
> Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> > From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> > 
> > Add support to specify the VCC supply which is required to power the
> > device.
> > 
> > Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Hi.
> 
> With power supply enables, the question that normally comes up is whether
> the device takes significant time to become available after the power is
> turned on.
> 
> I had a look at the datasheet but couldn't find clear language on
> how long we need to wait before the device is usable following power up.
> There is a number for reset of 1.5 msecs so I guess we could use that
> safely?

You're right, section 7.3.1 Power Up mention the 1.5ms as well. I will
add this albeit we didn't had issues with this patch in place for like
months.

> Maybe no delay is fine for reading the device ID. I've no idea.
> Sometimes we start with no delay and only end up adding one later when
> people report issues.  We could do that here.

Yes, I will add it and send a v2.

Thanks,
  Marco

> 
> Jonathan
> 
> > ---
> > Resend since I forgot to add the DT maintainers
> > 
> >  drivers/iio/temperature/tmp117.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/iio/temperature/tmp117.c b/drivers/iio/temperature/tmp117.c
> > index 059953015ae7..69328066811a 100644
> > --- a/drivers/iio/temperature/tmp117.c
> > +++ b/drivers/iio/temperature/tmp117.c
> > @@ -17,6 +17,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/limits.h>
> >  #include <linux/property.h>
> > +#include <linux/regulator/consumer.h>
> >  
> >  #include <linux/iio/iio.h>
> >  
> > @@ -152,6 +153,10 @@ static int tmp117_probe(struct i2c_client *client)
> >  	if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
> >  		return -EOPNOTSUPP;
> >  
> > +	ret = devm_regulator_get_enable(&client->dev, "vcc");
> > +	if (ret)
> > +		return ret;
> > +
> >  	dev_id = i2c_smbus_read_word_swapped(client, TMP117_REG_DEVICE_ID);
> >  	if (dev_id < 0)
> >  		return dev_id;
> 
> 

