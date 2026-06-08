Return-Path: <devicetree+bounces-308404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rK02N8XyJmrAoQIAu9opvQ
	(envelope-from <devicetree+bounces-308404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:50:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35907658EAB
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:50:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GI47GZ7t;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308404-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308404-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99380365B9E5
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 15:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71EE240800C;
	Mon,  8 Jun 2026 15:00:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D4E286417;
	Mon,  8 Jun 2026 15:00:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780930850; cv=none; b=SI7y2n93bYqoo64ApWxvq6U7PjYTU6XpxP1FnKx6qRkr71o1Q8LQKR6pSPtLK2oZPTBK8H1/RidB7PIQhnmmzdvCaP+XJ5/UsovXK8cLTfbSYzMhX2bt38zKRk/qpgFCKUdy/vk0ZYqgZHwEqxWLUYMq9HU+LDQohomW8OS1Ruw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780930850; c=relaxed/simple;
	bh=/xTngY1e5T3eCXThGLvVYNJGUTCOiwYZCZyPREmZoUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LuUNsNixIZsujgPaObUOoDHT1lcZFrNiOp4xGyd7q6tEVDj4w6k5lQs+DhIoX9Ok1Qe0Ycmn13GydelGf0VhuING4D7nL/leRn2itpyplWxMuJWK57oPh3BUFEnahYXMEJ8uxhm64ZmkZ9KqWyiVgbVT29XsbCqEpGpq5YDbr00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GI47GZ7t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D2BB1F00893;
	Mon,  8 Jun 2026 15:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780930841;
	bh=egby52K8xtGcrLXY6RAt9nVSWQECKng6yoZW1LfMLq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GI47GZ7tVZtzEpB5LRuwh9v5wSxOwyPJ7N58X3cS8j1QaV3chZzoY0kEAr7Qfb64U
	 kRqQw6jUR/UiGdcyUi5XU/55tBtZODE1Vrn3Umd/3lj6NqI1SHoeeQU7Fe8yP7orfA
	 EQsM1vflBaQjvDGFwUgDJyNMtUXsQtHk5UXcJASIrbfft3DMCHYRsGcupc5E6NBrPl
	 2TkGz4wsN/FOUTIbfTTRUPa9XAmMb+v7pELhG3nrKcWAIslJYsgJ/+dSMfKQ4ol51v
	 c+nNyACdEFol4wW3/xKXnRH+UzTffC+vPI8+YGQorHgviL07ZwBugLY2xJ0deyO2L2
	 /Lae5gPVzL1Cw==
Date: Mon, 8 Jun 2026 10:00:40 -0500
From: Rob Herring <robh@kernel.org>
To: Ninad Naik <ninadnaik07@gmail.com>
Cc: broonie@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, me@brighamcampbell.com,
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org
Subject: Re: [PATCH] spi: dt-bindings: octeon: Convert to DT schema
Message-ID: <20260608150040.GA2675433-robh@kernel.org>
References: <20260607142356.2844008-1-ninadnaik07@gmail.com>
 <20260608143259.GA2569066-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260608143259.GA2569066-robh@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308404-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ninadnaik07@gmail.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:skhan@linuxfoundation.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35907658EAB

On Mon, Jun 08, 2026 at 09:32:59AM -0500, Rob Herring wrote:
> On Sun, Jun 07, 2026 at 07:53:56PM +0530, Ninad Naik wrote:
> > Convert octeon-3010 to DT schema
> > 
> > Signed-off-by: Ninad Naik <ninadnaik07@gmail.com>
> > ---
> >  .../bindings/spi/cavium,octeon-3010-spi.yaml  | 67 +++++++++++++++++++
> >  .../devicetree/bindings/spi/spi-octeon.txt    | 33 ---------
> >  2 files changed, 67 insertions(+), 33 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/spi/spi-octeon.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml b/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
> > new file mode 100644
> > index 000000000000..3dbbb4f3c104
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/spi/cavium,octeon-3010-spi.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/spi/cavium,octeon-3010-spi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cavium, Inc. OCTEON SoC SPI master controller
> > +
> > +description:
> > +  The Cavium OCTEON SPI controller is an SPI master controller found in
> > +  OCTEON SoCs.
> > +
> > +maintainers:
> > +  - Mark Brown <broonie@kernel.org>
> 
> This should be someone with this h/w. But there doesn't appear to be any 
> OCTEON maintainer. There isn't any .dts using the compatible either. 
> Perhaps this driver and binding can just be removed?

Maybe not. Seems this is used on newer Octeon platforms like cn7130 
which aren't that old. Some Ubiquiti devices use it and run 5.4 kernel 
with OpenWRT:

https://openwrt.org/toh/ubiquiti/edgerouter_4

Rob

