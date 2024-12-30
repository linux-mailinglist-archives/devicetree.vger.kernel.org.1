Return-Path: <devicetree+bounces-134685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3489FE3B7
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 683A31610FD
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5321A0718;
	Mon, 30 Dec 2024 08:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="MPikmNnp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F139C817;
	Mon, 30 Dec 2024 08:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735547593; cv=none; b=omy/oFQVpXKWHGUBJ52U42zrwL/5AhBeGK8TMiCiEp7hYz04sVVXEW7sTLQIk1OMRQYBWy/avG6YyVn6tIke2pN3v7BawGzsTPY/4piZp0r12I0uA5sahjjvJBkNPMX2XT8QEZiXC9pT4LhUveNOC8cu/hpDq0Wc3m/4WCLXfBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735547593; c=relaxed/simple;
	bh=YT9lnLedSNkO2SlS1J8/pyvwTZaB9t5DYRUomBQDWSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pl6ho33xh1j4pICDbyYam5pNle1EpocoLOa9f/PUiitZE3SpmarsBDpl7YKX+/q3BOoWWnzRU5DJZFipYwT8li8X7vVEeTcNu6VswF15EoOWF0v8ksKcBVADVCOuxPg7eWkFRhF0GIhUfUYU4tQ3Sj6TMXCmhatEZ1D7B71MEPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=MPikmNnp; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=BLeO9F5Q+Njficg3yc+UmSZTCyWn6/lhNy/KSLHUNig=;
	b=MPikmNnp9SQzEMyfR06wJUthMESw9N8wNjlTfzzXzldu38dlKjGeLjtI4HfLg0
	wg3iDDSUIGnuo/7fC6LiIJte8pX4hyrumvIOD5BCSVsHhg79cuiJi3Ao7fGAAevv
	Wm3epvDpEhXFNPBh1wL/Bbj52q9/SmNpc35QyuvLm0Y0Q=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCnD9aaWnJnUNX4BQ--.60363S3;
	Mon, 30 Dec 2024 16:32:28 +0800 (CST)
Date: Mon, 30 Dec 2024 16:32:26 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v2 0/3] arm64: dts: freescale: Enable wdog_b trigger pmic
 reset for i.MX93
Message-ID: <Z3JamnfpYpHO+UM1@dragon>
References: <20241224-imx93-wdog-v2-0-622709cb63f6@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241224-imx93-wdog-v2-0-622709cb63f6@nxp.com>
X-CM-TRANSID:M88vCgCnD9aaWnJnUNX4BQ--.60363S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUaknYUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEg7FZWdyVMgVHgAAs+

On Tue, Dec 24, 2024 at 08:33:35PM +0800, Peng Fan (OSS) wrote:
> Peng Fan (3):
>       arm64: dts: freescale: imx93-11x11-evk: enable fsl,ext-reset-output for wdog3
>       arm64: dts: freescale: imx93-14x14-evk: enable fsl,ext-reset-output for wdog3
>       arm64: dts: freescale: imx93-9x9-qsb: enable fsl,ext-reset-output for wdog3

Applied all, thanks!


