Return-Path: <devicetree+bounces-80797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CE291A6D6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 964E01C241D7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071891779BB;
	Thu, 27 Jun 2024 12:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1jDJ8gx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DCF1779A5
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 12:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719492476; cv=none; b=dz0e7b5zFZ76hQVMrKrBoJRh+DBnGbIuYHNwlTtEErFywhRXyad/alEMQfFY+O998Gqgsfyt6a1JEqHo8e07dTBcNPIoB7uoW63g++ZfpX61Fd/rLPx/oaEPCwQq3BjxC5y5HwBxaXslUXooCfWBsCJ/w7+FHVf95pzeWX4Njhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719492476; c=relaxed/simple;
	bh=kwG4pDE4sXaZo2v92lBOIo5YyQRpnCgFs4AA7YDFwbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qIj5Ja2rr2ys9Va3H6jQYqU2lRrMxFFcfRkf9XKcy1WPywq2sgQg+hax/apYxT9eMcJRXhLd+7TdOZLab8I3xRTvAl1anyQ6yJBvgXJKaeqjvvVxjwzXcsfovAbjtpLUpinJMI9nF+0u0sp7vEZCreO0S4mOPTBJWsaMTaCijco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1jDJ8gx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32285C2BBFC;
	Thu, 27 Jun 2024 12:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719492476;
	bh=kwG4pDE4sXaZo2v92lBOIo5YyQRpnCgFs4AA7YDFwbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=r1jDJ8gxTFY0XtG2wAsqNNAo6U7HRCbuBOu6M4eimwr+nx4R4JcIn/CT39kvxoEIe
	 g6wlSyAb2wvKer37vGa6QDKN5lHI1+T6was2Lcyf3vHYXPIz96qg5hPFPxzZSWyvOL
	 TkJp/oojmPUntcEl17o6zQZnXanNJ6ad+jZsgibxoUD+FHUWfYz1cOOvxAHSHYkHAm
	 sdTkLDjQhEYs3+xHhq8rZbiqd+CrVPpSJw6V/bw8TgX6DI3TnK1kGvmv/DM1N1wxdw
	 HdounDAYNnh1zebFKqa4yVE2EOfp9Ajg0jh5GpX8f5JCth0b4SxCF81RakWih8ECft
	 FuS5Tnq3Q5w+A==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org, 
 Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
References: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v2 0/5] ASoC: simple-card / audio-graph:
Message-Id: <171949247492.260548.7964627144622460151.b4-ty@kernel.org>
Date: Thu, 27 Jun 2024 13:47:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14-dev-d4707

On Wed, 12 Jun 2024 06:02:04 +0000, Kuninori Morimoto wrote:
> Cc Kochetkov
> 
> This is v2 patch-set which adds link-trigger-order to
> Simple-Card / Audio-Graph-Card.
> 
> Link: https://lore.kernel.org/r/87v82ls82e.wl-kuninori.morimoto.gx@renesas.com
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/5] ASoC: audio-graph-port: add link-trigger-order
      commit: fafc20ded3f4659873c83c2af6d389983d480994
[2/5] ASoC: simple-card-utils: add link-trigger-order support
      commit: 5d9cacdccf17bd33dac3ea378324650159c2a863
[3/5] ASoC: simple-audio-card: add link-trigger-order support
      commit: 8696d732f1c804312d44806242d4a91c49a7a154
[4/5] ASoC: audio-graph-card: add link-trigger-order support
      commit: 4d4125d8f5e19476c006014d5530b8127ed5703f
[5/5] ASoC: audio-graph-card2: add link-trigger-order support
      commit: e64343fa57335662b555477d9ddebd8285db2b66

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


