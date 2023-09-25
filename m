Return-Path: <devicetree+bounces-2898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB9E7ACD8D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0F06BB20927
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEED8A40;
	Mon, 25 Sep 2023 01:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03FFA2A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:19:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC18CC433C7;
	Mon, 25 Sep 2023 01:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695604798;
	bh=6iyqp4tpdHXYdb2d70OXX1cJh1mAAoui3WMVQXpq07o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rMtaMrVHub4Jk4rNBGvh6mYXx9r4WOdsgr0ut6sEO6xTocWuSrYG61BEwy+YgX1EO
	 ZpQXYgjXvPB3xzulb3DwEJEHUssZfiRVRQg8W65fwwqtL7Ygl/jPKgOekwRWzNvNz8
	 doY5pFhzrVReQEBshE7cMpczgfcR46viMWmN/yNvLULMwOlEZ+J9ocZVAd4xkrEq41
	 sR4U2cndqsF9HnH/V3XDumgYrHkScL+ZTrbVe48oTneqUPxRdM0BBRG3ijfvfxAFqj
	 yP5yNtkBgr3DukwIjfNDysOFJ7hfKOb6aK8Jreu9V6NMNZ7f81ajSAorhYYsj1kmVA
	 u3Kdl4iVk/daw==
Date: Mon, 25 Sep 2023 09:19:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Simplify USB C on DH i.MX8M Plus
 DHCOM PDK3
Message-ID: <20230925011946.GF7231@dragon>
References: <20230831195509.196883-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831195509.196883-1-marex@denx.de>

On Thu, Aug 31, 2023 at 09:55:09PM +0200, Marek Vasut wrote:
> Remove the connector as well as all the links and only connect the
> PTN5150 with xHCI controller. This is sufficient to implement the
> role switching.
> 
> Furthermore, this makes resume work without hanging. Without this
> patch, the platform would hang on resume of 'connector'.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!

