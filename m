Return-Path: <devicetree+bounces-19955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CFF7FD602
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA2161C20FCE
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 11:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9329F1D531;
	Wed, 29 Nov 2023 11:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2C37D65
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:50:37 -0800 (PST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r8J5L-0006oE-CA; Wed, 29 Nov 2023 12:50:31 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231122224352.2808435-1-robh@kernel.org>
References: <20231122224352.2808435-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: reset: qcom: drop unneeded quotes
Message-Id: <170125863135.1536676.5303645798936084184.b4-ty@pengutronix.de>
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

On Wed, 22 Nov 2023 15:43:52 -0700, Rob Herring wrote:
> Drop unneeded quotes over simple string values to fix a soon to be
> enabled yamllint warning:
> 
>   [error] string value is redundantly quoted with any quotes (quoted-strings)
> 
> 

Applied to reset/next, thanks!

[1/1] dt-bindings: reset: qcom: drop unneeded quotes
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=e530fc87259b

regards
Philipp


