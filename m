Return-Path: <devicetree+bounces-129947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 471469ED3F1
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 18:46:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5E31282F4B
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 17:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9EF2010E5;
	Wed, 11 Dec 2024 17:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnIInxAG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9701DE880;
	Wed, 11 Dec 2024 17:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733939180; cv=none; b=LMJAP/mUIBrEGl5vgTyYrVUPQvs722oJKL3Cj8Bo2rvbBubl8uxpFTn61el09elgPdCKaIZLtQouhBK1fGj90rXhgJjF+iIKNfxPkiKvST5oTKdGSq8MZoC8iYyHvkg+Cxw52SCGPLyezXWWbckPG4eGfLNjpD1q6evPBMN5PPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733939180; c=relaxed/simple;
	bh=lYGYwG0MA9yakWcALeDCy+XtsWYNeQjawngMiYD2m0Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=s4d5hwYALzRJP/ELnBbQmRwCsK/aYqtNmpjFfElsUtNhGtPkW6R4IRDex7thjIHx00BEi/EaorvySPuR43YHewQbrCmwkS29F/pFGEXXMutSzPVDJu7t+Tui/CP62rBp1hGHk49VX99LXLNPmn4fsOmc6br3UGDoTPu72zDqboM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnIInxAG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2D9DC4CEE0;
	Wed, 11 Dec 2024 17:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733939178;
	bh=lYGYwG0MA9yakWcALeDCy+XtsWYNeQjawngMiYD2m0Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PnIInxAGKR4VW1Yfnmjakwf5/g8DPITsChNKclR/IMpoOCAHS1K/hrcFjP/h1yWIT
	 XpUaV4ZVfaVurGSHZ4mKBA49VLRuRlqC/lnkDP7ND8tCrtUeURMcwYVdjaxHdv+a19
	 qfDj8ndTbcXTljmrtDvxhk6cZXF19LGog4H4VIdV0sPJ+pHkiH/MiwG/nJ9L4PLHhv
	 9aG3rUY0y0r90QIRp/PVj/2x4gCplO+esaxKDICfaG0sxTrZUFtnpqZOsGXldzgHbS
	 fitUWN9mCCybL298NAw+iY1Be91xV+zIIuRg4AZV4kAtIJ8VlssWhReHKeZcpuxOto
	 Wn8v7gbrNYX5g==
From: Mark Brown <broonie@kernel.org>
To: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, lgirdwood@gmail.com, magnus.damm@gmail.com, 
 perex@perex.cz, tiwai@suse.com, p.zabel@pengutronix.de, 
 biju.das.jz@bp.renesas.com, Claudiu <claudiu.beznea@tuxon.dev>
Cc: linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 alsa-devel@alsa-project.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: (subset) [PATCH v4 00/24] Add audio support for the Renesas
 RZ/G3S SoC
Message-Id: <173393917546.1376442.9724070033697207842.b4-ty@kernel.org>
Date: Wed, 11 Dec 2024 17:46:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-9b746

On Tue, 10 Dec 2024 19:09:29 +0200, Claudiu wrote:
> Series enables the audio support for the Renesas RZ/G3S
> SoC along with runtime PM and suspend to RAM.
> 
> Patches:
> - 01-03/24 - update versaclock3 clock generator driver to support the
>              5L35023 hardware variant; versaclock3 provides clocks for
>              the audio devices (SSIF, DA7212 codec)
> - 04-19/24 - add SSIF support for the RZ/G3S SoC; fixes and cleanups
>              were also included
> - 20-24/24 - add device tree support
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[04/24] ASoC: renesas: rz-ssi: Terminate all the DMA transactions
        commit: 541011dc2d7c4c82523706f726f422a5e23cc86f
[05/24] ASoC: renesas: rz-ssi: Use only the proper amount of dividers
        commit: 55c209cd4318c701e6e88e0b2512a0f12dd02a7d
[06/24] ASoC: renesas: rz-ssi: Fix typo on SSI_RATES macro comment
        commit: 100c6b22d6c70adabdf45dcb346d7d853bff6a30
[07/24] ASoC: renesas: rz-ssi: Remove pdev member of struct rz_ssi_priv
        commit: a73710a25808a585a2bf0a8325eb16fd6a2f370c
[08/24] ASoC: renesas: rz-ssi: Remove the rz_ssi_get_dai() function
        commit: dec61e16e72db196e8dc1daf7f7022fd98e6d921
[09/24] ASoC: renesas: rz-ssi: Remove the first argument of rz_ssi_stream_is_play()
        commit: 109e60866f11c7db8f720f01b0bda3105c47b463
[10/24] ASoC: renesas: rz-ssi: Use readl_poll_timeout_atomic()
        commit: 4bf77dfa3308b7cfda29d9c4ead1dc32f1ceefa9
[11/24] ASoC: renesas: rz-ssi: Use temporary variable for struct device
        commit: 403366d2a43eb7c911c6cddf1d7882e429d1212d
[12/24] ASoC: renesas: rz-ssi: Use goto label names that specify their actions
        commit: f0c155c9da7536ab33687b5207eb21e704122a56
[13/24] ASoC: renesas: rz-ssi: Rely on the ASoC subsystem to runtime resume/suspend the SSI
        commit: e8fcf25f562891d5c0734d4f49c44bb6aa72bc15
[14/24] ASoC: renesas: rz-ssi: Enable runtime PM autosuspend support
        commit: cf3a79e4f826fc680fd7bfef7c427e2cc6023bc3
[15/24] ASoC: renesas: rz-ssi: Add runtime PM support
        commit: 3888672495fcaee98b90196c0a899b1c2eb57d5b
[16/24] ASoC: renesas: rz-ssi: Issue software reset in hw_params API
        commit: fc2a31affb22394d1d74d3ecc86b5c68da33d52a
[17/24] ASoC: renesas: rz-ssi: Add suspend to RAM support
        commit: 1fc778f7c833aeb13041adc06f016f1a2dff7350
[18/24] ASoC: dt-bindings: renesas,rz-ssi: Remove DMA description
        commit: c28dac5d3a6e87615d4c8e50f574c320172a3d55
[19/24] ASoC: dt-bindings: renesas,rz-ssi: Document the Renesas RZ/G3S SoC
        commit: 699a9733a354d74482ae4d4304acdbb0c0318a23

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


