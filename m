Return-Path: <devicetree+bounces-305015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGOIFmJPHWoDYwkAu9opvQ
	(envelope-from <devicetree+bounces-305015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:22:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA85F61C55C
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99CB7304022B
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1308736A03A;
	Mon,  1 Jun 2026 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsB22R7f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032A2344D8C;
	Mon,  1 Jun 2026 09:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305353; cv=none; b=K+0+S1J7Wp8EyqXyNYypZg+G2ZX0TFGVf322Bjl/GNtMNajhfMctLtoO/EWnJTJG1HQbcDQiT+Yb8chXCeP46SYgteXGx02WwBfVca24MHL1Xbz0nO6jQU/ULmFhWXFomVg/YVUtUioakx6MAKW7m+VMk8CEdJfQoCwXYeZ5aeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305353; c=relaxed/simple;
	bh=DfB+RimyP4mlTMH3xZARb2WZAI15i6C/uJrsfoLdD5w=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GjYhCtbeVKjIdYv7Q2dN90M0rka2mfuNeFPbyL2J7cxEvpCU2Gv0slrGxdbfN2F+zsRDZLcPHL0jSRbQcwXPT6tI0N66gDgiXG+0dxMziDqKt6u/mOLtE9+nsh5zBgNPB1GNJ7h0tjg6rNNwNM51YvlcjLQWD2DDlabsloht7M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsB22R7f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5A301F00893;
	Mon,  1 Jun 2026 09:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780305351;
	bh=nY1zKTj/R3CaGIBI7uxYDXY6FmQJ3TtkcAHD+T3P2Gw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=CsB22R7fwsQ6S1J8EnqHd0JM2C99I0tZnHAgKnTAcMTiZO5yVlg1kpAZ/LTPMZBbF
	 Jp682ZUm2mAgfDg1X6nugKIRxGx8gXRTn5/CTpgfj+RrLaiRzeznUMR4s0N8XzJje9
	 BddeZc9dCPARUVU+SDKF+v6TAf95Ha+X4Da1rgP3H11J/hiBlYYjmLoxNRfui5G1Zk
	 8EcEQjkaUX7gwdkIYTem8Ab3MkZkSiGlmg4Kz3W7N3JSQE000tJfsRphCE7no8IUpM
	 sHbAYiiB1TqmNtDDweO0hnwVwAZ/KeagV66bZWHAjKQQdWMaN7ImXoiDlx6l+a950u
	 VWrMY7XeruvlA==
Date: Mon, 1 Jun 2026 10:15:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com
Subject: Re: [PATCH V9 02/11] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260601101540.6f23b09f@jic23-huawei>
In-Reply-To: <PH0PR19MB9973385EBACD2645B8845DE4F2A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-3-macroalpha82@gmail.com>
	<20260530-certain-goose-from-neptune-96e8ae@quoll>
	<PH0PR19MB9973385EBACD2645B8845DE4F2A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305015-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[hotmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: CA85F61C55C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 31 May 2026 20:44:03 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Sat, May 30, 2026 at 09:26:31AM +0200, Krzysztof Kozlowski wrote:
> > On Fri, May 29, 2026 at 10:17:29PM -0500, Chris Morgan wrote:  
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > ICM42607P inertial measurement unit. This unit is a combined
> > > accelerometer, gyroscope, and thermometer available via I2C or SPI.  
> > 
> > Implement feedback from v3. Subject is still incorrect.
> >   
> 
> I'm sorry, that was dropped due to an oversight. I'll correct it.
> 
> > > 
> > > This device is functionally very similar to the icm42600 series with a
> > > very different register layout, however unlike the icm42600 driver we
> > > require a interrupt-names property be present.  
> > 
> > Why do we require it? Who needs it?
> >   
> 
> The driver this was based off of, the icm42600 driver, has a fallback
> to select the 1st available interrupt in the event of the named
> interrupt not existing. I was told not to do that here so the named
> interrupt is a requirement for the icm42607.

A bit more background on this.  I think it went as follows.

When that other driver originally went in we didn't pick up on their
being multiple interrupt lines.  Hence once that came up because
someone had a board that only connected the other pin we had to
'guess' which one was the default (I'm sure we asked people :)

I'll noted that we had at least one case in the past (can't remember
if it was this part) where the assumed default was not the first one :(
We've even had package variants (which we don't normally use different
compatibles for) where only INT2 actually had a pin.

Hence, since then we've been more careful with these devices.
Given there is nothing special with one interrupt rather than the other
with a mux on each that lets us route all interrupts signals to each
pin, my strong preference is we don't make assumptions and always require
the firmeware to say which one it is.

Jonathan

> 
> > Best regards,
> > Krzysztof
> >   
> 
> Thank you,
> Chris


