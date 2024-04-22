Return-Path: <devicetree+bounces-61300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB258AC375
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 06:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 029C91C20BA8
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 04:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591DCF9EC;
	Mon, 22 Apr 2024 04:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="kooyg5PY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621B92F2D
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 04:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713760472; cv=none; b=bC8AQa78gSt4m0VD55deZ3mfqKSN1gIjGU3QhV4bWwS8eEFW2m9Fv0DLLHGuxVFp7FLakDZyvtnaWH7FW2yZlMC6oOBag832zCQ+re+t7cjLboKoqviMI2NwpFEw7IvyortXOOAQTcgUGjuHuQksZydIRZ0zNwb85uDDSP+w/oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713760472; c=relaxed/simple;
	bh=N5wctkp1LXxg8d036Og4usRfLHHyKI9MDODpH1i/LC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P7FpjJ2WkB7yarr57MIpTWi4Fo0/6iXzIOkK5uRe/QFAtIk9uoWvXhSY3LNVUbdGEfyzNwJFM87Mj12rRzF0V2Ky/G6lH/HRvH4GVdNNFfcRTBfB7oSiS4VaO7Z2mmwke59Pv+Hns/eaJyexLQSdWDS2pl1lCLtS8XoHY+gu3Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=kooyg5PY; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=VOt5666oV/l7m+pxjgKi1x/9GVfL1fw5d3LO2qMLxv8=;
	b=kooyg5PYD0IkRLGN0Fdo8W5G7t9oyrOxIvrlmMkVDIUfXaUsUf98pitpHEQ2Sn
	CocD0v8usz4iNz2Epw1OHlJbS145va1pttgDfo9e3gu7+cSlcmHNcnoPmDV1dsht
	lCoTcGsFcG/s7/nHu7Hzg/PvTNoybmT23/FXd8Mg7jA60=
Received: from dragon (unknown [223.68.79.243])
	by smtp1 (Coremail) with SMTP id ClUQrADXP0On6CVmgSQsAw--.42708S3;
	Mon, 22 Apr 2024 12:33:44 +0800 (CST)
Date: Mon, 22 Apr 2024 12:33:42 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: imx8mp: Fix assigned-clocks for second CSI2
Message-ID: <ZiXopqGEpaX/Zoxd@dragon>
References: <20240405202214.46251-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405202214.46251-1-marex@denx.de>
X-CM-TRANSID:ClUQrADXP0On6CVmgSQsAw--.42708S3
X-Coremail-Antispam: 1Uf129KBjvdXoWruFWfZw15uryxZr4UKw4xXrb_yoWftwb_Xa
	4UXF12k3ZYq34fCanrCr1agrn2kFy8Xr98u3WIvF1fKr1DuFW5CFyrCF1Svr1UJ34aqw4k
	Xa48ZaykCr1F9jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8EAp5UUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDwjIZVnxcqAfCwAAsE

On Fri, Apr 05, 2024 at 10:21:53PM +0200, Marek Vasut wrote:
> The first CSI2 pixel clock are supplied from IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT,
> the second CSI2 pixel clock are supplied from IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT,
> both clock are supplied from SYS_PLL2 and configured using assigned-clock DT
> properties. Each CSI2 DT node configures its IMX8MP_CLK_MEDIA_CAMn_PIX_ROOT
> clock. This used to be the case until likely a copy-paste error in commit
> f78835d1e616 ("arm64: dts: imx8mp: reparent MEDIA_MIPI_PHY1_REF to CLK_24M")
> which changed the second CSI2 node to configure IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT
> using its assigned-clocks property.
> 
> Fix the second CSI2 assigned-clock property back to the original correct
> IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT .
> 
> Fixes: f78835d1e616 ("arm64: dts: imx8mp: reparent MEDIA_MIPI_PHY1_REF to CLK_24M")
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


