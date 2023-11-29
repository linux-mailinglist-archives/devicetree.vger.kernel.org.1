Return-Path: <devicetree+bounces-19957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 064DA7FD605
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 379981C21006
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 11:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AD7A1D54A;
	Wed, 29 Nov 2023 11:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D03D7D
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:50:38 -0800 (PST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r8J5L-0006oE-Gv; Wed, 29 Nov 2023 12:50:31 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231122224404.2808838-1-robh@kernel.org>
References: <20231122224404.2808838-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: reset: imx-src: Simplify compatible
 schema and drop unneeded quotes
Message-Id: <170125863142.1536676.6361082813324667687.b4-ty@pengutronix.de>
Date: Wed, 29 Nov 2023 12:50:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-5c066
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Wed, 22 Nov 2023 15:44:04 -0700, Rob Herring wrote:
> The compatible schema can be simplified to a single enum for all the cases
> with "fsl,imx51-src" fallback compatible.
> 
> In addition, the compatible strings are redundantly quoted. Drop unneeded
> quotes over simple string values to fix a soon to be enabled yamllint
> warning:
> 
> [...]

Applied to reset/next, thanks!

[1/1] dt-bindings: reset: imx-src: Simplify compatible schema and drop unneeded quotes
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=e4916e791fb6

regards
Philipp


