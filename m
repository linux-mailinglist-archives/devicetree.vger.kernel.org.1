Return-Path: <devicetree+bounces-101887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C099974ADF
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07010288E33
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80B64130A54;
	Wed, 11 Sep 2024 07:00:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD1C13AA3F
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726038058; cv=none; b=YkSDegMBtNAwpY+JwcaCocuxgxsYZb7+AOANw6/pOPE0Q9M8YkT6W+sHcSnK14UE7cNqpyBpC7ww9UMlgvZF9OuZqat7uoFrkssf6ydNBqQcH/vpcx2tbu1rwMO8Eb1pmxwBzOE9fazX4Nu7Phvg9HXnsoYGc74S1LxYmDMD4PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726038058; c=relaxed/simple;
	bh=haGjOs6Ls3rcFJQz1O4SXqDm7eC9DDi3NlIAUroJ10U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MDwfcoW0AY/S1y/JWZjtgRAUfrVsFdEoUBavPL6Ltr8HUbi3hUd7rp+dxZSh49JOreeuSKx72ljF4y5JKQVwFoSvQRo+0MCmFefSdw7Cnv4iOv84iNo00Q/R8jZLhNt3iCHcnlBEmYQytzRs0pOYgTq3x7Q9VEjumUyrpwmbkbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1soHKt-0000rM-6F; Wed, 11 Sep 2024 09:00:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1soHKr-0074hk-Pm; Wed, 11 Sep 2024 09:00:17 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1soHKr-001pNS-2C;
	Wed, 11 Sep 2024 09:00:17 +0200
Date: Wed, 11 Sep 2024 09:00:17 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: ethernet-phy: Add
 master-slave role property for SPE PHYs
Message-ID: <ZuFAAVBGw7ApUk6S@pengutronix.de>
References: <20240909124342.2838263-1-o.rempel@pengutronix.de>
 <20240909124342.2838263-2-o.rempel@pengutronix.de>
 <20240909162009.GA339652-robh@kernel.org>
 <c2e4539f-34ba-4fcf-a319-8fb006ee0974@lunn.ch>
 <CAL_Jsq+qJStck1OTiXg0jPR3EPEpLsu-or0pNqNh0orFjf+0uA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+qJStck1OTiXg0jPR3EPEpLsu-or0pNqNh0orFjf+0uA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Tue, Sep 10, 2024 at 11:54:04AM -0500, Rob Herring wrote:
> On Mon, Sep 9, 2024 at 12:00 PM Andrew Lunn <andrew@lunn.ch> wrote:
....
> > The 2022 revision of 802.3 still has master/slave when describing the
> > registers, but it does have Annex K as described above saying "leader"
> > and "follower" are optional substitutions.
> >
> > The Linux code has not changed, and the uAPI has not changed. It seems
> > like the best compromise would be to allow both 'force-master' and
> > 'force-leader', as well as 'force-slave' and 'force-follower', and a
> > reference to 802.3 Annex K.
> 
> It seems silly to maintain both forever. I'd rather have one or the
> other than both.

I'll accept what ever will be decided. Even if we will decide to use
words 'leader' and 'follower' for the properties, we still need to
document that they correspond to 'master' and 'slave' in the IEEE
specification and in the kernel UAPI.

I can imagine a mdi-link-clock-role = 'leader' or 'follower'

> > As to you comment about it being unclear what it means i would suggest
> > a reference to 802.3 section 1.4.389:
> >
> >   1.4.389 master Physical Layer device (PHY): Within IEEE 802.3, in a
> >   100BASE-T2, 1000BASE-T, 10BASE-T1L, 100BASE-T1, 1000BASE-T1, or any
> >   MultiGBASE-T link containing a pair of PHYs, the PHY that uses an
> >   external clock for generating its clock signals to determine the
> >   timing of transmitter and receiver operations. It also uses the
> >   master transmit scrambler generator polynomial for side-stream
> >   scrambling. Master and slave PHY status is determined during the
> >   Auto-Negotiation process that takes place prior to establishing the
> >   transmission link, or in the case of a PHY where Auto-Negotiation is
> >   optional and not used, master and slave PHY status
> 
> phy-status? Shrug.

In my understanding, the 'status' is result not actual configuration
request.

> Another thought. Is it possible that h/w strapping disables auto-neg,
> but you actually want to override that and force auto-neg?

Yes. If I would need it, I would recommend to have a different override
property, something like: autoneg-default = 'on' or 'off'

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

