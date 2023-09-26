Return-Path: <devicetree+bounces-3435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3313A7AED77
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DF1982814BC
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6172628682;
	Tue, 26 Sep 2023 12:59:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED2C2770B;
	Tue, 26 Sep 2023 12:59:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A916FC433C8;
	Tue, 26 Sep 2023 12:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733160;
	bh=z8o4JuRpxvSYlgwJN2Va3OBMKYGSPZHqX6/S5fP8NVg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WWYQDLeU8GmAQQVkF0jWCN5ImPSm72s5bYbooHrHAZ6QhmFNvtcAXswFcoN2rpYA9
	 QDGYhFnniYjMx/UqdEVwM+KElywaxLDPXcoElwHkJqPqKZ+FATW3/UpyYj5Oh0uPyU
	 i1uhfp5KCnWTIOiccDCUdeesoMMYqrq4PSri1rD7oLfGOSLAwtkojehZqfTL8dYTKa
	 MuyY/Gjb3IrhpqCTyPeh0MTZQSE8NOSTB1x6MrFoX8sRwdFzQ0qfBueh4iCsF/FOjo
	 2EUtGe9OYuxfvikRwNZjisvWp133Nv8ceG6tmeXSvlEMmXrgQdebDIvo7eZmd1Wn7J
	 dHWfDPFlGBr8g==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
 Serge Semin <fancer.lancer@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20230925212614.1974243-1-robh@kernel.org>
References: <20230925212614.1974243-1-robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: Make "additionalProperties: true"
 explicit
Message-Id: <169573315641.2623557.2641052084011389770.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 14:59:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Mon, 25 Sep 2023 16:26:00 -0500, Rob Herring wrote:
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: dt-bindings: Make "additionalProperties: true" explicit
      commit: 9f778f377cd3b8d6699025ea75732ca91a239cd1

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


