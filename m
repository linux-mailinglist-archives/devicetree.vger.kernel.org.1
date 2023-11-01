Return-Path: <devicetree+bounces-13475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 983897DE2EF
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23F712812FA
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF6914012;
	Wed,  1 Nov 2023 15:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="gWvuR00a"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7389C7480
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:24:34 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8225DA;
	Wed,  1 Nov 2023 08:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=s3Mg6e1OPGx3dxFtQuDRrNKu3fgsZsQBHayTyRSUnQ4=; b=gWvuR00aVgmtpfQjxMMmU/uwv9
	u3PRhFp5LosHmHa8qhix41WMIzZ20eLCdTj/oZ08tjCCEN+HxWaDlWB91C5Ti4FxUa1RnanWN9zbT
	RhTdN4cMtkbCb9g5fK2gp9P8N2NLEmX5DRQ/pq4jT4ThBjTayl/Nz4WbvpzLUgmB3qwI=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:55522 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyD4q-0006yK-7O; Wed, 01 Nov 2023 11:24:20 -0400
Date: Wed, 1 Nov 2023 11:24:15 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <20231101112415.b9e8a2a5b5a37ee06bd2abc3@hugovil.com>
In-Reply-To: <20231101-nebulizer-lasso-a901cd564dd1@spud>
References: <20231101144303.2653464-1-hugo@hugovil.com>
	<20231101-nebulizer-lasso-a901cd564dd1@spud>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: Re: [PATCH] arm64: dts: imx8mn-rve-gateway: add support for RVE
 gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Wed, 1 Nov 2023 15:16:50 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Wed, Nov 01, 2023 at 10:43:02AM -0400, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > The RVE gateway board is based on a Variscite VAR-SOM-NANO,
> > with a NXP MX8MN nano CPU.
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  .../devicetree/bindings/arm/fsl.yaml          |   1 +
> >  MAINTAINERS                                   |   7 +
> >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> >  .../boot/dts/freescale/imx8mn-rve-gateway.dts | 296 ++++++++++++++++++
> >  4 files changed, 305 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 9450b2c8a678..a1028fe8ed02 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -1007,6 +1007,7 @@ properties:
> >                - fsl,imx8mn-ddr4-evk       # i.MX8MN DDR4 EVK Board
> >                - fsl,imx8mn-evk            # i.MX8MN LPDDR4 EVK Board
> >                - gw,imx8mn-gw7902          # i.MX8MM Gateworks Board
> > +              - rve,rve-gateway           # i.MX8MN RVE Gateway Board
> >            - const: fsl,imx8mn
> 
> Changes to dt-bindings should be in their own patch. Did checkpatch not
> whinge about this?

Hi,
yes it did and I very well saw it.

However, before sending my patches, I checked the log history to
see how patches for new boards were handled, and saw that new
boards (some) integrated all these changes together.

I will submit a new serie with all changes separated.

Hugo.

