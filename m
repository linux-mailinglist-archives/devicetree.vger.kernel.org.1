Return-Path: <devicetree+bounces-266282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDN+K/DSlGmfIAIAu9opvQ
	(envelope-from <devicetree+bounces-266282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:43:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1B6150242
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:43:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C49753013D4A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174C9372B2D;
	Tue, 17 Feb 2026 20:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="i+51ALd7"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0130320CD9;
	Tue, 17 Feb 2026 20:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771361002; cv=none; b=l7x+Ysf+SWzDXfNxiKT+wQ4lOfaSjiHqcJxjamcyaMP3V7qIg0uuNFHGLwuOra6yCn7Si8CELfQiog33E/akj46jyjWhNTDVyDdP3y+N239zGmkngiL1TFmCWtAE0kOryKbvKP27YDZ+dj5H9GuiBgMrvmfq9MMd2Z9oTRZQ+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771361002; c=relaxed/simple;
	bh=xaNCkDVtXSVSu+DM8ddQ+7wjR8XHf3WU4okD6GFRVsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RA/Cjt6fbWzC3C3UAM+f2T26bQ6fjTMPo2nS2ZfGT/6mDUTzBblAo80lxF9Z9dWG+Vo1yIqAuovs47CTQdF/76OrQ7X88WMwRiJAJkb6uDpEh6ny2HYQZ0j+cHH8/eb7VyaNyBalqysSbD8oRyYojxgf/fRSrqCsPGrLjnPsK5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=i+51ALd7; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Wlg17Kj/wYC+KcEPPN4TByd+mHs/UERfyc2emJHo0cc=; b=i+51ALd7gisJbAn50Bu8vXVC2/
	6y0UR/QhvSBWqdN5tqTwjnWh5VLwllXxHc1VMKEV2+7QaixWChmNc11D8uLCRe3d5pnlvoktWIiBO
	Bhjo6abQHteJe+8zpmGcNFYmWALs3T6RDzSXKCs80cQ5wTIbAq3kp/DdZl3Uqx00rfu8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vsRue-007geQ-Nf; Tue, 17 Feb 2026 21:43:16 +0100
Date: Tue, 17 Feb 2026 21:43:16 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v1 03/11] arm64: dts: freescale: imx8mm-var-som: Update
 FEC support with MaxLinear PHY
Message-ID: <fceeda41-66cc-4bb2-ab53-d4b1ec25348a@lunn.ch>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3b984b93a43a07bc9c4f6414a08a3a0f45daaaa8.1771353301.git.stefano.r@variscite.com>
 <31f30651-7c99-42cb-9e27-e4806529d137@lunn.ch>
 <aZTCGH1rKWdvYg5-@Lord-Beerus.station>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZTCGH1rKWdvYg5-@Lord-Beerus.station>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266282-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,lunn.ch:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email]
X-Rspamd-Queue-Id: 1C1B6150242
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 08:31:36PM +0100, Stefano Radaelli wrote:
> Hi Andrew!
> > 
> > I don't think you say this explicitly anywhere, so i will ask. The PHY
> > is on the SOM? The carrier just has magnetics and the RJ45?
> 
> Yes, the Ethernet PHY (MXL86110) is physically mounted on the VAR-SOM.

O.K. so far.

> All RGMII signals, MDIO and the LED outputs are routed to the SOM
> board-to-board connector. The carrier board only provides the magnetics
> and the RJ45 connector.

And here you loose me. RGMII is between the MAC and the PHY. The PHY
is on the SOM, so there is no need for RGMII to leave the SOM.

MDIO is can understand going to the carrier, because there can be
other devices on the bus, such as an Ethernet switch.

You say the LEDs are not on the SOM. So they should not be listed in
the .dtsi file for the SOM. It could be the RJ45 is a cheap one,
without LEDs. The colours will depend on the RJ45 socket. It could be
a single LED is connected to the front panel, which is typical of STB
etc. So the LEDs are a board property, not a SOM property.

> > >   Two LEDs are defined to match the VAR-SOM carrier design:
> > >     * LED@0: Yellow, netdev trigger.
> > >     * LED@1: Green, netdev trigger.
> > 
> > Where are the LEDs? You say "carrier design", so are they on the
> > carrier? The DT properties should then be in the .dts file for the
> > carrier.
> >
> 
> The LED signals are driven directly by the PHY and originate on the SOM.
> They are exposed on the SOM connector and are typically routed straight
> to the RJ45 integrated LEDs on the carrier.

The problem here is 'typically', not absolutely required, otherwise
the magic smoke will escape making the box useless.

	Andrew

