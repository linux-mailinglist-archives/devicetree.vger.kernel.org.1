Return-Path: <devicetree+bounces-22021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E72A48063A5
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:50:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AD591F2170E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 00:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED84650;
	Wed,  6 Dec 2023 00:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GovoiYyt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A1D62A
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:50:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48DFFC433C7;
	Wed,  6 Dec 2023 00:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701823839;
	bh=6uGR7M2ZAev8TltVwikb3TtSRdu6K6qqXKUO6nna42k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GovoiYytNJvMxezHyGg/MMwsKaxLbxyKHqjxdrJco4KwmwVUQ5/8x3cGnvMXJdM+m
	 KxOrYOrh2mgbQbjltp/osE0XYD+SVg7JdMo/OxpkNkrWfGvK+wasCF6ZUpdCkBNQSc
	 aoqLwFwLAaIoPo7duMvDQGh8sG76cQ3LWQdKuR3tMqx70OHXHQcF1DwR1JZ6yokAMi
	 0EGGFN4wMQZcR187hhwj76MbezMTZrb8Zaw0RquipCdHHXz4EfxyJ8Ti4Vh+sfNPg6
	 1p/u+igjfZ/vQiRnDus0h+7pL2b1KAGz0fucTPLc2zJfCuBnm1Os38qN0IAmoVgg6+
	 nCdvQUnOPfrCQ==
Date: Wed, 6 Dec 2023 08:50:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: imx8mn-var-som-symphony: add vcc supply
 for PCA9534
Message-ID: <20231206005033.GK236001@dragon>
References: <20231107155040.1644169-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231107155040.1644169-1-hugo@hugovil.com>

On Tue, Nov 07, 2023 at 10:50:40AM -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> The following warning is shown when probing device:
> 
>     pca953x 1-0020: supply vcc not found, using dummy regulator
> 
> Define a new fixed 3.3v regulator for carrier board peripherals,
> enabled by mosfet switch Q2 after the SOM_3V3 supply rises (no software
> control).
> 
> Add this new regulator as vcc supply to the PCA9534 to silence the warning.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Applied, thanks!

