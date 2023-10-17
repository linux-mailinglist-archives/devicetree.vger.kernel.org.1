Return-Path: <devicetree+bounces-9314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EA77CC9FE
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:39:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A786128127E
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 17:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D379CA49;
	Tue, 17 Oct 2023 17:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwIVnnEe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B9344469
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 17:39:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A258C433C8;
	Tue, 17 Oct 2023 17:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697564384;
	bh=tbY7wgGRlO6v5IUjQhW+hckUTRT1IP/RqORMcLcgk+8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SwIVnnEeSl3s6cGRsKx8rDN9O6cfILhT9uiTQpr4+svVReYz3okZbW6PfgYQMJf1t
	 hKZAZNxjj8ersJiDzQoE5PFs8vUL+zpznTSuDprjCVQQ3ZI3fadEJ7VgD7qxTj6CnW
	 2c6On+F5wHiovG2jjc1ye3vC5heV90Y0CkXbFdvnI5p8Oqa/MYjaGnfFDQNuQO8cKW
	 Anbb7VaLIV2t6N9Etk15JCVoX9ZSmP6oUfqk3pBHVsmVJX4Lbpax8hPVcq/iLMx6p3
	 +Q9X9hDttPCdj7BTRjY4iiTDqJj9UowiDqhORG6r2xKD0WpkxugEpyRLI0dXpyBt+e
	 t+pwuWqzFJUfA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Daniel Beer <daniel.beer@igorinstitute.com>, Rob Herring <robh@kernel.org>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231016155547.2973853-1-robh@kernel.org>
References: <20231016155547.2973853-1-robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: tas5805m: Disallow undefined
 properties
Message-Id: <169756438301.1863854.2005606398222182933.b4-ty@kernel.org>
Date: Tue, 17 Oct 2023 18:39:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Mon, 16 Oct 2023 10:55:47 -0500, Rob Herring wrote:
> Device specific bindings should not allow undefined properties. This is
> accomplished in json-schema with 'additionalProperties: false'.
> 
> Examples should be last in the schema, so move additionalProperties up
> while we're here.
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: tas5805m: Disallow undefined properties
      commit: 086357275fc7635c5a2856c667b3d2f7604403fa

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


