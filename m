Return-Path: <devicetree+bounces-7375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A897C0379
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 20:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FA71C20BF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8720D27707;
	Tue, 10 Oct 2023 18:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulwJccVI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2B718639
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 18:33:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E1C5C433C7;
	Tue, 10 Oct 2023 18:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696962827;
	bh=sZ/2OHJxY8bHQQM3jwEjvDUlRp1QAdM//5vOwwb3o2E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ulwJccVIH8VHg2vRllrc2ydedgCGB0pR75FnjaW3/bmybxhrLTMYSEWWjxnc5IJbf
	 mjZnYn8Mg8Mnph8NFaPMlbNiY0Tzu6AYm+jmcPrgasGzdeHLi1ZwCuDm97cnxrfdMC
	 IGw7zMUjXaj5MFFo1ZIRHEb5tzIB6/XbkXLjkvycVTTDcxPgu64lGGCsdgQ56pNodT
	 ieJJmuAMXEFX4JuqInJOGZ9U17z9gc1FrZJ83gCLB0NuBhGTYhu9uQqJFGAfMhflAa
	 9797BcTG0LuP/axkuVkwMe+GiV1lTzheQsCXNVnCU4CU8TnCJ2pEwtx4LXDU63c8e7
	 WLSjv0A+6xcKQ==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Chris Paterson <Chris.Paterson2@renesas.com>, 
 Biju Das <biju.das@bp.renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20230927162508.328736-1-fabrizio.castro.jz@renesas.com>
References: <20230927162508.328736-1-fabrizio.castro.jz@renesas.com>
Subject: Re: [PATCH v2 0/2] Add RZ/V2M CSI slave support
Message-Id: <169696282402.222014.2482702719398525940.b4-ty@kernel.org>
Date: Tue, 10 Oct 2023 19:33:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 27 Sep 2023 17:25:06 +0100, Fabrizio Castro wrote:
> the CSI IP found inside the Renesas RZ/V2M SoC supports
> both SPI host and target.
> This series extends the CSI dt-bindings and driver to
> add SPI target support.
> 
> v1->v2: I have dropped properties renesas,csi-ss and
>         renesas,csi-ss-high. I have added property
> 	renesas,csi-no-ss, and to configure SS as active
> 	high one now needs to use property spi-cs-high.
> 	I have also purged "master" and "slave" as naming
> 	schemes (besides for the title of the cover letter,
> 	to make it easier to follow this discussion), I
> 	am now using "host" and "target" and related APIs
> 	instead.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/2] spi: renesas,rzv2m-csi: Add CSI (SPI) target related property
      commit: 4056d88866e5941ebd15fb2523119f0ddc5186da
[2/2] spi: rzv2m-csi: Add target mode support
      commit: a4f7ef6db74197898c48236ad01f8e0eccc1e52b

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


