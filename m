Return-Path: <devicetree+bounces-3394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C117AEB0F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B899A281981
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C0125119;
	Tue, 26 Sep 2023 11:08:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2374E5381
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:08:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32DFBC433C9;
	Tue, 26 Sep 2023 11:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695726523;
	bh=jQrrNY4WO/EXAky46FBS3wZWboPvdx/wNKeZCzXERe0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Q6yn4qmExdhyPIqy05Or2lb/0bjFn6xu/ixZUFpQhwHiaGTKG54qD9GyXLePDUrVX
	 AdMGE7HyBpxLw50pJucZXsqPO2v6w18prC1BJVd34Lba2FIXTAInM/UzDhgpqywb+x
	 0NzQgQnu+ezXM4GbMhKtKMnBCxj1+7ZBey9UTQvN8Ty1BS8vMkxTgx53FFo3j3G2Ak
	 SWip6w5WQ351MZDpyinJDrMUaj6Vr1+ggC2vsOQFYH2gN7/A3VdXQYK3ggw7J9W/kj
	 RuZteJ7PNSezAeBxjNkEF1o6g3ePuJwQuMDBzi7AGT8z+VS1TKRx6RcYxwtlywLGnv
	 6Y80uKx1G1DpQ==
From: Mark Brown <broonie@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 Fabio Estevam <festevam@denx.de>
In-Reply-To: <20230924183904.752415-1-festevam@gmail.com>
References: <20230924183904.752415-1-festevam@gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: fsl-imx-cspi: Document missing
 entries
Message-Id: <169572652181.2600426.16905514948305432960.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 13:08:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Sun, 24 Sep 2023 15:39:04 -0300, Fabio Estevam wrote:
> The imx25, imx50, imx51 and imx53 SPIs are compatible with the imx35.
> 
> Document them accordingly.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] dt-bindings: spi: fsl-imx-cspi: Document missing entries
      commit: 3b4e5194138b4576e7b703edcd85ffe8783df798

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


