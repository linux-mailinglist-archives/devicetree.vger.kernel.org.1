Return-Path: <devicetree+bounces-128532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1209E8F44
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:52:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C49B18869FF
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00231218586;
	Mon,  9 Dec 2024 09:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="kXQPbSzn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4DA4217724
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 09:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733737859; cv=none; b=d5DPMGd9ovyJNDmQmRXuWuH4/aQeYEChCtFpkN0qa3iZDSpEMKiCcHZI/+SG/vZx60y01QJBpJBy1goWHxF20dOqBkrQNopojkP5XfhH/qyEJokBjsClq64SKSnvgiqtBA8yPF7se3nM1Og27t/6kZ4o+CjvJaGEVbHXyTHcsog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733737859; c=relaxed/simple;
	bh=3NPSA3+8fscJ2FyuYaclk2rGZQ3JVTTNETwfOklgM3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HtX8SbXBMz6budPfH6+SvEbqLlpBsytFaHX/rkp+bB0wpa1y5wK9plXkoB6+V4OzWsgdrovfNIWcC9rEecjchByH/9hcneAXW7d2gCF5dQYTiCRaOYwd+7g+Wn+55r0S34z8mF4kc1Rx81HuPgvc2GYRkIfe33eIKd0o75NH8to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=kXQPbSzn; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=ChAIwGV7ZFkveVH5BCfEgrQPKa+agmYwut0/xNKhFek=;
	b=kXQPbSzn+GbtajNR9BYQgkCkT46oSgqEAk3vHk2xh08y8sMDwLyTPHvGVH86JT
	90W2P/YNcISXT49tA0P8H+N7ydzUSjU1PgY33KB8wfr8u29gSsqSif+/UCaq5IZs
	88dVcX/NQ014JwgTSZPM5oBizvpZiAg4d06b2H8j84V0s=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgB3NtRBvVZnJDOOBA--.47668S3;
	Mon, 09 Dec 2024 17:49:55 +0800 (CST)
Date: Mon, 9 Dec 2024 17:49:52 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] MAINTAINERS: Update entry for DH electronics DHSOM SoMs
 and boards
Message-ID: <Z1a9QGfVsSzc81ZL@dragon>
References: <20241111113524.10727-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241111113524.10727-1-marex@denx.de>
X-CM-TRANSID:Ms8vCgB3NtRBvVZnJDOOBA--.47668S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUaznQUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRWwZWdWsiw1LwAAs8

On Mon, Nov 11, 2024 at 12:34:21PM +0100, Marek Vasut wrote:
> Update the MAINTAINERS entry to cover all DH electronics DHSOM
> SoMs and boards. The DHSOM is the name which covers all modules,
> DHCOM is the SODIMM seated SoM, DHCOR is the solder on module.
> Use glob pattern to match on every DT file which contains either
> of those three module substrings in lowercase.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


