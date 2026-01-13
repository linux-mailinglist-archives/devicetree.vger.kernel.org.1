Return-Path: <devicetree+bounces-254699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1780DD1B062
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 896D9300DB16
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37B230CD92;
	Tue, 13 Jan 2026 19:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUUeiyTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C782749C7;
	Tue, 13 Jan 2026 19:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332255; cv=none; b=CaJ1p6qA3bzFj5GM1gRvm8ZAvxvbD50p24O7Mg6GRLOaexZli4OeWuhZyv9fipy5K/R7Y/kQZxWnJyiyYN6G6sgM82PlAK4C/WwIiS4cK+dMfnk+kmZ0nLR+FXjipCRwCf3ArlsWXN7/QFFTYrt4uNXfV7abQI8PGe79ZzmAhw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332255; c=relaxed/simple;
	bh=aGHnWKoxrswCR40fkHeiu5haG1V+3VsNg1NaCX4sHok=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YU1P09CN1c34JKWSn3otA0Md85KmdsXWCT8AP3RoIqw60mEqZLfQkZ+DJ+dhDqeLCEbhak1OuRpntyfWwsXNnAB1BIrj7R/QHVsce2OjUCvnyaUsA/dx+YzP+bWBa5Hei0aXDcu7h88zb7KhJd7h6dCGHMVZ3T1dn3gqF1GlU1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUUeiyTQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 151DEC116C6;
	Tue, 13 Jan 2026 19:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768332255;
	bh=aGHnWKoxrswCR40fkHeiu5haG1V+3VsNg1NaCX4sHok=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AUUeiyTQsH+8Ff90pRPQiD0ZDy3y8YIaNa3NsR+dHpNAx9NETSLaInWq+zL+UYXEz
	 Ji4YQKc4VdzBgCOPCOGT9iNsvs5RUMica3J40WLrbUovCLpfsNINQIPHtnyBbjlcbN
	 R3s6yWMyPrmdW04H8eoTg8YkOB9UcQmPglYsNY5jYPkS8u3KmnA05ohrHmWN59kFFJ
	 nXZNcF3BhxySjF28POISn6HyMV2uflm8J5RmJ6W56OPlKsxgkJwhYHtyZFcPbLFNuU
	 HT/hZgK5HVyuZJkRJz69NsV+IdkqaVhRJeYMz2XSzSFqYmDK8OsOEtnu2WVtnDcAC4
	 1QhkgJn7lSJwA==
From: Mark Brown <broonie@kernel.org>
To: devicetree@vger.kernel.org, Marek Vasut <marex@nabladev.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org
In-Reply-To: <20260107213638.505319-1-marex@nabladev.com>
References: <20260107213638.505319-1-marex@nabladev.com>
Subject: Re: [PATCH] regulator: dt-bindings: rpi-panel: Mark 7" Raspberry
 Pi as GPIO controller
Message-Id: <176833225281.1138309.16211933019311463007.b4-ty@kernel.org>
Date: Tue, 13 Jan 2026 19:24:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773

On Wed, 07 Jan 2026 22:36:25 +0100, Marek Vasut wrote:
> Mark the Raspberry Pi 7" Display 1 ATTINY based regulator
> as GPIO controller, because the hardware behaves that way
> in addition to being a regulator. Add fixed gpio-cells as
> well.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: dt-bindings: rpi-panel: Mark 7" Raspberry Pi as GPIO controller
      commit: 62b04225e99a5d1c71c5c73d2aa6618bc2c0738f

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


