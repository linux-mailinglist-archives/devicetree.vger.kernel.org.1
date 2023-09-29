Return-Path: <devicetree+bounces-4527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CE87B2F0B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 11:18:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 28DD8B20957
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 09:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4333C11C9E;
	Fri, 29 Sep 2023 09:18:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C329CA7A
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:18:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E219C433C8;
	Fri, 29 Sep 2023 09:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695979099;
	bh=sSE2ufPYYysKrqreHDDK6x2F7lHFW9wHus1rU5Gyqa4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OL7Z9t0eGVsDSZPFGnlt09R/M6FKqLC+BNINqQyS273SmJtKHDd7hncmOQ3Hz2mm1
	 sqwfWYo2xUCS+ThqHPjVQ0z0OAXY7a++BMPrWZMWc6o59LGZfMDrPmB0V8SRh4LK6s
	 oWaE8PDlDyxGaFtH0kaMwOEczo26uNKrhypDbVhJPCQRtjeBZsK1885SpjhDB/M6qn
	 xJD5wi0NEQdSWtOzjoTpXqpUFO2TBzkaanViCpM8r7wDYPBTwHsuFKm/d87Bg4sMZJ
	 OxO38KYtoJBUHzxKxeKISDQ2OuGns38N9UKXP40dK0l2a55wrtqlF1nAgXoEn2sgfZ
	 s569bjJS3Y49A==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Rob Herring <robh@kernel.org>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230928194126.1146622-1-robh@kernel.org>
References: <20230928194126.1146622-1-robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: Simplify referencing
 dai-params.yaml
Message-Id: <169597910032.2796594.13616316041876097635.b4-ty@kernel.org>
Date: Fri, 29 Sep 2023 11:18:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Thu, 28 Sep 2023 14:41:16 -0500, Rob Herring wrote:
> There's generally no need to use definitions to reference from
> individual properties. All the property names are the same, and all the
> defined properties are used by all the users.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: Simplify referencing dai-params.yaml
      commit: 967dad97757057dcd72ec27cdb3c14c1774f606c

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


