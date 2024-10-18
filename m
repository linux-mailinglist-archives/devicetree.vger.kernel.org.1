Return-Path: <devicetree+bounces-113014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 422CF9A4536
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 19:45:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB510287CC7
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 17:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAA12040B3;
	Fri, 18 Oct 2024 17:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuHLoSAD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C510720697C
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 17:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729273444; cv=none; b=hWmnwGoyhksMCYT3yN7AAgs7LCyH4Gytw8dMNDATzUm7F/nOIkIRYLkjBDwWGb7xQx3EMC61WJ9TR1zd4nNjXq9XHR+MFUvnHtCtpcDyKdE3benSTh6qqv3bHNe3dnp88tVB8laEcDmE6K4CB1lkU1SZVsH28u4TldqhaEvZvFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729273444; c=relaxed/simple;
	bh=SGf93Q+76khMyzHMC3+u3hAwkzaedACTmxlUAF45694=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PJcfuCP1q1IjMqXpfjYYg82ZQfuQEgUeiBf+tPnQCApnT72C/4G6xz1PjxgldNYJp72ss07FiaXj7CFbTo6yKsM1zb9bGrPJoGj4/A986z5KAeYmh3V0y9a2tJUypzJfYrJyJKwNfRC7R6c6diuN0hjnlpeYoVV4FLZJRdsNtQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuHLoSAD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 760C8C4CEC3;
	Fri, 18 Oct 2024 17:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729273444;
	bh=SGf93Q+76khMyzHMC3+u3hAwkzaedACTmxlUAF45694=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UuHLoSADUxNK6UIXosnMEYWiCLEIIRtWUasRoDvtqhLVC2991wGtW++CJdiVjaEMk
	 qzcZxmeMgF6VZxBp7Az0IbTESEpkLpVx0/NxaI+2lLF+xrq94T95iGkQfiaCo2951V
	 i8rIKVEv3VpJWVNFnLZbU9kRFqAunCVjkTJAM2lp/YH2mUTmaoU7NhJ/h/6srqH6g6
	 dI/hxKQKeIMGnCjxmAnCOpQfk3gcto2qgb4bAuMxCz600XU+Vb0R4W0vb30XK+6SDp
	 lwF9zqBmNNB/K4focJam42kzvltRY90rsfFRISkwOingXg9UGR0cAhH1fYYWKCGSvt
	 uM/BA6FdaIo0Q==
From: Mark Brown <broonie@kernel.org>
To: devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Tim Harvey <tharvey@gateworks.com>, kernel@dh-electronics.com
In-Reply-To: <20241016225235.114635-1-marex@denx.de>
References: <20241016225235.114635-1-marex@denx.de>
Subject: Re: [PATCH v2] dt-bindings: regulator: lltc,ltc3676: convert to
 YAML
Message-Id: <172927344214.163811.14575887164687764859.b4-ty@kernel.org>
Date: Fri, 18 Oct 2024 18:44:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-9b746

On Thu, 17 Oct 2024 00:52:17 +0200, Marek Vasut wrote:
> Convert Linear Technology LTC3676 8-output I2C voltage regulator IC
> DT bindings to DT schema. Add missing interrupts: property as this
> IC does have interrupt line and it is used in existing DTs.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] dt-bindings: regulator: lltc,ltc3676: convert to YAML
      commit: eab92ea3c1c31b6917fa1665ac8a30c21d9eabfa

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


