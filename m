Return-Path: <devicetree+bounces-4315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B30527B2023
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:51:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 65E31281643
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 059FF450E9;
	Thu, 28 Sep 2023 14:51:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5A941AB8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC9F5C433CB;
	Thu, 28 Sep 2023 14:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912693;
	bh=UDwgpsFaqJPQIaERJt0/68ArFF8Y8pOIEo7g0mVwDXo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=cUdEkHiciM0mv5hG2BcjyXZyaxtx35Qdlhx7zOd4qrKmFlkRXUpAWnO24HQDwp+Xh
	 Xeh2zchaFxGhApn/JBsPbFAfhbWKFo0dy8kkSteYi6rARRzwJeAzyu/UeqNvMsHc0X
	 FX2eqbx8yApqeJn+nqbJdmPzzWRsKGPlCbcDr9laDQjEVJR+eD4/E0Nf/XJNCmuioT
	 CtgYYWX+jr+sTZG8l1GaGi9z3nx3MC0oORo6qO0xlSFU7Df60/va/sBBr8e3czJlIP
	 3iyWkYNJgsblYJZ9oo/olarM+B0zRiul33O4SjeMtlzssKhACqYuwBqamkjLnhRIUS
	 cr10r0EpfznVA==
From: Mark Brown <broonie@kernel.org>
To: girdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, perex@perex.cz, 
 tiwai@suse.com, rf@opensource.cirrus.com, shumingf@realtek.com, 
 herve.codina@bootlin.com, rdunlap@infradead.org, 13916275206@139.com, 
 ryans.lee@analog.com, linus.walleij@linaro.org, 
 ckeepax@opensource.cirrus.com, doug@schmorgal.com, 
 ajye_huang@compal.corp-partner.google.com, harshit.m.mogalapalli@oracle.com, 
 arnd@arndb.de, yang.lee@linux.alibaba.com, u.kleine-koenig@pengutronix.de, 
 liweilei@awinic.com, yijiangtao@awinic.com, trix@redhat.com, 
 dan.carpenter@linaro.org, colin.i.king@gmail.com, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, wangweidong.a@awinic.com
In-Reply-To: <20230928105727.47273-1-wangweidong.a@awinic.com>
References: <20230928105727.47273-1-wangweidong.a@awinic.com>
Subject: Re: [PATCH V6 00/10] ASoC: codecs: Add aw87390 amplifier driver
Message-Id: <169591268992.2776105.11416924593302192678.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 16:51:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Thu, 28 Sep 2023 18:57:17 +0800, wangweidong.a@awinic.com wrote:
> The awinic aw87390 is a new high efficiency, low noise,
> constant large volume, 6th Smart K audio amplifier.
> 
> Add a DT schema for describing awinic aw87390 audio amplifiers.
> They are controlled using I2C.
> 
> Modify some code for aw88261 and aw88395
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[01/10] ASoC: dt-bindings: awinic,aw88395: Add properties for multiple PA support
        commit: b99d8d8adfda1f9220dd2ee9bdb96ba02dc62bd7
[02/10] ASoC: dt-bindings: Add schema for "awinic,aw87390"
        commit: 457b6587c112e162d3bec871c7b93359168d5c0a
[03/10] ASoC: codecs: Remove the "fade-enable property"
        commit: 085370aa8c880da7014d0d8f93343fc1d21104b8
[04/10] ASoC: codecs: Rename "sound-channel" to "awinic,audio-channel"
        commit: 74ff4f22d81e97b5c2505cee2ff743fc9249d9e2
[05/10] ASoC: codecs: Modify the transmission method of parameters
        commit: e83219c94abb4ad977f6b2b8be7d466ef0c2248f
[06/10] ASoC: codecs: Modify i2c driver name
        commit: 6a4c3ce3f06cee1c25420cae8634269021ef8504
[07/10] ASoC: codecs: Add code for bin parsing compatible with aw87390
        commit: b116c832c9e84843c64eed087271e29b3bc6c1b8
[08/10] ASoC: codecs: Rename "sync-flag" to "awinic,sync-flag"
        commit: c786770ed8a53836490f6157f40ef83c7149ee75
[09/10] ASoC: codecs: Modify the transmission mode of function parameters
        commit: f83287a72551833a6fe2fc96f334b26e6eba77e8
[10/10] ASoC: codecs: Add aw87390 amplifier driver
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


