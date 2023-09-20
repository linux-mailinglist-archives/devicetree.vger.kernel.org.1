Return-Path: <devicetree+bounces-1824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5058E7A8820
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49DE51C20818
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B6E3B7A8;
	Wed, 20 Sep 2023 15:21:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20333B78C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:21:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50D22C433C8;
	Wed, 20 Sep 2023 15:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695223291;
	bh=RlFtS1LZt+TfkgAiVmOhKWLTBUjplc5C4iwhyAGVwmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UNIs6Iz0p3PNH3Ta2+J0485gLZ0EPqfgZGYHPNWnvzyZYO5kklh7XtoEx5nfJpDOp
	 QGIEMN9QO01iBBl2WJjB9EOrokLMO7TXIA/jsAETcke0zzXctr7OEAZvvyGBR8+SBk
	 xYM2tskLuIaeAT1zFGSon7htrwZMR9eWAkX1j4PbVUcZ9A1FcR5CyvdUKtmG0BZPV5
	 cfH3MzefehFusifSri9wsZzyOzUJFG3/HkCo7xnn7sGBev15jrsoruJDcxB/Zr9VRJ
	 Mgd+928pFdbbviR4hJbhPHe6vDcWUm/GUIIkmU7J9VC2lJf1S6Pouc8yhBs+sR60MO
	 VqomHihGIFq7A==
Date: Wed, 20 Sep 2023 17:21:25 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] arm64: dts: freescale: tqma9352: Fix gpio hog
Message-ID: <20230920152125.GH11740@T480>
References: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
 <20230811085401.3856778-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811085401.3856778-2-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Aug 11, 2023 at 10:53:59AM +0200, Alexander Stein wrote:
> The PMIC IRQ line is attached to GPIO1_IO03, as indicated by pca9451grp
> pinctrl config.
> 
> Fixes: c982ecfa7992a ("arm64: dts: freescale: add initial device tree for MBa93xxLA SBC board")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

