Return-Path: <devicetree+bounces-19644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1327FB9D9
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 13:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1DD61F20FDD
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 12:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BAFC4F899;
	Tue, 28 Nov 2023 12:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS+vj4KE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E76319460
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 12:04:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5968C433C7;
	Tue, 28 Nov 2023 12:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701173090;
	bh=i55TD+jqPJqNMu1csxYYbwmdAkXCEdI8W2QHQXOzNMQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dS+vj4KENFpbmNeaFcBTdQCEgb80MJG/nZw46Orm0YRo9u5edeLbzdu4EV3AJCv9/
	 wRCJf2FCFBYJLHCqhI6l2Kuy3qPq6fBuiC7pNtw+4G3kh27JcZaNJbTBsx8LJDOEX3
	 /TozcelAfJREaWirWdC3mBmzEV7hS5AvBJCU78oNwgAgyZjc750ra+NrZV0XPjnXnF
	 XZFijZyRrP439uGTD48vFiOIeWZPujBJnM2dg/R9KOoA5bEkeP4GSpMkOx1QvL7pqp
	 r48jWI4dZJxzn/O/2wVGeN6BxF+qXobTQL57qVGleUcDobnl9r7xUzsvbLlulNfY0W
	 pphU5s2r2mb7w==
From: Mark Brown <broonie@kernel.org>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
 Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v7 0/5] ASoC: makes CPU/Codec channel connection map
 more generic
Message-Id: <170117308718.2712587.12761626999755612414.b4-ty@kernel.org>
Date: Tue, 28 Nov 2023 12:04:47 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Mon, 13 Nov 2023 01:27:50 +0000, Kuninori Morimoto wrote:
> Cc Bard, Pierre-Louis, Jerome, DT-ML
> 
> This is v7 patch-set.
> 
> Current ASoC is supporting CPU/Codec = N:M (N < M) connection by using
> ch_map idea. This patch-set expands it that all connection uses this idea,
> and no longer N < M limit [1][2].
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/5] ASoC: makes CPU/Codec channel connection map more generic
      commit: 45cc50d13433a62f23b7b4af380497aae5e8ddc7
[2/5] ASoC: audio-graph-card2: use better image for Multi connection
      commit: 912eb415631140c93ff5f05378411fec8e6a537f
[3/5] ASoC: audio-graph-card2: add CPU:Codec = N:M support
      commit: e2de6808df4ad5faa6106f7a80617921fdf5dff5
[4/5] ASoC: audio-graph-card2-custom-sample: Add connection image
      commit: a706366f93c37c6649acfe15a1ef9a80e25bace4
[5/5] ASoC: audio-graph-card2-custom-sample: add CPU/Codec = N:M sample
      commit: 792846d9daa876186196b66dc496a2ba8ddd7535

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


