Return-Path: <devicetree+bounces-55645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF78895D50
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 22:09:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B2B4B27E3F
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 20:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D91A15CD64;
	Tue,  2 Apr 2024 20:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="u1WyMfHn"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311A315CD56
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 20:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712088551; cv=none; b=R55Uo/cf5KJ8JhXLKMtKualeX01xlmCuGHUNsh2mAO8BHZAC4HR50+MqNYXrSwDtQIY5IS6XoWbqTsGDy+YMfTddC3u5TcAaGq4bAk8sDLQaWpE2fzF0F8lvEESL7f1rPgKPhBIZadggpfWEkPPaXD4psZfbpSjAhVIDzPkCvEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712088551; c=relaxed/simple;
	bh=yc0BwBoTCZ5tEddc955bJm4saggAfqFZ5HSLzJp3IVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fDT39/hQ2bH+oG9ltHve8PcG7nMVq20kgFaJ6IVSwRpdbJLE4SlTuGsKtgjhB+sFgQi3V23aZgYQtjAVd8ZVZu4KGHH0K0ommqQ49eStZIJBewGPE4hc9OyZUq0zsiDMhxfQeGg0so4/tusB9rA6Es8nAfKYVYhoiu4EwxjLVN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=u1WyMfHn; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0C40A1A2;
	Tue,  2 Apr 2024 22:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1712088509;
	bh=yc0BwBoTCZ5tEddc955bJm4saggAfqFZ5HSLzJp3IVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u1WyMfHnnS+waVwOihgzSVup5sICzBHaxeEj8Y1kIlKr2AtU6eS9PVz5EOl1x6qtR
	 dNd7fmNDCtrn0pceWTamzXjArgu4bmkTNqX0tbIfrJ1mWMmdFTMeu6SRzbK6Zo+5ik
	 w1E6U8utQr/rZrn47SBjuFgp+kl1cTOzgu55jEP0=
Date: Tue, 2 Apr 2024 23:08:55 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: "Ivan T. Ivanov" <iivanov@suse.de>,
	Peter Robinson <pbrobinson@gmail.com>,
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
	linux-rpi-kernel@lists.infradead.org, u-boot@lists.denx.de
Subject: Re: [PATCH v2 0/3] dt-bindings: arm: bcm:
 raspberrypi,bcm2835-firmware: Drive-by fixes
Message-ID: <20240402200855.GA32172@pendragon.ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
 <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>
 <20240327233700.GA21080@pendragon.ideasonboard.com>
 <bcf8093ab0ea6f3738bf4a4623de700a@suse.de>
 <2e15ab46-f29c-44ac-8a2a-8baa140ee1a3@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2e15ab46-f29c-44ac-8a2a-8baa140ee1a3@gmx.net>

Hello,

On Tue, Apr 02, 2024 at 09:52:06PM +0200, Stefan Wahren wrote:
> Am 02.04.24 um 10:58 schrieb Ivan T. Ivanov:
> > On 2024-03-28 01:37, Laurent Pinchart wrote:
> >> On Wed, Mar 27, 2024 at 07:49:38AM +0100, Stefan Wahren wrote:
> >>> Hi,
> >>>
> >>> [add Peter and Ivan]
> >>>
> >>> Am 26.03.24 um 20:58 schrieb Laurent Pinchart:
> >>> > Hello,
> >>> >
> >>> > This small series includes a few drive-by fixes for DT validation
> >>> > errors.
> >>> >
> >>> > The first patch has been posted previously in v1 ([1], and now addresses
> >>> > a small review comment. I think it's good to go.
> >>> >
> >>> > The next two patches address the same issue as "[PATCH 1/2] dt-bindings:
> >>> > arm: bcm: raspberrypi,bcm2835-firmware: Add missing properties" ([2]),
> >>> > but this time with a (hopefully) correct approach. Patch 2/3 starts by
> >>> > fixing the raspberrypi-bcm2835-firmware driver, removing the need for DT
> >>> > properties that are specified in bcm2835-rpi.dtsi but not documented in
> >>> > the corresponding bindings. Patch 3/3 can then drop those properties,
> >>> > getting rid of the warnings.
> >>>
> >>> since this series drops properties from the device tree, does anyone
> >>> have the chance to test it with a recent U-Boot?
> >>
> >> I don't have U-Boot running with my RPi, so I would appreciate if
> >> someone could help :-)
> >
> > Sorry for taking me so long to verify this.
> >
> > I think on RPi U-Boot side we are fine. API used when accessing Mbox
> > device do not follow DM model and do not use DMA, but just access
> > device directly using this nice macros phys_to_bus/bus_to_phys.
> >
> > I build new DTB files with this patch included and U-Boot build
> > from the latest sources. No obvious issues on RPi3 and RPi4.
> > Devices boot fine.

Thank you for testing Ivan.

> Thanks you, Laurent and Ivan
> 
> Reviewed-by: Stefan Wahren <wahrenst@gmx.net>

Stefan, I'm quite unfamiliar with the Raspberry Pi upstreaming process
(despite having sent patches for ages :-)), do I understand correctly
that this patch will go through your tree, or do I need to work with
someone else to get it merged upstream ?

-- 
Regards,

Laurent Pinchart

