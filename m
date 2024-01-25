Return-Path: <devicetree+bounces-35206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A18A83C9AB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 18:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2A2B288CFE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7A2135417;
	Thu, 25 Jan 2024 17:12:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29160481CB
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 17:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706202727; cv=none; b=SZEaWu1XEaL4EkSoM2w6SIHxJG//9/WouqH54BIv0zW7BNrRDdh92XXlvTeZFd/OWCV6aTJOUnsz9a+OjBELDsZ0/u5Wes5cf09uVSPYIklvopH8MQiXLbfkx4UAVqN+QoyyPeOip+P3n2QITXV8qfYvrVSw5aR5KUk1ETbsUdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706202727; c=relaxed/simple;
	bh=NkWD/j8A67rN4utXThlvq4tYQthwoTcWcmrHRVS7C+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qXcQASDOEtYaxn+XymXMDFT+cL144G1BuadqDkRi7QbIMdcHLpSN6MgZm5Rx/OanpB+GeGcO9Ga3NKC1qT6Ntier8/gtb9jXkb2RT+nAaRIuOz2/j+9itCPdnQGVfdAlW6vJSrM+TTtAXlYurcHTh+SCFRgvK38wQLdZKatzIt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rT3GV-00061z-8M; Thu, 25 Jan 2024 18:11:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rT3GU-002KpY-CE; Thu, 25 Jan 2024 18:11:46 +0100
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rT3GU-001mwF-9K; Thu, 25 Jan 2024 18:11:46 +0100
Date: Thu, 25 Jan 2024 18:11:46 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	kernel@pengutronix.de, linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>
Subject: Re: [PATCH v2 4/8] dt-bindings: power: reset: add bindings for NVMEM
 hardware storing PSCR Data
Message-ID: <20240125171146.GC381737@pengutronix.de>
References: <20240124122204.730370-1-o.rempel@pengutronix.de>
 <20240124122204.730370-5-o.rempel@pengutronix.de>
 <4e14b7c7-7f0a-437b-aa84-20fdc30a2361@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <4e14b7c7-7f0a-437b-aa84-20fdc30a2361@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, Jan 25, 2024 at 11:57:18AM +0100, Krzysztof Kozlowski wrote:
> On 24/01/2024 13:22, Oleksij Rempel wrote:
> > Add device tree bindings that describe hardware implementations of
> > Non-Volatile Memory (NVMEM) used for storing Power State Change Reasons
> > (PSCR).
> > +  that stores Power State Change Reasons (PSCR).
> > +
> > +allOf:
> > +  - $ref: pscrr.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: pscrr-nvmem
> > +
> 
> So that's a driver :/. Maybe Rob will like it, but it's a no from me.
> Please come up with something really suiting DEVICES, not DRIVERS.

If I understand your distinction between 'DEVICES' and 'DRIVERS'
correctly, 'DEVICES' in the device tree context are meant to represent
physical hardware components, while 'DRIVERS' refer to software
abstractions of these components. However, there are numerous device
tree instances, like software-based implementations for SPI, I2C, or
GPIO, which could also be interpreted as 'DRIVERS' in the context of
your email. Similarly, the binding for PSCRR represents functionality not
fully implemented in hardware but supported by the hardware component of
NVMEM, akin to how ramoops or other functionalities are represented.

If I'm misunderstanding your distinction between 'DEVICES' and
'DRIVERS', please clarify with an example of how a proper binding should
be implemented for a case like this.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

