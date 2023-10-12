Return-Path: <devicetree+bounces-8008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC067C66AC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:54:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6469828261C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB78E11CB0;
	Thu, 12 Oct 2023 07:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouBLpUMk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE4101C1
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:54:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD161C433C7;
	Thu, 12 Oct 2023 07:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697097257;
	bh=p2v0qVTwQ8zFtxDaAzDhCwQKGwVkcbZvyeApiQQ8j/o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ouBLpUMketvQ6mCLH7X09kSCmOomHs0DOSCilC36YVntLPf5w9krayQFWbPXi9Cg4
	 ipBtNLnFUYoqwz+14rkFcqz9E/4Ho2rhQsGFqclgH7IuYqtCeArTZEVEizJSshwoa0
	 CyFK1aecdN7YKe34LYpTI1x7dJ/cnhMM55Cb7T4Ublq8iOJ/LAyhj7wUQt1/xgfA9b
	 wyKBna83KbcAYtLyuMlrgCyE2lJLG9Grvxn2yU8Uzxv6o+OXgizFJP2iIEJI+5n2VC
	 LYhuQSAfwsLJ9JAa7cmz3855ThYGftRJrHeN/qlUFUxV7exNppjYnnYkDBp7D0vAuM
	 xpEyDIGQiKidA==
Date: Thu, 12 Oct 2023 08:54:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matti Vaittinen
 <mazziesaccount@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Paul Gazzillo
 <paul@pgazz.com>, Conor Dooley <conor+dt@kernel.org>, Stefan
 Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Subject: Re: [PATCH 2/2] iio: light: Add support for APDS9306 Light Sensor
Message-ID: <20231012085427.5f0fa4a3@jic23-huawei>
In-Reply-To: <07761a6c-85a8-c7bd-a0af-28d0f29b3e5d@tweaklogic.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
	<20231008154857.24162-3-subhajit.ghosh@tweaklogic.com>
	<20231010153807.6335a043@jic23-huawei>
	<07761a6c-85a8-c7bd-a0af-28d0f29b3e5d@tweaklogic.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Oct 2023 01:07:10 +1030
Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:

> On 11/10/23 01:08, Jonathan Cameron wrote:
> > 
> > No need to wrap the patch description quite so short. Aim
> > for up to 75 char for a commit message (and 80 for the code)
> > Here you are under 60.
> >   
> Thank you for taking time to point out these small issues.
> 
> >>
> >> Datasheet at https://docs.broadcom.com/doc/AV02-4755EN
> >>  
> > There is a tag for datasheets in the format tags block so
> > Datasheet: https://docs.broadcom.com/doc/AV02-4755EN  
> >> Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>  
> > 
> > I took a quick look at the most similar part number adps9300 and
> > this does look substantially different but could you confirm you've
> > taken a look at the plausible drivers to which support for this part
> > could be added and perhaps mention why that doesn't make sense
> > I think it will be mainly feature set being different here, but also
> > it seems they have completely different register maps despite similar
> > part numbers!  
> I have taken a look at quiet a few light sensor drivers including
> apds9960 and apds9300, as you said that they are different. There are
> another two drivers apds990x and apds9802als in drivers/misc which are
> also very different but I can't say that I have been through all the
> driver files.
> 

Great.  Then as expected this separate driver make sense even if the
DT bindings can be combined.  Would be nice if they standardised
the interface, but some companies seem to feel the need to start from
scratch for each device they produce :(


> 
> > The interrupt controller for starters takes to no locks and can run concurrently
> > with other accesses from other CPUs.  That seems unwise.
> >  
> Well, regarding device access, interrupt handler just reads the status registers
> thereby clearing the interrupt status flag and releasing the physical interrupt line.
> What can be the issue if I don't use a lock?
Gah. I was far too sleepy that day.  Glad you interpreted my comment as intended :)

Hmm. You will be relying on the internal implementation of the regmap bus interface
resulting in locks being taken in the i2c controller.  That may be fine, but
it makes me a little nervous that it's relying on a particular implementation.

My normal assumption is that any driver that turns off locking in regmap is doing
so because it has various complex read modify write cycles so needs to have it's
own locks - but that it also applies those locks everywhere regmap would have
done (so for duration of every regmap call).

You may be fine, but you aren't meeting the requirements documented.
The flag to disable locking in regmap states:

 * @disable_locking: This regmap is either protected by external means or
 *                   is guaranteed not to be accessed from multiple threads.
 *                   Don't use any locking mechanisms.

It doesn't say you are fine for simple accesses and there are multiple threads
accessing 'the regmap'.

Unless you really care about it, I'd just leave regmap locking enabled.
The likely performance hit on a device on a slow bus is low and it avoids
us having to think too hard about this.


> >> +	ret = devm_add_action_or_reset(dev, apds9306_powerdown, data);  
> > 
> > Why at this point? I'd have thought it wasn't powered up until init_device()
> > which follows?  So I'd expect to see this call after that, not before.
> >   
> Right. I will do a bit more reading on this before using this. I assumed this
> functions registers the callback which gets called at driver release by the
> subsystem similar to release().

That's true, but with the addition that it is called in the reverse order of
being add to the devm managed release list.  So ordering matters.


> 
> Thank you Jonathan for the review. I'll get the changes done in the next version.
> 
No problem.   As a side note, feel free to just crop out any responses where
you agree with a review.  Default assumption is that if you don't comment that
is the case and it cuts down on scrolling when reviewer next looks.
They are also much more likely to take a look at a short reply than a long one!

Jonathan

> Regards,
> Subhajit Ghosh
> 
> 
> 
> 


