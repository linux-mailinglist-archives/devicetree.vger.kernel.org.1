Return-Path: <devicetree+bounces-7174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0057BF88C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3002281C36
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961DE18042;
	Tue, 10 Oct 2023 10:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjGJc9OX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D36182A2
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:26:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1584EC433C8;
	Tue, 10 Oct 2023 10:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696933576;
	bh=PqLwa/jUv0/v1YHnMTFC+aJ+JxMcrb9OrAWtpCIlSVI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SjGJc9OXY4TmtAKccg9N8dWKXu8WN0fawl0VNIqj4TJBQLwfeThvQ3cim64MtrDnB
	 AVWMnva+eyVktQHmkI83jbsmtWTb+rErQJXK6MnNAlQ4lcLJeokGNc1gK4J1TYqpnr
	 PR0B4014dStxg2v6nFC8wMyixp1gHgFgnnKNGx727ZX7eNSwNwO41WrlpJI2ruxMMd
	 /zvhFNesw7t+FDLmr6SBAMc2w40IrqAirb7fQtlvE9Wh1JROnQyS25hJ595Ea7mY0M
	 jcR9TnVdL02Yeab6mJGg1e20cS+HnjZyOwLau5LurYQpHxZe+s+DldxxueWEgdfYRz
	 T9RGc0ZpcLsQA==
Date: Tue, 10 Oct 2023 11:26:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ceclan Dumitru-Ioan <mitrutzceclan@gmail.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, andy@kernel.org,
 linux-gpio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Walle <michael@walle.cc>, Andy Shevchenko
 <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>, ChiaEn Wu
 <chiaen_wu@richtek.com>, Niklas Schnelle <schnelle@linux.ibm.com>, Leonard
 =?UTF-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>, Mike Looijmans
 <mike.looijmans@topic.nl>, Haibo Chen <haibo.chen@nxp.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, Ceclan Dumitru <dumitru.ceclan@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: ad7173: add AD7173 driver
Message-ID: <20231010112621.0b371e74@jic23-huawei>
In-Reply-To: <07afa29c-bfef-72dc-d471-f72dfcebe342@gmail.com>
References: <20231005105921.460657-1-mitrutzceclan@gmail.com>
	<20231005105921.460657-2-mitrutzceclan@gmail.com>
	<20231005180131.0518f46c@jic23-huawei>
	<07afa29c-bfef-72dc-d471-f72dfcebe342@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit


> 
> >> +		chan[chan_index].differential = fwnode_property_read_bool(child, "bipolar");  
> > 
> > bipolar doesn't normally == differential. 
> > You can have unipolar differential (just that you can't get a negative answer)
> > Perhaps just a terminology thing?
> >  
> 
> This device supports only differential channels. Here, the differential flag is used to show
> if bipolar coding should be used.

I'm confused - you are setting differential in the iio_chan_spec with this.
That affects the sysfs naming and a bunch of other stuff - not merely
the bipolar nature of the channel.


> 
> 
> >> +	st->info = device_get_match_data(dev);
> >> +	if (!st->info)
> >> +		return -ENODEV;  
> > This works for the cases of DT and ACPI but not for anyone just
> > using the spi_device_id table. 
> > There is spi_device_get_match_data() to cover all options.
> >   
> I could not find the spi_device_get_match_data() function in the repo.
> It appears however as a suggestion from Andy Shevchenko in a thread:
> https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2382960.html
>  Is this it? 

ah. I got the name wrong.
spi_get_device_match_data()


https://elixir.bootlin.com/linux/v6.6-rc5/source/drivers/spi/spi.c#L364

