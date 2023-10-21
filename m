Return-Path: <devicetree+bounces-10504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 415937D19E4
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 02:26:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DA2B1C21003
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95BD1364;
	Sat, 21 Oct 2023 00:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx0LIszX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EBF362
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 00:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA725C433C9;
	Sat, 21 Oct 2023 00:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697847989;
	bh=hQcMQed4qkP7xYgV5K8DWsE0dM0Ur960kuw+Llvvjlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vx0LIszXTaAFU51lLmjSEEqn0Xu06hhmtvw6/+DJSrFLjvFSRc+Ov/tB9S+eZGAQM
	 gV29M85XclU0CWv43mwc+XX5IubtLFq/D6y5jYbJoeKLBTEP8b2jRhkkgOUt4sbMjK
	 hgnmsFfoYAnPQEENTHpbFq0BWiNr8UWgxG1iyqwh5i4xIjqP8lh/BRrg61+cE59llx
	 vzNLNzoMs2LdzKpVh+7nHAC7ztCzKjnPE3cGY5M731IVFJAxL56lvCG7ApPStJ6daV
	 VcWdUrqkC1oA5CSgY2hXBuzxCpcU2aibv0KwbxHE+UJbdsqXE3OprlOP07it5Vxu2Q
	 c2c7b+9t3Zmkg==
Received: by mercury (Postfix, from userid 1000)
	id D6AC4106061E; Sat, 21 Oct 2023 02:26:26 +0200 (CEST)
Date: Sat, 21 Oct 2023 02:26:26 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>,
	zev@bewilderbeest.net, linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 3/3] regulator: fixed: forward under-voltage events
Message-ID: <20231021002626.plvaqj6jmybcu7mb@mercury.elektranox.org>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
 <20231010085906.3440452-3-o.rempel@pengutronix.de>
 <5e51792a-cc93-4364-a51b-c2b116d89369@sirena.org.uk>
 <20231010125531.GA3268051@pengutronix.de>
 <c2ee404d-d07f-42c6-b5ba-41659773e8eb@sirena.org.uk>
 <20231011075931.GA3305420@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011075931.GA3305420@pengutronix.de>

Hi,

On Wed, Oct 11, 2023 at 09:59:31AM +0200, Oleksij Rempel wrote:
> On Tue, Oct 10, 2023 at 06:19:59PM +0100, Mark Brown wrote:
> > On Tue, Oct 10, 2023 at 02:55:31PM +0200, Oleksij Rempel wrote:
> > > The hardware I am working with has an under-voltage sensor on the 24V
> > > supply regulator and some backup capacitors to run SoC for 100ms. I want
> > > to forward under-voltage events across a chain of different regulators
> > > to a designated consumer. For instance, to the mmc driver, enabling it
> > > to initiate shutdown before power loss occurs.  Additionally, a bit can
> > > be set in the volatile memory of a scratch pad in an RTC clock to record
> > > sudden power loss, which can be checked on the next system start.
> > 
> > So it sounds like the underlying need is to flag the notifications from
> > one of the regulators as being system wide and then take action based on
> > those notifications somewhere basically disconnected?  That does seem
> > like a good use case.
> > 
> > The MMC doesn't specifically care that it is handling a regulator
> > notification, it more wants to know that the system is dying and doesn't
> > really care how we figured that out so if we can hook it into a system
> > level notificaiton it'd be happy and would also be able to handle other
> > critical faults.  I would have thought that we should have some
> > mechanisms for this already for RAS type stuff but I'm drawing a blank
> > on what it actually is if there is an existing abstraction.  It could
> > potentially go through userspace though there's latency concerns there
> > which might not be ideal, there should at least be some policy for
> > userspace.
> 
> The project I'm working prefers reducing user space daemons to configure and
> enforce RAS policies due to time and financial budget constraints. The customer
> is inclined to invest only in essential infrastructure.
> 
> Configuration through the device tree and kernel defaults is preferable.
> For instance, having a default kernel governor that doesn’t require user
> space configuration aligns with the project’s objectives.
> 
> While a proper UAPI might not be implemented in the first run, the
> design will allow for it to be added and extended by other projects in
> the future.
> 
> > For the regulator itself we probably want a way to identify regulators
> > as being system critical so they start notifying.  It would be tempting
> > to just do that by default but that would likely cause some issues for
> > example with regulators for things like SD cards which are more likely
> > to get hardware problems that don't comprimise the entire system.  We
> > could do that with DT, either a property or some sort of runtime
> > consumer, but it might be better to have a control in sysfs that
> > userspace can turn on?  OTOH the ability do something about this depends
> > on specific hardware design...
> > 
> > I've copied in Sebastian since this sounds like the sort of thing that
> > power supplies might have some kind of handling for, or at least if we
> > need to add something we should make it so that the power supplies can
> > be joined up to it.  I do see temperature and capacity alerts in the
> > sysfs ABI for power supplies, but nothing for voltage.
> 
> Thank you for pointing towards the power supply framework. Given the hardware
> design of my project, I can envision mapping the following states and
> properties within this framework:
> 
> 1. States:
>    - POWER_SUPPLY_STATUS_FULL: When the capacitor is fully charged.
>    - POWER_SUPPLY_STATUS_DISCHARGING: Triggered when an under-voltage event is
>                                       detected.
> 
> 2. Technology:
>    - POWER_SUPPLY_TECHNOLOGY_CAPACITOR
> 
> 3. Capacity Level:
>    - Post under-voltage detection, the system would immediately transition to
>      POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL state.
> 
> 4. Properties:
>    - POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW: 100ms, representing the time until
>                                           complete power loss.
>    - POWER_SUPPLY_TYPE_MAINS: Under normal operation.
>    - POWER_SUPPLY_TYPE_BATTERY: Triggered when under-voltage is detected.

I don't know if power-supply is the best fit for this, but if you
continue on this path:

POWER_SUPPLY_TYPE is supposed to be fixed. You either have a battery
or a charger. If you want to go the power-supply way, you need two
devices: One POWER_SUPPLY_TYPE_MAINS for the regulator charging the
capacitor and one POWER_SUPPLY_TYPE_BATTERY for the capacitor. The
MAINS device is important to keep power_supply_is_system_supplied()
working as expected.

Note, that there is no generic solution how to handle critical
battery events in the power-supply framework at the moment. On
Laptops userspace handles early poweroff based on the information
supplied by the kernel. Right now there is one phone battery driver
doing 'orderly_poweroff(true)' on critical battery state. That's
about it.

Greetings,

-- Sebastian

