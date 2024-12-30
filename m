Return-Path: <devicetree+bounces-134656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 174BD9FE26A
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA9C51612ED
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B76615696E;
	Mon, 30 Dec 2024 04:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="GxUP7Sio"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D102AE8D;
	Mon, 30 Dec 2024 04:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735533324; cv=none; b=cRM0oSRK25SqIqR1RThuYzCd+HYNxeAnGpcNYTtjqtKmaGFQOai9yLNiQ9Cvmgav8jxjxCoxeC7GxuOKxzfwsPLVyWoX2cV6vSW644lSr+sxt23Vaw8orpVNNIWh6434hLDtOgG2nF/RxkxSrQcpPT5dJiaAmUVZqZX5QOHZeNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735533324; c=relaxed/simple;
	bh=yvcTamdxCACSWzdxleHg4mAxBkSzM6t3T390sukGiI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EkjcfLFKYqES5LDiJT1POwHXFI+tXv9IGFlfz0n/2q+R5GbnZigKKWrNF+Moku7DP2ktEWqwkFs8U7lmY7owpaYv3YNZeueZaTfvdGb19fAB1vHZq20xX/6ZxqBBVCDS2A4np2TICfsG/6EJmlqFIcxU9AYzRd37pO3TlLXKufA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=GxUP7Sio; arc=none smtp.client-ip=1.95.21.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=SHCKVh2AbwLhmjzcOxs27mhHQlsL+IhUrIYG091MgwE=;
	b=GxUP7SioHjonTfr4b20xM8MrFUAdAUExWHwq+2lBAjygliCst890X2bkyHZ6gZ
	OJ8NQ5EOpkjNNATNNnf4VH7HMxBNVWKcblAoATr83uhLEOxePcRMC6snXk3PdGO0
	IXHRwQO+GgzKifBvpeZn8+FCWjtRZEqQLuEOrAmShqi30=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgDnH0bpInJn7NkDBg--.18117S3;
	Mon, 30 Dec 2024 12:34:51 +0800 (CST)
Date: Mon, 30 Dec 2024 12:34:49 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Robin Gong <yibin.gong@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev, joy.zou@nxp.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 5/5] arm64: dts: imx93: add pca9452 support
Message-ID: <Z3Ii6WzpgAlfXn5q@dragon>
References: <20241205-pca9450-v1-0-aab448b74e78@nxp.com>
 <20241205-pca9450-v1-5-aab448b74e78@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-pca9450-v1-5-aab448b74e78@nxp.com>
X-CM-TRANSID:Mc8vCgDnH0bpInJn7NkDBg--.18117S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsk9NUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEh-FZWdyDiVSFQAAsU

On Thu, Dec 05, 2024 at 11:51:13AM -0500, Frank Li wrote:
> From: Joy Zou <joy.zou@nxp.com>
> 
> Support pca9452 on imx93-14x14-evk.
> 
> Signed-off-by: Joy Zou <joy.zou@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thanks!


