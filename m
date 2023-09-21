Return-Path: <devicetree+bounces-1984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AE07A95B5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:30:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D1442819B5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA5463E;
	Thu, 21 Sep 2023 16:30:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33E125A2
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 16:30:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74599C611A7;
	Thu, 21 Sep 2023 16:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695313824;
	bh=4TOdbF8l/304dwcAhwcVC0kD2LlC74WELZJDqevjAtg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pzKP40uMk2PnSGVC37hBO3pBIvqSKE5VxA+srEht945WhaPp6sxt5vNQ+nYzj+efD
	 Kzw4a4qE7Y2yHXvBO2ucniyFThULlU2oGtlf98WfizKhXqVkMG7ZAR2NSJOr5kdqqv
	 EOGbLt+2XB9B0Pz9d5F06wuyE9aV49etx8WyBiJxusavudthHQf20KZL+FV15NJAWQ
	 UPcnNm6GuuSU9gKhk5czAMcK9VCyCt5QQjb6m9uEZfVOTSt/YOEeLWP0thkgkdLpDl
	 UhO7izP1Yh2vVtGMCbLH+uVcgeUqD77MJkPHEqORoYA/9h3FCAN7Bn4NSQli0jnkON
	 JBnRw9Y6jYI2g==
From: Mark Brown <broonie@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, patches@opensource.cirrus.com
In-Reply-To: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
References: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
Subject: Re: [PATCH 0/5] Minor default jack pop performance updates
Message-Id: <169531382312.61074.2547458325115379067.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 17:30:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-034f2

On Tue, 19 Sep 2023 11:31:11 +0100, Charles Keepax wrote:
> Some small updates to the driver defaults to ensure a good pop
> performance on jack insert and removal.
> 
> Thanks,
> Charles
> 
> Charles Keepax (5):
>   dt-bindings: ASoC: cirrus,cs42l43: Update a couple of default values
>   ASoC: cs42l43: Lower default type detect time
>   ASoC: cs42l43: Enable bias sense by default
>   ASoC: cs42l43: Move headset bias sense enable earlier in process
>   ASoC: cs42l43: Extend timeout on bias sense timeout
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/5] dt-bindings: ASoC: cirrus,cs42l43: Update a couple of default values
      commit: aa7627111c689f9dc2458c7dd9c1fbb554502664
[2/5] ASoC: cs42l43: Lower default type detect time
      commit: 686b8f711b990d895d39dee3fab88861917d2dc4
[3/5] ASoC: cs42l43: Enable bias sense by default
      commit: 9c0ccc9f8e3be79ab44f5f8034ef90c367caf06f
[4/5] ASoC: cs42l43: Move headset bias sense enable earlier in process
      commit: 1e4ce0d5c023e8d8663f6b79b98b9f8026776127
[5/5] ASoC: cs42l43: Extend timeout on bias sense timeout
      commit: 6388a0619c83625214e98377c32bcefa4fffb9cd

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


