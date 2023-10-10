Return-Path: <devicetree+bounces-7374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA93A7C0376
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 20:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53464281C35
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9F765A;
	Tue, 10 Oct 2023 18:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4nNc9A6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01642FE08
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 18:33:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A805EC433D9;
	Tue, 10 Oct 2023 18:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696962818;
	bh=RnAeWFSPNmSQHUEKF9rxZXSSL3teUWbbpK33kX3hFBo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=I4nNc9A6QFniBKbFcoU3DvS20HkPLYMnCjiWvfbKGKmPhSAJHVQ2r3TsoSVea97pL
	 qfzVQ5dSZRIx6O8Q9Mwq7FIbH/FKAvkk4evCHHhStITbzFHgwDiqv5d2t0258agKX/
	 bV69x6ZzLgMuiV2HpinwM8eyp0/ZoqF+aNP8UKLglSf4w7wozEyG35bJ+CEOknA4tD
	 rcxeFvExYkryZqbHd1o3rD6F8hgqTftp1K4eoX5IM5rLITTELQp8EyDGCFuSIldbkR
	 mDHiEVtJ9NKisTRyI8gnXe9uEQX5FNz4cNMEi/LT+iV8Ecb2BlaY6jyyeKBjw4Op0f
	 5wSYlj2bFIvxg==
From: Mark Brown <broonie@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 patches@opensource.cirrus.com
In-Reply-To: <20231010102425.3662364-1-ckeepax@opensource.cirrus.com>
References: <20231010102425.3662364-1-ckeepax@opensource.cirrus.com>
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: cirrus,cs42l43: Update
 values for bias sense
Message-Id: <169696281640.221758.6369087889872245460.b4-ty@kernel.org>
Date: Tue, 10 Oct 2023 19:33:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Tue, 10 Oct 2023 11:24:24 +0100, Charles Keepax wrote:
> Due to an error in the datasheet the bias sense values currently don't
> match the hardware. Whilst this is a change to the binding no devices
> have yet shipped so updating the binding will not cause any issues.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: cirrus,cs42l43: Update values for bias sense
      commit: 53ba32acb5ab137ba333c20e0c987bdd6273a366
[2/2] ASoC: cs42l43: Update values for bias sense
      commit: 99d426c6dd2d6f9734617ec12def856ee35b9218

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


