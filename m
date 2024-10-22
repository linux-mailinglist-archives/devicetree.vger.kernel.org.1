Return-Path: <devicetree+bounces-113932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8689A95A4
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 03:46:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15D66284675
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 01:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6BF78289;
	Tue, 22 Oct 2024 01:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="DZwrlfRA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93AB41E51D
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 01:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729561555; cv=none; b=Ktx3t/exTCVPn6gwY4XV6KbR4EcGuLsxsSzndoF58k1HyGyeDbh7r5RJWlG6B1vH/TKK0dSefLFHSR3LiOt0nsC7kFo0o8jz6S5viJRcJhg4G2F+l7MCPVU9Ll/optyJwEMMUjguupcSFBOBFVrmKOm34GYU3VEErHJLawnHFHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729561555; c=relaxed/simple;
	bh=19d9wyyfFEi+vlZvX45ifIbEhz8xb5w3+K55BckUqVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gnOD7DVZdK64nDEO8M6VnuNe4LbEY8A47b1ign3TsFHa0/3GkG6eNMQFdPilSk9ka4bcWwwEv+Ay3UpY5w0Xa1PjK/jwiT8UD/9oC/ssRS4TUxAhJpXqgPF/4hpstbZtLQvtPnv/2tyI5zdTTVqlao3D6CW9ZwnVbdfvTW2iyQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=DZwrlfRA; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=geKvtQ/lVyTfA8l7s5hPIPLWNiuFJ3MhIRwflfPBTps=;
	b=DZwrlfRAEqfhEUyiaM3D8V16Vc4CUPfiEYGpTYzuV4dBpdvX4QOfHwQKoLz2Ws
	Oc5+B9IjeZJdrxT2peIgfBYhCxgYSRamoSstKS1aedGpdGxNLb217hK9VJsbDQN0
	LsJZIf94ljJ/8CNBywuwldDhivrB2FCyCuL7Tq/utFrKY=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgAHLuyjAxdnalyVAA--.5310S3;
	Tue, 22 Oct 2024 09:45:09 +0800 (CST)
Date: Tue, 22 Oct 2024 09:45:07 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, kernel@dh-electronics.com
Subject: Re: [PATCH] ARM: dts: imx6qdl-dhcom-pdk2: Drop incorrect size-cells
 in GPIO keys
Message-ID: <ZxcDo7P5q46kciwh@dragon>
References: <20241015224505.94359-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015224505.94359-1-marex@denx.de>
X-CM-TRANSID:Ms8vCgAHLuyjAxdnalyVAA--.5310S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsrWFUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEhCAZWcXAR4IGgAAsa

On Wed, Oct 16, 2024 at 12:44:52AM +0200, Marek Vasut wrote:
> Bindings do not allow address/size-cells in GPIO keys and the GPIO keys
> is not a bus, see dtbs_check warning:
> 
> "
> arch/arm/boot/dts/nxp/imx/imx6dl-dhcom-pdk2.dtb: gpio-keys: '#address-cells', '#size-cells' do not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
> "
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


