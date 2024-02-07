Return-Path: <devicetree+bounces-39404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FFA84C84E
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 11:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B69751C210D4
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 10:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876AD2420B;
	Wed,  7 Feb 2024 10:09:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202B1241E6
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 10:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707300549; cv=none; b=lrysXGJMDr/YDOKx0sotzgB/mp+Ipebou0qLnhev5NAsrxT1PeGHXuydnwkD8W6WgRB5W4mvvu4JI10GeoY8pehRh6kZUsNeuermGOuWpEU/irhLl7s+OEE5syDqA20fESHVI0LgpWpZCi6VWuaE1T/2xecLwNEhdDOKdavTn1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707300549; c=relaxed/simple;
	bh=+QjEoF1iBuFKg8pCeTILdz/4fUNBQKzVFRD/2ohclhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZS0OOUO2Sx9o3iiAUrUzTbRLERiNJ1CKMspzGzlHVRsG4KosM0KRiGdqNQWslmryoe00sqllrBriWhfvd5cz0Hg8gmDrZ5t/FShJr6SU5Rk5nVmhqfRjLlfqZWYjzp7qBAxMJ/lf3Za0WWOG9ottjkc0cRbQn5rTOXAZdWGC1kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rXerH-0000Ey-Ow; Wed, 07 Feb 2024 11:08:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rXerG-004zxy-KE; Wed, 07 Feb 2024 11:08:46 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rXerG-00Fcna-1h;
	Wed, 07 Feb 2024 11:08:46 +0100
Date: Wed, 7 Feb 2024 11:08:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux@roeck-us.net, heikki.krogerus@linux.intel.com,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/4] dt-bindings: usb: typec-tcpci: add tcpci compatible
 binding
Message-ID: <20240207100846.vw6vose2hwdtgrq7@pengutronix.de>
References: <20240205164316.805408-1-m.felsch@pengutronix.de>
 <20240205164316.805408-2-m.felsch@pengutronix.de>
 <004dbeb3-f863-416c-a4e4-18739302ae58@linaro.org>
 <20240206145253.u555h3rvtetv3qaf@pengutronix.de>
 <8d4cf7f7-0ee0-49ab-994a-892b200347e8@linaro.org>
 <20240207090544.g7dy7grssah3o6n3@pengutronix.de>
 <c687756a-1dcc-4103-b2ac-7c117ad792e2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c687756a-1dcc-4103-b2ac-7c117ad792e2@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-07, Krzysztof Kozlowski wrote:
> On 07/02/2024 10:05, Marco Felsch wrote:
> > On 24-02-06, Krzysztof Kozlowski wrote:
> >> On 06/02/2024 15:52, Marco Felsch wrote:
> >>> On 24-02-06, Krzysztof Kozlowski wrote:
> >>>> On 05/02/2024 17:43, Marco Felsch wrote:
> >>>>> This binding descripes the generic TCPCI specification [1]. So add the

...

> > Don't get me wrong, I get your point. In the end I don't care and can
> > copy'n'paste the whole file and change the compatible to the OnSemi
> > device or I can add the dedicated OnSemi compatible to this file. But I
> > don't wanted to add an 2nd specific compatible while the device already
> > supports the generic one but via i2c_device_id.name. Therefore I aligned
> > the i2c_device_id with the of_device_id.
> 
> You can add generic compatible used as fallback. That's pretty common
> practice.

Okay. To bring this discussion to an end, I will add the generic
compatible as fallback :)

Thanks,
  Marco

> 
> > 
> >>>> Are all details expected to follow spec, without need of quirks?
> >>>
> >>> Please see above, I hope this helps.
> >>
> >> Sorry, doesn't. You still speak about driver and how it can bind to
> >> something. I did not ask about this at all.
> >>
> >> To be clear:
> >> WE ARE NOT TALKING ABOUT LINUX DRIVER.
> > 
> > I KNOW
> > 
> >> We talk about hardware and how it is represented in Devicetree,
> >> including its supplies, pins, GPIOs and any ideas hardware engineers
> >> like to bring.
> 
> Then terms "driver" and "binding" (or matching) do not fit here as
> arguments whether specific compatible should be there or not. There is
> guideline for that: writing bindings, which exactly, 100% covers this
> thing here.
> 
> Best regards,
> Krzysztof
> 
> 

