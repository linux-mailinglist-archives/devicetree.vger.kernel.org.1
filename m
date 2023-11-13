Return-Path: <devicetree+bounces-15390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8647E9E0E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8973E280E12
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698AE20B22;
	Mon, 13 Nov 2023 14:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Drbs0YDG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A00033C9
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D8CEC433C9;
	Mon, 13 Nov 2023 14:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699884331;
	bh=BImJbQdyy8K/BwKo67blmm2PDHtl8GBMMx8PUF5IKjI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Drbs0YDGgEsOUazwUsnBEIw4aoWbnNZQOWwkHKSyFutPSiDzEvqO+Wqr+EBcEWb90
	 +15VhmbfYsGx/LopTqZg1fRWozFvBr8a0Ex7/WQI0ShRjp682Bm7M39SAcWnCwMSw9
	 504WJ/b4SNY6nE+NTUTBFiRDerz2fxO1/NBf6aWVvUj+PV0Cz4RaZNjO2lAxRKuzjK
	 WtYgtYybkdGkLsQ9dGw2R6048DQFux+DHvW17Y/DSLTCU1MUKGFpnjB51D0pNKIzVl
	 20qyKVlu53f2KIFf16Y6rfJ4viBI+ZwF3JWTWTPcK7B15iCK2z6r6XZPJLILQkcw0k
	 fNsazvLHCl0FQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Rob Herring <robh@kernel.org>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20231101140923.16344-2-robh@kernel.org>
References: <20231101140923.16344-2-robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: Simplify port schema
Message-Id: <169988432788.3280890.8324291358177866186.b4-ty@kernel.org>
Date: Mon, 13 Nov 2023 14:05:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 01 Nov 2023 09:09:22 -0500, Rob Herring wrote:
> The use of 'definitions' is not necessary and also problematic because the
> dtschema tools don't process 'definitions' resulting in this spurious
> warning:
> 
> Documentation/devicetree/bindings/sound/renesas,rsnd.example.dtb: sound@ec500000: port:endpoint: Unevaluated properties are not allowed ('phandle' was unexpected)
>         from schema $id: http://devicetree.org/schemas/sound/renesas,rsnd.yaml#
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: Simplify port schema
      commit: 6d02f355c3d2fe86f503793e4df09898e9f9e703

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


