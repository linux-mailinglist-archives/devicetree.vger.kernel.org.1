Return-Path: <devicetree+bounces-3434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4D57AED73
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B1E662814D7
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C63728682;
	Tue, 26 Sep 2023 12:59:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB6E2770B
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:59:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92312C433C7;
	Tue, 26 Sep 2023 12:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733154;
	bh=8OPH6fdZmxW9hzhSZ6GTdizBjGtF8h0BxZvvcOHPmH0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LFTvn0+GPAs5FoSR92isRJYAcjceYWTmaywhqFLwDqGSKMiBGiJbU/SPtQYQ2GhH0
	 Cds5mzhyzmLqnC54zrcP7IZE8Lqqr//p0MYLd3db/LdQNE7w+Z25ZoIMYfEsUV4nb0
	 rAzU6A7xDPRRebkHeGLCcEf3tvKMYBmdaICjTwZh8cAl1dBj4wxnQCJmrVeVk0AW17
	 YpzC3fv1AfoOmqxNj5bpkBqfcIN7xQ8tyJCI8LwYoVYdrtqrOWrQBbD6LqQ9SHIkiA
	 dL6nqiu9fxsEdSt7cbT/qz3708CnSgV20BUN5vLkxTTAjLtcd2ermsv8pDfeC8aBdm
	 scUTbMnECpTXQ==
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Iskren Chernev <me@iskren.info>, 
 Christoph Fritz <chf.fritz@googlemail.com>, Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20230925212658.1975419-1-robh@kernel.org>
References: <20230925212658.1975419-1-robh@kernel.org>
Subject: Re: [PATCH] regulator: dt-bindings: Add missing
 unevaluatedProperties on child node schemas
Message-Id: <169573315231.2623509.9216058282613646020.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 14:59:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Mon, 25 Sep 2023 16:26:53 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: dt-bindings: Add missing unevaluatedProperties on child node schemas
      commit: 66af368359816d62cf91ed1b02fe99f9a4015f3a

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


