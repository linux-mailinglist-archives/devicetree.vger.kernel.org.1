Return-Path: <devicetree+bounces-16435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 149BA7EEA3B
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 01:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF65D1F25172
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 00:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF9620EB;
	Fri, 17 Nov 2023 00:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUqbrC7m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00C11FD6
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 00:12:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEC12C433C8;
	Fri, 17 Nov 2023 00:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700179964;
	bh=moLxnZ5otQBgns4CuhLiZe+ZsKNZPLkGYUax/JLmD1A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bUqbrC7mbI3s9q6XSRZvCqvy8TVgjKsPWwWf1Bn39kIjhsmjQgTV3KYHEtNqwAPmE
	 9macPg9qs1lO6e8kfW9UxJOJpMXB6kLX9mSIoJdiDAczdc06NSXQF/6C7whJ9/3nEv
	 v+oX0oxXK+N47EX9+ZhRhUQiDmuqCyz984WVfK7bxRPb9BWMZTiT+2xG4WpdUisRmX
	 zoqEizX4NOC/pD7jjC3tHC/DyHBP3j433Whv80pWgBNkr12TOYR1BueWUHbjDujlZr
	 Vu/zKRYbZJ6tHDW/dgMit62exk4WsGP4uRHFYTx/J8lVEMVYrixn9JFo/wauXILlMz
	 dgYg8uMeHfWYw==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115205333.31076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20231115205333.31076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] spi: dt-bindings: renesas,rspi: Document RZ/Five SoC
Message-Id: <170017996148.86506.15627496184434095284.b4-ty@kernel.org>
Date: Fri, 17 Nov 2023 00:12:41 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 15 Nov 2023 20:53:33 +0000, Prabhakar wrote:
> The RSPI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-rspi" compatible string will be used on the
> RZ/Five SoC so to make this clear and to keep this file consistent, update
> the comment to include RZ/Five SoC.
> 
> No driver changes are required as generic compatible string
> "renesas,rspi-rz" will be used as a fallback on RZ/Five SoC.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: dt-bindings: renesas,rspi: Document RZ/Five SoC
      commit: 54a1dc08e1737552e6764f38837b19fae9548fb0

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


