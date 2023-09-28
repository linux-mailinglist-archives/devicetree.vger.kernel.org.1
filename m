Return-Path: <devicetree+bounces-4312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B49EC7B201C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 68116281577
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBEAF450CC;
	Thu, 28 Sep 2023 14:51:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC05641AB8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 561DEC433C8;
	Thu, 28 Sep 2023 14:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912678;
	bh=vtAG6cN4FFihjCJoKNItIO/oCqZM7u5zMuURdQJMWd4=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=mrJ3s6DZjF8wixjaOzrLe9Udx9g8i1HtTEMgowCifYnZOr1hb79Bz/WtbZH8A7nSg
	 Ch35Aw6rP6UOhmn6Os7pCePBfwIdgUhl4Hm2vuMpT6GokC4VIZ7nnlEbVTs9wkXBwD
	 afpx/jy8qCRD6Q5ftt8RCg1AIdOnPDJ6+ilHhiULkIxBiMYx2H1FUoKfKkuAx/dlMM
	 hTtw5hcJmI8UM2Seaabk5NM/Kw4MaMHEiKuOFmQ76jBOIN3Ghlh20mgYZc+J0H2abh
	 ZwXJNA3I+QAkEDuk9ar7XJb7uzBn8X5ZdpAhijqgvpnqBDNkHerrO+7pq9I461eI6b
	 x237b0Ph/d13g==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, perex@perex.cz, 
 tiwai@suse.com, rf@opensource.cirrus.com, herve.codina@bootlin.com, 
 shumingf@realtek.com, ryans.lee@analog.com, 13916275206@139.com, 
 linus.walleij@linaro.org, ckeepax@opensource.cirrus.com, 
 povik+lin@cutebit.org, harshit.m.mogalapalli@oracle.com, arnd@arndb.de, 
 yijiangtao@awinic.com, yang.lee@linux.alibaba.com, liweilei@awinic.com, 
 u.kleine-koenig@pengutronix.de, colin.i.king@gmail.com, trix@redhat.com, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, wangweidong.a@awinic.com
In-Reply-To: <20230919105724.105624-1-wangweidong.a@awinic.com>
References: <20230919105724.105624-1-wangweidong.a@awinic.com>
Subject: Re: [PATCH V4 0/7] ASoC: codecs: Add aw87390 amplifier driver
Message-Id: <169591267537.2776105.6073100654657258877.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 16:51:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Tue, 19 Sep 2023 18:57:17 +0800, wangweidong.a@awinic.com wrote:
> The awinic aw87390 is a new high efficiency, low noise,
> constant large volume, 6th Smart K audio amplifier.
> 
> Add a DT schema for describing awinic aw87390 audio amplifiers.
> They are controlled using I2C.
> 
> v3 -> v4: Divide the changes of aw88395 into multiple patches
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/7] ASoC: dt-bindings: awinic,aw88395: Add properties for multiple PA support
      commit: b99d8d8adfda1f9220dd2ee9bdb96ba02dc62bd7
[2/7] ASoC: dt-bindings: Add schema for "awinic,aw87390"
      commit: 457b6587c112e162d3bec871c7b93359168d5c0a
[3/7] ASoC: codecs: Modify the transmission method of parameters and property node
      (no commit info)
[4/7] ASoC: codecs: Add code for bin parsing compatible with aw87390
      commit: b116c832c9e84843c64eed087271e29b3bc6c1b8
[5/7] ASoC: codecs: Modify i2c name and parameter transmission methodls
      (no commit info)
[6/7] ASoC: codecs: Change the aw88261 variable name and i2c driver name
      (no commit info)
[7/7] ASoC: codecs: Add aw87390 amplifier driver
      commit: 37b4346ed8681660ae60de4facc3d499d8e5cf2a

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


