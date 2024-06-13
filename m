Return-Path: <devicetree+bounces-75310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B49066A0
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 10:28:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29B631F2221B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 08:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E19313E03A;
	Thu, 13 Jun 2024 08:24:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B103D13D524
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 08:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718267087; cv=none; b=G4XBohkmUssM5R9pVvecoyCiHGHxqjmm1h1tA7dlLwZ1OG+4T2r2vrGqglf/Q1kzgQLeGqPbHVhD5+PNQJcv4jruTo7i/sNTnhH8xiU7dGtnKLyC8lC/qzJRIVU5OctMPutK7aLaUd6w3bQB2xppm130/gHlBgvqqdfwwXvkj1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718267087; c=relaxed/simple;
	bh=aldKwrnf/73eAvjez2VrHFfbvKSw36v6csfiGyfOavg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OX6oCxIo0TRupU6amJL6nrZhlmrUMd32OLTxcZDr3mFigid9jRdAqsZC3Awu0xPZ9eJPE7Nw2BujCMF7wrHmVWKO8HfVSrkhgHrkYwOvkY3+9utYqXRHRlWLFikGsdrviWrT/C9MbqPS+ZQg+leboTnxUiddOhxhNe7KxiKxuso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1sHfl5-0003pe-B7; Thu, 13 Jun 2024 10:24:35 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1sHfl4-001z4E-EV; Thu, 13 Jun 2024 10:24:34 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1sHfl4-008Phf-16;
	Thu, 13 Jun 2024 10:24:34 +0200
Date: Thu, 13 Jun 2024 10:24:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Marek Vasut <marex@denx.de>
Cc: Peng Fan <peng.fan@nxp.com>, Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Paul Elder <paul.elder@ideasonboard.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Fabio Estevam <festevam@gmail.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: imx8mp: Add DT nodes for the two ISPs
Message-ID: <20240613082434.kekf75w2lw2thg6h@pengutronix.de>
References: <20240325151339.19041-1-laurent.pinchart@ideasonboard.com>
 <4879631.GXAFRqVoOG@steina-w>
 <20240325204924.GY18799@pendragon.ideasonboard.com>
 <2929432.e9J7NaK4W3@steina-w>
 <CAHCN7xLFjJUZQZwPbj5xyxnprwAV3TOvd_6A6sBwOPK+V6uQPA@mail.gmail.com>
 <AM6PR04MB59412D143AA8C20AFB479E8F88C72@AM6PR04MB5941.eurprd04.prod.outlook.com>
 <6ba1db19-32d6-4d25-824d-731bea65b583@denx.de>
 <AM6PR04MB594198421BCC895B506C408A88C72@AM6PR04MB5941.eurprd04.prod.outlook.com>
 <3cc52973-61b0-4698-98b7-402634f2b620@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3cc52973-61b0-4698-98b7-402634f2b620@denx.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-06-13, Marek Vasut wrote:
> On 6/11/24 5:01 AM, Peng Fan wrote:
> 
> [...]
> 
> > > > > According to the i.MX8MP Data sheet, the nominal speed for
> > > > > MEDIA_ISP_CLOCL_ROOT is 400MHZ with 500MHz being allowed in
> > > overdrive
> > > > > mode.
> > > > > 
> > > > > I think this clock rate should drop to  the nominal value of 400MHz
> > > > > and those boards who support overdrive can increase it to 500MHz to
> > > > > avoid stiability issues and/or running out of spec.  I created an
> > > > > imx8mm and imx8mn- overdrive.dtsi file.  If there is interest, I can do the
> > > same for the 8MP as well.
> > > > > 
> > > > > I haven't gone through all the clocks to determine if/what clocks are
> > > > > being overdriven.
> > > > 
> > > > Shouldn't the bootloader take the work to runtime update the freq?
> > > > Why need introduce an extra overdrive.dtsi?
> > > 
> > > Shouldn't the overdrive/non-overdrive decision be done in board DT instead ?
> > 
> > It is bootloader configure voltage to nominal, then bootloader should use
> > nominal device tree or runtime update dtb.
> > If bootloader configure voltage to over-drive, bootloader could use
> > nominal or over-drive dtb
> 
> I think the bootloader should always configure the minimal common
> configuration, i.e. nominal voltage, nominal clock, so that it would achieve
> maximum compatibility with any SoC in that SoC line up.
> 
> If the user does need overdrive configuration, they should specify that in
> their board DT.

+1

> Keep in mind, the kernel is easy to update (including kernel DT), the
> bootloader is not easy to update (esp. in field, bootloader update may
> render a system unbootable if it fails). I would say, it is better to keep
> the complicated things out of the bootloader if at all possible.
> 
> > If introduce x.dtsi and x-overdrive.dtsi, how to let board choose which dtsi
> > to include?
> 
> #include "x.dtsi"
> or
> #include "x-overdrive.dtsi"
> 
> But I think your question is -- how to do that at runtime ?
> 
> U-Boot can apply DT overlays onto DT that is passed to Linux, so if the user
> has board variants where they need both nonoverdrive/overdrive options, they
> can apply DT overlay which enables the overdrive mode on boards which need
> it. This can be done from U-Boot boot.scr or similar boot script, which can
> again be easily updated, without the need to update the bootloader itself
> (if something goes wrong or needs to be changed in the future).

+1 for the runtime configuration via overlay as well. The overlay can be
generated very easily by including the x-overdrive.dtsi into a .dtso and
for those who want to run in overdrive mode always they can mae use of
the x-overdrive.dtsi directly within the .dts file.

Regards,
  Marco

