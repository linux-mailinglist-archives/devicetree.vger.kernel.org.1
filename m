Return-Path: <devicetree+bounces-74932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C61905054
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 12:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35E9A1F232B5
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432DF16E881;
	Wed, 12 Jun 2024 10:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="D+o8xwJY"
X-Original-To: devicetree@vger.kernel.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE5E33FE
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 10:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718187916; cv=none; b=tm4g/Kq/TxyLUJZqwWv10kvidUgHpz18UpTWIAP1jzs4bcXQg0eORMLPyym6152lW1CfHjdoGrt+/llTRVdHTzZU5s/ogjlnSMokSiqm3fXR6w5G6Gn1cSIpzANp/7nVo3HHq2650MTb/nC2tMaUoZ4Ar25f+z1GHv4LNWP0TM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718187916; c=relaxed/simple;
	bh=atLXPixcRwLWPHP66Gfs8zJHZ9D/pPwmr0r9sC1rW6o=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e4HQBJ6qgk48iKe6e06oJnE5DbhoV9u0xNBw5UobBFIikGQmicCCX0bR9bFxGFpuIp6Q/T/lslyg3kawQxVLhLdG9M94cw4dNoGk91SrCchEQHq4uZjwMDZ4nOt4pUldtKn468S7S6fv0Cm/xy8ZiTdNB6jTjM0OmY8xB6+XpSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=D+o8xwJY; arc=none smtp.client-ip=217.70.183.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5216060011;
	Wed, 12 Jun 2024 10:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1718187906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KjZ/MgEL4IAeDivuVjZEoIOP9OkfqNeysJrg9C1yvkM=;
	b=D+o8xwJYMKThuAm74/TUJVNO9wYj2TIKK6+FxystKCAl/M7UbtuKlHXWXdU5oK7VOwKunz
	4NrKbrudkUCtMJ7hCJ4a/ylZRM/ab9WOI/mtgN5cYd6328nMvBH6RcU3AzdmPs4J0zvzEw
	hGzvBuD3Pa5B+SZXBOu24W0wH30cObzcGKu/eS1Eo8/Y9mqmRNXHwV+IKxy8oJKOYUYqpb
	MtLPXZQv5bX4Xz2tv5ZDt1uNo9pw13opopZ5iKar1L/nEJ0yfo4uuRFmqTuj/d7SeqmGHr
	3UZKNV+yFNDmwUyz7l0ccRd53inmI63VjIIPnC5Wp61gbSE08ef8vdeHyJFVkA==
Date: Wed, 12 Jun 2024 12:25:02 +0200
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
Message-ID: <20240612122502.38a9a2eb@booty>
In-Reply-To: <20240610103136.74ec91fd@booty>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
	<20220826192932.3217260-4-l.stach@pengutronix.de>
	<20230302163525.007503e4@booty>
	<20230525122628.13b0f28b@booty>
	<20240608150613.GA13225@pendragon.ideasonboard.com>
	<20240610103136.74ec91fd@booty>
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

Hi again Laurent,

On Mon, 10 Jun 2024 10:31:36 +0200
Luca Ceresoli <luca.ceresoli@bootlin.com> wrote:

> Hi Laurent,
> 
> On Sat, 8 Jun 2024 18:06:13 +0300
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> 
> > On Thu, May 25, 2023 at 12:26:28PM +0200, Luca Ceresoli wrote:  
> > > On Thu, 2 Mar 2023 16:35:25 +0100 Luca Ceresoli wrote:    
> > > > On Fri, 26 Aug 2022 21:29:32 +0200 Lucas Stach wrote:
> > > >     
> > > > > Enable the DT nodes for HDMI TX and PHY and add the pinctrl for the few
> > > > > involved pins that are configurable.
> > > > > 
> > > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>      
> > > 
> > > Any updates to these patches? I haven't found any v2 on the list.    
> > 
> > This is the last patch in the series that hasn't made it upstream It
> > would be really nice to get a new version that could be merged in v6.11.
> > Pretty please :-)  
> 
> It will be my pleasure to rebase, test and resend this week! :)

Oops, I clearly had misread your e-mail! :)

You was of course referring to Lucas' patch for the imx8mp-evk and not
mine for the imx8mp-msc-sm2s, which I thought I had sent previously.

It must have been the similarity between 'Luca' and 'Lucas' along with
the 'To:' header, the board names being somewhat similar and the actual
patch content being almost identical...

But turns out I hadn't sent that patch yet. Sent it right now:
https://lore.kernel.org/linux-devicetree/20240612-imx8mp-msc-sm2s-hdmi-v1-1-6c808df5205d@bootlin.com/T/#u

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

