Return-Path: <devicetree+bounces-280040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDBLGcXqwmkdnQQAu9opvQ
	(envelope-from <devicetree+bounces-280040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 20:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A761431BD5D
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 20:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0369C30238C3
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 19:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5448E30F540;
	Tue, 24 Mar 2026 19:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="sAJ34CpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0489324A06A;
	Tue, 24 Mar 2026 19:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774381438; cv=none; b=qaN25+i6AAhxqrjgp38HBwAlJfkFRB9irLE5r+EKM9m7TKx8/rA3/xWnhYmALSybWq+sPXvPC2gmsEpbcabYuuP4bY4Im3fuVl3SdFSOFwDXneHm4GurPTCFk0ahekKqlAn0tapI02uGycUMRHanw+hTISHiJPtAlB7iLVKUS8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774381438; c=relaxed/simple;
	bh=kNNB3ARW8MAB0TKKRx9eUF6IcUYNngEha9H4UXUg9yw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kWJKZJqlPGOnF397EuxEvqcIH5YuR88Jxp/qFlBw8fczfcQbO8E4acw9GZaFc1NU7FuDqhVIgznpbtJFYVVFbvSsGZtdH/EC2DhD2Im+AirtcrMM6giaGb88xAgiBneImohmwGoXvGn96+njRwBPsU4+AcRvWmBvaUILSjbbEX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=sAJ34CpZ; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 78789591;
	Tue, 24 Mar 2026 20:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1774381357;
	bh=kNNB3ARW8MAB0TKKRx9eUF6IcUYNngEha9H4UXUg9yw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sAJ34CpZdDWJm18yKHVWUdPrzJRwvPjbjmdZTBpbW7Y6OdXPde+6yM4MxQ+8CZyld
	 YmpFyI8wB1rKiLEtT8hXEf+PaH62eBO2tkYlQHXminxPj/O25j7D9Y52fyG9KmZtS8
	 nfR2UT8uZnclssb4uVlvRz8srtjRHhRIKaCKM6c8=
Date: Tue, 24 Mar 2026 21:43:53 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>,
	Stefan Klug <stefan.klug@ideasonboard.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Correct PAD settings
 for pmicirqgrp
Message-ID: <20260324194353.GB2352505@killaraus.ideasonboard.com>
References: <20260324-imx8mp-dts-fix-v1-1-df0eb2f62543@nxp.com>
 <20260324093850.GA2351719@killaraus.ideasonboard.com>
 <177437389415.1230693.16040948368071205395@ping.linuxembedded.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <177437389415.1230693.16040948368071205395@ping.linuxembedded.co.uk>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280040-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,nxp.com,pengutronix.de,gmail.com,ideasonboard.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ideasonboard.com:dkim,ideasonboard.com:email,killaraus.ideasonboard.com:mid]
X-Rspamd-Queue-Id: A761431BD5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 05:38:14PM +0000, Kieran Bingham wrote:
> Quoting Laurent Pinchart (2026-03-24 09:38:50)
> > On Tue, Mar 24, 2026 at 11:16:13AM +0800, Peng Fan (OSS) wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > > 
> > > With commit 5d0efaf47ee90 ("regulator: pca9450: Correct interrupt type"),
> > > there is interrupt storm for i.MX8MP DEBIX Model A. Per schematic, there
> > > is no on board PULL-UP resistors for GPIO1_IO03, so need to set PAD
> > > PUE and PU together to make pull up work properly.
> > > 
> > > Fixes: c86d350aae68e ("arm64: dts: Add device tree for the Debix Model A Board")
> > > Reported-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Closes: https://lore.kernel.org/all/20260323105858.GA2185714@killaraus.ideasonboard.com/
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > 
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Tested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Frank, would you be able to handle this as a v7.0 regression fix ?
> > 
> > I think the same is needed for imx8mp-debix-som-a.dtsi, but I can't
> > confirm it as I don't have the schematics for the SoM, neither do I have
> > access to the board.
> > 
> > Dan, Kieran, Stefan, could one of you check if you get an interrupt
> > storm from the PMIC on v7.0 ?
> 
> Confirmed:
>  35:      83626          0          0          0 gpio-mxc   3 Level     pca9450-irq
> 
>  and
> 
> 200:     270180          0          0          0    GICv3  67 Level     30a20000.i2c
> ...
> 200:     400925          0          0          0    GICv3  67 Level     30a20000.i2c
> ...
> 
> increasing rapidly on the debix-som.
> 
> I started out on the linux-media branches which were 7.0-rc2 based, and
> this didn't happen but cherry-picking in 5d0efaf47ee90 certainly causes
> this issue to occur on my board.

Could you confirm that setting MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03 to
0x000001c0 fixes the issue ?

> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > > index 9422beee30b29c5a551b08476c80fbff96af3439..df7489587e48ed0c678f11291f6f2b77082ade95 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > > @@ -440,7 +440,7 @@ MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA                                   0x400001c3
> > >  
> > >       pinctrl_pmic: pmicirqgrp {
> > >               fsl,pins = <
> > > -                     MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03                             0x41
> > > +                     MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03                             0x000001c0
> > >               >;
> > >       };
> > >  
> > > 
> > > ---
> > > base-commit: 09c0f7f1bcdbc3c37a5a760cbec76bf18f278406
> > > change-id: 20260324-imx8mp-dts-fix-512530fe4dcd

-- 
Regards,

Laurent Pinchart

