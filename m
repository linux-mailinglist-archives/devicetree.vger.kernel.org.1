Return-Path: <devicetree+bounces-215967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC17B534B3
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9500CB63B73
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76CB9335BB9;
	Thu, 11 Sep 2025 13:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="pwtPwLsW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DF732A3D1
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757599147; cv=none; b=tJo1vd57a81OCGarFnTYjT3zoGYmX6bRXDdBvnyrm73Mi9VrndYoiXLcvxtod4QX+djR/UrHtiGnBMqyd8guLmjsrFziGqCdtTIeNA1iRV3CVlthMt3E+upVkhGKQV9xEKvqRdQrcRH9P/n8v+47csdTVcGJTZeh0+smjeb424w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757599147; c=relaxed/simple;
	bh=qY/6Z3LIv8VbCEzNVffBnUKWU/mQp4fwaBY5DM7L6GM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Je8kzD9hlj/FWN29OqcFH9dDyZ41x8CXwVArEb6BKGfg9b8XmotxwQnUIQV2KqwBKgg9ZppwegJonoSvZ+6Cxa3/AmvkfmDGH6yGKtwlf1Ow/5fqyZGz2TCfUxbWvM53IIjuWGgDbB8fQp2eYihYUC+/wII/VbKLh8rtyQJr3GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=pwtPwLsW; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DD891C6B3BD;
	Thu, 11 Sep 2025 13:58:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AE59260630;
	Thu, 11 Sep 2025 13:59:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7015D102F27C2;
	Thu, 11 Sep 2025 15:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757599143; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=q4NyUiSlwN/QIJ4/CiLt9yupjZEnKIdTbEP4BifWV0c=;
	b=pwtPwLsW7c8kZgcztgq70QltwJ2lkPJLvjQsKAHgP6vnZ6EKc/HMivgYrKXENsXgXCfEfb
	CvWadoWe0K+xNQfwH5e3tFhzs7pedXrpOr0I3UQwwlPcXT92ThYrknHZKSGWtW6vHtRzdw
	UcQGDPr2v7wVhdONNCAAof/m94LcUAKhIbo+E5OY2/VFhJgZ/8ELGtDjc3wEQblFBUCh6W
	3DA3MgWxp9y9rvmX5qEdMZvlNrlw8fiKh17qwMfUoZ+oUNBsil+yweleBpOeVXuC9Uq75r
	2mPUEoesq5cJGkt6UKlaowsvpiRJiIGpNZc96CdTY41hY3eI50PwDXcwndcx+w==
Date: Thu, 11 Sep 2025 15:58:42 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ayush Singh <ayush@beagleboard.org>, David Gibson
 <david@gibson.dropbear.id.au>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Jason Kridner <jkridner@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Davis <afd@ti.com>
Subject: Re: Device tree representation of (hotplug) connectors: discussion
 at ELCE
Message-ID: <20250911155842.796c47fa@bootlin.com>
In-Reply-To: <CAMuHMdULiX83n5bLEipE1j99HyuyXCpAYS9qYu-8y_vmEyO_ag@mail.gmail.com>
References: <20250902105710.00512c6d@booty>
	<aLkiNdGIXsogC6Rr@zatzit>
	<337281a8-77f9-4158-beef-ae0eda5000e4@beagleboard.org>
	<aL5dNtzwiinq_geg@zatzit>
	<20250908145155.4f130aec@bootlin.com>
	<aL-2fmYsbexEtpNp@zatzit>
	<20250909114126.219c57b8@bootlin.com>
	<aMD_qYx4ZEASD9A1@zatzit>
	<20250911104828.48ef2c0e@bootlin.com>
	<CAMuHMdUUGoaetdsTEVx27TYQZ_khzyCn0wzi2+TibYcvkg1fXw@mail.gmail.com>
	<20250911122333.2e25e208@bootlin.com>
	<36a85af7-75b1-46db-8df8-e83372d33b93@beagleboard.org>
	<20250911144506.51809eb3@bootlin.com>
	<CAMuHMdULiX83n5bLEipE1j99HyuyXCpAYS9qYu-8y_vmEyO_ag@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

On Thu, 11 Sep 2025 15:08:33 +0200
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Hervé,
> 
> On Thu, 11 Sept 2025 at 14:45, Herve Codina <herve.codina@bootlin.com> wrote:
> > On Thu, 11 Sep 2025 17:45:17 +0530
> > Ayush Singh <ayush@beagleboard.org> wrote:  
> > > On 9/11/25 15:53, Herve Codina wrote:  
> > > > On Thu, 11 Sep 2025 10:54:02 +0200
> > > > Geert Uytterhoeven <geert@linux-m68k.org> wrote:  
> > > >> On Thu, 11 Sept 2025 at 10:48, Herve Codina <herve.codina@bootlin.com> wrote:  
> > > >>> The choice to map connA to the type 'foo' connector expected by the addon
> > > >>> and the choice to map connB or connC to the type 'bar' connector expected by
> > > >>> the addon can only be done at runtime and probably with the help of a driver
> > > >>> that have the knowledge of the 3 connectors.
> > > >>>
> > > >>> I have the feeling that the choice of physical connectors to which the addon
> > > >>> board is connected to is a human choice when the board is connected.  
> > > >> All these choices and decisions apply to single-connector add-on boards, too.
> > > >>  
> > > > Yes, in our use case (me and Luca), each addon has an eeprom, wired exactly the
> > > > same on all supported addon, which allows to known the exact addon. Also addon
> > > > insertions and removals are detected using some gpios wired to the connector.
> > > >
> > > > Based on that our specific driver handling our specific connector perform the
> > > > following operations on addon insertion detection:
> > > >    - load a first addon DT to have access to the eeprom
> > > >    - Read the eeprom to determine the addon type
> > > >    - load the DT matching with the addon type
> > > >
> > > > This part is of course connector type specific. I mean having an eeprom with
> > > > some encoded addon type values and hotplug detection with gpio is a part of
> > > > the contract between the board and the addon (part of connector specification).  
> > >
> > > My usecase is a bit more complicated, since I am trying to model all the
> > > available headers on BeagleBoard.org sbcs (particularly PocketBeagle 2
> > > initially) as connectors. However, that still ends up being a single
> > > connector which can have multiple addon-boards simultaneously instead of
> > > the other way around.  
> >
> > In that case, a connector cannot have the state "free" or "used" handled
> > globally by a core part.
> >
> > IMHO, each connector drivers should handle this kind of state if relevant.
> > I mean, in case of "pmods" compatible driver having this state per PMOD
> > connector could make sense whereas in "beagle-connector" it doesn't.  
> 
> It depends on whether the add-on board has stacking headers, or not ;-)
> 
> > Also, on my side, with my 2-step DT loading, the first loading should not
> > consider the connector as 'used'.
> >
> > All of that is implied by the "contract" between the board and the addon.
> > It is connector specific and so should be handled by the specific connector
> > driver itself.  
> 
> Since stacking boards is a fairly common use case (beagle, rpi), perhaps
> it makes sense to have a simple method to re-export / forward a connector?
> The alternative would be to re-describe and re-export everything.

You re-apply an addon DT on the same connector. You should see the exact same
symbols without re-exporting anything.

I think that you have to re-export stuff only if, on the addon board itself,
you wire some pins from one connector to an other one.

       +-----------------------------+
       |        Addon board          |
   +---------+                   +--------+
   + conn A  +-------------------+ conn B +
   +         +--,   +--------+   +--------+
   +---------+   '--+ device |       |        
       |            +--------+       |
       +-----------------------------+

Here the resource available at conn A directly wired to conn B should be
re-exported in order to allow another addon connected to conn B to use this
signal.

Multiple addons with conn A connector stacked should see all symbols exported
from the based board related to conn A.

Best regards,
Hervé

