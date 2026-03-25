Return-Path: <devicetree+bounces-280468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBjUL6LZw2lwuQQAu9opvQ
	(envelope-from <devicetree+bounces-280468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 13:48:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DB7325241
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 13:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 616C531F6AF7
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E821C3D16F5;
	Wed, 25 Mar 2026 12:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="JAU0gmmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA153081D6;
	Wed, 25 Mar 2026 12:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774441274; cv=none; b=kw6wh0niShx8U95PN5T+aLl4o4qIzsHGRnTGSjzEjN8aViwGYEkE1kqBKJOzqPCTsXXA4D2C0bMdrYECdWLaaok0NizFkdLyOQcCJwzXn58c8987JpxEpMyUL7+SxiFwIgnSdpDJVC9t9zsIA+6Md9MCwjDuZkoDZkmI0eBeCLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774441274; c=relaxed/simple;
	bh=2XSKZRnXacS18o8cTGKTm/tgWX68V2PKffs9WfB92Cg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l9dfLdhJHsqekrq4Eo5mOC7LTSJsRG4iHJCr77JzF7vV5OdeobjDDjztl4GEGITnzlS7nvyk0iUvCEVPdK77jCd2RMbmPtB6j0B6N2MNuYPN33ByP7S8xSWK+ct/xQ5Ad+DJDqa9hKJEkmAKkz/4U2HaWmKNr5KgX7DyabfQy4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=JAU0gmmP; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 148B01FC3D;
	Wed, 25 Mar 2026 13:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1774441271;
	bh=PLOm9XjuNpTv3crP433snW9Y0q8ywlGOwYlifFWD9Ic=; h=From:To:Subject;
	b=JAU0gmmPMd1iVqtE16jH7H7pDG2riyi1NUZlA/MxZ12t+WjaNP1dMxqSShWUHGkIV
	 Xzf+zvn83Qp/1T5tk370e1X7QyfyIxFKXqc5wHCzJKZS/an56mZ6vUO9pQiI9s0i4i
	 IqSgEJtDtP4EdCKn/hISN0aIShN70LRhl/utqg4QYUgpWYMs4evzd17/evnV7jE+Ag
	 1vX++PbpqmN6QkeW3OeZkZ/vshzTpLcoY/mdVkaWTFVzyhxpGlm39d1un80Qj8BOyb
	 VKKXfOH5gpbFe09WcN9hdsUR31159AxcBI1rCIJ7sXBF/h00n8xPSDlBsCW+Y0SvAz
	 aD2lAmBjVYleQ==
Date: Wed, 25 Mar 2026 13:21:04 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Frank Li <Frank.li@nxp.com>
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
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
Message-ID: <20260325122104.GA19112@francesco-nb>
References: <20260313174707.26902-1-stefano.r@variscite.com>
 <abRdwy_AS046QVRI@lizhi-Precision-Tower-5810>
 <acLqjeqmR4eVDoKw@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acLqjeqmR4eVDoKw@lizhi-Precision-Tower-5810>
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
	TAGGED_FROM(0.00)[bounces-280468-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,variscite.com,kernel.org,pengutronix.de,lists.linux.dev,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,dolcini.it:dkim]
X-Rspamd-Queue-Id: C5DB7325241
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 03:48:29PM -0400, Frank Li wrote:
> On Fri, Mar 13, 2026 at 02:56:03PM -0400, Frank Li wrote:
> > On Fri, Mar 13, 2026 at 06:47:01PM +0100, Stefano Radaelli wrote:
> > > This patch series adds support for the Variscite DART-MX95 system on
> > > module and the Sonata carrier board.
> > >
> > > The series includes:
> > > - Device tree bindings documentation for both SOM and carrier board
> > > - SOM device tree with on-module peripherals
> > > - Sonata carrier board device tree with board-specific features
> > >
> > > The implementation follows the standard SOM + carrier board pattern
> > > where the SOM dtsi contains only peripherals mounted on the module,
> > > while carrier-specific interfaces are enabled in the board dts.
> > >
> > > v7:
> > > - Order nodes in symphony dts
> >
> > Can you run https://github.com/lznuaa/dt-format for new file to easy
> > track and check by script later.
> 
> I applied with below change
> - update copywrite to 2026

How do you know that the correct copyright year is 2026?
The copyright years does not change to today just because it is the year
it was submitted.

I think that you should refrain yourself for doing these kind of changes
to the code when you apply patches.

Thanks
Francesco



