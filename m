Return-Path: <devicetree+bounces-15447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D22717EA3E8
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 852031F224E4
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 19:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0621923767;
	Mon, 13 Nov 2023 19:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kxr8pe7Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD3A7E
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 19:40:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E15FC433C8;
	Mon, 13 Nov 2023 19:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699904450;
	bh=Sww/WWaJ51nm84r2fYUy70d6PRu+fd6AVzmVnWzJ8Js=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Kxr8pe7ZY2+J5nJ3lS//8qGM7EfFPIW/4giAq2x9J2xGT/AX4MkvGW4gLQXy1McRX
	 3MLKYj2V/ljB5JAgItq/LeuArUb81ZxdqmnevzKXzxmcoYVzo9MAN17Swm5OQjG84y
	 MfZYR2aJz0fr2LL5CMB/fTF9efF7mqgOE2YQzaTLmY5pY+Tz3EAA7xD1y6XNCTmMsR
	 YrfyynmdlLaQNUtWhoja90G0TGrvyQGhrCwwDlIhckTlRkOdygohQFzvH/tLEZYg6G
	 pVQ/jETK0OmYzkSVEZpNLZL2qjvURE7pIopB3zeZugdOMAAI0kT29kuVhAd/lXEAfy
	 4q6CyN/Y+i/RA==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ben Wolsieffer <ben.wolsieffer@hefring.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Erwan Leray <erwan.leray@foss.st.com>, 
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
References: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
Subject: Re: (subset) [PATCH v2 0/5] Add STM32F7 SPI support
Message-Id: <169990444654.3294163.14589555385933393439.b4-ty@kernel.org>
Date: Mon, 13 Nov 2023 19:40:46 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Thu, 02 Nov 2023 15:37:17 -0400, Ben Wolsieffer wrote:
> This series adds support for SPI on STM32F7 processors. The STM32F7 SPI
> peripheral is nearly identical to the STM32F4, with the only significant
> differences being that it supports a wider range of word sizes, and the
> addition of 32-bit transmit and receive FIFOs.
> 
> v2:
>   - Add missing commit body
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/5] spi: stm32: rename stm32f4_* to stm32fx_*
      commit: adde8a55daf640515edd78b7ac5f3293c3960b8e
[2/5] spi: stm32: use callbacks for read_rx and write_tx
      commit: 247ba5ea058290824862902f7ee64c20a744c461
[3/5] dt-bindings: spi: add stm32f7-spi compatible
      commit: 09388379b6d7143ed12fc06900ec9db3bb82ca8f
[4/5] spi: stm32: add STM32F7 support
      commit: a84dcb410b5f928899a53ba79ec71108700872d6

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


