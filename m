Return-Path: <devicetree+bounces-247708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A55B4CCAB11
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5340430287DD
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 07:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2DCF2FFFA5;
	Thu, 18 Dec 2025 07:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeNltBhF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5FF20311;
	Thu, 18 Dec 2025 07:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766043398; cv=none; b=feQsBloScpnFh/ABoZ/hceTQ1MiKrloJpxVvew78bquD35iGN44lAWhYV1gWrTaFaioiuUd05u/MLO1mpx5k/S6YfrGr/4qP1Bx05mMznuqiPe7QeSVz2mQcpjtz4EoRgV8DpuRo8jCfAAXAxFYrGEw2gSpPYY06t84IAyWudAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766043398; c=relaxed/simple;
	bh=eHPSATtSo9pCkzht8qfZCWdLaoBUH6EX+lUcwfUNWhA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p/nyDblJstYknRIFGWnjOTP9XPowPA8uqVJWOFFj2mEq3Q8/uYUf6jAonGT1dRovRKmzTg8U1JFJ00d3W0eptnfa1kcN0JTc8IGT2ppbj6sW7s0KuOx49e+XGDgAgi3ev+VoKrTr2pYcFEhMo+mM487kp9jv0Nddg3vQrPrLA24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeNltBhF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C40CDC4CEFB;
	Thu, 18 Dec 2025 07:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766043398;
	bh=eHPSATtSo9pCkzht8qfZCWdLaoBUH6EX+lUcwfUNWhA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BeNltBhFjhdDLKI4LeBC76owqcvdlq1r0wiBDs58H8csQTZj4k+b2pNZE/CuwU4Fs
	 tIXFXCZdZwUeq8ddgKvOdUqzu4g3ppYPDVe/7VIf9EMJgZ3Y2MVMKUN/LRYxuoqNSU
	 gEvWMYT0R3+iXNYdWGxmtwAraOdZ6+JL4KwFaXB8XsmablbHnyhYbA1aEy1Zy7U6wC
	 ixht2Xs4tuuOwoQlckrIU200DYAXJe36a2MS2xOLH/wCTA7U2JDo090z4ERj7lfi3s
	 bA4q5v+z1Zp3DFWOC+P0vCmhZKqbVlptWMO5g2ol56xHfVt6O/qCK7RVQPAOsvmLJF
	 xpAZONw/0M0NQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Joan-Na-adi <joan.na.devcode@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Joan Na <joan.na@analog.com>
In-Reply-To: <20251021050830.185626-1-joan.na@analog.com>
References: <20251021050830.185626-1-joan.na@analog.com>
Subject: Re: [PATCH v4 0/2] Add support for MAX77675 device
Message-Id: <176604339651.24885.14511905200223848345.b4-ty@kernel.org>
Date: Thu, 18 Dec 2025 07:36:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773

On Tue, 21 Oct 2025 14:08:28 +0900, Joan-Na-adi wrote:
> MAX77675 regulator driver and device tree bindings
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] dt-bindings: regulator: Add MAX77675 regulator binding
      (no commit info)
[2/2] regulator: max77675: Add MAX77675 regulator driver
      commit: 9e92c559d49d6fb903af17a31a469aac51b1766d

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


