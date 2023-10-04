Return-Path: <devicetree+bounces-5918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 142537B8631
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 19:14:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B3670281689
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB1A1CAA3;
	Wed,  4 Oct 2023 17:14:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501156128
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 17:14:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DB23C433CB;
	Wed,  4 Oct 2023 17:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696439693;
	bh=PgL3evwIOV/77BxTPntvEU/hYBN5ZLqrDoo7IwbFWG8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LhDWcvdKs4il6Kx4Zt2qDoMbzPqBgvPotLQPmvaiQVcKRZtr7Z98AFeujETSwmPTi
	 tppbp1BGoqUVR96OqQtgXi6WuJQ4CEiNRXF2bwLnUzUgM5eF2dzud3gWblIGVb7uTI
	 6Yb3fXdyiJ1dOZhgyRFwvdn0+INoCG3sdWYc0Kcn2sJUnytZ8Zzx7zzYcF6TxF8EgT
	 Q5OwpK1fCThYYivVt3raoMEoEXz3nzESPI4/VlkquXOoxNFRdavMduHlUtA+q4m96j
	 EuH7/ldDqqmnxa4aRiiIoSQaOeqZ6EjiEJbPi25nVyzm+Td7izJhRN9vn7sVyzyAOv
	 GhauZ7rUlihJw==
From: Mark Brown <broonie@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, shengjiu.wang@nxp.com, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, aford173@gmail.com, 
 Fabio Estevam <festevam@denx.de>
In-Reply-To: <20231004122935.2250889-1-festevam@gmail.com>
References: <20231004122935.2250889-1-festevam@gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: fsl,micfil: Document
 #sound-dai-cells
Message-Id: <169643969102.45803.10283738118906505047.b4-ty@kernel.org>
Date: Wed, 04 Oct 2023 18:14:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 04 Oct 2023 09:29:35 -0300, Fabio Estevam wrote:
> imx8mp.dtsi passes #sound-dai-cells = <0> in the micfil node.
> 
> Document #sound-dai-cells to fix the following schema warning:
> 
> audio-controller@30ca0000: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/sound/fsl,micfil.yaml#
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: fsl,micfil: Document #sound-dai-cells
      commit: 1426b9ba7c453755d182ebf7e7f2367ba249dcf4

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


