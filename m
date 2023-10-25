Return-Path: <devicetree+bounces-11956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0B77D729A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DE0AB21163
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF2F30F98;
	Wed, 25 Oct 2023 17:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUeWrquF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7C32D62F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2775C433CB;
	Wed, 25 Oct 2023 17:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698256079;
	bh=IC6yiDX3Kjh1tzMkFWq00Eim5ssTBfQdN1nJyO1CAvA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mUeWrquFevWR3hn1l8bX9tf4vPYywaoVnvqlW88qhO66W3kYHK6amFmhho0/lLwhy
	 uQAeaXH9pcwoHiuZQmpU8pOgp5EvYh3CxVX5Qaf8GrYaJYzAlKuP6JtUGmEENpNGsi
	 /wRx/mf9QbPMriUoAXYS9NtfbuoJsf29AtjZ7WO+jFNbszP7clUUIEOJ1f8jnM1+Gl
	 jEHarE3xbWR2dDBKOZLdFGA21aZlA0FYO7gIOg07HeMuOUnh4JxpQbos4gwwVx1rTk
	 wQ4ZM2zkrnfujhRiS9TKujGDh0HauD8SklsQ8tjk4QlkaDVoVnivfGsAtZishcJH8U
	 T9/OUeDL/z2og==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20231025084614.3092295-1-o.rempel@pengutronix.de>
References: <20231025084614.3092295-1-o.rempel@pengutronix.de>
Subject: Re: (subset) [PATCH v3 0/7] regulator: add under-voltage support
Message-Id: <169825607763.44380.12067191932471513673.b4-ty@kernel.org>
Date: Wed, 25 Oct 2023 18:47:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 25 Oct 2023 10:46:07 +0200, Oleksij Rempel wrote:
> This series add under-voltage and emergency shutdown for system critical
> regulators
> 
> changes v3:
> - add system-critical-regulator property
> - add regulator-uv-survival-time-ms property
> - implement default policy for system critical uv events
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[3/7] regulator: dt-bindings: fixed-regulator: Add under-voltage interrupt support
      commit: 0ab1dc9c657f30434ca55a3dcc87e624af0b2116
[5/7] regulator: fixed: add support for under-voltage IRQ
      commit: ecb6f1f456144e9ade5a492192287decbeef4cfe

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


