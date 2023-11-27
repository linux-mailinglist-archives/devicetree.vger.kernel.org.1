Return-Path: <devicetree+bounces-19408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CFF7FAD25
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 23:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D93ECB2133B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 22:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68CCD48CC3;
	Mon, 27 Nov 2023 22:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="gsDzjxeP"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 693765B90;
	Mon, 27 Nov 2023 14:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=yDu+MajZuBvUhdZmOy4hMJkganlhJhePznPuY1gI23Y=; b=gs
	DzjxePHjdVKJlgXRGgZGJrSqQvAztvadV//7Kwavyu7mC8jDZRraIblFWgCRviC5aSUp4clO/0B2J
	VCXnTU3N7Ds12FzAGaP2hGZZMZvh/9mKYh1QZbQ1xtRVN426ne2ta2oQ9gdWUWpB8SH6njEkf0BKT
	+K6Q6w60aoYuKa8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r7jqp-001OKV-8l; Mon, 27 Nov 2023 23:13:11 +0100
Date: Mon, 27 Nov 2023 23:13:11 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Rob Herring <robh+dt@kernel.org>
Cc: Elad Nachman <enachman@marvell.com>, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v6 1/3] MAINTAINERS: add ac5 to list of maintained
 Marvell dts files
Message-ID: <69eeb7e1-92b3-45e9-8bdc-275dfd387fc6@lunn.ch>
References: <20231127190857.1977974-1-enachman@marvell.com>
 <20231127190857.1977974-2-enachman@marvell.com>
 <CAL_JsqJ90mOMUS040SBtjnuELcyM1qnOyHzuga6xPNbMct2PvA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqJ90mOMUS040SBtjnuELcyM1qnOyHzuga6xPNbMct2PvA@mail.gmail.com>

On Mon, Nov 27, 2023 at 01:49:31PM -0600, Rob Herring wrote:
> On Mon, Nov 27, 2023 at 1:09 PM Elad Nachman <enachman@marvell.com> wrote:
> >
> > From: Elad Nachman <enachman@marvell.com>
> >
> > Add ac5 dts files to the list of maintained Marvell Armada dts files
> >
> > Signed-off-by: Elad Nachman <enachman@marvell.com>
> > ---
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index b81da7a36a36..6f863a0c3248 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -2339,6 +2339,7 @@ F:        arch/arm/boot/dts/marvell/armada*
> >  F:     arch/arm/boot/dts/marvell/kirkwood*
> >  F:     arch/arm/configs/mvebu_*_defconfig
> >  F:     arch/arm/mach-mvebu/
> > +F:     arch/arm64/boot/dts/marvell/ac5*
> >  F:     arch/arm64/boot/dts/marvell/armada*

> >  F:     arch/arm64/boot/dts/marvell/cn913*
> Looks to me like a single entry will do:
> 
> F: arch/arm64/boot/dts/marvell/

Agreed. I guess this is a left over from moving all the files into
vendor sub directories. Probably all the MAINTAINER entries need
updating.

Elad, please update the Marvell entry as suggested.

      Andrew

