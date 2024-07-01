Return-Path: <devicetree+bounces-81946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA2C91E035
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C2CC1C20C37
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C79DF158D9F;
	Mon,  1 Jul 2024 13:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="tYYeQxAe"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C3A15A87C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719839092; cv=none; b=riqmOwqHzcR1mwVzRyiAdY7xg8QcZuihbefyGFqJ/VxNbyt44hLGe3PiTjo92BYNx/pEAY1RgxJ3tE8nWug1HnTnq/BbaCaPlabAjmnXBhsrOHlJ9fdgbEZJ5YCdEgR06hRdd2eyWVcWUBd+1p5Y9tqRSz5UbvN7sHuCFKRT9/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719839092; c=relaxed/simple;
	bh=871pnH+xZtPEza5QK9I9wJGSDLkJ+bW+QOoVnt8AIF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LdJ0fX5j1muKHJxiYfUrzPgJODV15lVfXUlzgIEOsMSfKasCPlSMLc4OB6L/AQkRBpVY+FE1QiOkbpcbTVUrwKeaOkBuENxy6Y3Xjt26QgzBDuPmBppKvuuRq6+9euxfVuhzDxPNV3U5sp4GPT0dtfXcS68cn6ZGB8XVTRJWiqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=tYYeQxAe; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=6l24w3tk+hNM1GTp1MBBVgizQaSSyavRe3/cZBc7z30=; b=tYYeQxAeuKr2OWP5eTgdbGRvcv
	Nb4sn4NOONTvAfeICvmxxihJ0jrqWuuadsOK76Lt3nSc0wGzL7easWXJZdqFerpxpGx/10sxixjat
	iS4tePVPoSjOhIYPj2bditTsq7ZmBIDaH2QBXrxokGGS0M5GjyVJmxMb97R2sXtzFFRI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOGi2-001XEb-Md; Mon, 01 Jul 2024 15:04:42 +0200
Date: Mon, 1 Jul 2024 15:04:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Zoltan Herpai <wigyori@uid0.hu>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
Message-ID: <7ae32584-b28f-4985-bc4e-c0d10e6e8381@lunn.ch>
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
 <b8c1ffed-8d91-48cf-8b8c-bea4021c272b@lunn.ch>
 <de10d5e3-9160-4966-bba9-5893a68f0c00@uid0.hu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <de10d5e3-9160-4966-bba9-5893a68f0c00@uid0.hu>

On Mon, Jul 01, 2024 at 10:15:40AM +0200, Zoltan Herpai wrote:
> Hi Andrew,
> 
> On 06/29/2024 16:34, Andrew Lunn wrote:
> > It has been a long time since i reviewed a kirkwood DT
> > description. Also, best practices have changed, so the example you
> > copied is probably doing things which today would be classed as wrong.
> > 
> > > +// SPDX-License-Identifier: GPL-2.0-or-later
> > It is typical to use a dual license now:
> > 
> > // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > 
> > However, if this is mostly Sunke Schluters work, you probably cannot
> > change the license without his agreement.
> That's correct, a significant portion of the DTS was taken from Sunke, and
> there is at least one other DTS with this license, so I didn't want to
> change this.

O.K. Please at least Cc: Sunke on the next revision anyway.

     Andrew

