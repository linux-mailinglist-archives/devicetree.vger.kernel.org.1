Return-Path: <devicetree+bounces-54024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE49188F346
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 00:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B5401C2BB32
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2A0152E13;
	Wed, 27 Mar 2024 23:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="mlKueNSo"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC297364AB
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 23:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711582639; cv=none; b=HHNzIUEKimRWU0IyL2P4euow2MMIhh7SLG6gJXmC6qhSrUSI8CodEp5jAZwxdBqiA1GQjR8y8bdkxiyMPCJAgO5tF+pkr87tQOFpsHYFLoVwNUGH7Z8D4SsFs+2K9H0+kG4D5feFnmZls/Mo+37iXcv7Ke3qWFNRFwedtBLd/u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711582639; c=relaxed/simple;
	bh=ABLEQY7j398eU7ZTN2zEdxUEbepi1sBVMazP28fEj1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DjU8wUp7CHElhH7Dyu7gTBtlZrTMXqUW3NBSMuU96twZ64dcE1fUVYZVrjxZSgFf+hxI7b0Jr5HvzWwmwYTmfrpku7nrXPR1yxKsSoWJeRPHQaecJKiI+6P0IqdOXc0zk/VUFnS65R/xe+O3BsZUPm6IBDEiABad7B0G+H2KjWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=mlKueNSo; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B2E33505;
	Thu, 28 Mar 2024 00:36:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711582596;
	bh=ABLEQY7j398eU7ZTN2zEdxUEbepi1sBVMazP28fEj1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mlKueNSopfQUMgLW6LzLPKzi/EERI8EJynhKYcFO3futWs8EpbYvwOhVgc/7ndxln
	 INYaRPnr2oC2M2T7AF7RmSmsPa63gb6P5GWow0RtYlkEY0ScGg1+GXW9CpvdWsOGCW
	 xdRUYitwRb7sKJ27Dbqvi/8KfGgUQtCz5Ryhu3C8=
Date: Thu, 28 Mar 2024 01:37:00 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Peter Robinson <pbrobinson@gmail.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Ray Jui <rjui@broadcom.com>, Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	"u-boot@lists.denx.de" <u-boot@lists.denx.de>
Subject: Re: [PATCH v2 0/3] dt-bindings: arm: bcm:
 raspberrypi,bcm2835-firmware: Drive-by fixes
Message-ID: <20240327233700.GA21080@pendragon.ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
 <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>

On Wed, Mar 27, 2024 at 07:49:38AM +0100, Stefan Wahren wrote:
> Hi,
> 
> [add Peter and Ivan]
> 
> Am 26.03.24 um 20:58 schrieb Laurent Pinchart:
> > Hello,
> >
> > This small series includes a few drive-by fixes for DT validation
> > errors.
> >
> > The first patch has been posted previously in v1 ([1], and now addresses
> > a small review comment. I think it's good to go.
> >
> > The next two patches address the same issue as "[PATCH 1/2] dt-bindings:
> > arm: bcm: raspberrypi,bcm2835-firmware: Add missing properties" ([2]),
> > but this time with a (hopefully) correct approach. Patch 2/3 starts by
> > fixing the raspberrypi-bcm2835-firmware driver, removing the need for DT
> > properties that are specified in bcm2835-rpi.dtsi but not documented in
> > the corresponding bindings. Patch 3/3 can then drop those properties,
> > getting rid of the warnings.
>
> since this series drops properties from the device tree, does anyone
> have the chance to test it with a recent U-Boot?

I don't have U-Boot running with my RPi, so I would appreciate if
someone could help :-)

> > [1] https://lore.kernel.org/linux-arm-kernel/20240326004902.17054-3-laurent.pinchart@ideasonboard.com/
> > [2] https://lore.kernel.org/linux-arm-kernel/20240326004902.17054-2-laurent.pinchart@ideasonboard.com/
> >
> > Laurent Pinchart (3):
> >    dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add gpio child
> >      node
> >    firmware: raspberrypi: Use correct device for DMA mappings
> >    ARM: dts: bcm283x: Drop unneeded properties in the bcm2835-firmware
> >      node
> >
> >   .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 30 +++++++++++++++++++
> >   .../gpio/raspberrypi,firmware-gpio.txt        | 30 -------------------
> >   arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi   |  4 ---
> >   drivers/firmware/raspberrypi.c                |  7 +++--
> >   4 files changed, 34 insertions(+), 37 deletions(-)
> >   delete mode 100644 Documentation/devicetree/bindings/gpio/raspberrypi,firmware-gpio.txt
> >

-- 
Regards,

Laurent Pinchart

