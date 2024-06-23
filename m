Return-Path: <devicetree+bounces-78983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F23913D34
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 19:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 394641C2151F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 17:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC85185088;
	Sun, 23 Jun 2024 17:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIGKP1fw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BB8185085
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 17:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719163317; cv=none; b=UggRoQtUubZ/ifN2ZGI4CcLVMrTCmKHrEXmPz4wNdK1DW0Y01Qqs1HmfhWf0mh9Xpa3oTgXaU6fAgF72EV24T5HT7dJ3Ta9oDnViXXy/IwxdzQd3wqcBtwIMK8CXBu5utzK3WmzjwVvhdoN7D7Y9U6QRQCfJIjppIpenets+RP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719163317; c=relaxed/simple;
	bh=4Z+DdY/AmZkeRi1o/ATZw3inl/MJjwIZjOmrWyVhK2M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pyb8M8Vqoa9MpMhR7ksd6PHzRCCbMwdkEh8dXx2V2IiBlgT0aruEOHyaF284rn0xTBTM4lSJ2wC6MH3wEvAukPpd+yDRJfJTFahftoWAacRjisE2J+rmkTiN+NdE+xoDvfOFqT+iWFaeO8QzYGTbs9ng1Pke24VERG4qEDPbagw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIGKP1fw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA0B0C4AF0B;
	Sun, 23 Jun 2024 17:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719163316;
	bh=4Z+DdY/AmZkeRi1o/ATZw3inl/MJjwIZjOmrWyVhK2M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oIGKP1fw89bYksXVYKyrZ2ZMZtAdLGYBrF0TUvAE6YWzckKJDh79T9VC8R5YsHXU6
	 /IJIiQz4rHXhmYCwsFYRF1N0+nFxfDSQhYhALpTmRQJj+fr7ofw/z5aToDsGMi5Cs/
	 JL+3xMwEtJy/gVLCb6xFM6MzVMDg/CmpS8qXhFcVZ45iD+50wUoBJaIHF8924Jh17w
	 aUTUEs2vp1Pb8uxXBvDD6w1BloyvlKKIguMApkpakI0zgklVDg9ZOj7TtKT+m4Ll9G
	 Mx7adBw3Va0AfyTXwk8MTQDw3r+JhuEXezz4b7+/u5qoFFjG45FssuCFmb1qvtzRiG
	 fVr3SWoybDlPQ==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org, 
 Khanh Le <khanh.le.xr@renesas.com>
In-Reply-To: <87jzilwxxd.wl-kuninori.morimoto.gx@renesas.com>
References: <87jzilwxxd.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v3 0/2] ASoC: Add ak4619 codec support
Message-Id: <171916331542.350242.5751102725550795286.b4-ty@kernel.org>
Date: Sun, 23 Jun 2024 18:21:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14-dev-d4707

On Wed, 19 Jun 2024 00:58:39 +0000, Kuninori Morimoto wrote:
> This is v3 patch-set for ak4619 driver.
> It was created by Khanh, and I updated/adjusted to upstream.
> It was tested on Renesas V4M GrayH
> 
> Link: https://lore.kernel.org/r/877ceotnrg.wl-kuninori.morimoto.gx@renesas.com
> Link: https://lore.kernel.org/r/87frtb3x4k.wl-kuninori.morimoto.gx@renesas.com
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: Add ak4619 codec support
      commit: d6bb39fe4fa077883a409f6eaca569ce61a28a94
[2/2] ASoC: dt-bindings: ak4619: Add initial DT binding
      commit: 6469267afed4ffb9d16ce8c44a2b518b9b31c215

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


