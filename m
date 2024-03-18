Return-Path: <devicetree+bounces-51184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CC187E68E
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 11:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0CDF1C203D7
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 10:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BC42CCD6;
	Mon, 18 Mar 2024 10:00:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC5C2C85D
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 10:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710756018; cv=none; b=XZAcifOftEn+HUrI0OMWBBYQ6LuZP+1BA+hRc4RA6hU4fs4mEloSf2zdT6U+o5zSC6kebS7EyEPzh5SX+jS+Blb4p1wnPaJCjKl4VJ/TlLxjLa6SE9sM+1mhEBiMvhAKke5blmoCLXEgFvZpj7msIgwCADn+C1ksgaaasJeSuNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710756018; c=relaxed/simple;
	bh=oHGAUUZInETu3uSOrSDkqyU5Ef2ZqZXmkK2RBU59St4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RYpwuyvc2CFiOEuIqOQQ2bpw29hfboCki0nj76nNaTZDKqpNrVooSUtRL1sgX49RrIM5itWeyzNu+pkfTi5Y1P4G8DrhFF2sxLFtzD61aBOZw6dumieeuJ1X4Yq1P+KQC59MCPz0IUWLUSE79GUw5x9o6zaI4Fdn1Kh/68QeU+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rm9mi-0003u1-8j; Mon, 18 Mar 2024 11:00:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rm9mh-0073CL-KT; Mon, 18 Mar 2024 10:59:59 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rm9mh-005SXP-1h;
	Mon, 18 Mar 2024 10:59:59 +0100
Date: Mon, 18 Mar 2024 10:59:59 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 0/6] Add support i.MX95 BLK CTL module clock features
Message-ID: <20240318095959.v5d7qeoci5v2dtkq@pengutronix.de>
References: <20240314-imx95-blk-ctl-v4-0-d23de23b6ff2@nxp.com>
 <20240317155911.pdc32nsyxcdhs2t7@pengutronix.de>
 <DU0PR04MB941725052D5E3EF78F67A1C5882D2@DU0PR04MB9417.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DU0PR04MB941725052D5E3EF78F67A1C5882D2@DU0PR04MB9417.eurprd04.prod.outlook.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-03-18, Peng Fan wrote:
> Hi Marco,
> 
> > Subject: Re: [PATCH v4 0/6] Add support i.MX95 BLK CTL module clock
> > features
> > 
> > Hi Peng,
> > 
> > thank for the patchset.
> > 
> > On 24-03-14, Peng Fan (OSS) wrote:
> > > i.MX95's several MIXes has BLK CTL module which could be used for clk
> > > settings, QoS settings, Misc settings for a MIX. This patchset is to
> > > add the clk feature support, including dt-bindings
> > 
> > I have to ask since there is almost no public documentation available yet. The
> > i.MX95 does have an system-controller for managing pinmux settings and
> > power-domains, right? 
> 
> Yes. 
> 
> If this is the case, why not making use of it via the
> > standard scmi_pm_domain.c driver?
> 
> The SCMI firmware not handle the BLK CTL stuff, but blk ctl stuff is
> a mix of clk, qos, module specific things. It is not good for SCMI firmare
> to handle it.

Currently most of the blk-ctrl users do use the blk-ctrl as power-domain
consumer, except for the isi and the audio part. So as I said above the
scmi_pm_domain.c should be able to supply this. The audio blk-ctrl could
be abstracted via the clk-scmi.c driver. The ISI is another topic.

What you're are going to do here is to put pinctrl etc into SCMI
firmware and power-control into Linux, which sound to me like an 50/50
approach and IMHO is rather sub-optimal. To quote your online available
fact sheet:

8<----------------------------------------------------------
ENERGY FLEX ARCHITECTURE

The i,MX 95 family is designed to be configurable and
scalable, with multiple heterogenous processing domains.
This includes an application domain with up to 6 Arm
Cortex A55 cores, a high-performance real-time domain
with Arm Cortex M7, and low-power/safety domain with
Arm Cortex M33, each able to access interfaces including
CAN-FD, 10GbE networking, PCIe Gen 3 x1 interfaces,
and accelerators such as V2X, ISP, and VPU.
8<----------------------------------------------------------

8<----------------------------------------------------------
HIGH-PERFORMANCE COMPUTE
The i.MX 95 family capabilities include a multi-core
application domain with up to six Arm Cortex®-A55 cores,
as well as two independent real-time domains for
safety/low-power, and high-performance real-time use,
consisting of high-performance Arm Cortex-M7 and
Arm Cortex-M33 CPUs, combining low-power, real-time,
and high-performance processing. The i.MX 95 family is
designed to enable ISO 26262 ASIL-B and SIL-2 IEC 61508
compliant platforms, with the safety domain serving as
a critical capability for many automotive and industrial
applications.
...
8<----------------------------------------------------------

To me this sound like we can turn of the power/clock of an hardware
block which was assigned to a core running SIL-2 certified software from
an non-critical core running Linux if we follow that approach. Also the
SIL-2 software requires the non-critical software to turn on the power
of these hardware blocks. Is this correct?

Regards,
  Marco

> Regards,
> Peng.
> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> > 
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > > Changes in v4:
> > > - Separate binding doc for each modules, I still keep the syscon as
> > > node name, because the module is not just for clock
> > > - Pass dt-schema check
> > > - Update node compatibles
> > > - Link to v3:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fr%2F20240228-imx95-blk-ctl-v3-0-
> > 40ceba01a211%40nxp.com&d
> > >
> > ata=05%7C02%7Cpeng.fan%40nxp.com%7Caad977d7e4f94c750de408dc469
> > b3952%7C
> > >
> > 686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63846287969085566
> > 1%7CUnknow
> > >
> > n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha
> > WwiLC
> > >
> > JXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=M%2B3lDY9BKvW0nHv4mtvi82RA
> > 9IvYyz72TCbL
> > > UpiYcG0%3D&reserved=0
> > >
> > > Changes in v3:
> > > - Correct example node compatible string
> > > - Pass "make ARCH=arm64 DT_CHECKER_FLAGS=-m -j32 dt_binding_check"
> > > - Link to v2:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fr%2F20240228-imx95-blk-ctl-v2-0-
> > ffb7eefb6dcd%40nxp.com&d
> > >
> > ata=05%7C02%7Cpeng.fan%40nxp.com%7Caad977d7e4f94c750de408dc469
> > b3952%7C
> > >
> > 686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63846287969086560
> > 2%7CUnknow
> > >
> > n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha
> > WwiLC
> > >
> > JXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=4leg49tKhwUMzvD5wlnvgVc7is%2
> > FGMNvpYr6A
> > > %2FAf3OU4%3D&reserved=0
> > >
> > > Changes in v2:
> > > - Correct example node compatible string
> > > - Link to v1:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fr%2F20240228-imx95-blk-ctl-v1-0-
> > 9b5ae3c14d83%40nxp.com&d
> > >
> > ata=05%7C02%7Cpeng.fan%40nxp.com%7Caad977d7e4f94c750de408dc469
> > b3952%7C
> > >
> > 686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63846287969087217
> > 2%7CUnknow
> > >
> > n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha
> > WwiLC
> > >
> > JXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=UuD5MVPFgBqwftuXCIXB7SeGyu0
> > NWPbwY%2Bvy
> > > ChFLyVA%3D&reserved=0
> > >
> > > ---
> > > Peng Fan (6):
> > >       dt-bindindgs: clock: nxp: support i.MX95 VPU CSR module
> > >       dt-bindindgs: clock: nxp: support i.MX95 Camera CSR module
> > >       dt-bindindgs: clock: nxp: support i.MX95 Display Master CSR module
> > >       dt-bindindgs: clock: nxp: support i.MX95 LVDS CSR module
> > >       dt-bindindgs: clock: nxp: support i.MX95 Display CSR module
> > >       clk: imx: add i.MX95 BLK CTL clk driver
> > >
> > >  .../bindings/clock/nxp,imx95-camera-csr.yaml       |  50 +++
> > >  .../bindings/clock/nxp,imx95-display-csr.yaml      |  50 +++
> > >  .../clock/nxp,imx95-display-master-csr.yaml        |  62 +++
> > >  .../bindings/clock/nxp,imx95-lvds-csr.yaml         |  50 +++
> > >  .../bindings/clock/nxp,imx95-vpu-csr.yaml          |  50 +++
> > >  drivers/clk/imx/Kconfig                            |   7 +
> > >  drivers/clk/imx/Makefile                           |   1 +
> > >  drivers/clk/imx/clk-imx95-blk-ctl.c                | 438 +++++++++++++++++++++
> > >  include/dt-bindings/clock/nxp,imx95-clock.h        |  32 ++
> > >  9 files changed, 740 insertions(+)
> > > ---
> > > base-commit: c9c32620af65fee2b1ac8390fe1349b33f9d0888
> > > change-id: 20240228-imx95-blk-ctl-9ef8c1fc4c22
> > >
> > > Best regards,
> > > --
> > > Peng Fan <peng.fan@nxp.com>
> > >
> > >
> > >
> 

