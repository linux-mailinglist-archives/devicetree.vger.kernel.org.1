Return-Path: <devicetree+bounces-240152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C49C6DEC8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id D79252CFCA
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0066348445;
	Wed, 19 Nov 2025 10:10:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444A13161B4
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763547023; cv=none; b=Vm8NFgYVMWy+kXFXAdVHB+Y0++mK+ZFZp8LfgW9mDfs8Ze3xI3IpGo9yi+KsI+97RZEneOQyarGHRMYr8Ly2tWJAeaQ7ODMWwif6bO4L/3P8MVZoQ8ZQX6q/z2sHVGygie53fGJ9Xlc24eT9ww7OKpnpKUXFk8S5Scvw/xmxqPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763547023; c=relaxed/simple;
	bh=4ptftZJA4h6pmDPMZOGQAp7im/wdQhyDp9FuYpl9TMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G7stwFcnmFf+tWV5P3beK4mEZuRYpk8ae674vOdB6z2Gjc6LAGLWFsE8uQKfXtJxTA3j2y8JReZKZc8vPRYAjmo7V3G5U+2GLZOm8gPQi3zp5RrvvjhtCm8f/iGf1i+91ZPiQNTifg2ehg0LpM8+7C45S14XpJCystz/rkSyqVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vLf8b-0005cZ-OG; Wed, 19 Nov 2025 11:10:09 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vLf8Z-001EIg-0m;
	Wed, 19 Nov 2025 11:10:07 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vLf8Z-00C2je-0O;
	Wed, 19 Nov 2025 11:10:07 +0100
Date: Wed, 19 Nov 2025 11:10:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Russ Weight <russ.weight@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Kamel Bouhara <kamel.bouhara@bootlin.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>, devicetree@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
	Marco Felsch <kernel@pengutronix.de>, linux-input@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Subject: Re: [PATCH v3 1/4] firmware_loader: expand firmware error codes with
 up-to-date error
Message-ID: <20251119101007.za2373biybt24qfs@pengutronix.de>
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

I can do this albeit I thought this will be collected autom. by b4.

Regards,
  Marco

> -- Russ
> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> > > 
> > > Regards,
> > >   Marco
> > > 
> > > > 
> > > > Thanks.
> > > > 
> > > > -- 
> > > > Dmitry
> > 
> > -- 
> > #gernperDu 
> > #CallMeByMyFirstName
> > 
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

