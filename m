Return-Path: <devicetree+bounces-14080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1AA7E1FB7
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 502741C20829
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D29182AA;
	Mon,  6 Nov 2023 11:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0f8UiyC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0798A1772D
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:14:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F952C433C8;
	Mon,  6 Nov 2023 11:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699269241;
	bh=3rFOHrsFOQYq+raXX3AQ97EcKFDbUZXhJyj0nxmUet8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=M0f8UiyCntVadWOwOWAEI2Yz0mZtXoSOrbRWAqk0fbr7inHullOT1DiNpwz83cqsU
	 fTSa2Uf1EcZV4ZcihO5dJf17tk/9LerZ0H1LuiM8pJbJBoJFmKyaiGEQ1BUJjPYWnr
	 uOtBmRi9wtTZSf+HfWKQvezMTDReOO1f8InVtDvfDdzRk/zmhbM+8yGCeZyEcLP8kD
	 zX6TSwm5m49x/m2WYaMb9XOR4HmDpXJyCL0FFVlYxLGblu+KPhi25UyfUC78m4HSbT
	 tgz/z1N2M25PGBaZJGgNb10wnmUEVUlAxujMheydJrxdyy4aI1YsfACCUCLJPXDSVP
	 ypIicqxm3dyKA==
Date: Mon, 6 Nov 2023 11:13:55 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Matti Vaittinen <mazziesaccount@gmail.com>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Paul Gazzillo
 <paul@pgazz.com>, Matt Ranostay <matt@ranostay.sg>, Stefan Windfeldt-Prytz
 <stefan.windfeldt-prytz@axis.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light
 Sensor
Message-ID: <20231106111355.2f8dfaa1@jic23-huawei>
In-Reply-To: <2974aa13-796c-49ef-bef7-fd7f3f9b7f49@tweaklogic.com>
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
	<20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
	<20231028162025.4259f1cc@jic23-huawei>
	<2974aa13-796c-49ef-bef7-fd7f3f9b7f49@tweaklogic.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Oct 2023 19:08:08 +1030
Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:

> >   
> >> +static struct iio_event_spec apds9306_event_spec_als[] = {
> >> +	{
> >> +		.type = IIO_EV_TYPE_THRESH,
> >> +		.dir = IIO_EV_DIR_RISING,
> >> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
> >> +	}, {
> >> +		.type = IIO_EV_TYPE_THRESH,
> >> +		.dir = IIO_EV_DIR_FALLING,
> >> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
> >> +	}, {
> >> +		.type = IIO_EV_TYPE_THRESH,
> >> +		.mask_shared_by_all = BIT(IIO_EV_INFO_PERIOD),
> >> +	}, {
> >> +		.type = IIO_EV_TYPE_THRESH_ADAPTIVE,
> >> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE) |
> >> +			BIT(IIO_EV_INFO_ENABLE),
> >> +	}, {
> >> +		.type = IIO_EV_TYPE_THRESH,
> >> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),  
> > This matches an entry above for type. Don't have separate entries.  
> >> +	},
> >> +};
> >> +
> >> +static struct iio_event_spec apds9306_event_spec_clear[] = {
> >> +	{
> >> +		.type = IIO_EV_TYPE_THRESH,
> >> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
> >> +	},
> >> +};
> >> +
> >> +#define APDS9306_CHANNEL(_type) \
> >> +	.type = _type, \
> >> +	.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_INT_TIME) | \
> >> +		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ), \
> >> +	.info_mask_shared_by_all_available = BIT(IIO_CHAN_INFO_INT_TIME) | \
> >> +		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ), \  
> > 
> > Scale on the intensity channel is interesting...  What are the units?
> > There tend not to be any well defined units for intensity (as opposed
> > to illuminance).  There may be gain on the signal, but it won't be in untils
> > that map directly to a scale userspace should apply.  This is one of the
> > rare reasons for using the HARDWARE_GAIN element of the ABI.
> > 
> > A tricky corner however as relationship between raw value and hardwaregain
> > is not tightly defined (as it can be really weird!)  
> Hi Jonathan,
> 
> Thank you for taking time for reviewing and clearing all my tiny doubts and
> queries especially for the dt and versioning part. Much appreciated.
> 
> In the above case, should I not expose scale for the "clear" channel? Rather,
> how should I expose the "clear" channel to userspace?
What is the scale?  What units to you get after applying it?

I suspect it's not well defined.

Not sure what we've done in similar cases in the past.  Perhaps have
a look at those.  There may be precedence for still using scale.

I'm about to jump on a long haul flight (delayed - sigh) so don't have
time to look myself!

Jonathan

> 
> Regards,
> Subhajit Ghosh
> 
> >   
> >> +
> >> +static struct iio_chan_spec apds9306_channels_without_events[] = {
> >> +	{
> >> +		APDS9306_CHANNEL(IIO_LIGHT)
> >> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> >> +	}, {
> >> +		APDS9306_CHANNEL(IIO_INTENSITY)
> >> +		.channel2 = IIO_MOD_LIGHT_CLEAR,
> >> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> >> +		.modified = 1,
> >> +	},
> >> +};  
> >   
> 
> 


