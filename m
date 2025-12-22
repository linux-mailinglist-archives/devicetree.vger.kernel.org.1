Return-Path: <devicetree+bounces-248806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4FECD5D14
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BF20303C9D0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CBCB314D16;
	Mon, 22 Dec 2025 11:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GT2AKgSz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68701313E11;
	Mon, 22 Dec 2025 11:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766403242; cv=none; b=LVlHvP2JOGaitv/nL2DT9+cmh5BtydypxZHv+j6RS7EO1+i22giLy35u3yFoH1ztHMwWbVW8KWfB9mlajiEFYyQK1bLDeA6C7t7nzPwz4qgOgu5S75+jOQJj43Zx6wxqeCaqx1zZy+fo2TfHmFaQQxYqq3Ju3IUnrOeQVaQGtMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766403242; c=relaxed/simple;
	bh=KjqyVAAcVJH3BIiV1Uv55CQb3HnZz2t65Zuc5cOGK2g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bRAM4xhjvJyFoeVsTYgwkgC2GOJ67oIpptOu6BNWn77Dxi8H7bT9whtL+oGDrw5qjShuyeBSgOwzFFBBwFuRJ9R6OpyBpU6VU/SKrLBXgqL5wVM4ptY9/QbySflrkcYXyUlt2G4CdiAcWWzuX3GzO8NsMdX1JZA1EscQShXBNYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GT2AKgSz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68661C116C6;
	Mon, 22 Dec 2025 11:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766403241;
	bh=KjqyVAAcVJH3BIiV1Uv55CQb3HnZz2t65Zuc5cOGK2g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GT2AKgSzSbRQ+OC4I47+yWR3Q20WvfedkJxOWOqRohtSUvlE5WOpce5Cp+jjmxY0c
	 e2ud3NQONOz8sew/8A5hpLaDrFYN6OdB/x+tHqnL1pRT9hQGKDuWar27EHhjHyOeMC
	 piNZjD9UCRcWn792AFi8ccGCIleFBn2Cc5odtvQYolNCbhBqQ9mf1EufhQ48Yt7S5l
	 fFomAwz2Y9p8YSD7ctIgNq6QGG11SlHO4cs+stgt6eCVqcv4OPcjs5UaGYLNXtjBeF
	 +i4hA73L08Pkyz/CgICyBeftrFWvt99yLtWqj38VMhie45t97xCqVHR7EOonVqmUMq
	 UWgui2uRSfw/Q==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cy_huang@richtek.com
Cc: Liam Girdwood <lgirdwood@gmail.com>, Alan Lan <alan_lan@richtek.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <cover.1766125676.git.cy_huang@richtek.com>
References: <cover.1766125676.git.cy_huang@richtek.com>
Subject: Re: [PATCH 0/2] Add Richtek RT8092 support
Message-Id: <176640324016.139369.9597811188220020982.b4-ty@kernel.org>
Date: Mon, 22 Dec 2025 11:34:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773

On Fri, 19 Dec 2025 14:36:18 +0800, cy_huang@richtek.com wrote:
> This patch series add rt8092 regulator support.
> 
> ChiYuan Huang (2):
>   dt-bindings: regulator: rt5739: Add compatible for rt8092
>   regulator: Add rt8092 support
> 
>  .../bindings/regulator/richtek,rt5739.yaml    |   5 +
>  drivers/regulator/Kconfig                     |   9 +
>  drivers/regulator/Makefile                    |   1 +
>  drivers/regulator/rt8092.c                    | 313 ++++++++++++++++++
>  4 files changed, 328 insertions(+)
>  create mode 100644 drivers/regulator/rt8092.c
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] dt-bindings: regulator: rt5739: Add compatible for rt8092
      commit: e5eb5638d632cf1180454acf16391ea9450e6295
[2/2] regulator: Add rt8092 support
      commit: 32a708ba5db50cf928a1f1b2039ceef33de2c286

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


