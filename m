Return-Path: <devicetree+bounces-240007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B0976C6BFA5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 00:23:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 15F132C4A8
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11EC308F2C;
	Tue, 18 Nov 2025 23:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="tlcek9eW"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C663126B2
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763508148; cv=none; b=qKLbPBH4XoEC45Qv4/yeH3bgxTKzaU/ANVsSbgwJQ8fpf+Gvj3HF4AMHXzzt/uWCWK++KW+TYwL476hw+AFnG3FYw/4rOw8z+0qoBPp/0Y73yJX/O/ZBSRwwWUXwWnerHEV4q7wUoJYmpL+Hza4Kit09SjMkRPx7EFW36Nfqiqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763508148; c=relaxed/simple;
	bh=YGcgACyauqbLSn6EOCivnrgI1UIiEklJzS3ysNeQZfE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OryxCuJCM1/HmMpweBMnZi5fb0UB3Pv2oP9PhRSZKqkNnfSY5rfM3QG4sud7xBIzshASoJY+4iZmgTOZEivMECg6Ka0FvSpekywTv9MhzE4NUFch23/x9P2kC0DiY/bCEY5BmesvXMTBkD+arUWsc2lbvaQbzlLIKzym6ipw+jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=tlcek9eW; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Tue, 18 Nov 2025 16:22:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763508142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5OS2r4Tkkfz+7/umgJVmpwAA/b9UO79VBYExTqxdlvo=;
	b=tlcek9eW96YzKa2HwsaUNbavP4CxnNSLcbtOJkpRrS4F4kqdqvhrYrXwGWNBd8Dl/+gbUm
	z9dL5YIe9iDSg6M5YnFGSy9n1R21H/LD8H4lnKMqO6Uli3Whv3TjJBe65rBqWKK3RrA/FX
	yELFvZbNb6j2cufZqlB07SpSsThmfgg=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Russ Weight <russ.weight@linux.dev>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Luis Chamberlain <mcgrof@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kamel Bouhara <kamel.bouhara@bootlin.com>, 
	Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
	Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org
Subject: Re: [PATCH v3 1/4] firmware_loader: expand firmware error codes with
 up-to-date error
Message-ID: <juffz52dxb2txvolv7d3kb37urweg3kau67rb3zk42ovn4uze2@uqvbyz6nuecn>
References: <20250821-v6-10-topic-touchscreen-axiom-v3-0-940ccee6dba3@pengutronix.de>
 <20250821-v6-10-topic-touchscreen-axiom-v3-1-940ccee6dba3@pengutronix.de>
 <ifdhjgo6wchlsztqvgkaawpbnh3zahb76vmyzlomokfrqt6tjp@qjcdvcdqviag>
 <5tlhy2jl77etqxsna42ksdmvu3x3bsp5c44poshkt45agldfsj@bkzlvbfoshsl>
 <20251016145205.244gsevx5tdloiqy@pengutronix.de>
 <20251111110110.io65cbslrv75lbby@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111110110.io65cbslrv75lbby@pengutronix.de>
X-Migadu-Flow: FLOW_OUT

On Tue, Nov 11, 2025 at 12:01:10PM +0100, Marco Felsch wrote:
> On 25-10-16, Marco Felsch wrote:
> > Hi all,
> > 
> > On 25-09-20, Dmitry Torokhov wrote:
> > > On Wed, Aug 27, 2025 at 03:29:33PM -0600, Russ Weight wrote:
> > > > 
> > > > On Thu, Aug 21, 2025 at 07:26:36PM +0200, Marco Felsch wrote:
> > > > > Add FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the firmware_loader
> > > > > framework that the update is not required. This can be the case if the
> > > > > user provided firmware matches the current running firmware.
> > > > > 
> > > > > Sync lib/test_firmware.c accordingly.
> > > > > 
> > > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > 
> > > > Reviewed-by: Russ Weight <russ.weight@linux.dev>
> > > 
> > > Does this mean I should merge this through input tree?
> > 
> > may I ask how this is planned to go further?
> 
> Gentle ping.

Marco - I would recommend adding the Reviewed-by tags that you
have received and then resubmitting the patch.

-- Russ

> 
> Regards,
>   Marco
> 
> 
> > 
> > Regards,
> >   Marco
> > 
> > > 
> > > Thanks.
> > > 
> > > -- 
> > > Dmitry
> 
> -- 
> #gernperDu 
> #CallMeByMyFirstName
> 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

