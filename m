Return-Path: <devicetree+bounces-5571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2957B6A47
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 71A09281677
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A687262AB;
	Tue,  3 Oct 2023 13:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EB3250FD
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 841B1C433C8;
	Tue,  3 Oct 2023 13:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696339197;
	bh=bL/2RWcdfIs3uBPgbF0uigzU0E9baOJfVQtweOW66cA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gzECuFYFB67U4/QV8U0/sDvcEva1Sf84KNvoRerS3j/7DAF81qoa2nMJI6e4EfFfF
	 0Zkddvo2m2t3Te2gYMxksxAc81cTubgsjNXZb0DtLEt4H7nhc15BntmCEuRXysBluw
	 myNuOy3UwOGNvwAnxUIHM0t1WWQhz2eI0WhHA3aIPWlL81WNJ50H8NBmeFxyPaPIz0
	 xcpa1OgK26QjdvZc5QqKUtN0MKsI3C9wlabBJweHrICjwqfDNYSAgwYVo7qwmQ50e1
	 CZPEIoCFcrm/QiJ+trSkBB+juv46OGfLf8xH1Kk/0OA7NTvfbuW+i81KbRwLDEpi6T
	 XD1/QYTGP1MWA==
From: Mark Brown <broonie@kernel.org>
To: Joerg Schambacher <joerg.hifiberry@gmail.com>
Cc: a-krasser@ti.com, joerg@hifiberry.com, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230929150555.405388-1-joerg.hifiberry@gmail.com>
References: <20230929150555.405388-1-joerg.hifiberry@gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: pcm512x: Adds bindings for TAS575x
 devices
Message-Id: <169633919521.32637.15894077647457160748.b4-ty@kernel.org>
Date: Tue, 03 Oct 2023 14:19:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Fri, 29 Sep 2023 17:05:55 +0200, Joerg Schambacher wrote:
> The TAS5754/6 power amplifiers use the same pcm512x driver with
> only minor restictions described in the bindings document.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: pcm512x: Adds bindings for TAS575x devices
      commit: 736b884a7b68c4eeb66dbf75b97c8ec9b9eeff7f

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


