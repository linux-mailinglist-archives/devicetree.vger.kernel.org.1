Return-Path: <devicetree+bounces-74050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3613901CF8
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 10:32:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BABBE1C21212
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 08:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D553BBC5;
	Mon, 10 Jun 2024 08:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RnU+OXGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA31120DC4
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 08:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.178.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718008317; cv=none; b=V0Pc0qQwuVqs5AaM7dVO0Sv31BMOXVaMnhqWGkn8/qBzgbKGzdC7jKGINZIaIuKqD+IHn0QRZENyFI3Zz2CUN+pDifQ2bkhXFQXZvK8kQK9pvSA0C9pYE1JTcfailC2mcvsnr1YqbtCd7CLPoNO0AWDImG+aVAZBwWn9lnWeMVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718008317; c=relaxed/simple;
	bh=aGUTlEJAdYJ0BBF/sFUz9ADjYU5ayHv3G3Dzv/SuHWA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L4kuFiDWTwPtXkRAAKIslAk3KbmZ/4VkrKJiBSUKeQTLDX9m89nq+/EUcP+icoleuhWpX3OF8PbV37TFCY+2BIjkR+BOOic3SpsPVUb488bU7LhH/UBUV0ZELKLlUCvXtRbaRkiL11tQxqrDdFf0dX1nLU5NarjWdApfjBYNX9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RnU+OXGZ; arc=none smtp.client-ip=217.70.178.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from relay2-d.mail.gandi.net (unknown [217.70.183.194])
	by mslow1.mail.gandi.net (Postfix) with ESMTP id AE24EC6FF8
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 08:31:46 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 929E640007;
	Mon, 10 Jun 2024 08:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1718008298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i8hOh+k+3HNGP83fiowODoI18uyocPiHtz+59WbbqDk=;
	b=RnU+OXGZ+7LocQoEj+L7E8efQkSCjksLprLDmGatXFqsB2upwV8OZqfW18ROW0XnZXi0uo
	UxHtuIjyY+s7cf2jrX6dGtTQ0qvqGPKw0B9nLFm+1I9f802NC2hvXRTdtk/6CuBm7MVONW
	4k88QyhcaNT4mloasG+af0ujnnpVf1oce4XNCOtePmaYUAMqhwAmYudElaHzIPvOKwZiZH
	k7hQTPrP1yTAFSa2TCngP04npO83e/BE9NV+N7e4mMqK+klpkOwMkogR52Pt6vDyLYFQki
	3GxAMUObfIOhN0WglQfInU4jd+aDeXAitzJ7uvuuopj4z6tDTZd7Ol1j4pdLwg==
Date: Mon, 10 Jun 2024 10:31:36 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>, Kieran
 Bingham <kieran.bingham@ideasonboard.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
 kernel@pengutronix.de, Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx8mp-evk: enable HDMI
Message-ID: <20240610103136.74ec91fd@booty>
In-Reply-To: <20240608150613.GA13225@pendragon.ideasonboard.com>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
	<20220826192932.3217260-4-l.stach@pengutronix.de>
	<20230302163525.007503e4@booty>
	<20230525122628.13b0f28b@booty>
	<20240608150613.GA13225@pendragon.ideasonboard.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com

Hi Laurent,

On Sat, 8 Jun 2024 18:06:13 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> On Thu, May 25, 2023 at 12:26:28PM +0200, Luca Ceresoli wrote:
> > On Thu, 2 Mar 2023 16:35:25 +0100 Luca Ceresoli wrote:  
> > > On Fri, 26 Aug 2022 21:29:32 +0200 Lucas Stach wrote:
> > >   
> > > > Enable the DT nodes for HDMI TX and PHY and add the pinctrl for the few
> > > > involved pins that are configurable.
> > > > 
> > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>    
> > 
> > Any updates to these patches? I haven't found any v2 on the list.  
> 
> This is the last patch in the series that hasn't made it upstream It
> would be really nice to get a new version that could be merged in v6.11.
> Pretty please :-)

It will be my pleasure to rebase, test and resend this week! :)

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

