Return-Path: <devicetree+bounces-21692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D373F804E26
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:42:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53B101F212FA
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C885341752;
	Tue,  5 Dec 2023 09:42:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF08E9A;
	Tue,  5 Dec 2023 01:41:56 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rARw7-0006PT-4Y; Tue, 05 Dec 2023 10:41:51 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, javierm@redhat.com, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 00/10] rockchip: Add Powkiddy X55
Date: Tue, 05 Dec 2023 10:41:49 +0100
Message-ID: <3863273.7aRn1RRit1@diego>
In-Reply-To: <f93acb2c-0871-469e-9744-60e52f4b9918@linaro.org>
References:
 <20231204185719.569021-1-macroalpha82@gmail.com>
 <170176481258.4073725.14793788958228896320.b4-ty@linaro.org>
 <f93acb2c-0871-469e-9744-60e52f4b9918@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 5. Dezember 2023, 09:28:24 CET schrieb Neil Armstrong:
> On 05/12/2023 09:26, Neil Armstrong wrote:
> > Hi,
> > 
> > On Mon, 04 Dec 2023 12:57:09 -0600, Chris Morgan wrote:
> >> From: Chris Morgan <macromorgan@hotmail.com>
> >>
> >> Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
> >> console.
> >>
> >> Changes since V1:
> >>   - Corrected a bug with the DRM mode flags for the video driver.
> >>   - Adjusted panel front and back porch and pixel clock to fix
> >>     issues with display that occurred after correcting DRM mode
> >>     flag bug.
> >>   - Add a new clk frequency for PLL_VPLL to get panel to run at ~60hz.
> >>
> >> [...]
> > 
> > Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)
> > 
> > [01/10] drm/panel: himax-hx8394: Drop prepare/unprepare tracking
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8c2c5d1d33f0725b7995f44f87a81311d13a441d
> > [02/10] drm/panel: himax-hx8394: Drop shutdown logic
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e4f53a4d921eba6187a2599cf184a3beeb604fe2
> > [03/10] dt-bindings: display: Document Himax HX8394 panel rotation
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=be478bc7ab08127473ce9ed893378cc2a8762611
> > [04/10] drm/panel: himax-hx8394: Add Panel Rotation Support
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a695a5009c8fd239a98d98209489997ff5397d2b
> > [05/10] dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=00830a0d8f0d820335e7beb26e251069d90f2574
> > [06/10] drm/panel: himax-hx8394: Add Support for Powkiddy X55 panel
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=38db985966d2f0f89f7e1891253489a16936fc5e
> > [07/10] clk: rockchip: Mark pclk_usb as critical on rk3568
> >          (no commit info)
> > [08/10] clk: rockchip: rk3568: Add PLL rate for 126.4MHz
> >          (no commit info)
> > [09/10] dt-bindings: arm: rockchip: Add Powkiddy X55
> >          (no commit info)
> > [10/10] arm64: dts: rockchip: Add Powkiddy X55
> >          (no commit info)
> > 
> 
> To clarify, only patches 1 to 6 were applied to drm-misc-next,

thanks for the clarification (and applying the patches already)

Heiko



