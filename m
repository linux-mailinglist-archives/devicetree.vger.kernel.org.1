Return-Path: <devicetree+bounces-2182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9157A9CD9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E49F92835AC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681601773B;
	Thu, 21 Sep 2023 18:40:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584848709D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:40:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30966C433CB;
	Thu, 21 Sep 2023 18:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695321616;
	bh=Wr2cv8QCwxAryDvxcwX4UC8nEWWMWGBn+9Iohg5X4X0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fRaqzNRC6y8wuOy/xNgzt3w7HwUN/UHBiSiN3EaCUd6gomEl6oRQ0PDNLMQttdA2v
	 LuOCU6o7NQ4uxrjr/hfoYYevkLOLGYMjk9BzzP6AIihHBqt8SmqwAYsDevyhfED+P/
	 iiPkxqqqbLtebgWenOzpi+tzHZjE+ZMQohN1bJYw6eYj4ZykkijbDpvWXXWVfCw/rj
	 +iMefCNoEKulywlB2m7JuP0J6W7GiquwVfaOqdWMcF3jeNODBbQh3YGersXOpqxEcy
	 wGDGDLxXB3/wU9qbHJgBBkVoPhpYAu0v8w8tnAoVDmf0TGJXTjS10J/OAcELrIliuw
	 7Mc1/MusSyiVw==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cy_huang@richtek.com
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
 Allen Lin <allen_lin@richtek.com>, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <1695181834-5809-1-git-send-email-cy_huang@richtek.com>
References: <1695181834-5809-1-git-send-email-cy_huang@richtek.com>
Subject: Re: [PATCH v3 0/2] ASoC: Add rtq9128 audio amplifier
Message-Id: <169532161380.157918.6015807992333109867.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 19:40:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-034f2

On Wed, 20 Sep 2023 11:50:32 +0800, cy_huang@richtek.com wrote:
> This patch series adds Richtek rtq9128 automotive audio amplifier
> support. It can deliver up to 4x75W into 4Ohm speaker from a 25V
> supply in automotive applications.
> 
> Change log
> v3
> - Add Reviewed-by tag for dt binding patch
> - Refine the source code by reviewer's comments
>   detail changes listed in the patch
> - Add DVDD undervoltage threshold selection from HW guy's suggestion
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: Add Richtek rtq9128 audio amplifier
      commit: 0339eadb871ab1ebf249932fecb75ab13cc3c565
[2/2] ASoC: codecs: Add Richtek rtq9128 audio amplifier support
      commit: 736064c64cf3fc51c6090884a9f4efe047f9f616

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


