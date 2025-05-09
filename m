Return-Path: <devicetree+bounces-175572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E81BCAB12F0
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 623AD1BC375E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 12:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F1A290D8D;
	Fri,  9 May 2025 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="bTSWlaQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F0428FFF2
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 12:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746792295; cv=none; b=QRAOgorgtDhF+CWgkHNKnXlnRUjMOdAieA7mzKxt64aeXN2JAKlA46853ge3L3muNB9DRIsFFA5NsjySJOt6XfzaDK3CqQD4DZStWa58nI925UdwVx6/LbkRFiH0yluGIEMnW9byShIogpGrD829u8gums0Q67y/rTIESGsw6cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746792295; c=relaxed/simple;
	bh=YYcaMDlGSy91VIYiFJ+u8TWuMfpHa6BMLlG+POxKXXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RpKmSvPw2TxWmcmfmlIlK1JOQFtdWiQwY7QtywIASodZvOypkHcED/mvtX+1HEdCZD4jL4RmfhHIMqorszMY3IqJesOZ8wxK8sBrDAh864kHfvIUa5RQQoOrzUH9g+12fRCyHflb2gMZP8VRZKlIWhRXUF/aD2mb3+mn0foHHhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=bTSWlaQd; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=ozfwuFVEUTDToHBc2ETkpFdylwQ3tcpGJCK/felzs/w=;
	b=bTSWlaQdJy9Bsv9fnjqq9LEg0I6uljrRGlf6Kp2Dz0BsRNfrT1BVXJm0BI4/KT
	lMUm3j8dKIthxDKC/u5Dg2534izQ7DwnmvKIGN2HzYo1cWVBpQcULHQxQJsvXKTS
	LSyfx2OzDl0sONOQNwbNctjjd9ArnFebHo/8c0WMYFpNg=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3L_8V7x1oHuWmAA--.37606S3;
	Fri, 09 May 2025 20:03:35 +0800 (CST)
Date: Fri, 9 May 2025 20:03:33 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Peng Fan <peng.fan@nxp.com>
Cc: Jacky Bai <ping.bai@nxp.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"linus.walleij@linaro.org" <linus.walleij@linaro.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	Aisheng Dong <aisheng.dong@nxp.com>, Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH v6 2/3] arm64: dts: freescale: Add basic dtsi for imx943
Message-ID: <aB3vFciYEIIITRHv@dragon>
References: <20250421065139.3073232-1-ping.bai@nxp.com>
 <20250421065139.3073232-3-ping.bai@nxp.com>
 <aB3Pll3A/0XGCLlQ@dragon>
 <PAXPR04MB8459189E9DF97A15DB7386EA888AA@PAXPR04MB8459.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB8459189E9DF97A15DB7386EA888AA@PAXPR04MB8459.eurprd04.prod.outlook.com>
X-CM-TRANSID:M88vCgD3L_8V7x1oHuWmAA--.37606S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU289NDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAhIZWgduuzANAAAs2

On Fri, May 09, 2025 at 10:35:40AM +0000, Peng Fan wrote:
> > I forgot to ask when imx95-clock.h was first introduced.  But how will
> > clk drivers use these clock IDs, or will clk drivers have their own copy of
> > definitions?
> 
> We are using SCMI for i.MX95/i.MX94. Per DT maintainers,
> the IDs should not be in dt-bindings, they are SCMI firmware
> defined IDs.
> 
> clk drivers is drivers/clk/clk-scmi.c, this is a SCMI generic
> clk driver, it will talk with SCMI firmware to get IDs.

Ah, nice!  Thanks for the information, Peng!

Shawn


