Return-Path: <devicetree+bounces-3471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0927AEF2E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C691F28144E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E3852E65A;
	Tue, 26 Sep 2023 15:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB8826E09
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 15:07:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 545EAC433C9;
	Tue, 26 Sep 2023 15:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695740833;
	bh=dMkPat5SysTqeHQNXfaF030bIQgy5IudxutWzuQNBVQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ujsXl/1Nv8KE2evIgH5hWf4kNmGc4ef+8ZpkjU7oL1dZHDJHzI7fhwXmAsxr4O03m
	 J9IV5gB3ZF/VXUPfa+sHRFBOGqDVxxHIPont7eYa0D2e4Nu0Wi5wnmvjPwhI660QZO
	 Gxp5kMfk2vENWCj32HsuWpkuK0rqifg64KHXAGqz+W3Yntvm3C2TjQfYOuZVicAG5N
	 lurqpuV8VgS6v8wX/IG2acUrY/oUx83YHRXViQjZWltPVYTEv5t9Pg8Rky11tYab2I
	 kcK2OFqMLkz/dXicxzltMDesufljoDrG6K7+s4bLMQNnQXCNRTcKUgNEUwuj71aHFc
	 tQ47tdWxDoijA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Herve Codina <herve.codina@bootlin.com>, 
 Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, 
 Baojun Xu <baojun.xu@ti.com>, 
 David Rau <David.Rau.opensource@dm.renesas.com>, 
 Damien Horsley <Damien.Horsley@imgtec.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Rob Herring <robh@kernel.org>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
In-Reply-To: <20230925220947.2031536-1-robh@kernel.org>
References: <20230925220947.2031536-1-robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: Add missing
 (unevaluated|additional)Properties on child node schemas
Message-Id: <169574083005.2649266.12499263818632259969.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 17:07:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Mon, 25 Sep 2023 17:09:28 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Add unevaluatedProperties or additionalProperties as appropriate.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: Add missing (unevaluated|additional)Properties on child node schemas
      commit: 7b71da59122c3ab82908910abf78db1fd6340cac

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


