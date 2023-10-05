Return-Path: <devicetree+bounces-6063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF757B9C87
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 28DA2281A8B
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9397477;
	Thu,  5 Oct 2023 10:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="R2FvMBJK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C396FDD
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:39:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B5AC3277C;
	Thu,  5 Oct 2023 10:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1696502390;
	bh=KnjaarIFtA7RjRoJOJyBaKe/yYRHmHUlI9kzIxaBPVs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R2FvMBJKG+IyGotsCUMr6+EVR6c2vN/20KdVsHy1PxeYVzrCvwSkFl0kqQsXrVwJs
	 QDtcKwgJLgHarAxnHISzA/PuBJ/zT1vVkOc59bRsx+Pnvnd6WmcKn4daHxNANgmgiv
	 12/hOxtKHV4w456RtdmUg4k1FfHsKgG/LJNPpnoc=
Date: Thu, 5 Oct 2023 12:39:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayush Singh <ayushdevel1325@gmail.com>
Cc: greybus-dev@lists.linaro.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vaishnav@beagleboard.org,
	jkridner@beagleboard.org, nm@ti.com,
	krzysztof.kozlowski+dt@linaro.org, johan@kernel.org,
	elder@kernel.org
Subject: Re: [PATCH v7 2/3] greybus: Add BeaglePlay Linux Driver
Message-ID: <2023100536-lumping-gauntlet-3a55@gregkh>
References: <20231004184639.462510-1-ayushdevel1325@gmail.com>
 <20231004184639.462510-3-ayushdevel1325@gmail.com>
 <2023100501-siesta-dictate-132e@gregkh>
 <795ee959-abdd-02c5-40b9-b7bb0d54c2f7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <795ee959-abdd-02c5-40b9-b7bb0d54c2f7@gmail.com>

On Thu, Oct 05, 2023 at 03:18:15PM +0530, Ayush Singh wrote:
> 
> On 10/5/23 14:38, Greg KH wrote:
> > On Thu, Oct 05, 2023 at 12:16:37AM +0530, Ayush Singh wrote:
> > > Add the Greybus host driver for BeaglePlay board by BeagleBoard.org.
> > > 
> > > The current greybus setup involves running SVC in a user-space
> > > application (GBridge) and using netlink to communicate with kernel
> > > space. GBridge itself uses wpanusb kernel driver, so the greybus messages
> > > travel from kernel space (gb_netlink) to user-space (GBridge) and then
> > > back to kernel space (wpanusb) before reaching CC1352.
> > > 
> > > This driver directly communicates with CC1352 (running SVC Zephyr
> > > application). Thus, it simplifies the complete greybus setup eliminating
> > > user-space GBridge.
> > > 
> > > This driver is responsible for the following:
> > > - Start SVC (CC1352) on driver load.
> > > - Send/Receive Greybus messages to/from CC1352 using HDLC over UART.
> > > - Print Logs from CC1352.
> > > - Stop SVC (CC1352) on driver load.
> > > 
> > > Signed-off-by: Ayush Singh <ayushdevel1325@gmail.com>
> > > ---
> > >   MAINTAINERS                     |   1 +
> > >   drivers/greybus/Kconfig         |  10 +
> > >   drivers/greybus/Makefile        |   2 +
> > >   drivers/greybus/gb-beagleplay.c | 501 ++++++++++++++++++++++++++++++++
> > >   4 files changed, 514 insertions(+)
> > >   create mode 100644 drivers/greybus/gb-beagleplay.c
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 5467669d7963..d87e30626a6a 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -8974,6 +8974,7 @@ M:	Ayush Singh <ayushdevel1325@gmail.com>
> > >   L:	greybus-dev@lists.linaro.org (moderated for non-subscribers)
> > >   S:	Maintained
> > >   F:	Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
> > > +F:	drivers/greybus/gb-beagleplay.c
> > >   GREYBUS SUBSYSTEM
> > >   M:	Johan Hovold <johan@kernel.org>
> > > diff --git a/drivers/greybus/Kconfig b/drivers/greybus/Kconfig
> > > index 78ba3c3083d5..fd4f26d09c53 100644
> > > --- a/drivers/greybus/Kconfig
> > > +++ b/drivers/greybus/Kconfig
> > > @@ -17,6 +17,16 @@ menuconfig GREYBUS
> > >   if GREYBUS
> > > +config GREYBUS_BEAGLEPLAY
> > > +	tristate "Greybus BeaglePlay driver"
> > > +	depends on TTY
> > What you want to depend on here is serdev, not tty, right?  Or am I
> > mis-reading the code requirements?
> > 
> > thanks,
> > 
> > greg k-h
> 
> Yes, it was dependent on tty in the past, but not anymore. I think it should
> be changed to `SERIAL_DEV_BUS` now?

Yes, otherwise you will get build errors.

thanks,

greg k-h

