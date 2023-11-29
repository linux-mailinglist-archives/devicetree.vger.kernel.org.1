Return-Path: <devicetree+bounces-19956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CDE7FD603
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:50:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BE3C1C20FCA
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 11:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B32431D536;
	Wed, 29 Nov 2023 11:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F290AD66
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:50:37 -0800 (PST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r8J5N-0006oE-ML; Wed, 29 Nov 2023 12:50:33 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wei Xu <xuwei5@hisilicon.com>, 
 Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231128214759.3975428-1-robh@kernel.org>
References: <20231128214759.3975428-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: reset: hisilicon,hi3660-reset: Drop
 providers and consumers from example
Message-Id: <170125863155.1536676.7072293092742736141.b4-ty@pengutronix.de>
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

On Tue, 28 Nov 2023 15:47:58 -0600, Rob Herring wrote:
> Binding examples should generally only cover what the binding covers. A
> provider binding doesn't need to show consumers and vice-versa. The
> hisilicon,hi3660-reset binding example has both, so let's drop them.
> 
> This also fixes an undocumented (by schema) compatible warning for
> "hisilicon,hi3660-iomcu".
> 
> [...]

Applied to reset/next, thanks!

[1/1] dt-bindings: reset: hisilicon,hi3660-reset: Drop providers and consumers from example
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=c3c46acd5be9

regards
Philipp


