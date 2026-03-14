Return-Path: <devicetree+bounces-275694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNmfBQlRtWm8zAAAu9opvQ
	(envelope-from <devicetree+bounces-275694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:14:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2384228D10F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25A4C300F9FB
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 12:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1A73101D2;
	Sat, 14 Mar 2026 12:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYJSZpIS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4772949E0;
	Sat, 14 Mar 2026 12:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773490156; cv=none; b=OjP98ghF4WYpVARihAR+NlUO/y40AvHb9QcmdsjLVCo7q+u3MqfXxOv+BTa5xNYloYrzD8m+3g2vAEucn8PmXC2/XAsPUleO7WCVTh0qgbi5IiF/oRZ2rpWmxWLlVRMmDzAmvh6ZI/QEH1nB6AZggwf0k/Iq06JpTtztCeWtJbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773490156; c=relaxed/simple;
	bh=H66Rk1Lr5dkE6znYGULWwNpORwboGWlxJP27Ub566I0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NnfzaAQpMociFe2jGUL23nlfYXQQWYHvAoUbp5hnrrmKYcbfRfM5+lg/i7NRPtPdba25dglzc7P4ej1hLP6xHxRDyt2G1rLCT00gAEFCUcyNnY9Qo7QJMIc1h9Tfk1U0RmdaWlJ5Gy/gadVqZHt0oiVNK29uP1tS/8ebEsRC6SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYJSZpIS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCF52C116C6;
	Sat, 14 Mar 2026 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773490155;
	bh=H66Rk1Lr5dkE6znYGULWwNpORwboGWlxJP27Ub566I0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WYJSZpISFdYnJQURxdyZ99Syat+N6QcR9olYNHLCJqz3yc0YrjFaJc+o/J81a/Vo1
	 azcww4VzxPC7xe8L8ffwho+P88UFFIxWS30MisOlBFtYn9WgjXjSxss7UDmM1xZN17
	 ONZfFqeg+XRJFAJ3+Gl6vNdJTBfHk+3srcJDjNHNG+zeJ2f9HLU800Vldjb3u8jpQa
	 xPXp8i4YCnfn/Yus+qRtOgjFp3+KXwT5zm7HpEmx0KNU9A3/mKLC1//BD5W/6HXgn3
	 Ww+p+LUWKaNHQiCya8MfoDaJ9TcjCPaveczTeaoclFCX6ks2ebL+3KREOkO5o+yg6P
	 r8VBYUwAv/B0Q==
Date: Sat, 14 Mar 2026 12:08:55 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, "Hennerich, Michael"
 <Michael.Hennerich@analog.com>, "Schmitt, Marcelo"
 <Marcelo.Schmitt@analog.com>, "Sa, Nuno" <Nuno.Sa@analog.com>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Petre Rodan <petre.rodan@subdimension.ro>,
 "Marques, Jorge" <Jorge.Marques@analog.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] iio: accel: adxl372: add support for ADXL371
Message-ID: <20260314120855.0ac0e128@jic23-huawei>
In-Reply-To: <CY4PR03MB3399158C9C0984048B8EF7189B79A@CY4PR03MB3399.namprd03.prod.outlook.com>
References: <20260306151859.131934-1-antoniu.miclaus@analog.com>
	<20260306151859.131934-5-antoniu.miclaus@analog.com>
	<20260307110447.189b98c0@jic23-huawei>
	<CY4PR03MB3399158C9C0984048B8EF7189B79A@CY4PR03MB3399.namprd03.prod.outlook.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275694-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,subdimension.ro:email]
X-Rspamd-Queue-Id: 2384228D10F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 9 Mar 2026 13:08:26 +0000
"Miclaus, Antoniu" <Antoniu.Miclaus@analog.com> wrote:

> > -----Original Message-----
> > From: Jonathan Cameron <jic23@kernel.org>
> > Sent: Saturday, March 7, 2026 1:05 PM
> > To: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>
> > Cc: Lars-Peter Clausen <lars@metafoo.de>; Hennerich, Michael
> > <Michael.Hennerich@analog.com>; Schmitt, Marcelo
> > <Marcelo.Schmitt@analog.com>; Sa, Nuno <Nuno.Sa@analog.com>; David
> > Lechner <dlechner@baylibre.com>; Andy Shevchenko <andy@kernel.org>;
> > Rob Herring <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>;
> > Conor Dooley <conor+dt@kernel.org>; Petre Rodan
> > <petre.rodan@subdimension.ro>; Marques, Jorge
> > <Jorge.Marques@analog.com>; linux-iio@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH v2 4/4] iio: accel: adxl372: add support for ADXL371
> > 
> > [External]
> > 
> > On Fri, 6 Mar 2026 17:18:24 +0200
> > Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:
> >   
> > > Add support for the Analog Devices ADXL371, a +-200g 3-axis MEMS
> > > accelerometer sharing the same register map as the ADXL372 but with
> > > different ODR values (320/640/1280/2560/5120 Hz vs  
> > 400/800/1600/3200/  
> > > 6400 Hz), different bandwidth values, and different timer scale
> > > factors for activity/inactivity detection.
> > >
> > > Due to a silicon anomaly (er001) causing FIFO data misalignment on
> > > all current ADXL371 silicon, FIFO and triggered buffer support is
> > > disabled for the ADXL371 - only direct mode reads are supported.
> > >
> > > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>  
> > A couple of small formatting things. Otherwise looks good to me.
> > 
> > Thanks,
> > 
> > Jonathan
> >   
> > >
> > > diff --git a/drivers/iio/accel/adxl372.c b/drivers/iio/accel/adxl372.c
> > > index adb9e42653f1..7a1ee2fef618 100644
> > > --- a/drivers/iio/accel/adxl372.c
> > > +++ b/drivers/iio/accel/adxl372.c
> > > @@ -1,6 +1,6 @@
> > >  // SPDX-License-Identifier: GPL-2.0+
> > >  /*
> > > - * ADXL372 3-Axis Digital Accelerometer core driver
> > > + * ADXL371/ADXL372 3-Axis Digital Accelerometer core driver
> > >   *
> > >   * Copyright 2018 Analog Devices Inc.
> > >   */
> > > @@ -182,6 +182,14 @@ enum adxl372_odr {
> > >  	ADXL372_ODR_6400HZ,
> > >  };
> > >
> > > +enum adxl371_odr {
> > > +	ADXL371_ODR_320HZ,
> > > +	ADXL371_ODR_640HZ,
> > > +	ADXL371_ODR_1280HZ,
> > > +	ADXL371_ODR_2560HZ,
> > > +	ADXL371_ODR_5120HZ,  
> > Might be worth a
> > 	ADXL371_ODR_NUM
> > entry so you can size the array from it below.
> >   
> > > +};
> > > +
> > >  enum adxl372_bandwidth {
> > >  	ADXL372_BW_200HZ,
> > >  	ADXL372_BW_400HZ,
> > > @@ -222,6 +230,37 @@ static const int adxl372_bw_freq_tbl[5] = {
> > >  	200, 400, 800, 1600, 3200,
> > >  };
> > >
> > > +static const int adxl371_samp_freq_tbl[5] = {
> > > +	[ADXL371_ODR_320HZ] = 320,
> > > +	[ADXL371_ODR_640HZ] = 640,
> > > +	[ADXL371_ODR_1280HZ] = 1280,
> > > +	[ADXL371_ODR_2560HZ] = 2560,
> > > +	[ADXL371_ODR_5120HZ] = 5120,
> > > +};
> > > +
> > > +static const int adxl371_bw_freq_tbl[5] = {
> > > +	[ADXL371_ODR_320HZ] = 160,
> > > +	[ADXL371_ODR_640HZ] = 320,
> > > +	[ADXL371_ODR_1280HZ] = 640,
> > > +	[ADXL371_ODR_2560HZ] = 1280,
> > > +	[ADXL371_ODR_5120HZ] = 2560,
> > > +};  
> > Style wise, why not do the same for adxl372_bw_freq_tbl[] as here?
> > I slightly prefer this style, but key is consistency so if you'd
> > gone the other way for both that would have been fine as well.  
> 
> 
> I will do the same for adxl372_bw_freq_tbl[] as here.
> Where do you think is the best place to put that, in patch 1? (introduce chip_info structure)
Probably a precursor patch given the tables already exist.

Jonathan

> 
> Thanks
> 


