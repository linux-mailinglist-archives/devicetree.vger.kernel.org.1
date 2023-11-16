Return-Path: <devicetree+bounces-16434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BA07EEA15
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 00:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E491F280EFF
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 23:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F0A1CFBC;
	Thu, 16 Nov 2023 23:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spwA8m5P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EBC381AF
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 23:47:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A2E2C433C8;
	Thu, 16 Nov 2023 23:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700178448;
	bh=WOHViIxsGHrN/gNE3gzTC77FjzxEiTyE2iTd8xz+Wfo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=spwA8m5Pr1mTw2K20qPXTga4zIBXC9OJ1X5QWrXnqNs2gzaXFKXrU/H+7kfniORsl
	 u2IE2F3hl2dfiq64dm6BPyEZMcaMTwKlPjq6JXkxQ1MwtXHTEcvo4fn/ZJFMlODiRu
	 efIaSERo1pGEo045uX3+ZG8AM2PDrdX5VUwUP8h6tx+9Oxpc/gDUzhSA7rYpAX7OaJ
	 O+2aY9djpBVlYAsRXWBBgRPxx0R2Z6Jd4pA93kSbw5Y0JjiBAvxcnJIN2ieIpaKSL2
	 4wIipQZdYm+IEPYuH7HFcP/4Gdd0wVbeOBBg7p4OI+PWVtP/ffsVobKBX+DNmX95tG
	 E59PATZh6evLQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/Five
 SoC
Message-Id: <170017844517.82995.8563530422140477667.b4-ty@kernel.org>
Date: Thu, 16 Nov 2023 23:47:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 15 Nov 2023 21:33:58 +0000, Prabhakar wrote:
> The SSI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-ssi" compatible string will be used on the RZ/Five
> SoC so to make this clear and to keep this file consistent, update the
> comment to include RZ/Five SoC.
> 
> No driver changes are required as generic compatible string
> "renesas,rz-ssi" will be used as a fallback on RZ/Five SoC.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/Five SoC
      commit: 7d562ac331ddc4f798e6185a858bc98c22ee7d1b

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


