Return-Path: <devicetree+bounces-280699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOVAIDokxGmZwgQAu9opvQ
	(envelope-from <devicetree+bounces-280699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:06:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8332A47F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D2C4A3002B79
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218CF41B35B;
	Wed, 25 Mar 2026 18:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="gvaf1Xkm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDFE41325E;
	Wed, 25 Mar 2026 18:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774461976; cv=none; b=On6kte9qe8nyKk0uetZKtB26y0HeUOYCZ661DBe9NayJ/dqIo1jbOoWfxmArSr5iOn0Y1FzPElE15l3ZVzC3XYZk3CbNpwL9NBX/OYXIHFpJ1PCiLCFJIikE9T4+aorRrY5m71JJXf1WjLE93Ux5GORuODlB3REpMHqHJKc2m+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774461976; c=relaxed/simple;
	bh=j62gI3zsL0xUb/XyIelbUH41oWt3ntZ0N7neIeWFo8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n6++rY2aQ6ltcQsdJ8vXSqDiyqk9a4LgpHhUHobOT4e5q8GuUuTKWLQrQtMPQVvhkqlLQnWSHk12woWhRwWlzSpzpycgHIJwInZ7sLzBTfLSw8wvm8KNWmlms1u0keCsxTICAuVugIt00VWrDonBGaO2UvJSDeloNgvnICIQxl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=gvaf1Xkm; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 0B98F20202;
	Wed, 25 Mar 2026 19:06:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1774461968;
	bh=4N4WM+cmPpBaKwZWyDFo1qlxcYPuytvpbUHsAspj/Fw=; h=From:To:Subject;
	b=gvaf1Xkmq4pXHVPZjj6KAFXDHN/fL0TeZTegQTWxY1b+5waPJE2O9hyyMIE0BDy+1
	 OrcP2dfTtNcosLeKdO4I7eCUMq/qYLMut8F2HlBbO3lkdCb8cWxY/EDTStoRYOBxAV
	 ppUtyOkxfDD9RTmN2PzjQtEvW6nwWjMK88v2Wb87MwR7er+TVtNUpc/Yib/uCS8WFt
	 a/ucL2qyzRRciW0bqeVzx3bAyM8RE1GAGxOyEZfZtBZIVtZ6eRbC2PB1JqVtvfJcXy
	 5tv0r5eVg7RGzYnoFJdzGD7sJ0EPmBJWJDAbab6ZFigKjiZN2Iv5tR4rO2eu5BQ9dA
	 474/tmhHHqNrA==
Date: Wed, 25 Mar 2026 19:06:04 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Frank Li <Frank.li@nxp.com>
Cc: Francesco Dolcini <francesco@dolcini.it>,
	Stefano Radaelli <stefano.radaelli21@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 0/2] Add support for Variscite DART-MX95 and Sonata
 board
Message-ID: <20260325180604.GA2972@francesco-nb>
References: <20260313174707.26902-1-stefano.r@variscite.com>
 <abRdwy_AS046QVRI@lizhi-Precision-Tower-5810>
 <acLqjeqmR4eVDoKw@lizhi-Precision-Tower-5810>
 <20260325122104.GA19112@francesco-nb>
 <acP2UX6B5js_ozWm@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acP2UX6B5js_ozWm@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280699-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[dolcini.it,gmail.com,vger.kernel.org,variscite.com,kernel.org,pengutronix.de,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 38B8332A47F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 10:50:57AM -0400, Frank Li wrote:
> On Wed, Mar 25, 2026 at 01:21:04PM +0100, Francesco Dolcini wrote:
> > On Tue, Mar 24, 2026 at 03:48:29PM -0400, Frank Li wrote:
> > > On Fri, Mar 13, 2026 at 02:56:03PM -0400, Frank Li wrote:
> > > > On Fri, Mar 13, 2026 at 06:47:01PM +0100, Stefano Radaelli wrote:
> > > > > This patch series adds support for the Variscite DART-MX95 system on
> > > > > module and the Sonata carrier board.
> > > > >
> > > > > The series includes:
> > > > > - Device tree bindings documentation for both SOM and carrier board
> > > > > - SOM device tree with on-module peripherals
> > > > > - Sonata carrier board device tree with board-specific features
> > > > >
> > > > > The implementation follows the standard SOM + carrier board pattern
> > > > > where the SOM dtsi contains only peripherals mounted on the module,
> > > > > while carrier-specific interfaces are enabled in the board dts.
> > > > >
> > > > > v7:
> > > > > - Order nodes in symphony dts
> > > >
> > > > Can you run https://github.com/lznuaa/dt-format for new file to easy
> > > > track and check by script later.
> > >
> > > I applied with below change
> > > - update copywrite to 2026
> >
> > How do you know that the correct copyright year is 2026?
> > The copyright years does not change to today just because it is the year
> > it was submitted.
> 
> At least it should include 2026 because it is new files in kernel
> tree.

The copyright year is not changing nor being updated just because you
are adding the file to the linux kernel tree.

Francesco



