Return-Path: <devicetree+bounces-22056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6785806465
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 482C91F212ED
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D7E3FE6;
	Wed,  6 Dec 2023 01:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIdpcWOl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544DD20E0
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24DC2C433C7;
	Wed,  6 Dec 2023 01:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701827466;
	bh=7jRfIVx1+60KM935PoKkTUIodP1pufhXRHS5Rlp+FW0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WIdpcWOllhXxTR/G5ouwXAyVXNHWhwo0A19JvSVSFtmLnXebORW/Km8I20VwTxb6I
	 z3AVduKX6EvBk6Peq1VtWm0TK6kdHQnUiC4puaQJZuRb9lUx+rZmmqFw8syiDGtD7h
	 ZY7UH2xBGGKCYIrlHOWgYgJKaytveZIjbPvfsuWRbG4qVsV/5KJ2pBgOp+pJCo1ZMi
	 bg75GlBRgBunXi4VYcALBDbSlCF1WmCxlf3ob4HomQm0OOLHsUEpgsk2Kx+fsvnThP
	 FP6vk+xtHpcEt7C90SNvUnXs42YVNoAplCjnU1hQ15420t8CvWW1NYsnczZr726nHE
	 DhOWMO6DSuMog==
Date: Wed, 6 Dec 2023 09:51:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Vladimir Zapolskiy <vz@mleia.com>, Li Yang <leoyang.li@nxp.com>,
	Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: nxp: minor whitespace cleanup around '='
Message-ID: <20231206015100.GD236001@dragon>
References: <20231124095104.58772-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231124095104.58772-1-krzysztof.kozlowski@linaro.org>

On Fri, Nov 24, 2023 at 10:51:03AM +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before and after '='
> sign.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied both, thanks!

