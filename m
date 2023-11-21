Return-Path: <devicetree+bounces-17678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAD67F3666
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 19:46:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54633282218
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF74524AD;
	Tue, 21 Nov 2023 18:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSACHcHs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF46D51C24
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 18:45:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61DACC433C7;
	Tue, 21 Nov 2023 18:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700592354;
	bh=EO6luDaoUXzK9d1/iYTv3zcFJV469noLg8l0rjIvJ60=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=HSACHcHsqFmT/I15b1ugu5nNPev/5uP+Z7IWJBd4FR7SWsVV8y4+sKfyqB0uxEFlc
	 bfx15Z7Xh3V0+Ck9GMq7pzGksECDUE3tiIpl+/TCsoQaLV3ZBIxyVRKnpv2qaVxiNc
	 dAwa8Gz3b1R8VkdC3Bkcvo5nlaCXsVNfgS5zWjfx9d7splSvkdU/lTJUQb16nVtI+u
	 MlQtuVhbqq03mDxdedDyKVK72cZ1nJnQTlPnn65iAewwP3VaFT70jCQb0/udPPsAtv
	 1d3Ss7ZXVxFSJWXQIe98HTwaUFhcMMpnQOJCoslosDGb51wWmeEkcWzSWZs6sv0VYA
	 zYoDS6q8+ERcA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com, 
 nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, kernel@pengutronix.de, alsa-devel@alsa-project.org, 
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Chancel Liu <chancel.liu@nxp.com>
In-Reply-To: <20231121052512.20235-1-chancel.liu@nxp.com>
References: <20231121052512.20235-1-chancel.liu@nxp.com>
Subject: Re: [PATCH v5 1/2] ASoC: dt-bindings: sound-card-common: List
 sound widgets ignoring system suspend
Message-Id: <170059235006.1901021.2131981423033331673.b4-ty@kernel.org>
Date: Tue, 21 Nov 2023 18:45:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Tue, 21 Nov 2023 13:25:11 +0800, Chancel Liu wrote:
> Add a property to list audio sound widgets which are marked ignoring
> system suspend. Paths between these endpoints are still active over
> suspend of the main application processor that the current operating
> system is running.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: sound-card-common: List sound widgets ignoring system suspend
      commit: 27c69d7da1084af0b8b3a20ef9ff01e9eda5270c
[2/2] ASoC: imx-rpmsg: Force codec power on in low power audio mode
      commit: 5d9f746ca64c3ebfba3b650dbc4b0de705c83f3b

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


