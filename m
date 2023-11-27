Return-Path: <devicetree+bounces-19035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 709E17F977B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E4D42B20A07
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8630D111E;
	Mon, 27 Nov 2023 02:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6cokska"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FF010F3
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:25:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A818C433C7;
	Mon, 27 Nov 2023 02:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701051957;
	bh=Bt7wGDf+MKeKyTQQG6ztkah8JZCcupDC5Yotznboofo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g6cokskaeD1LGOsC+kEu7hB6BUW7oemwTmQb+WuC/pnMarZHvFyiiJ4dviHKy4uUy
	 HV2033lzJh/5GHFSIOCEGjlIww5zszcFeH3OX2utbSEeDoauM7hWND05qScbY+vmIe
	 86jGqc+INt0Bo1bD93uagQU2CyJt7QYoQAl/54GBFVj/rPmXeVHaZDWdv2MyQOYsmR
	 CFRkCQE9YnedgDlQRBUqHBWiDlDCmEdDR6BGppmrmgJfgzD9ojQhMEvm7HxIYdSxO3
	 iQHCAPwq+CBnKRAmcT3sydPMUS3gfRiM++MBFOkSlcIcnpYMgpftBDRtfvs/JqJecU
	 0PB0m8PPpZdoA==
Date: Mon, 27 Nov 2023 10:25:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: haibo.chen@nxp.com
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: imx93-11x11-evk: set SION for cmd and
 data pad of USDHC
Message-ID: <20231127022553.GK87953@dragon>
References: <20231017065048.1304294-1-haibo.chen@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017065048.1304294-1-haibo.chen@nxp.com>

On Tue, Oct 17, 2023 at 02:50:46PM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> imx93 pad integrate has one issue, refer to ERR052021:
> 
> ERR052021 uSDHC: Sometimes uSDHC does not work under VDD_SOC low
> 		 drive mode and nominal mode
> Description:
> uSDHC PADs have one integration issue.
> When CMD/DATA lines direction change from output to input, uSDHC
> controller begin sampling, the integration issue will make input
> enable signal from uSDHC propagated to the PAD with a long delay,
> thus the new input value on the pad comes to uSDHC lately. The
> uSDHC sampled the old input value and the sampling result is wrong.
> 
> Workaround:
> Set uSDHC CMD/DATA PADs iomux register SION bit to 1, then PADs will
> propagate input to uSDHC with no delay, so correct value is sampled.
> 
> This issue will wrongly trigger the start bit when sample the USDHC
> command response, cause the USDHC trigger command CRC/index/endbit
> error, which will finally impact the tuning pass window, espically
> will impact the standard tuning logic, and can't find a correct delay
> cell to get the best timing.
> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied all, thanks!

