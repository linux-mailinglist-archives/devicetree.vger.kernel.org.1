Return-Path: <devicetree+bounces-11325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A807D53A2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18C7EB20BE4
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A02C2B75C;
	Tue, 24 Oct 2023 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9B129437
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:06:45 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E875A4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:06:44 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvI3H-00020n-B2; Tue, 24 Oct 2023 16:06:35 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qvI3G-003xaj-Oc; Tue, 24 Oct 2023 16:06:34 +0200
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvI3G-00G8pr-MF; Tue, 24 Oct 2023 16:06:34 +0200
Date: Tue, 24 Oct 2023 16:06:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] regulator: fixed: add support for under-voltage
 IRQ
Message-ID: <20231024140634.GD3803936@pengutronix.de>
References: <20231024130842.2483208-1-o.rempel@pengutronix.de>
 <20231024130842.2483208-3-o.rempel@pengutronix.de>
 <471281bf-4126-496b-93ef-0807f4910ce7@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <471281bf-4126-496b-93ef-0807f4910ce7@sirena.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Tue, Oct 24, 2023 at 02:26:24PM +0100, Mark Brown wrote:
> On Tue, Oct 24, 2023 at 03:08:42PM +0200, Oleksij Rempel wrote:
> 
> > Add interrupt support for under-voltage notification. This functionality
> > can be used on systems capable to detect under-voltage state and having
> > enough capacity to let the SoC do some emergency preparation.
> > 
> > This change enforce default policy to shutdown system as soon as
> > interrupt is triggered.
> 
> ...
> 
> > +static irqreturn_t reg_fixed_under_voltage_irq_handler(int irq, void *data)
> > +{
> > +	hw_protection_shutdown("Critical voltage drop reached",
> > +			       FV_DEF_EMERG_SHUTDWN_TMO);
> > +
> > +	return IRQ_HANDLED;
> > +}
> 
> We need a bit more policy here - the regulator could be critical to
> system function but it could also be well isolated and just affecting
> whatever device it's directly supplying in a way that the system can
> tolerate and might even want to (eg, for something like a SD card or USB
> port where end users are plugging in external hardware).

Hm, how about devicetree property to indicate system critical nature of
the regulator. For example "system-critical-regulator" or
"system-critical-undervoltage-interrupt" ?

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

