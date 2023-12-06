Return-Path: <devicetree+bounces-22055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3041806460
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45B3AB20F3F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9FA20F9;
	Wed,  6 Dec 2023 01:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7cfRXrY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06D820F5
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:48:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA9DC433C8;
	Wed,  6 Dec 2023 01:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701827288;
	bh=aveWPcmiMSYTLWtxgppugRwbwEVebRAdbAJo1waV97c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K7cfRXrYgDXLXiBhlMsGo0raQgTfNSb7goYEvNKSi2Qz0hAujY2zZj4C6Grw5zcQs
	 /T3p7ZJuv/mctwQcxxl7ZH4nxql51YFsfgo4Yo6gFqRRHO+pYTr4jk2I78DArC1Xpx
	 jAPHbNi0jq4eQP3iL7wrzi0mEF0jwQWgroRynZ6ZS519FolU/pSHX+CBiFBtmv2Zf2
	 ZhBSqe//RjwKnD9ro4YlMTdYAqsyK4Sw7Gbz+ro0iOzK2VMA8PHPOTvv0i4QB6ocaG
	 XBqrbzOEi054OzGfF3273iNBuO8qa8bijj/1q0qVr/7QwizUQ+VKo8Dugjhxpmi57p
	 gwkG1LjwwFVIg==
Date: Wed, 6 Dec 2023 09:48:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Fabio Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>,
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
Message-ID: <20231206014802.GC236001@dragon>
References: <20231123104812.13906-1-francesco@dolcini.it>
 <CAOMZO5A53XFbRBp6QXWoDVBr=J347_riO1wWgPLxczT3JcuwQA@mail.gmail.com>
 <ZV8v5zd8G6f7BdN9@francesco-nb.int.toradex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZV8v5zd8G6f7BdN9@francesco-nb.int.toradex.com>

On Thu, Nov 23, 2023 at 11:56:39AM +0100, Francesco Dolcini wrote:
> Hello Fabio,
> 
> On Thu, Nov 23, 2023 at 07:52:27AM -0300, Fabio Estevam wrote:
> > On Thu, Nov 23, 2023 at 7:48 AM Francesco Dolcini <francesco@dolcini.it> wrote:
> > >
> > > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > >
> > > Make sure that the wifi regulator is always on. The wifi driver itself
> > > puts the wifi module into suspend mode. If we cut the power the driver
> > > will crash when resuming from suspend.
> > >
> > > Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > > Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> > 
> > I think this one deserves a Fixes tag.
> 
> Fixes: ad0de4ceb706 ("arm64: dts: freescale: add initial apalis imx8 aka quadmax module support")
> 
> Shawn, I assume you could just pick the Fixes tag without me sending a
> v2, if you disagree just speak-up.

Applied with the Fixes tag, thanks!

