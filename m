Return-Path: <devicetree+bounces-5634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A187B6F44
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 19:08:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 79A73281340
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 17:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E273AC38;
	Tue,  3 Oct 2023 17:08:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1273638DDD
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 17:08:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA139C433CB;
	Tue,  3 Oct 2023 17:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696352917;
	bh=c2Amx6bwFllppZWhw8zB9Zq4+W/JCoESVGF4gZggaYM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=njLVv3nX1o4MOD24uGsN7Q7lYhGER1gt6o5JaKCzoD2RF+azLcdEq3jJe/a0bo+DS
	 GwjuQWcBBMntcj4AqIbunDSINJ+FcHshd9CAUddVntBYT9GD4bVaqE0QRNzm4zSEkz
	 GcCVWVgMmw2V4A9dUm+5u7AnVzRnQ1b+cXiroCAW6Vl5vcdY2ljb/6rWsWhNku1PJK
	 2ETgSSCrmT8zIGz+6dJ9aBpkB7HuIvsncZ+mjS54I5ANomltyMGVdPx1qm800sGRNn
	 QTCHPIgZ73ZMzNqm6iHgBJdTnJmAo/hFK+orPDoJEWigTWDPv38Gh0kP8HGeednneS
	 z19ntSi8Kapug==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230930165050.7793-1-bragathemanick0908@gmail.com>
References: <20230930165050.7793-1-bragathemanick0908@gmail.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: rt5616: Convert to dtschema
Message-Id: <169635291560.42044.12417015204070109267.b4-ty@kernel.org>
Date: Tue, 03 Oct 2023 18:08:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Sat, 30 Sep 2023 22:20:50 +0530, Bragatheswaran Manickavel wrote:
> Convert the rt5616 audio CODEC bindings to DT schema
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: rt5616: Convert to dtschema
      commit: 943bcc742ec4d7da4d26477f2188940ecad76569

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


