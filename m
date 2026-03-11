Return-Path: <devicetree+bounces-274056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHUXLelhsWl/uQIAu9opvQ
	(envelope-from <devicetree+bounces-274056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:36:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E90263ABC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E0093028121
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A09382F27;
	Wed, 11 Mar 2026 12:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="RHOIw8K0"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B059038F232;
	Wed, 11 Mar 2026 12:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232614; cv=none; b=YNEtpZMrX1YPB0U4iszTXMd4eJdvHIqIUEKg/jc5HtEu6moiZ+wWcMYrJHZCpek7VF0jwoYoXUnwTHlmqMT00Cye6VMri1O4IsR3tTiB05Nwz4uM/d7p46eJ/i/dESadomq8UVqPdHLTqiuFP4pUgNocN7mCv81ijzaBgTgrwXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232614; c=relaxed/simple;
	bh=g2DMjw0A4OMY5sibwcjs429KEO06agQBAcrhJpDIhBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UAUC9ZbJZFdB70yYh+uEVpLXPfYwKo64alQHnr3HMHaj/kv+3kDL76jjvRU2417ZA7VbXK5KUAVApaFibjq6/WaseLF5k2FcvLHhU3X2uvr25+i/1Bj/24gOexFW5RpKD/MqkFHXLe/lqHEFkQAZd21SWxMzFBUILCbBuWYAuP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=RHOIw8K0; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=cYNLKIwQSasBdYZGFqUzejhZnpcUdrBH4ZJakw/Cw+8=; b=RH
	OIw8K0qHvCBbrvpteh+VT0BrYx/46g/NdI8GvvNAp31wBun/NJpCAvqnEdPQ9fs+QIFmMO6qK6Cwn
	g/+RhTu31W0S6gMZ99WhvWo+oEVArBxTPDaJ9R96CHAUvB8ggbzTCEkB8VzHD0LPiaMMC+7F0oziM
	UutcfMNomj8D0Oo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w0Inf-00BB9I-F9; Wed, 11 Mar 2026 13:36:31 +0100
Date: Wed, 11 Mar 2026 13:36:31 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Potin Lai <potin.lai.pt@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Patrick Williams <patrick@stwcx.xyz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, Cosmo Chou <cosmo.chou@quantatw.com>,
	Mike Hsieh <Mike_Hsieh@quantatw.com>,
	Potin Lai <potin.lai@quantatw.com>,
	Roger Kan <Roger.Kan@quantatw.com>
Subject: Re: [PATCH v2 0/2] Add Meta (Facebook) SanMiguel BMC (AST2620)
Message-ID: <8249f102-cc35-4614-9e20-506c51a78d8e@lunn.ch>
References: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
 <3256b313-7671-4fda-9949-766906c344a7@lunn.ch>
 <CAGfYmwUfKk5OrFzJRHyu6h-Jf-cqbxfh62wRmxwOL8K7VfFGfg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGfYmwUfKk5OrFzJRHyu6h-Jf-cqbxfh62wRmxwOL8K7VfFGfg@mail.gmail.com>
X-Rspamd-Queue-Id: 23E90263ABC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274056-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 02:31:48PM +0800, Potin Lai wrote:
> On Tue, Feb 3, 2026 at 9:42 PM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > On Tue, Feb 03, 2026 at 05:48:13PM +0800, Potin Lai wrote:
> > > Add Linux device tree entries for Meta (Facebook) SanMiguel specific
> > > devices connected to the AST2620 BMC SoC.
> > >
> > > Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> > > ---
> > > Changes in v2:
> > > - change mac0 phy-mode to rgmii-id
> >
> > No other change? Was the previous version broken, and never tested? Is
> > this version broken and not tested? Is the phy-mode ignored, which
> > suggests something else is broken?
> >
> >      Andrew
> 
> Hi Andrew,
> 
> Sorry for the late reply.
> Both "rgmii-id" and "rgmii-rxid" modes work fine without connection issues.
> However, based on the scan testing we performed in U-Boot, "rgmii-id"
> shows better coverage than "rgmii-rxid". Therefore, we decided to
> switch to "rgmii-id".

I'm surprised it works with both, that is well outside the RGMII
specification. The PHY must be pretty forgiving.

Anyway, thanks for the information.

	Andrew

