Return-Path: <devicetree+bounces-132701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C489F7D0E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3DEF167294
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 14:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B2F22541A;
	Thu, 19 Dec 2024 14:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hassR6Ew"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709681FCCF3;
	Thu, 19 Dec 2024 14:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734618295; cv=none; b=OTVuX/RAxEtubGOIYV9HrSLgjrIn0rKth/h2HwpQKY8MkvNMpXzwA2kOs4csPWWhdS5+ofLeOeBRumtHLUxbkWuqJIqOFK+owAyKQSII8AqqzZFjzXM5lXQ9yfaq7WLcE9Tv/ByUIA3LL8lQAFlpN6gTNfnru5H05xixC6EMfus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734618295; c=relaxed/simple;
	bh=1lBfOlXd/SBsABBUPbwh2zVZSq7NZbaEseBuDXLnE9Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DezTv6tN3eW9ZWSXFUsjgmZZpnThIpq6rHFbuMhHUuDKUjjK61L0LjmYJBdM0EaBgB18nBhHtRrYXM0PDZByb1hb8Cy9F3FR2HMGvLlGc5aRwPcr1dptwdCPdg/NzeLks3sJGRNOWLyzBRuFMYywqnaq0zuPIIZgRiNAYog21lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hassR6Ew; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DF61C4CECE;
	Thu, 19 Dec 2024 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734618295;
	bh=1lBfOlXd/SBsABBUPbwh2zVZSq7NZbaEseBuDXLnE9Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hassR6EwdQQ+yMam9r2fB8RUtPdES5ZffBAKXkO1BORjG1FQXw6EyoutWT8lNLAKS
	 eclbuHNXjyGxpCuSfidzdUH95/2rJ+842hegqbNmHDqfG7N7l/8GR2FyXxcWIirSAT
	 L4lf7DfiehX7PzcmuCDeopG5N0O5o7AD+5xkO4V0/Lb+X40JMsLDn+ZqJuAh+FHS7u
	 BXW1vAisG1peaWydfRE4mg1eWKAZVrNPC9BKSnwjTfYdhXmfG5dFHyEez6q+MuTZfh
	 9zm1KU2tJ+S2uZJ4oUHeyr7hDe9OXQd/bbiK597VdMeHbW1xlX5xpEWhEt6elVyJuv
	 3EnaGZg1iAdug==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 kernel@pengutronix.de
In-Reply-To: <20241218-regulator-uv-survival-time-ms-rename-v1-1-6cac9c3c75da@pengutronix.de>
References: <20241218-regulator-uv-survival-time-ms-rename-v1-1-6cac9c3c75da@pengutronix.de>
Subject: Re: [PATCH] regulator: rename regulator-uv-survival-time-ms
 according to DT binding
Message-Id: <173461829322.132192.5287833100554891123.b4-ty@kernel.org>
Date: Thu, 19 Dec 2024 14:24:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-9b746

On Wed, 18 Dec 2024 20:54:53 +0100, Ahmad Fatoum wrote:
> The regulator bindings don't document regulator-uv-survival-time-ms, but
> the more descriptive regulator-uv-less-critical-window-ms instead.
> 
> Looking back at v3[1] and v4[2] of the series adding the support,
> the property was indeed renamed between these patch series, but
> unfortunately the rename only made it into the DT bindings with the
> driver code still using the old name.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: rename regulator-uv-survival-time-ms according to DT binding
      commit: 13221496065fa12fac4f8a8e725444679ffddb78

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


