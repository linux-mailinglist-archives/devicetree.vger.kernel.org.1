Return-Path: <devicetree+bounces-299900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCs9GGoiDGpCXAUAu9opvQ
	(envelope-from <devicetree+bounces-299900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:42:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE71C57A566
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40A1A30948CB
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF3D3DEADC;
	Tue, 19 May 2026 08:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0cgEBog"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB3241C62;
	Tue, 19 May 2026 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779179393; cv=none; b=pY+xW/TaK2Os2EPIyBPUSqXQroWHObpOa3vxXe4bumWez2tmsX5Gt7waY3++giBfgBtPx5RScgdaP7sxKCHtXFkYme3pR3u8aOYIWZmV9z9F2KL+2kgJYB+mU3jTES/u9YZ8Xl6DQib6xfj3aHwqz88ny/arTxpnb8qdRO4y568=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779179393; c=relaxed/simple;
	bh=sxi4Nd3428EAjrfiX0HNjbsVsdPmFrqLWCGIPz6abEI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NiXSvRyK5/dICgs/NU2eItsvT0ncNHAfuClzZqtw5LI6g2tD+lREuxRS62syUbWzBu1QT/LGmmKqsKZPxnWsEPLSculIPWNHYD35snURsbYhKtkBtLVhz7v9ybUuou8FY7FxqnSGzvCvYmEqNx5u+tPmn2bb73+2TkoWtT7T7xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0cgEBog; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBF03C2BCB3;
	Tue, 19 May 2026 08:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779179393;
	bh=sxi4Nd3428EAjrfiX0HNjbsVsdPmFrqLWCGIPz6abEI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N0cgEBogM3z+HeA/OXJOJ2GxWoPy8vgw4rkhTieDJOdOOcdM6JqbMBZAhJxziSrrR
	 ZiVCL98OhiOOQF714K+o0uEE3cwuOqTQc6jFtALsCuHLI3rHX9N+RjM7DPIucbLyIs
	 TKTz8Yt21LLhJdLZ+aJ08Oe9LEQlKudXiKniDXktGDayEp9ef88qx4VWsJtD2Hd3K0
	 8TxhN5l9nFsCd4TplzqT9ZaMvIlwkrSnTzd4jbEwHtacuzSvI+m90o6HH6b7m2wTMq
	 lQJFknLZNhTFDNYHkmqM/Tpd+Fr+xxdoIc/ofp9F8AE7daqpTM2aVcGfRApQG837fr
	 7cf/QlG7APnhQ==
Date: Tue, 19 May 2026 10:29:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Frank Li <frank.li@nxp.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"Chancel Liu (OSS)" <chancel.liu@oss.nxp.com>
Subject: Re: [PATCH 2/5] dt-bindings: connector: Add fsl,io-connector binding
Message-ID: <20260519-macho-degu-from-nibiru-960af2@quoll>
References: <20260509024846.2094049-1-chancel.liu@nxp.com>
 <20260509024846.2094049-3-chancel.liu@nxp.com>
 <20260515-resourceful-singing-roadrunner-ce25ec@quoll>
 <AM9PR04MB8353FE81D06852D45514E460E3032@AM9PR04MB8353.eurprd04.prod.outlook.com>
 <d2b13e51-1684-4acb-a5ed-294c8aa95906@kernel.org>
 <AM9PR04MB83538C4A07A6835FF8A74793E3002@AM9PR04MB8353.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <AM9PR04MB83538C4A07A6835FF8A74793E3002@AM9PR04MB8353.eurprd04.prod.outlook.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299900-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,baylibre.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,oss.nxp.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: CE71C57A566
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 02:56:24AM +0000, Chancel Liu wrote:
> > >>> +description:
> > >>> +  The NXP I/O connector represents a physically present I/O
> > >>> +connector on the
> > >>> +  base board. It acts as a nexus that exposes a constrained set of
> > >>> +I/O
> > >>> +  resources, such as GPIOs, clocks, PWMs and interrupts, through
> > >>> +fixed
> > >>> +  electrical wiring. All actual hardware providers reside on the base
> > board.
> > >>> +  The connector node only defines index-based mappings to those
> > >> providers.
> > >>> +
> > >>> +properties:
> > >>> +  compatible:
> > >>> +    const: fsl,io-connector
> > >>
> > >> Everything is IO. Everything is connector, so your compatible does
> > >> not match requirements from writing bindings.
> > >>
> > >
> > > Yes, this compatible is too generic. I will rename the compatible to
> > > fsl,aud-io-connector.
> > 
> > aud is not much better. Which boards have it? What's the pinout? What's
> > standard? Is it described anywhere? If so, provide reference to spec/docs.
> >
> 
> This is not an industry standard electrical interface. This connector

Then if you do not have standard, then you have board specific layouts
thus you need board-specific compatibles. You can use fallbacks. Generic
fallback could work, but both io-connector and aud-io-connector are just
too generic. Every connector is "connector" and "io", thus absolutely
anything can be "io-connector". "aud" improves it only a bit, thus
honestly I would go with board specific fallback as well.

> is present on i.MX95-19x19-EVK and i.MX952-EVK. For example, the
> "i.MX 95 19mm x 19mm Evaluation Kit" homepage[1] publicly documents an
> audio board connection through which IMX-AUD-IO card is connected. The
> detailed user manual (UM12022) is listed as official documentation[2],
> but it is behind an NXP login, so it is not suitable as a public
> reference for upstream. Therefore I list it here to illustrate it's
> mechanism:
> 
> +-----------------------------+                      
> |        Base Board           |                      
> |   +-----+      +---------+  |           +---------+
> |   | SPI +------+         |  |           |         |
> |   +-----+      |         |  | GPIO MAP  |         |
> |                |         +--|-----------+         |
> |   +-----+      |         |  |           |         |
> |   | I2C +------+         |  |           |         |
> |   +-----+      |         |  | CLOCK MAP |  AUD-IO |
> |                |connector+--|-----------+   CARD  |
> |   +-----+      |         |  |           |         |
> |   | I2S +------+         |  |           |         |
> |   +-----+      |         |  |           |         |
> |                |         |  | INT MAP   |         |
> |   +-----+      |         +--|-----------+         |
> |   | I/O +------+         |  |           |         |
> |   +-----+      +---------+  |           +---------+
> +-----------------------------+                      
> 
> [1]https://www.nxp.com/design/design-center/development-boards-and-designs/IMX95LPD5EVK-19
> [2]https://docs.nxp.com/bundle/UM12022/page/topics/pcie_interface1.html

Best regards,
Krzysztof


