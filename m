Return-Path: <devicetree+bounces-17858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C98A7F44D8
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DDEC1C20A42
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B69E256441;
	Wed, 22 Nov 2023 11:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C0E18D
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:22:39 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1r5lJ7-0007CM-Sz; Wed, 22 Nov 2023 12:22:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1r5lJ7-00AnbT-0P; Wed, 22 Nov 2023 12:22:13 +0100
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1r5lJ6-003I31-Ta; Wed, 22 Nov 2023 12:22:12 +0100
Date: Wed, 22 Nov 2023 12:22:12 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Mark Brown <broonie@kernel.org>
Cc: Yang Yingliang <yangyingliang@huawei.com>, linux-mmc@vger.kernel.org,
	kernel@pengutronix.de, Ye Bin <yebin10@huawei.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>,
	zev@bewilderbeest.net, Sebastian Reichel <sre@kernel.org>,
	linux-pm@vger.kernel.org,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>
Subject: Re: mmc: handling of Under-Voltage Events in eMMC
Message-ID: <20231122112212.GA783262@pengutronix.de>
References: <20230929130028.GB2825985@pengutronix.de>
 <CAPDyKFqUtNEbK2tzD+qOK+dFcDyBxvcNwOHWPJDLhTWGGkoHQw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAPDyKFqUtNEbK2tzD+qOK+dFcDyBxvcNwOHWPJDLhTWGGkoHQw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Ulf, Hi Mark,

On Tue, Oct 10, 2023 at 04:48:24PM +0200, Ulf Hansson wrote:
> On Fri, 29 Sept 2023 at 15:00, Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> >
> > Hi,
> >
> > I'm working on a project aiming to protect eMMC during power loss. Our
> > hardware setup includes an under-voltage detector, circuits to disable
> > non-critical components, and enough capacitance to allow the CPU to run
> > for 100ms.
> >
> > I've added an interrupt handler to the fixed regulator to emit
> > REGULATOR_EVENT_UNDER_VOLTAGE events, and modified
> > drivers/mmc/host/sdhci.c to receive these events. Currently, the handler
> > only produces debug output.
> >
> > What is the recommended approach for handling under-voltage situations?
> > Should the driver finish ongoing write commands, block new ones, and
> > shut down the eMMC? I'm looking for direction here.
> 
> That's indeed a very good question. From a general point of view, I
> think the best we can do is to stop any new I/O requests from being
> managed - and try to complete only the last ongoing one, if any.
> Exactly how to do that can be a bit tricky though.
> 
> Beyond that, we should probably try to send the eMMC specific commands
> that allow us to inform the eMMC that it's about to be powered-off.
> Although, I am not sure that we actually will be able to complete
> these operations within 100ms, so maybe it's not really worth trying?
> See mmc_poweroff_notify(), for example.

Some puzzle parts are now mainline, for example regulator framework
can be configured to detect under-voltage events and execute
hw_protection_shutdown(). So far it worked good enough to complete
mmc_poweroff_notify() withing 100ms window. The problem is, the chance to
execute mmc_poweroff_notify() depends on kernel configuration. If there are too
many drivers and devices, mmc_poweroff_notify() will be not executed in time.

For now, I workaround it by registering a reboot notifier for mmc shutdown.
It works, because kernel_power_off() is executing all registered reboot
notifiers at first place and there are no other slow reboot notifiers.
But, it seems to be not reliable enough. Probably notifier prioritization
is needed to make it more predictable.

So far, I have two variants to implement it in more predictable way:
variant 1 - forward the under-voltage notification to the mmc framework and
  execute mmc_poweroff_notify() or bus shutdown.
variant 2 - use reboot notifier and introduce reboot notifier prioritization.

Are there other options? What are your preferences?

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

