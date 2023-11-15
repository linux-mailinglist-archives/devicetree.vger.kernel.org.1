Return-Path: <devicetree+bounces-15011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8277F7E7CEC
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 15:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB9B51C20912
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 14:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3D01B27B;
	Fri, 10 Nov 2023 14:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796041B28E
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 14:18:07 +0000 (UTC)
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E44CA753C;
	Fri, 10 Nov 2023 06:18:05 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r1SKQ-0006nA-1x;
	Fri, 10 Nov 2023 14:17:46 +0000
Date: Fri, 10 Nov 2023 14:17:41 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: mediatek,mtk-wdt: add MT7988
 watchdog and toprgu
Message-ID: <ZU47hV1i66WN8nZJ@makrotopia.org>
References: <6912f6f406bc45674020681184f3eeca2f2cb63f.1699576174.git.daniel@makrotopia.org>
 <2678cb48-1d2b-47bc-9272-06d9aa140c58@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2678cb48-1d2b-47bc-9272-06d9aa140c58@collabora.com>

On Fri, Nov 10, 2023 at 12:56:18PM +0100, AngeloGioacchino Del Regno wrote:
> Il 10/11/23 01:30, Daniel Golle ha scritto:
> > Add binding description for mediatek,mt7988-wdt.
> > 
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> >   .../bindings/watchdog/mediatek,mtk-wdt.yaml          |  1 +
> >   include/dt-bindings/reset/mediatek,mt7988-resets.h   | 12 ++++++++++++
> >   2 files changed, 13 insertions(+)
> >   create mode 100644 include/dt-bindings/reset/mediatek,mt7988-resets.h
> > 
> > diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> > index cc502838bc398..8d2520241e37f 100644
> > --- a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> > +++ b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> > @@ -25,6 +25,7 @@ properties:
> >             - mediatek,mt6735-wdt
> >             - mediatek,mt6795-wdt
> >             - mediatek,mt7986-wdt
> > +          - mediatek,mt7988-wdt
> >             - mediatek,mt8183-wdt
> >             - mediatek,mt8186-wdt
> >             - mediatek,mt8188-wdt
> > diff --git a/include/dt-bindings/reset/mediatek,mt7988-resets.h b/include/dt-bindings/reset/mediatek,mt7988-resets.h
> > new file mode 100644
> > index 0000000000000..fa7c937505e08
> > --- /dev/null
> > +++ b/include/dt-bindings/reset/mediatek,mt7988-resets.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> > +
> > +/* TOPRGU resets */
> 
> The first reset is zero, the second reset is one.
> 
> Where's the zero'th reset? :-)

Currently the reset numbers represent the corresponding bit positions in
the toprgu register, as this is how the mtk-wdt driver is organized.

So there is probably something at bit 0, and also at bit 3~11 and
maybe also 17~23, but it's unknown and may be added later once known
and/or needed.

> 
> Regards,
> Angelo
> 
> > +#define MT7988_TOPRGU_SGMII0_GRST		1
> > +#define MT7988_TOPRGU_SGMII1_GRST		2
> > +#define MT7988_TOPRGU_XFI0_GRST			12
> > +#define MT7988_TOPRGU_XFI1_GRST			13
> > +#define MT7988_TOPRGU_XFI_PEXTP0_GRST		14
> > +#define MT7988_TOPRGU_XFI_PEXTP1_GRST		15
> > +#define MT7988_TOPRGU_XFI_PLL_GRST		16
> > +
> > +#define MT7988_TOPRGU_SW_RST_NUM		24
> 
> 

