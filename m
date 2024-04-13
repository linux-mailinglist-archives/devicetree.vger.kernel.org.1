Return-Path: <devicetree+bounces-58900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A67B8A3B3D
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 08:06:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D90E6284200
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 06:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB0D1CABD;
	Sat, 13 Apr 2024 06:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arWYMHYp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA18182BB
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 06:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712988400; cv=none; b=gt8js2XbIP0NVTDZsysHWtK7h6FCxB+2AQa37wFJ73+FYccJwofXb5CX+4ZzNH1Lt2NNE68XXGFJHUxVvLAbTvO8qvoqe3TvUQMtlfmFuMx2d0+nOOCzJp0h6gCX+RrDG+5DCx9AcBk3sv2AvipaXklCWw2Gp2fRP9QY8RUX+cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712988400; c=relaxed/simple;
	bh=/zX5Xm2L8b+VZra1dDyJSa/ceyZK2JOrdzFqnq8r2HI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=aQnTm7N4B1V0KTwS3vcMauLMRg84aJa8Mv3Hk7K6lNoIi3hf5wQp/gsMmxQzmrrfPxunb4ouv+RBGwtPeiaFmFlimYKOHYiI0d3jKdQnmmqcYJEUoD3ZTfD03pBPUh2Zyhf7w6eZbqWEkYmx2hnmEsYcECdBgKYy28NvI1W4Bck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arWYMHYp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80F6EC2BD11;
	Sat, 13 Apr 2024 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712988399;
	bh=/zX5Xm2L8b+VZra1dDyJSa/ceyZK2JOrdzFqnq8r2HI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=arWYMHYpTj6Yp1ZCDS0ClfxXkjXkBhrfIuSxX3lORccNe1FA37EE0jEj2J3OMPC/P
	 2xzgZ/1AX5Wo+pbH1K92h3fqm4DBAGswUfvgT1ZGsRowdkVqMyax89RlgLj4XgvceL
	 PFpk/meyNfyYLWgQr1KFfA1dbtyPrHzepEgj8bSv7zogFBzzzu/OHsnj4aSb6GgMVh
	 2I6J//Ddua5dWW75BzMUXG1C22IDScBhScN9GF/aqGW4yWQKnEMnldAKkOxHIdEBtH
	 c/iNVI2ql/q7yTEhmhFL97kabOtChMZ+LroS0Ae5pliUYsWFN9uj5kaxknq5+o9wHb
	 yYhiih+vMpa/A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>
Cc: devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Michal Tomek <mtdev79b@gmail.com>, Damien Le Moal <dlemoal@kernel.org>, 
 Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240412125818.17052-1-cassel@kernel.org>
References: <20240412125818.17052-1-cassel@kernel.org>
Subject: Re: [PATCH v2 0/2] rockchip pcie3-phy separate refclk support
Message-Id: <171298839307.603171.17043839494902342365.b4-ty@kernel.org>
Date: Sat, 13 Apr 2024 11:36:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Fri, 12 Apr 2024 14:58:14 +0200, Niklas Cassel wrote:
> This series is based on: linux-phy phy/next
> 
> Hello all,
> 
> The rockchip,pcie3-phy PHY in rk3588 is by default configured to run in
> "common reference clock" mode. (Which is a sensible default, as the most
> commonly used clock configuration is "common reference clock".)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
      commit: 46492d10067660785a09db4ce9244545126a17b8
[2/2] phy: rockchip-snps-pcie3: add support for rockchip,rx-common-refclk-mode
      commit: a1fe1eca0d8be69ccc1f3d615e5a529df1c82e66

Best regards,
-- 
~Vinod



