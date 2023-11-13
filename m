Return-Path: <devicetree+bounces-15432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3A07EA10C
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 17:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3885E1C208C4
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB70721A1F;
	Mon, 13 Nov 2023 16:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBCN6bHy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FDB21A17
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 16:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0210C433C8;
	Mon, 13 Nov 2023 16:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699892089;
	bh=Wo5otqcyJKAOgLF2JvrplvCMcLhcQRTUClyysnN30PY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QBCN6bHyLufLzGNHunYTSxGt1yCYOhXVradn4REqoB/m4LPAo5evtxuAVuVLP3IOl
	 AlZfMPifjMuvPIqUpy5Z3hhsTL40P8CeNTwtsc48UpMWIMuWIn/djlHO780yWF/Qt2
	 f6cqFsw3EQaPLxytHq60PA8rgsH0MCEu6UWzG3ruQbZhUARlIYVQ4FGDIOj1YQabtW
	 +l0CxSTsG7knD9SUrZSgEylwrxixpKxyiN+dI2Tqt278dv5GkuK3H2qcN7bKTnnBez
	 DwSEt6x1dKrR5S9dXqPuk4a6iissCzdbRf0EhV3fB4hUyQckx1lNNSkmfkONVMN4ev
	 mVVSH53jO33IQ==
From: Mark Brown <broonie@kernel.org>
To: Seven Lee <wtli@nuvoton.com>
Cc: lgirdwood@gmail.com, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 robh+dt@kernel.org, conor+dt@kernel.org, YHCHuang@nuvoton.com, 
 KCHSU0@nuvoton.com, CTLIN0@nuvoton.com, SJLIN0@nuvoton.com, 
 scott6986@gmail.com, supercraig0719@gmail.com, dardar923@gmail.com
In-Reply-To: <20231107035230.1241683-1-wtli@nuvoton.com>
References: <20231107035230.1241683-1-wtli@nuvoton.com>
Subject: Re: [PATCH v4 0/2] Add DMIC slew rate controls
Message-Id: <169989208519.3289099.6577549034579346529.b4-ty@kernel.org>
Date: Mon, 13 Nov 2023 16:14:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Tue, 07 Nov 2023 11:52:28 +0800, Seven Lee wrote:
> Determine DMIC slew rate via property setup.
> 
> Change:
> V3 -> V4:
>  - add "maximum: 7" description.
> 
> V2 -> V3:
>  - Update description of DMIC slew rate and remove
>    "selection" key words from property name
>  - Corrected variable name of DMIC slew rate from c file
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: nau8821: Add DMIC slew rate.
      commit: 1fb1a7c4a6328aff97eeca513fe7239099c13016
[2/2] ASoC: nau8821: Add slew rate controls.
      commit: 91d1a18b6381abd7a0137449fe345924072e4a32

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


