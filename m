Return-Path: <devicetree+bounces-7372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2197C0372
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 20:33:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E90D7281BD6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E9465A;
	Tue, 10 Oct 2023 18:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZSxPeL7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F222FE09
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 18:33:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A180C433CB;
	Tue, 10 Oct 2023 18:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696962800;
	bh=yBzcSftJxEqCztLT9VvKOdDs1KwwRk5x/oGlnnB88nU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uZSxPeL7jvC+twuHGkChvxvZh7kTC91tPfhPIfrA6IjU5DNN/XjslTfuGyX2sJi0a
	 l8iIJCtPj4pY32oJmInO/tLiHqApcgZmkkwNTMVEQzPW5SQIYi9wR9WIBpKV9wRUkW
	 alIlET2yb7mki3Y2URFSIF0ZgLRO5MrekCF5w/ZNEuZsLe6ISR5QKZ0mB8/IXI0ToU
	 Ie2XaeQfWqk/WH1bivlqo0L96rB46Y/YzoYKlooZRFwSPVD5Wqk8DJMzWhIzTrmMhB
	 +acy/g4hW7DJy7bV/yJTCf+dJjyLJ3KXzYlUl6D8YdW8jSdfQIQBKymCTqI2Ve5KeU
	 uIZDw+bJSOAxQ==
From: Mark Brown <broonie@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 patches@opensource.cirrus.com
In-Reply-To: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
References: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: cirrus,cs42l43: Update values
 for bias sense
Message-Id: <169696279894.221758.959134819176975869.b4-ty@kernel.org>
Date: Tue, 10 Oct 2023 19:33:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Thu, 05 Oct 2023 14:55:58 +0100, Charles Keepax wrote:
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


