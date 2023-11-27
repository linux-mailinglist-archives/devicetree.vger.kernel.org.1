Return-Path: <devicetree+bounces-19041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 955347F979A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F2BAB20A17
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61774139F;
	Mon, 27 Nov 2023 02:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZ1vrT6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DB2EBC
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2667C433C7;
	Mon, 27 Nov 2023 02:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053168;
	bh=5pYWV+qlsmq/a7qcP5+Z6cHp6Ys/mLvo7ratKBw6Ohg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sZ1vrT6QWY7Gi6BaNYuoKaecvSs1WaBDtoXSBgLRkih0NGKyK/hmgps+HWVwNBMj5
	 lACcPCLv70S4sJ5A/bMm70ONx0jH/ReyJBOz+lZJJCLJTYXzcFtCmZWzgq045iFMdW
	 W2mT0z4k5kWm7dtK6x569QpzvW2FGdVAN3IkZrz1cRRSW769OTUoR0BCU0wgssTI6b
	 +PHAx2W5C5CPOfK3mMYdSplwpPXG4KHarmynd1ddtCtoeG1fgVFaUi8v0Hu+nMHYKr
	 kDgTdTIA0afSBorT9RskRc5Qki1hL9y93QtUkfcDdzbvO8POMtk36/GcAhucHQnYrG
	 t5kealCl92tRQ==
Date: Mon, 27 Nov 2023 10:46:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux@ew.tq-group.com,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dt: imx93: tqma9352-mba93xxla: Fix LPUART2
 pad config
Message-ID: <20231127024602.GP87953@dragon>
References: <20231019063217.1913970-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019063217.1913970-1-alexander.stein@ew.tq-group.com>

On Thu, Oct 19, 2023 at 08:32:17AM +0200, Alexander Stein wrote:
> LPUART2_RTS# has an external pull-down, so do not enable the internal
> pull-up at the same time, use a pull-down instead.
> 
> Fixes: c982ecfa7992a ("arm64: dts: freescale: add initial device tree for MBa93xxLA SBC board")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

