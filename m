Return-Path: <devicetree+bounces-12459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA67D7D99B4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:26:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4FC51C20F49
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29E41EB3C;
	Fri, 27 Oct 2023 13:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7b2Oyd9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B2818C35
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71ED5C433C7;
	Fri, 27 Oct 2023 13:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698413194;
	bh=NxFd9nO3ucmlh23SRQn9ZpC46HILj4aPbNXF73EekQo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=m7b2Oyd9zhPJtcjMUZofdXh2MMnITOJlLsMsFBdBxY4mhu4WPX8wELATU36R22R8p
	 iWPIOsH9G7S6Jr9nQ6fTS57qXLHvvvp195gx1oFnx7lrdwHeViDBSWu8nQ9SJ1Cmsh
	 v+3l9vQMLKADLk0sYfap6YFrdeU5wFZI41QZs9KW2yk9/d79KQHZ8W58pccMasBcag
	 iAEYrMDoSTd6pIAbtimJspKgE8mJC7wDPqIy/Spx/9ZXGbBzVNpWW6RCxdPE1jLFyQ
	 u0JxB2PHNF1c9tAmAVg9HPrXpHdX6gl5Rnp1dH54do4V/8OYz/UY0o8pNw0Un4R4ex
	 RRBDrxHnQeoAg==
Date: Fri, 27 Oct 2023 14:26:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jishnu Prakash <quic_jprakash@quicinc.com>
Cc: <agross@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linus.walleij@linaro.org>,
 <Jonathan.Cameron@huawei.com>, <sboyd@kernel.org>,
 <dmitry.baryshkov@linaro.org>, <quic_subbaram@quicinc.com>,
 <quic_collinsd@quicinc.com>, <quic_kamalw@quicinc.com>,
 <marijn.suijten@somainline.org>, <andriy.shevchenko@linux.intel.com>,
 <krzysztof.kozlowski@linaro.org>, Lars-Peter Clausen <lars@metafoo.de>,
 "Bjorn Andersson" <andersson@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Cosmin Tanislav
 <demonsingur@gmail.com>, "Mike Looijmans" <mike.looijmans@topic.nl>, Ramona
 Bolboaca <ramona.bolboaca@analog.com>, ChiYuan Huang
 <cy_huang@richtek.com>, "Ibrahim Tilki" <Ibrahim.Tilki@analog.com>, William
 Breathitt Gray <william.gray@linaro.org>, Lee Jones <lee@kernel.org>,
 Leonard =?UTF-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>, Haibo Chen
 <haibo.chen@nxp.com>, <linux-iio@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-arm-msm-owner@vger.kernel.org>
Subject: Re: [PATCH 07/11] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
Message-ID: <20231027142512.37358c60@jic23-huawei>
In-Reply-To: <13d5dee2-1da4-2ad0-91f8-a53b43adba2b@quicinc.com>
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
	<20230708072835.3035398-8-quic_jprakash@quicinc.com>
	<20230708165955.08c1159c@jic23-huawei>
	<13d5dee2-1da4-2ad0-91f8-a53b43adba2b@quicinc.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

> > +  
> >> +static const struct iio_info adc5_gen3_info = {
> >> +	.read_raw = adc5_gen3_read_raw,
> >> +	.fwnode_xlate = adc5_gen3_fwnode_xlate,
> >> +};  
> > ...  
> 
> 
> Did you mean to leave any comment here...?

Nope ... is a cut mark to indicate I dropped a load of quoted text.

On that note, don't bother replying to say you'll do things suggested
by reviewers - we assume you will unless you say otherwise :)

If you want to add a boilerplate message alongside comments on the
bits that need further discussion, along the lines of 
"All other comments accepted." That's fine but it's not really necessary.

...

> >> +
> >> +static int adc5_gen3_exit(struct platform_device *pdev)
> >> +{  
> > As you are mixing devm manged cleanup and the explicit sort the
> > result is that you remove the userspace interfaces 'after' you run
> > everything in here. I'm thinking disabling the channels at least
> > isn't a good idea in that case.
> >
> > If you want to use devm (which is good) then you need to work out how
> > to register additional callbacks during probe to tear down everything in
> > the right order (typically the reverse of what happens in probe)
> > devm_add_action_or_reset() is the way to add those extra callbacks.
> >
> > If not, just don't use devm for at least those bits that will end up
> > running out of order (such as iio_device_register()) and manually call their
> > cleanup routines instead.  
> 
> 
> I checked some other examples in the iio/adc/ folder, I think I see what 
> you mean here. It looks like drivers with a remove callback always use 
> iio_device_register and iio_device_unregister instead of the devm_* 
> variant, due to the issue with sysfs removal as you said.
> 
> I'll update the probe and remove functions similarly, to do explicit 
> cleanups as required, avoiding devm_ usage for places where it should be 
> avoided.

Better to go the other way as Dmitry suggested.  Make everything you can
devm managed.


