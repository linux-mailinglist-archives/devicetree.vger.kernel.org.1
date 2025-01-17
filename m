Return-Path: <devicetree+bounces-139390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AFEA1599F
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 23:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DC4518886A7
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 22:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18C61DDC02;
	Fri, 17 Jan 2025 22:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeAH5B+9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7ADC1D9A49;
	Fri, 17 Jan 2025 22:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737154371; cv=none; b=uxKjBI2t2L1Qk4Xqx2nEacFRjFR88DjRN56cg2JmcUTpPrjwLka8Yna7O9eJs6BNRzclNg71xNFWGsNPAESuJkMtGiGpugSM5oRinqS0t7wiUoOtf6TgACEhROmMHqYwOk1Urs7AEiOu8bixlagcgo4peXhtVaFUyE07bRFNFqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737154371; c=relaxed/simple;
	bh=/y1/8628XUrdp0EThDFV0VTG0xsxL5MacYNYs581oao=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hd4IxHRC6YJCATHqls7X6k+kK9J2wmuN5Wj/VPNzHKUfCH1HL+vX/XvSwF+FTKvqwXZ8iZpJT4b59/KNY8nO+wQVrWHlgzrA1e4iK4ghE5LBiYdyaYtEyIdSZYH0MjodPilGhq9zdQWFwkey0zduMs/lvv+SVdDx0OJkMlLMHo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeAH5B+9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E21C4CEE1;
	Fri, 17 Jan 2025 22:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737154371;
	bh=/y1/8628XUrdp0EThDFV0VTG0xsxL5MacYNYs581oao=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VeAH5B+9zGjMDX9W7OoxBQ4ZBNLcL57gBjmyOXFM2INX3f97bDSjNtHA9n4kyx6tp
	 kMex4xOu+uHv10arfGs0I7Lea+QqhIWPhFDf03b3zdagLAtwYIhfckJ6jrJZY62B+H
	 a1e7w4OrUs8hnlb4hMS7NiBszGhayT70V/MOeDPtD8zF++OnlQPRfGql4Bd6g0uOs5
	 F+aIuIkD3dVbEYGt/By8V/RSDnwPGcbcjHHzlB9k+IKngzih4+GAYetx1H7mdsILo0
	 UDEad5VVuDymb7o78UjJCPK97+olW6SxyS3ax33jBDq4ywmbfGtzDoirmQWZpnGYlj
	 3eZPzl24yDkug==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kory Maincent <kory.maincent@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
In-Reply-To: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
References: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
Subject: Re: [PATCH v2 0/2] Add support for power budget
Message-Id: <173715436899.82438.12417432089372586277.b4-ty@kernel.org>
Date: Fri, 17 Jan 2025 22:52:48 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-1b0d6

On Wed, 15 Jan 2025 15:41:56 +0100, Kory Maincent wrote:
> In preparation for future support of PSE budget evaluation strategy and
> power management, we need the power budget value of the power supply.
> 
> This addition allows the regulator to track the available power
> budget, which will be essential for prioritizing ports when
> making power allocation decisions.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] regulator: Add support for power budget
      commit: 42d7c87b4e1251f36eceac987e74623e7cda8577
[2/2] regulator: dt-bindings: Add regulator-power-budget-milliwatt property
      commit: 367a8200a91025289f9664e468fbc2b67c95e70e

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


