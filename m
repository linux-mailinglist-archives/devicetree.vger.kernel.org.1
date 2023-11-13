Return-Path: <devicetree+bounces-15445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A86097EA3DB
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:40:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DE7D1F22339
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 19:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F61223759;
	Mon, 13 Nov 2023 19:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsZZWhUE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BDA7E
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 19:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBB5DC433C9;
	Mon, 13 Nov 2023 19:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699904422;
	bh=IpoByWBgnZ9Y8umDh6gPWEOFaahmHU+Z8NZH/wvPrfw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WsZZWhUEDO4PUvCFOo5OHTpP4UlgIaMQIpl/D1KTsHPqSIRhNdzVVUMRtnC3gto5s
	 pkYdqgXWsc0MAfzBqcIkZDBFTtsF0jqsg2FZ0BJnYru8kfR+4z4Nh71iU+S3TrYDJI
	 Z3vsGd0G/kyJ1JS1W+oPUXt5GUJ6w7w9G5mB2+8C8HUgbU5xPPBsiWZ3KDrOTraSb5
	 kjj8xEECk8oJai2IlYAvsjPQjIOTdVAPcD+IVOr1gqFmPKzaFR4SHDuQB1iUUG8aLk
	 54vRPr4r5byc2SRWk1IyyIV50WHIS0RGwgxIV/slPpM7mOzWtG1wQPnrGWns2zjh1F
	 JMbI668pdIQbA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20231026144824.4065145-1-o.rempel@pengutronix.de>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
Subject: Re: [PATCH v4 0/5] regulator: add under-voltage support (part 2)
Message-Id: <169990442012.3294075.3943279581886493793.b4-ty@kernel.org>
Date: Mon, 13 Nov 2023 19:40:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Thu, 26 Oct 2023 16:48:19 +0200, Oleksij Rempel wrote:
> This series add under-voltage and emergency shutdown for system critical
> regulators
> 
> changes v4:
> - rebase against latest regulator/for-next
> - drop mainlined patches
> - rename regulator-uv-survival-time-ms to regulator-uv-less-critical-window-ms
>   to fit it to actual use case
> - avoid some of words in commit messages
> - us switch case to parse critical events
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/5] regulator: dt-bindings: Add system-critical-regulator property
      commit: 0e1c8dcbdecefea93dee19419b2f67dca591dd42
[2/5] regulator: Introduce handling for system-critical under-voltage events
      commit: 8156c7dd47b92fc4a70c9ea58e7a9e88c8bc32be
[3/5] regulator: dt-bindings: Allow system-critical marking for fixed-regulator
      commit: 633cd1c0a9de7609f97c0c86e3ac81153e8263b0
[4/5] regulator: dt-bindings: Add 'regulator-uv-less-critical-window-ms' property
      commit: 759e2bd96971763db1cfaf6cafc07654b12aa21e
[5/5] regulator: Implement uv_survival_time for handling under-voltage events
      commit: 1e22152aa59d793743fc53051dd7a042f362aecb

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


