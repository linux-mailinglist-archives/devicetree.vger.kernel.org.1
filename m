Return-Path: <devicetree+bounces-19047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BD77F97BF
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 947671C20490
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486711C32;
	Mon, 27 Nov 2023 02:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkzWP87U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE8015CF
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:58:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AEE0C433C8;
	Mon, 27 Nov 2023 02:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053925;
	bh=j5H0LJTRMh4V8/+YTldNkjS/yA/dz7Y3mH3VwumbeII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rkzWP87UwhoIL6f71RKfDXsUX8Lu94QCLST2fM6y9GzsfStlvkYCOC9Db0RigOKrZ
	 ywJji3c3njK/cI6N/lFOXFq91/TX8xdA9Q4x+2abUQtPTnaYMcR3AH4+PcNfASl2JB
	 RbmGP6t5RYfZudKCXxztbReBgWsVzsUekDyPYVBPDVuF6B3anS0o7P5GIeS21Gk92j
	 mABVM3xKwr0FcTzbloX2cBGwLojosFTkruonWm0A/LvdxlnwyTfX/e4ZVQFC8d6Opi
	 XbQzkPl6U14OHVVrgDti7QNC9ll0UfAKn/ibXiBYjIn+YAY5IZiOIIwRBbn6iVaZB9
	 iLIN9PY2kqCQQ==
Date: Mon, 27 Nov 2023 10:58:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, alexander.stein@ew.tq-group.com,
	aford@beaconembedded.com, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2] arm64: dts: imx8mp: Add NPU Node
Message-ID: <20231127025839.GU87953@dragon>
References: <20231022161911.10792-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231022161911.10792-1-aford173@gmail.com>

On Sun, Oct 22, 2023 at 11:19:10AM -0500, Adam Ford wrote:
> The NPU is based on the Vivante GC8000 and its power-domain
> is controlled my pgc_mlmix.  Since the power-domain uses
> some of these clocks, setup the clock parent and rates
> inside the power-domain, and add the NPU node.
> 
> The data sheet states the CLK_ML_AHB should be 300MHz for
> nominal, but 800MHz clock will divide down to 266 instead.
> Boards which operate in over-drive mode should update the
> clocks on their boards accordingly.  When the driver loads,
> the NPU numerates as:
> 
>  etnaviv-gpu 38500000.npu: model: GC8000, revision: 8002
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks!

