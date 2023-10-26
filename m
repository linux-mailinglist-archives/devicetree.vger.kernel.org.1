Return-Path: <devicetree+bounces-12226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 869F97D8744
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:10:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B693E1C20AB1
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 17:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3080D381DD;
	Thu, 26 Oct 2023 17:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/xlOY2A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1A22E3E9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 17:10:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B130C433C7;
	Thu, 26 Oct 2023 17:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698340207;
	bh=pqvW/M9c/cJz4WisDsMscjILqHNcIrUv585K29I0jkg=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=d/xlOY2AhSft2kmrsSnKiDZ/wg6TIZNY1bZnh9BJSrJE1AUj7RcQVO8qPkprWkB1l
	 v6Va+mYta1jKeAKkscFHTrBBZ+Fqs0QtU+KO7N1NLU12YAE1fCpAH9kqN/CNZZ96Sn
	 rT0twpAoojmMpTonQVJJvF3+vVYFLngZ1oJhbEHFvuUfcnwx+btLYfQK32v+UlLRlL
	 FVVZbd6PYCtKqGE4YyrDEq6MmmrA1slmZVCoGSFK+/OtXSqCfwqur1yEF+ZfzSJEzU
	 Al4Sk5Uh++Bu+eFs9rS9nTaegZfkFkxY1ir8x+VdEXJMwKbIRa+ffdTAI8ZitKARGM
	 Kgsn7OKjJTanA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, perex@perex.cz, 
 tiwai@suse.com, herve.codina@bootlin.com, shumingf@realtek.com, 
 rf@opensource.cirrus.com, arnd@arndb.de, 13916275206@139.com, 
 ryans.lee@analog.com, linus.walleij@linaro.org, 
 ckeepax@opensource.cirrus.com, ajye_huang@compal.corp-partner.google.com, 
 fido_max@inbox.ru, liweilei@awinic.com, yijiangtao@awinic.com, 
 trix@redhat.com, colin.i.king@gmail.com, dan.carpenter@linaro.org, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, wangweidong.a@awinic.com
In-Reply-To: <20231025112625.959587-1-wangweidong.a@awinic.com>
References: <20231025112625.959587-1-wangweidong.a@awinic.com>
Subject: Re: [PATCH V3 0/3] ASoC: codecs: Add aw88399 amplifier driver
Message-Id: <169834020032.149939.13328235446947300369.b4-ty@kernel.org>
Date: Thu, 26 Oct 2023 18:10:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 25 Oct 2023 19:26:22 +0800, wangweidong.a@awinic.com wrote:
> Add the awinic,aw88399 property to the awinic,aw88395.yaml file.
> 
> Add i2c and amplifier registration for
> aw88399 and their associated operation functions.
> 
> v2 -> v3: Generate patch based against for-6.7 of sound tree
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: Add schema for "awinic,aw88399"
      commit: debd9fa7bf17251c44a01ac1536d97566df45ca6
[2/3] ASoC: codecs: Add code for bin parsing compatible with aw88399
      commit: 725f3b967a507c515c5b14b4103840d22c217ef7
[3/3] ASoC: codecs: Add aw88399 amplifier driver
      commit: 926f192f005fe957ea1bfe4635af10219ba363a2

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


