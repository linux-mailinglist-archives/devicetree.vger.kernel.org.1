Return-Path: <devicetree+bounces-18245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8354E7F5D0C
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:56:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08352B20F7C
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7584224F5;
	Thu, 23 Nov 2023 10:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4321B2;
	Thu, 23 Nov 2023 02:56:44 -0800 (PST)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 058661F8DC;
	Thu, 23 Nov 2023 11:56:43 +0100 (CET)
Date: Thu, 23 Nov 2023 11:56:39 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Cc: Francesco Dolcini <francesco@dolcini.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v1] arm64: dts: imx8-apalis: set wifi regulator to
 always-on
Message-ID: <ZV8v5zd8G6f7BdN9@francesco-nb.int.toradex.com>
References: <20231123104812.13906-1-francesco@dolcini.it>
 <CAOMZO5A53XFbRBp6QXWoDVBr=J347_riO1wWgPLxczT3JcuwQA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5A53XFbRBp6QXWoDVBr=J347_riO1wWgPLxczT3JcuwQA@mail.gmail.com>

Hello Fabio,

On Thu, Nov 23, 2023 at 07:52:27AM -0300, Fabio Estevam wrote:
> On Thu, Nov 23, 2023 at 7:48 AM Francesco Dolcini <francesco@dolcini.it> wrote:
> >
> > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> >
> > Make sure that the wifi regulator is always on. The wifi driver itself
> > puts the wifi module into suspend mode. If we cut the power the driver
> > will crash when resuming from suspend.
> >
> > Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> I think this one deserves a Fixes tag.

Fixes: ad0de4ceb706 ("arm64: dts: freescale: add initial apalis imx8 aka quadmax module support")

Shawn, I assume you could just pick the Fixes tag without me sending a
v2, if you disagree just speak-up.

Francesco


