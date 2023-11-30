Return-Path: <devicetree+bounces-20394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F87B7FF1A4
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1B3C1C20ABC
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 14:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E86314A9A3;
	Thu, 30 Nov 2023 14:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Xg/R7/Hc"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15AA783;
	Thu, 30 Nov 2023 06:20:45 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 176A3480;
	Thu, 30 Nov 2023 15:20:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701354006;
	bh=BDgzRT29bEhfpnn2rL/riElNd5GELCDFCsneSXbwOe0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xg/R7/Hcm7NqCs2l+PYW3KT4jnM9Sa3nEVNzYkdIhrQWW74HqHst56+636/y1dhGp
	 aC9FlY/jZqyP6dGlxY8fZA4BbyrkkSaXGIoUV4SYXWRlce4eNtymsRtsK7ApFReu9Y
	 pGqzwkTfHr9402IJMyrrcgBv7rusdawEsuJUkvew=
Date: Thu, 30 Nov 2023 16:20:48 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Tim Harvey <tharvey@gateworks.com>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Marek Vasut <marex@denx.de>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	open list <linux-kernel@vger.kernel.org>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add overlays for ISP instances
Message-ID: <20231130142048.GR8402@pendragon.ideasonboard.com>
References: <20231129093113.255161-1-paul.elder@ideasonboard.com>
 <7122934.GXAFRqVoOG@steina-w>
 <20231129151637.GG24293@pendragon.ideasonboard.com>
 <5734628.DvuYhMxLoT@steina-w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5734628.DvuYhMxLoT@steina-w>

Hi Alexander,

On Thu, Nov 30, 2023 at 10:51:22AM +0100, Alexander Stein wrote:
> Am Mittwoch, 29. November 2023, 16:16:37 CET schrieb Laurent Pinchart:
> > On Wed, Nov 29, 2023 at 11:20:07AM +0100, Alexander Stein wrote:
> > > Am Mittwoch, 29. November 2023, 10:31:13 CET schrieb Paul Elder:
> > > > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > > 
> > > > Add two overlay to enable each ISP instance. The ISP is wired directly
> > > > to the CSIS for now, bypassing the ISI completely.
> > > 
> > > I'm not sure if this is worth adding in a separate overlay.
> > 
> > The trouble is that, at this point, selection between the ISP and the
> > ISI can only be performed through DT :-S That's why this is implemented
> > as an overlay.
> 
> I feel a better place would be the overlay which actually adds the sensor. 
> This knows best whether ISI or ISP should be used.

Any sensor could be used with either the ISI or the ISP, so I don't
think the camera module overlay would be the best place for this. Unless
you want to duplicate all camera module overlays, with an ISI version
and an ISP version :-)

> > > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > > ---
> > > > 
> > > >  arch/arm64/boot/dts/freescale/Makefile        |  2 ++
> > > >  .../arm64/boot/dts/freescale/imx8mp-isp1.dtso | 36 +++++++++++++++++++
> > > >  .../arm64/boot/dts/freescale/imx8mp-isp2.dtso | 36 +++++++++++++++++++
> > > >  3 files changed, 74 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-isp1.dtso
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-isp2.dtso
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > > > b/arch/arm64/boot/dts/freescale/Makefile index
> > > > 300049037eb0..f97dfac11189
> > > > 100644
> > > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > > @@ -113,6 +113,8 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk2.dtb
> > > > 
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk3.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
> > > > 
> > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-isp1.dtbo
> > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-isp2.dtbo
> > > > 
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-isp1.dtso
> > > > b/arch/arm64/boot/dts/freescale/imx8mp-isp1.dtso new file mode 100644
> > > > index 000000000000..cf394ed224ab
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-isp1.dtso
> > > > @@ -0,0 +1,36 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +/*
> > > > + * Copyright 2022 Ideas on Board Oy
> > > > + */
> > > > +
> > > > +/dts-v1/;
> > > > +/plugin/;
> > > > +
> > > > +#include <dt-bindings/media/video-interfaces.h>
> > > > +
> > > > +&isi_0 {
> > > > +	status = "disabled";
> > > 
> > > ISI is disabled by default. What is your intention here?
> > 
> > It could be enabled by an overlay for a camera module. Ideally we want
> > to be able to enable both the ISI and ISP at runtime, but that's not
> > possible yet and will require a very large amount of work.
> 
> Again IMHO this is part of sensor setup, in a very specific overlay. To put it 
> into different words: I barely see the gain of this small overlay.
> 
> Runtime switching would require a combined media controller including both ISI 
> and ISP, no?

Correct, that's the hard part.

> > > > +
> > > > +	ports {
> > > > +		port@0 {
> > > > +			/delete-node/ endpoint;
> > > 
> > > This doesn't work in overlays. See [1]. Otherwise the OF graph connections
> > > look fine to me. I'm using the same in my local overlay.
> > 
> > Interesting, I wasn't aware of that. Maybe we should fix it :-)
> > 
> > > [1] https://lore.kernel.org/all/CAMuHMdWu4KZbBkvEofUV2wuA1g2S=XHHM3RUN1cNrcZBkhsPZA@mail.gmail.com/
> > >
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&isp_0 {
> > > > +	status = "okay";
> > > > +
> > > > +	ports {
> > > > +		port@1 {
> > > > +			isp0_in: endpoint {
> > > > +				bus-type = <MEDIA_BUS_TYPE_PARALLEL>;
> > > > +				remote-endpoint = <&mipi_csi_0_out>;
> > > > +			};
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&mipi_csi_0_out {
> > > > +	remote-endpoint = <&isp0_in>;
> > > > +};
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-isp2.dtso
> > > > b/arch/arm64/boot/dts/freescale/imx8mp-isp2.dtso new file mode 100644
> > > > index 000000000000..14e2e7b2617f
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-isp2.dtso
> > > > @@ -0,0 +1,36 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +/*
> > > > + * Copyright 2022 Ideas on Board Oy
> > > > + */
> > > > +
> > > > +/dts-v1/;
> > > > +/plugin/;
> > > > +
> > > > +#include <dt-bindings/media/video-interfaces.h>
> > > > +
> > > > +&isi_0 {
> > > > +	status = "disabled";
> > > > +
> > > > +	ports {
> > > > +		port@1 {
> > > > +			/delete-node/ endpoint;
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&isp_1 {
> > > > +	status = "okay";
> > > > +
> > > > +	ports {
> > > > +		port@1 {
> > > > +			isp1_in: endpoint {
> > > > +				bus-type = <MEDIA_BUS_TYPE_PARALLEL>;
> > > > +				remote-endpoint = <&mipi_csi_1_out>;
> > > > +			};
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&mipi_csi_1_out {
> > > > +	remote-endpoint = <&isp1_in>;
> > > > +};

-- 
Regards,

Laurent Pinchart

