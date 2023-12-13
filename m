Return-Path: <devicetree+bounces-24675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF15D810D7D
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A3FE1F210D8
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 09:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC58F20329;
	Wed, 13 Dec 2023 09:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHA7OgSx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1591EB5A
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 09:31:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD4DC433C9;
	Wed, 13 Dec 2023 09:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702459904;
	bh=OKprM+aHu/jySbasH7HjZ8dwjDD56azbPOQ3iTmiTy8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OHA7OgSxTtE0ZSRPd6QYBOmmci2ModnKa9W7elAFi7SDdLYo3pAVBIw5SncLta2Ku
	 yXytO60Thw6GaFZMJtJYtTBHP6+LS9FUl3UkLYhZHCB6EbpiaKRE8uFvqGjW6jJklZ
	 halGRl9Foz7MJoWCg8wzCnhL7AEWf1cFCtEDh2jVltQIlkw+xyV83URf9etnvs1dNW
	 1BMsUTmgvR20PIvOed2w5SIHSPtUE6Ygw/NLS8rlPqUWutrxM2GJeTMgUMH53C4/Pg
	 wkfug32WYJwxUtkuD7rPcLisgZ9eBvUQnDjQVaPMRFnW3EoPpToph17FIIaGQwoIVy
	 iMgxfqOe3w47A==
Date: Wed, 13 Dec 2023 17:31:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Frieder Schrempf <frieder@fris.de>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Marek Vasut <marex@denx.de>, NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH v3 00/14] arm64: dts: imx8mm-kontron: DT updates
Message-ID: <20231213093134.GN270430@dragon>
References: <20231206144201.46911-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206144201.46911-1-frieder@fris.de>

On Wed, Dec 06, 2023 at 03:41:03PM +0100, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
...
>  arch/arm64/boot/dts/freescale/Makefile        |   4 +
>  .../dts/freescale/imx8mm-kontron-bl-osm-s.dts | 295 +++------
>  .../boot/dts/freescale/imx8mm-kontron-bl.dts  | 198 +++++-
>  .../boot/dts/freescale/imx8mm-kontron-dl.dtso | 201 +++++++
>  .../dts/freescale/imx8mm-kontron-osm-s.dtsi   | 567 +++++++++++++++++-
>  .../boot/dts/freescale/imx8mm-kontron-sl.dtsi |   4 +-
>  6 files changed, 1035 insertions(+), 234 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso

A couple of things:

- I have to use 'git am -3' apply some of the patches.  Could you rebase
  the series on imx/dt64 branch?

- There are a few DTC warnings that need to be addressed.

../arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dts:235.34-238.7: Warning (graph_endpoint): /soc@0/bus@30800000/i2c@30a40000/bridge@2c/ports/port@0/endpoint: graph connection to node '/soc@0/bus@32c00000/dsi@32e10000/ports/port@1/endpoint' is not bidirectional

arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtbo: Warning (graph_port): /fragment@3: graph port node name should be 'port'
../arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso:61.17-63.3: Warning (graph_endpoint): /fragment@3/__overlay__: graph endpoint node name should be 'endpoint'

Shawn

