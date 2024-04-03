Return-Path: <devicetree+bounces-55798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EE68966B1
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37A28281216
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 07:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64F5A6E2A3;
	Wed,  3 Apr 2024 07:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="iIF4Aq58"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69136D1AE
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 07:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712129739; cv=none; b=WK63EUq8mrfGav/6qZSpO25umuscsLiiYEqNLPV8gWFS6wQ2wxovCbEzgx7hl3Y5PAGUPZdExpnkrpw11cqUie5S18Jso17qv+XO6a9r5LkYGluVx1NJ1xm6QSFvFekzyWBuYu28qr/PhiD5qXoIiy+0tHekxm811XTxUoA/ORs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712129739; c=relaxed/simple;
	bh=kUuJoXklxwcVwYwh1KHqc0nVIfvCjiFCTE9UekJ4cYM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ja0AKOWPdPQs7PfvkuV6nSDZTKc+3VKgEL/W5E4n42V8ACcizm8vuKQ3HQM/w1YshWSfWcYgPxB4pX1AtlZbAiAbiE6viEWihG3CQN2AojogACcWq7Yn1onIoWabFEhrsz/MmYGOv/zhDhp1g0+/rXN6qqSxRSA5GtNETwHaZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=iIF4Aq58; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F19883A3;
	Wed,  3 Apr 2024 09:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1712129699;
	bh=kUuJoXklxwcVwYwh1KHqc0nVIfvCjiFCTE9UekJ4cYM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iIF4Aq58HBl0RTO5peg/bN8ERJVlXfVrXuN8Uo81fvXk/u6uesH5p7gBoXk20+xsx
	 S4VA4T+OYQWbQuwXcsXdMY7elsjdcIHNiLgVPh0wBbWoVLxAW7wj2SJ1+COkU5JcTj
	 d9jFjOgb8tFAqtZ0/niXe+gje1Oa7CPjnrSDP3hU=
Date: Wed, 3 Apr 2024 10:35:24 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Shawn Guo <shawnguo2@yeah.net>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Trevor Zaharichuk <trevor@au-zone.com>,
	Greg Lytle <greg@au-zone.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 5/5] arm64: dts: Add device tree source for the Au-Zone
 Maivin Starter Kit
Message-ID: <20240403073524.GK16740@pendragon.ideasonboard.com>
References: <20240325203245.31660-1-laurent.pinchart@ideasonboard.com>
 <20240325203245.31660-6-laurent.pinchart@ideasonboard.com>
 <ZgyjE05p/1NZnzaK@dragon>
 <20240403070651.GB5070@francesco-nb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240403070651.GB5070@francesco-nb>

On Wed, Apr 03, 2024 at 09:06:51AM +0200, Francesco Dolcini wrote:
> Hello Laurent,
> 
> On Wed, Apr 03, 2024 at 08:30:11AM +0800, Shawn Guo wrote:
> > On Mon, Mar 25, 2024 at 10:32:45PM +0200, Laurent Pinchart wrote:
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-maivin.dts b/arch/arm64/boot/dts/freescale/imx8mp-maivin.dts
> > > new file mode 100644
> > > index 000000000000..2d1c8e782465
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-maivin.dts
> > > @@ -0,0 +1,236 @@
> 
> [...]
> 
> > > +/* Verdin I2C_2_DSI */
> > > +&i2c2 {
> > > +	status = "okay";
> > > +
> > > +	clock-frequency = <400000>;
> > > +	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > > +	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > 
> > We usually end property list with 'status'.
> 
> This is now a written and explicit guideline, no longer tribal knowledge,
> see https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-properties-in-device-node

Thanks.

Any chance to teach checkpatch.pl (and/or the DT checker) about that ? :-)

-- 
Regards,

Laurent Pinchart

