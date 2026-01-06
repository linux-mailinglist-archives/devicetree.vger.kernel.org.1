Return-Path: <devicetree+bounces-252062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C37CFA9A4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE61A32E5A61
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E444A3644D9;
	Tue,  6 Jan 2026 18:24:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766BC3644CC
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767723852; cv=none; b=PVuyIWF8oJSDDI3ixNIoFedqwh7moTd/4wugVkcJ0hfYceR3Bt9m7fo2p9KXAmeFyWdD85SKiYV9wbWlib9rMyUI+9V5bBXS27Yn9xdhWTLQ77GwKLriI2bCu0aqZTLQ61dB0+rpdcAMAZa9B2NlJDBXkK/9+oLp4sf0Or8bx4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767723852; c=relaxed/simple;
	bh=7gYXL7BbTn/6fKuHqFLSlL89gORhyVm7+aaP81jV6as=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FaqMeK3ieOXMJa7Jh6/SWgDQEaUW+BQSZDUtQS59fs8ZzNudBMoaGMJLFvAUTZMmhGcZ47TsmoH8rrRsog6jlrgXIhlwHu0AsfhHWD8wSfHniPX42M3dnCWvN2GtMTXEBfP0l0YFDLyKDyjd7zV16yMcSE5SjR4vbBEGYmFwzH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vdBiq-0008Nw-Pr; Tue, 06 Jan 2026 19:24:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vdBip-009Nzu-3B;
	Tue, 06 Jan 2026 19:24:00 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vdBip-00ENcd-2j;
	Tue, 06 Jan 2026 19:23:59 +0100
Date: Tue, 6 Jan 2026 19:23:59 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Russ Weight <russ.weight@linux.dev>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kamel Bouhara <kamel.bouhara@bootlin.com>,
	Marco Felsch <kernel@pengutronix.de>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH v3 1/4] firmware_loader: expand firmware error codes with
 up-to-date error
Message-ID: <20260106182359.lh5pg27rvi3ttgrb@pengutronix.de>
References: <20250821-v6-10-topic-touchscreen-axiom-v3-0-940ccee6dba3@pengutronix.de>
 <20250821-v6-10-topic-touchscreen-axiom-v3-1-940ccee6dba3@pengutronix.de>
 <ifdhjgo6wchlsztqvgkaawpbnh3zahb76vmyzlomokfrqt6tjp@qjcdvcdqviag>
 <5tlhy2jl77etqxsna42ksdmvu3x3bsp5c44poshkt45agldfsj@bkzlvbfoshsl>
 <20251016145205.244gsevx5tdloiqy@pengutronix.de>
 <20251111110110.io65cbslrv75lbby@pengutronix.de>
 <juffz52dxb2txvolv7d3kb37urweg3kau67rb3zk42ovn4uze2@uqvbyz6nuecn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <juffz52dxb2txvolv7d3kb37urweg3kau67rb3zk42ovn4uze2@uqvbyz6nuecn>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 25-11-18, Russ Weight wrote:
> On Tue, Nov 11, 2025 at 12:01:10PM +0100, Marco Felsch wrote:
> > On 25-10-16, Marco Felsch wrote:
> > > Hi all,
> > > 
> > > On 25-09-20, Dmitry Torokhov wrote:
> > > > On Wed, Aug 27, 2025 at 03:29:33PM -0600, Russ Weight wrote:
> > > > > 
> > > > > On Thu, Aug 21, 2025 at 07:26:36PM +0200, Marco Felsch wrote:
> > > > > > Add FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the firmware_loader
> > > > > > framework that the update is not required. This can be the case if the
> > > > > > user provided firmware matches the current running firmware.
> > > > > > 
> > > > > > Sync lib/test_firmware.c accordingly.
> > > > > > 
> > > > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > > 
> > > > > Reviewed-by: Russ Weight <russ.weight@linux.dev>
> > > > 
> > > > Does this mean I should merge this through input tree?
> > > 
> > > may I ask how this is planned to go further?
> > 
> > Gentle ping.
> 
> Marco - I would recommend adding the Reviewed-by tags that you
> have received and then resubmitting the patch.

I've done this now:
- https://lore.kernel.org/all/20260106-v6-10-topic-touchscreen-axiom-v4-0-9e9b69c84926@pengutronix.de/

Regards,
  Marco

