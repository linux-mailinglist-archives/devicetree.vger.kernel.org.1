Return-Path: <devicetree+bounces-19032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAF37F975B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1178280D31
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BED210FD;
	Mon, 27 Nov 2023 02:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNai8YNC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9E710F3
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:05:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C00C433C7;
	Mon, 27 Nov 2023 02:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701050752;
	bh=hZlir4Pp1PyHO+fTdT74MUNG0Xam3e4NnLxPOcfZOfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZNai8YNCNdMAxmOjhlziqbUUPO4/suxKzcCtkHiMzAGkp60at0bDDTmetjQYaQZ3/
	 CVPbeWCq84up+3nNYmNkj/PF0+wv9+8nCOEItXbMe6Ct1TJlVE0g2G0lth3EP8pkLx
	 +VnQu+nzMz2F8fJkrUUii6gXYRRxOWTSiOZVrRhFzz3n4jr3/oZZcRIR8BQSAjeaxW
	 9XacRUfmwD2D87U1FxdsA6WZu7jx7evyrtKJklklt/0wKwNqR9qDXnjEbytYl5i6pu
	 Ddctz2zqHBJkbDTmAZbnQoqs1LAjv1bvKy4bJIWqqo3pwKuej18gTo+4YQ0YSBoGR9
	 wqGbW0F/SQ2Qw==
Date: Mon, 27 Nov 2023 10:05:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe M24C32-D write-lockable
 page in DH i.MX8MP DHCOM DT
Message-ID: <20231127020546.GI87953@dragon>
References: <20231015200151.39534-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231015200151.39534-1-marex@denx.de>

On Sun, Oct 15, 2023 at 10:01:24PM +0200, Marek Vasut wrote:
> The i.MX8MP DHCOM SoM production rev.200 is populated with M24C32-D
> EEPROMs which have Additional Write lockable page at separate I2C
> address. Describe the page in DT to make it available.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!

