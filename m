Return-Path: <devicetree+bounces-19958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA857FD606
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E08D9283093
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 11:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3E61D54D;
	Wed, 29 Nov 2023 11:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF5E31A8
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:50:40 -0800 (PST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r8J5L-0006oE-9z; Wed, 29 Nov 2023 12:50:31 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115211829.32542-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20231115211829.32542-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/Five SoC
Message-Id: <170125863057.1536676.8251261035131321801.b4-ty@pengutronix.de>
Date: Wed, 29 Nov 2023 12:50:30 +0100
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

On Wed, 15 Nov 2023 21:18:29 +0000, Prabhakar wrote:
> The USBPHY Control Device on the RZ/Five SoC is identical to one found on
> the RZ/G2UL SoC. "renesas,r9a07g043-usbphy-ctrl" compatible string will be
> used on the RZ/Five SoC so to make this clear and to keep this file
> consistent, update the comment to include RZ/Five SoC.
> 
> No driver changes are required as generic compatible string
> "renesas,rzg2l-usbphy-ctrl" will be used as a fallback on RZ/Five SoC.
> 
> [...]

Applied to reset/next, thanks!

[1/1] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/Five SoC
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=1240070d4e04

regards
Philipp


