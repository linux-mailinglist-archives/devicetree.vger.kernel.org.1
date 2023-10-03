Return-Path: <devicetree+bounces-5633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D61977B6F42
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 19:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 85B3F281297
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 17:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EFE83AC15;
	Tue,  3 Oct 2023 17:08:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDF538DDD
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 17:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A67FCC433C8;
	Tue,  3 Oct 2023 17:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696352915;
	bh=z0khdQB11BoA0tQ40lKmz5sxH1m9xC78cFe/yLn2g6o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oIucdHjiAoMeu9S2B2ofb7H1+u6bLJgvxIzwxoJhO5ggZBy5WKoRWI6T/dVPA55vU
	 x8abIexv0M0heossk7yTWtHBnA4FXmaLLqsN/ypGorLlRpzY/2oIhdHjnnYE9ZA2Lb
	 csq7Di/OPv8lTrB5UVU91m3/6IZZAm3RFPP/8yZz2ayqOCntxWpkcrnlkxbe1QrnFb
	 PF2LCKBuCD2tEvmvRi6YpVntehrK9uC1+TOjXNPaSerqQfzDcfDD7YC2uMLnZufN2D
	 6kbBR+Q67GVa9Ca7sv3l6UWKsCgY+/LRZC1iE3aHXM11qu5OXJDU5kJoAEfOUJKDWJ
	 I20U96sourupg==
From: Mark Brown <broonie@kernel.org>
To: Weidong Wang <wangweidong.a@awinic.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20231002-aw88261-reset-v2-0-837cb1e7b95c@fairphone.com>
References: <20231002-aw88261-reset-v2-0-837cb1e7b95c@fairphone.com>
Subject: Re: [PATCH v2 0/2] Remove reset GPIO for AW88261
Message-Id: <169635291227.42044.6654746210996061480.b4-ty@kernel.org>
Date: Tue, 03 Oct 2023 18:08:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Mon, 02 Oct 2023 16:00:10 +0200, Luca Weiss wrote:
> The AW88261 chip doesn't have a reset gpio, so remove it from the
> bindings and from the driver.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: awinic,aw88395: Remove reset-gpios from AW88261
      commit: c7b94e8614e35f1919b51c23fe590884149ae341
[2/2] ASoC: codecs: aw88261: Remove non-existing reset gpio
      commit: 4eed047b76fa8f56af478ca7e6d56ca7e5330cf2

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


