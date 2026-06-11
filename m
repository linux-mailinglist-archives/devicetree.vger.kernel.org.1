Return-Path: <devicetree+bounces-310364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nq9JIjmWKmoytAMAu9opvQ
	(envelope-from <devicetree+bounces-310364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:04:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D334A671212
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:04:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310364-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310364-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B492D30356CF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABCE3C873B;
	Thu, 11 Jun 2026 11:04:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEBB3DBD7A
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 11:04:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781175846; cv=none; b=DDAC1e0hPXs87BX/RjUN1SC79eOIHvmNjKrgj+7Ni6sdTa90p0tFUFCvfdYrbCuM7UT2r6MNY5TFV1FbFZrV5+inYyr591SBI1cywTcRUkjuzSlgh6WuSMuao3O/CxJTXgQp/Q2PSLMF3p+h6L6TOm4T2OJgo5AvvULdzjwZQZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781175846; c=relaxed/simple;
	bh=0I311zuEXmpbYeS9LW04CVnyA07XyPu8cY6Eunqtxbw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bazDBRkklphYe4/yqSERQ38CROB0TCAvhHSvTiDNGQWmy7PLW2+GnnDyMy/h+srJYqg9AwHv4ldsjb5Hn3TRzxiPFRWsKjSELveZCE6pvbel13jWVHmS20xt+E003Rd0QrOw1MLmMUGgX3NHAums2EPTidxFe9Lm/krTdsBKd18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXdCA-0003nc-4z; Thu, 11 Jun 2026 13:03:34 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXdC3-002CdD-1k;
	Thu, 11 Jun 2026 13:03:27 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXdC3-0000000ENxp-1khf;
	Thu, 11 Jun 2026 13:03:27 +0200
Date: Thu, 11 Jun 2026 13:03:27 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Kory Maincent <kory.maincent@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>,
	=?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Subject: Re: [PATCH net-next 0/2] net: pse-pd: add Realtek/Broadcom PSE MCU
 support
Message-ID: <aiqV_10qQahSHXca@pengutronix.de>
References: <20260608205758.1830521-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260608205758.1830521-1-jelonek.jonas@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[bounces-310364-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:jelonek.jonas@gmail.com,m:kory.maincent@bootlin.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@makrotopia.org,m:bjorn@mork.no,m:jelonekjonas@gmail.com,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D334A671212

Hi Jonas,

On Mon, Jun 08, 2026 at 08:57:55PM +0000, Jonas Jelonek wrote:
> This series adds a PSE-PD driver for the microcontroller (MCU) that fronts
> the PSE silicon on a range of managed switches, together with its DT
> binding.
> 
> Hardware model
> ==============
> 
> These boards do not expose the PSE chips to the host directly. A small
> microcontroller sits on an I2C/SMBus or UART bus and manages one or more PSE
> chips behind it; the host CPU only ever talks to that MCU, using a fixed
> 12-byte request/response protocol with a trailing checksum. The PSE silicon
> never appears on the bus.
> 
> The same protocol family is used by MCUs fronting Realtek PSE chips
> (RTL8238B, RTL8239, RTL8239C) and Broadcom PSE chips (BCM59111, BCM59121),
> diverging in opcode numbering and a few response layouts. The driver
> abstracts that behind a per-dialect opcode table and parser hooks, selected
> by the compatible. The specific PSE chip behind the MCU is detected at
> runtime and only influences per-chip constants (power scaling and the
> per-port cap).
> 
> Why the compatible names the protocol, not the chip
> ===================================================
> 
> The compatibles are "realtek,pse-mcu-rtk" and "realtek,pse-mcu-bcm". This is
> a deliberate choice and the part most likely to raise questions, so the
> reasoning up front.
> 
> The node names the protocol dialect, not a part:
> 
>   - The DT node describes the MCU, not a PSE chip: the PSE chips are behind
>     the MCU and never appear on the bus, so naming the node after one (e.g.
>     "realtek,rtl8239") would describe hardware that isn't at that address.
> 
>   - The PSE chips are, in principle, usable without this MCU (host-driven
>     directly) - different hardware with a different programming model that
>     would warrant its own binding. Claiming the PSE-chip compatibles here
>     would collide with that.
> 
>   - Naming the MCU silicon is equally wrong: these are ordinary
>     general-purpose microcontrollers (GigaDevice, Nuvoton, ...) that vary
>     across boards and are not dedicated to this application.
> 
>   - What is fixed, and all the driver needs at DT-parse time, is the
>     protocol dialect, so the compatible encodes exactly that. The two
>     dialects share one protocol family and one binding, kept in a single
>     "realtek" vendor namespace because this MCU front-end is found almost
>     exclusively on Realtek-based switches; a "-rtk"/"-bcm" suffix selects
>     the dialect. This follows the "google,cros-ec-*" pattern: a compatible
>     for a firmware/protocol interface implemented by varying
>     microcontrollers.
> 
> One compatible per dialect spans both transports:
> 
>   - The 12-byte wire protocol is identical over I2C/SMBus and UART; only the
>     plumbing differs (SMBus vs native framing on I2C, baud rate on UART),
>     and the transport is already expressed structurally by the node's parent
>     bus (i2c@... vs serial@...). A "-i2c"/"-uart" suffix would only
>     duplicate that, for a protocol that does not change across transports.
> 
>   - This is the multi-transport model used by e.g. "bosch,bmi160" (one
>     compatible, separate i2c and spi drivers binding it), rather than the
>     cros-ec model of per-transport compatibles - cros-ec splits because its
>     on-wire framing genuinely differs per bus, which is not the case here.
> 
> The binding documents both points as well.
> 
> Testing
> =======
> 
>  - Linksys LGS328MPCv2  (RTL8238B, I2C)
>  - Zyxel GS1900-10HP A1 (BCM59121, UART)
>  - Zyxel GS1900-10HP B1 (RTL8238B, UART)
>  - Zyxel XMG1915-10EP   (RTL8239C, UART)
>  - Zyxel XS1930-12HP    (RTL8239, SMBus)
> 
 
Thank you for your work!

Overall, LGTM. Can you please take a look at this report:
https://sashiko.dev/#/patchset/20260608205758.1830521-1-jelonek.jonas%40gmail.com 

kzalloc_obj - seems to be a false positive. Some other have good points.

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

