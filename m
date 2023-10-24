Return-Path: <devicetree+bounces-11415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D9D7D5B37
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:10:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1D35B20D5E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB043CCF2;
	Tue, 24 Oct 2023 19:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX2YVeM6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC59E3C6BE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:10:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97408C433C7;
	Tue, 24 Oct 2023 19:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698174651;
	bh=9P0Xbi4QRhEOx6Tg+9+CA1C0vPu9RF8BUGInzmbyOX4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KX2YVeM6JhaE+WWjcdrpxwZR2Jqj5bQRfk+uWPi/b3K/VXM/fsgq1NBf9VYbHx+RZ
	 JNBpz6ooqEUsB4OOrYIsn3Mc2GrpIWa9+Puri4d0Y0reKDc6zXLlLpRj0+o6WNPp10
	 aP00UqJcNnlGmcDupvWGmkIPrUwx4YPSfiDhof72PLHGKZkt9GsO7L9DZ3DPB4yZSu
	 z/LG1HS2DGqMLTrGeFux5aupXTpxicnruDGusZXlghLyxlT5zcaTjwWnV30vzQjzAS
	 4d+alanio7lKQrOIyvY8aNf8F68wUXgKrV1ekbN8jpY/z49/2bf1xZC1g7b5rDq39f
	 eA4SeRYHE1/wA==
From: Mark Brown <broonie@kernel.org>
To: Support Opensource <support.opensource@diasemi.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>
References: <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>
Subject: Re: [PATCH] dt-bindings: regulator: dlg,da9210: Convert to
 json-schema
Message-Id: <169817464932.84334.9478753707523977088.b4-ty@kernel.org>
Date: Tue, 24 Oct 2023 20:10:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Mon, 23 Oct 2023 11:04:45 +0200, Geert Uytterhoeven wrote:
> Convert the Dialog Semiconductor DA9210 Multi-Phase 12A DC-DC Buck
> Converter Device Tree binding documentation to json-schema.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] dt-bindings: regulator: dlg,da9210: Convert to json-schema
      commit: 7a198e0d48167db90e50777aab5a83a74e351f71

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


