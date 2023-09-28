Return-Path: <devicetree+bounces-4313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AFE7B201F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:51:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 160F628165E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 093A8450D9;
	Thu, 28 Sep 2023 14:51:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCD841AB8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:51:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24F26C433CD;
	Thu, 28 Sep 2023 14:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912683;
	bh=StfEneqPnMXWDqQdDqylaWm7UVtDGEIMdVg0t3atZ0Q=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=bgiOSo+n1ZlOzg1fdq+N77rfK+/KqBoOiNPq5OiJKBIBqO98ZnNZRzf7kb32d2PVQ
	 lB55ahJVx53g7eFv6yYNPNIAG1nJ5J/G0bJZyDCzkQ4KA2DGFfNfVMt2X+dskZYt3F
	 0PicXLtYQyqZV6BEtbOCTV6iWiYzLwQmQJpyxvCugcPZpiKBsjpl0HK83Jie6BP4DS
	 MIsYPlghzipIGM2T3jKXqfGe8Hjg9dNXstIaRa93Q2UshQ8InG3aluEoyU0Epvg8Kv
	 uFUZokN9X0Vy39MXTXACBvle+zMI3ahdE11hWY+3e0LgUWFTeyfISfn+ZSmWpYRTnq
	 8bJrP9YHoSoRA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, perex@perex.cz, 
 tiwai@suse.com, shumingf@realtek.com, rf@opensource.cirrus.com, 
 herve.codina@bootlin.com, arnd@arndb.de, 13916275206@139.com, 
 ryans.lee@analog.com, linus.walleij@linaro.org, 
 ckeepax@opensource.cirrus.com, doug@schmorgal.com, fido_max@inbox.ru, 
 harshit.m.mogalapalli@oracle.com, liweilei@awinic.com, 
 yang.lee@linux.alibaba.com, u.kleine-koenig@pengutronix.de, 
 yijiangtao@awinic.com, dan.carpenter@linaro.org, colin.i.king@gmail.com, 
 trix@redhat.com, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, wangweidong.a@awinic.com
In-Reply-To: <20230927121634.94822-1-wangweidong.a@awinic.com>
References: <20230927121634.94822-1-wangweidong.a@awinic.com>
Subject: Re: [PATCH V5 0/8] ASoC: codecs: Add aw87390 amplifier driver
Message-Id: <169591268017.2776105.16111377066038628.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 16:51:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Wed, 27 Sep 2023 20:16:26 +0800, wangweidong.a@awinic.com wrote:
> The awinic aw87390 is a new high efficiency, low noise,
> constant large volume, 6th Smart K audio amplifier.
> 
> Add a DT schema for describing awinic aw87390 audio amplifiers.
> They are controlled using I2C.
> 
> v4 -> v5: Adjust the order and context of the patch
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/8] ASoC: dt-bindings: awinic,aw88395: Add properties for multiple PA support
      commit: b99d8d8adfda1f9220dd2ee9bdb96ba02dc62bd7
[2/8] ASoC: dt-bindings: Add schema for "awinic,aw87390"
      commit: 457b6587c112e162d3bec871c7b93359168d5c0a
[3/8] ASoC: codecs: Modify the code related to the property
      (no commit info)
[4/8] ASoC: codecs: Modify the transmission method of parameters
      commit: e83219c94abb4ad977f6b2b8be7d466ef0c2248f
[5/8] ASoC: codecs: Add code for bin parsing compatible with aw87390
      commit: b116c832c9e84843c64eed087271e29b3bc6c1b8
[6/8] ASoC: codecs: Modify the code related to the property
      (no commit info)
[7/8] ASoC: codecs: Modify the transmission mode of function parameters
      commit: f83287a72551833a6fe2fc96f334b26e6eba77e8
[8/8] ASoC: codecs: Add aw87390 amplifier driver
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


