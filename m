Return-Path: <devicetree+bounces-25390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB6F8131BA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 881DF1C21877
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51DA85677A;
	Thu, 14 Dec 2023 13:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9XWIkX5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0A59523
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 13:37:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 174CEC433C8;
	Thu, 14 Dec 2023 13:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702561043;
	bh=O5TgA8MD5vafe0qN8lLvWfpYDU/q2IvTpt6dbdNgacg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=g9XWIkX5pkRl7TBT4gmlxHjimfT4hsCXHzEdPeejrdKwSGeP/dHhm039YlV2lK2/r
	 YIQiL3tSVd7K7WTw7jecTQPoLMXBqwCrv+sSmFAj/lbwhilSNNHYEIFf1DL2brw1xU
	 iS6KYL3LaeGCeZHNL+5PvMatoTf6K9ue2nJtX9KTAcm86Tugh709uBEWzMwCorBNYX
	 5/cYGvLQ+VB5FN0vLHeQPz2bJZFDK3klGrwn3hz06QGSn2y7rRHm3ZSiBko0lcba8p
	 qW6fLOw8J4mm4VeF2ZOONEaF/JaqeMDAlXeyJfvDFMl5e9JGq8XDMJXDnLRrr12VrL
	 5MazXj1ESj/nw==
From: Mark Brown <broonie@kernel.org>
To: robh+dt@kernel.org, Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: kuninori.morimoto.gx@renesas.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, daniel.baluta@gmail.com, 
 alsa-devel@alsa-project.org, iuliana.prodan@nxp.com, shengjiu.wang@nxp.com
In-Reply-To: <20231128081119.106360-1-daniel.baluta@oss.nxp.com>
References: <20231128081119.106360-1-daniel.baluta@oss.nxp.com>
Subject: Re: [PATCH v4 0/2] ASoC: audio-graph-card2: Introduce
 playback-only/capture-only DAI link flags
Message-Id: <170256104081.58703.13815510713299468490.b4-ty@kernel.org>
Date: Thu, 14 Dec 2023 13:37:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-5c066

On Tue, 28 Nov 2023 10:11:17 +0200, Daniel Baluta wrote:
> This patchseries allows users to specify a link only direction with
> audio-graph-card2.
> 
> Changes since v1 - https://lore.kernel.org/lkml/20230801082433.548206-1-daniel.baluta@oss.nxp.com/T/
>      - used audio-graph-card2 instead of simple-card as we are deprecting simple-card.
> 
> Changes since v2:
>      - Fix device tree binding error reported by Rob
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: audio-graph-card2: Introduce playback-only/capture-only DAI link flags
      commit: d29351e8c20d61a852bbdfcab7bb7166bd916558
[2/2] ASoC: dt-bindings: audio-graph-port: Document new DAI link flags playback-only/capture-only
      commit: af29e51bee8223d8b26e574489d2433b88cdeb2f

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


