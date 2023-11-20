Return-Path: <devicetree+bounces-17262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B267F1C53
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:25:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B397C1F24137
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E16F130670;
	Mon, 20 Nov 2023 18:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGFme15I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C201330338
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 18:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50F0AC433C8;
	Mon, 20 Nov 2023 18:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700504731;
	bh=as2dbUTr2gNO04DeNirVthyfOLxUPxnlg0uKWaOAmZM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pGFme15I/7EO/N83buPkLNI8XbleJ8CmZwuIA+1oqGpiMoj/BXtSlEhokxn7o3yyZ
	 LSZGQU2f2LexbTP/1Un3T0Ra+4vIvjfo+sCV3HkW5ckCdBEuFbH8j3S7K22rDEPkN9
	 Ee/ZYrMiPGQAKZtxHZGWfxx33Pv7u02sKbP9vO8WFYrIyrC8+iRg1Ey+ibW3PWxgBQ
	 I+DPxFcNrnlM2mHfvDp/STdffotW0Skypuyrva/NNHmaFtyxKOpwsyweZHwIBnVLEe
	 yGLD6PYCQTa16XoM0wNn8pIRRXuULxaIgDfJeUkK+mz1o34c7XKdJmQhl9+sYYZP6u
	 2SLkFoxLrLKcQ==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
Subject: Re: [PATCH 00/14] spi: axi-spi-engine improvements
Message-Id: <170050472905.1279900.9950571556987188981.b4-ty@kernel.org>
Date: Mon, 20 Nov 2023 18:25:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Fri, 17 Nov 2023 14:12:51 -0600, David Lechner wrote:
> We are working towards adding support for the offload feature[1] of the
> AXI SPI Engine IP core. Before we can do that, we want to make some
> general fixes and improvements to the driver. In order to avoid a giant
> series with 35+ patches, we are splitting this up into a few smaller
> series.
> 
> This first series mostly doing some housekeeping:
> * Convert device tree bindings to yaml.
> * Add a MAINTAINERS entry.
> * Clean up probe and remove using devm.
> * Separate message state from driver state.
> * Add support for cs_off and variable word size.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[01/14] dt-bindings: spi: axi-spi-engine: convert to yaml
        commit: 252eafe11ffc032579a56c7a29faa8431785a91e
[02/14] MAINTAINERS: add entry for AXI SPI Engine
        commit: 68539d1803476b4ecd403c126aa74b9f25b45f2b
[03/14] spi: axi-spi-engine: simplify driver data allocation
        commit: 9e4ce5220eedea2cc440f3961dec1b5122e815b2
[04/14] spi: axi-spi-engine: use devm_spi_alloc_host()
        commit: e12cd96e8e93044646fdf4b2c9a1de62cfa01e7c
[05/14] spi: axi-spi-engine: use devm action to reset hw on remove
        commit: e094de13ae78035c5642d5dfc65b07301765eebc
[06/14] spi: axi-spi-engine: use devm_request_irq()
        commit: 076f32d5db73f16c95b38149f9168210cf267b33
[07/14] spi: axi-spi-engine: use devm_spi_register_controller()
        commit: e16e71e3f3c4b73b20f8c79f7ce8465542a337e9
[08/14] spi: axi-spi-engine: check for valid clock rate
        commit: e6d5eb85e84aeace5e231b951ece86b20df9f63a
[09/14] spi: axi-spi-engine: move msg state to new struct
        commit: 7f970ecb77b6759d37ee743fc36fc0daba960e75
[10/14] spi: axi-spi-engine: use message_prepare/unprepare
        commit: 0c74de5c6853b0e83413ad237867a37ba30ef3f9
[11/14] spi: axi-spi-engine: remove completed_id from driver state
        commit: 4a074ddeb90f5e81738b401643651b2dea257f57
[12/14] spi: axi-spi-engine: remove struct spi_engine::msg
        commit: 4e991445478c6404a6846928093837249c52694a
[13/14] spi: axi-spi-engine: add support for cs_off
        commit: 145bb2aedb9f78f290c2b5503b553894a6ec53fe
[14/14] spi: axi-spi-engine: add support for any word size
        commit: d861b417e1893a46c63cef2cb46d3587da1e5b15

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


