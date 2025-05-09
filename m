Return-Path: <devicetree+bounces-175324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E3EAB0A99
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 08:32:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9366E4E0F2A
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 06:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7FE522FDE8;
	Fri,  9 May 2025 06:32:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA382746C
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 06:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746772358; cv=none; b=Hbr4Ku1GGvgQi/R4ZJJF+DaoOiS+/E/lVxGeHQsYNOvlk0IoLSmLSt6FArZt3db6JbwobbrtnXAzE9OSReV8PHRFpZqKqd+TBMh7sMSA7t11XEuf9W4H5tqE7iNY8nqaGX+D2zmqjD6/xUpMijVVOTRFCotykZwOqXqONGfkeBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746772358; c=relaxed/simple;
	bh=6yge8Z7fgMDQq1fOPrhoP43XME2PXCMdqXuEEXQnyPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JpaLBvgZL3yB07jNaJ4NxWtr8gtla19rrzxrmhq0Z4uphRb5y4y7DIGeOGnsosK5LGYQitS8oQ4U9RnLhEoHUabFhRp4dpxC3/2MJyNIezqkFwyrd7Fo03WTVb5NsNC9C2iVL0784lHn/LU0u3+kn/bmJzNSeMfe45pFZfkinBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uDHHR-00046g-Ca; Fri, 09 May 2025 08:32:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uDHHQ-001qPI-1J;
	Fri, 09 May 2025 08:32:20 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uDHHQ-00CHwN-0v;
	Fri, 09 May 2025 08:32:20 +0200
Date: Fri, 9 May 2025 08:32:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: ti: k3-am625-sk: Add power/temperature
 sensors
Message-ID: <aB2hdA8mfKGlk8d8@pengutronix.de>
References: <20250505-am625-sk-sensors-v1-1-688fb928b390@pengutronix.de>
 <20250507120104.4mhuaabe5auukarn@banter>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250507120104.4mhuaabe5auukarn@banter>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Nishanth,

On Wed, May 07, 2025 at 07:01:04AM -0500, Nishanth Menon wrote:
> On 15:24-20250505, Sascha Hauer wrote:
> > The AM625-SK has six power sensors and two temperature sensors connected
> > to I2C. Add them to the device tree.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > The AM625-SK has six power sensors and two temperature sensors connected
> > to I2C. Add them to the device tree.
> 
> Sascha,
> 
> I suggest making this as overlay. The reason is as follows: AM625-SK
> among other TI evms do have automated power measurement capability from
> XDS110 (accessible via USB port for jtag - appears as a rudimentary
> menu option). The way this works is that it uses TM4C1294NCPDT to use
> I2C commands to control the INA226/231 depending on the evm.
> 
> This firmware should be flashed by default on production boards (if
> not, starting up CCS[1], autodetects older firmware and updates - at
> least to my understanding) - by the way, this firmware also does test
> automation, such as boot mode switch control, reset control etc.
> 
> This is the primary framework meant to be used by test automation and
> indeed it is the default inside TI.
> 
> Challenge here is this: if we make this default in Linux, the test
> automation system configures the INA226/231 in a different sampling
> mode depending on usecase etc Vs what Linux does (even though the
> shunt and the bus voltage for a given INA is the same). And just like
> Linux, the firmware power measurement logic has changed over the
> years.
> 
> Anyways, while I know that the SoC and TM4C can both handle
> multi-master, the challenge is the same INA controlled and
> mix-configured by two masters (and there is no synchronization between
> the two).
> 
> To avoid this entire conflict and headache, I suggest adding it as
> overlay that can be applied depending on the preference of measurement
> desired.

Thanks for this explanation. I'll go for the overlay then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

