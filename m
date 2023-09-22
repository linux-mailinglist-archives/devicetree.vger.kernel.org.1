Return-Path: <devicetree+bounces-2592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5377ABA0E
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id D98D91F235AC
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 19:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FAE45F79;
	Fri, 22 Sep 2023 19:28:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E664B45F68
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 19:28:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19D8CC433C8;
	Fri, 22 Sep 2023 19:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695410909;
	bh=PJwZweM/qxn0xzKrOgdVPLEbGE7bz46ZA01+diOI8W8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=J2mQSRfVE5nXJ+OEyvqc9xAUfUN6pshA1cMF3fZ1Kq++BkTJUtrtIgiMjW3X8J0sI
	 e/DOPjqFG5gDMXdpnahS83a3MyHwhRp63mP3avwYQ3WOm58NSuRF4VaolL45YIYr05
	 fiALNy7KMOWCKPy2rCVSrymSWwbZXa1IEyVPczQRWkr43OYjzJve5LM0CZltgISHD8
	 Ns9EGttnIYpqfzHcZ8vUgaOvnBleGZ8iGd5oyCJki760iWXt0xyrR+GrV5NrBibLcb
	 3pJhfH+IEkhCRytREhzgJgPXAfgQnxO9UrLkDG5uqEq9KfM8I7ocx2Es4Z/8+dGG1o
	 yLlis3PgC9Tvw==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230921183313.54112-1-bragathemanick0908@gmail.com>
References: <20230921183313.54112-1-bragathemanick0908@gmail.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: tfa9879: Convert to dtschema
Message-Id: <169541090782.56212.5542845690705376801.b4-ty@kernel.org>
Date: Fri, 22 Sep 2023 20:28:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Fri, 22 Sep 2023 00:03:13 +0530, Bragatheswaran Manickavel wrote:
> Convert the tfa9879 audio CODEC bindings to DT schema
> No error/warning seen when running make dt_binding_check
> 
> Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
> 
> Changes:
> V1 -> V2: Fixed DT syntax errors and doc warning
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: tfa9879: Convert to dtschema
      commit: 39fce972fd7259395663586e59388d702afec30e

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


