Return-Path: <devicetree+bounces-3368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4AC7AE8E3
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7BC6A1F256F4
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7CDF12B85;
	Tue, 26 Sep 2023 09:22:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9786A63AF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:22:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E34C1C433C7;
	Tue, 26 Sep 2023 09:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695720177;
	bh=7bQwHcH+xWHqv+nnB0YFhg3IMMKQkz8UhvLE1d7eG8M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=M1xplYQZkL0gLVXD6WWu6NC2lSVGCgPQjwpbfvsjP9D6W5G6vJs3/Zj99PU2el5t9
	 1sAWwaQfmb+sBCMvniIPJHBkWynklQ9WZqKyZyYN2h7Fn0Ylmai86/njsMolJSW5lt
	 jOdnhXSD9YzXlOqRcAJcRuzICo9zDSkUD8UgCQhRwCThgtlMOPSq9sd14subNz101N
	 Y1SJlV2MzEhyUX/DQBxf088+RvlBd1Vd/MlK7vQSQb8EzWyNP5uSVHBuhXoDxN5Eco
	 IgXTQBXFY63ITCIKmywywL7ZhnBnop0tmjEDdNkOuARjoy4AqACBsbzYdATlCtGt0O
	 BPwpzeok9xgqQ==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Erwan Leray <erwan.leray@foss.st.com>, 
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
 Rob Herring <robh@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20230914190049.1853136-1-robh@kernel.org>
References: <20230914190049.1853136-1-robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: st,stm32-spi: Move "st,spi-midi-ns"
 to spi-peripheral-props.yaml
Message-Id: <169572017456.2563985.7790100096745250244.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 11:22:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Thu, 14 Sep 2023 14:00:42 -0500, Rob Herring wrote:
> In order to validate SPI peripherals, SPI controller-specific child node
> properties need to be in a separate schema, spi-peripheral-props.yaml,
> which SPI peripheral schemas reference. As there is just a single
> property in this case, just add it to spi-peripheral-props.yaml directly.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: dt-bindings: st,stm32-spi: Move "st,spi-midi-ns" to spi-peripheral-props.yaml
      commit: 0fc57bf1b2ff178377e756761a884d4b6c69ebf9

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


