Return-Path: <devicetree+bounces-113931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CB99A959A
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 03:44:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E3091F23DB5
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 01:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76CA1386B3;
	Tue, 22 Oct 2024 01:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Q1LI30X4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344AE13B592
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 01:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729561443; cv=none; b=JeYjb+Gw5ET1ceankgzyrQlevDJY/qIfROvsgF+dKIW9U3fRCF6biKdmxqglkGAyn4GnmIH5Ntekv4zGt0LVj/AbENHpeoJn72D0XPHrk6B8YLC1ptkl391YNBkeUXlyxJWhrbXH3eKC/Ncqg+uJXZYCWYixUQOeEaGL7aoHfew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729561443; c=relaxed/simple;
	bh=WC4pv3dSIjy6aP2HHVm8azLCcRMZNd04QR490tF5vMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CEiL4vYj/tyDAFKRqXSNRbB7cSRBSdEUT9IvsPyW2GcG7GOpbAGCakP2DGAQSdQ7xEAc3MjNuCxr4RXHDkDYARs5nVfKkCF4FH4TZ1ucZQPCkRhUg+8OXEXY4bXiaENd/cUJ3ccGW0y16VHmS3y/11XF1L3sHWWUL+QVuhRff+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Q1LI30X4; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=UTDYYpNu+5uqNO4xAI5XnvKJiD3mmG/Tcf4hYx/vfnU=;
	b=Q1LI30X45+Qgr3jtFeYK6aU3xs6NwUchBAKwrXeOZMWHWLRrizRxlZ+UrGDC48
	KZE7aApuErOWcnDjONSe0DAZ8upROme7lAf4ITR+CCaDtmkXEBj7Xmnh6MJCIerK
	QFYKE75cNLCQ8zYRb4XT4boVDNWP5vTDi7R1VSZQwWZ5o=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgAnxucqAxdne_aRAA--.5255S3;
	Tue, 22 Oct 2024 09:43:08 +0800 (CST)
Date: Tue, 22 Oct 2024 09:43:06 +0800
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
Subject: Re: [PATCH] ARM: dts: imx6qdl-dhcom-som: Drop bogus
 regulator-suspend-mem-microvolt
Message-ID: <ZxcDKmRJNNI855uR@dragon>
References: <20241015224436.94334-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015224436.94334-1-marex@denx.de>
X-CM-TRANSID:M88vCgAnxucqAxdne_aRAA--.5255S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVdWFUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBBaAZWcWmiDHaQAAsS

On Wed, Oct 16, 2024 at 12:44:10AM +0200, Marek Vasut wrote:
> Drop unused regulator-suspend-mem-microvolt property from PMIC regulator nodes.
> This property is not used by either U-Boot, Linux, nor is it documented in the
> DT bindings, remove it.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


