Return-Path: <devicetree+bounces-33319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 170D3832E6C
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 18:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C22A11F24C34
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 17:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C55057872;
	Fri, 19 Jan 2024 17:54:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E588D5731B
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705686873; cv=none; b=ObLXo1AH/IIp2AbB2a+neyJDMIXGv2WU7jpJzUTEirjMIrBItE6kk5WwtAk7Rq2/zpVMaU3c9XNTB1z6H9gLowonu8i001k3qqYbME3ar025aIsk3/vpiM7j5N4Tonz7uJzthJuwhu1/RfgYA5G4xGuxl/O+Dx3YDBgSroJBwKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705686873; c=relaxed/simple;
	bh=thj0rbqL/gPURJA3HN4micGmDvafwRuWhOPghAP9hWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=er+Mwwr9mPjiKXvmqrhvVZyNxeLMgnEf4S4dYf0VSeETXdqGK9K05ZGUbCW3zd4XdymDyRW17KmNKblT1/iD5MjFpchnu5Wjg833jVWOCyPhH7dsySz76yJnWsGqymbCOOHQr1cFC+c4paY5d13QaB6HW1vKknVqQLSOvZiA/zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rQt4B-0002Z5-2w; Fri, 19 Jan 2024 18:54:07 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rQt4A-000y8v-1V; Fri, 19 Jan 2024 18:54:06 +0100
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rQt49-000lgo-Uc; Fri, 19 Jan 2024 18:54:05 +0100
Date: Fri, 19 Jan 2024 18:54:05 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Sebastian Reichel <sre@kernel.org>,
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
Subject: Re: [RFC PATCH v1 1/7] dt-bindings: power: reset: add generic PSCR
 binding trackers
Message-ID: <20240119175405.GA163482@pengutronix.de>
References: <20240119132521.3609945-1-o.rempel@pengutronix.de>
 <20240119132521.3609945-2-o.rempel@pengutronix.de>
 <20240119172838.GA460212-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240119172838.GA460212-robh@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Fri, Jan 19, 2024 at 11:28:38AM -0600, Rob Herring wrote:
> On Fri, Jan 19, 2024 at 02:25:15PM +0100, Oleksij Rempel wrote:
> > Add binding for Power State Change Reason (PSCR) subsystem
> 
> Why? 
> 
> How is this different from the reboot reason binding?

I was not able to find "reboot reason", you probably refer to "reboot
mode".

Reboot Mode:
 Purpose: Dictates how the system should reboot (e.g., normal, recovery,
   bootloader).
 Usage: Provides instructions for the next boot mode.
 Scenario: Utilized in planned reboots or software-triggered reset scenarios.

PSCR (Power State Change Reasons):
 Purpose: Logs the reason behind a power state change (e.g., voltage drop,
   over-temperature).
 Usage: Used for rapid logging and post-event analysis, potentially informing
   automatic decision-making in subsequent boots.
 Scenario: Critical in abrupt power-down situations where immediate, detailed
   decision-making is not possible.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

