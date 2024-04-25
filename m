Return-Path: <devicetree+bounces-62575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5588B1AF6
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 08:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B4E61C216F7
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 06:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A62940851;
	Thu, 25 Apr 2024 06:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="K1ITDqaB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6C93FE5D
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 06:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714026321; cv=none; b=OgcJTW3qAZgcbokhu/cLoUytqjJ+aa/cS9ffn90VoC2A3DbUXthB5NYZb64ScOJGPZ0aRxf9Ya7ErsuL5g2aspbFeJDaSgZDmOMhfvxpRxuAtLCY9xhFjtq0IhLNdourI8iThX9IjpByoz+0IfOYuX8GoGWVLZckHASTjuQ9tTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714026321; c=relaxed/simple;
	bh=+KdhJr1P8PvWkYwBV2ck5l3jTNNmFw8B+PBQUUA4d1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BCBpFjyxJjOlUTjYZlEMZhbzQwex81Zx9AMLwoAsUXtVbq6I0G3yVQ7ObsJznNihLLVQfl6New/rjdn9eWrNnZmrQr7D+uye61F8gVethqJqYFWWkqWkc/tVMuHCFpKzlgD0Bb54rfOcZVper1wkZTRS7Uzeyjd6M59ZNFddhOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=K1ITDqaB; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=+vDVzeVrZ2eMn1LXWqDrH0dDuL+sbBGXy1PppvgvXxY=;
	b=K1ITDqaBC4/NO4bw+s3/dWcKofyc64dDUTeXP2mJRM+Fo44nR9W8HOiZtrNn+s
	6K+XHZcfs6WR7neUlZlVfTvbl2lwBRGXP/oI0gf+uXIN++U1bRcATlT87S++b0s4
	xknkuCTN0rcaZKAgHAZEMCCvFrVBftfiTZdfoBAjrJ924=
Received: from dragon (unknown [223.68.79.243])
	by smtp1 (Coremail) with SMTP id ClUQrAA3n_sd9ylm0zdsAw--.40856S3;
	Thu, 25 Apr 2024 14:24:30 +0800 (CST)
Date: Thu, 25 Apr 2024 14:24:28 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Peng Fan <peng.fan@nxp.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH v3] arm64: dts: imx8mp: Align both CSI2 pixel clock
Message-ID: <Zin3HAKVtKsTc9li@dragon>
References: <20240417114231.7044-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240417114231.7044-1-marex@denx.de>
X-CM-TRANSID:ClUQrAA3n_sd9ylm0zdsAw--.40856S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU2EfOUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDR7LZVszXcHRqQAAsx

On Wed, Apr 17, 2024 at 01:42:06PM +0200, Marek Vasut wrote:
> Configure both CSI2 clock-frequency and assigned-clock-rates
> the same way. There does not seem to be any reason for keeping
> the two CSI2 pixel clock set to different frequencies.
> 
> This also reduces first CSI2 clock from overdrive mode
> frequency which is 500 MHz down below the regular mode
> frequency of 400 MHz.
> 
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


