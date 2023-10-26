Return-Path: <devicetree+bounces-12227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 331D97D8747
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1432281F7A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 17:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E01381DF;
	Thu, 26 Oct 2023 17:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9OmEuaT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5612E3E9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 17:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67392C433C8;
	Thu, 26 Oct 2023 17:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698340218;
	bh=pxnkdIlXjGbj0R9REeTamfZwwcR9rdS0B2bEwp165H4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=J9OmEuaTEt2edm5kYh6st4RPPgw+qSTWLz3Kx0Xsd90Ab/YIDsUnNr6jC/CTfJKKB
	 Gsewp9IB5N47fxa8NgZ3F3+HdSMUE3oFImmZcs2dpw1qUC/Yc3HGc/a5vr8+3kZpRe
	 twjcFIetZwkTsV9L01auQZ6EaVr3uRhFvTBGm1rbSlUj3PMFc+W12MBwzHUM1RCnDh
	 +QOkKgigHCTXkX7wC2tLiaQkCvoovIh4R/+puSdqKe+0yUtfa2pXBgB1lzbsPl4wo3
	 g4oegqH5gtR9dM1ujqjspDNf3tyBZOkDH44I9lRtkK4gtTn734jaaT4qlpX8Yoj8jF
	 Ya6vfwg+nhu4A==
From: Mark Brown <broonie@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Nikita Travkin <nikita@trvn.ru>
Cc: jenneron@postmarketos.org, linux-arm-msm@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
References: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
Subject: Re: [PATCH 0/2] sc7180: Add qdsp baked soundcard
Message-Id: <169834021081.149939.3520512411729712585.b4-ty@kernel.org>
Date: Thu, 26 Oct 2023 18:10:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Fri, 20 Oct 2023 20:33:45 +0500, Nikita Travkin wrote:
> Some devices, such as Acer Aspire 1, can't use lpass dirrectly, but
> instead must use adsp core to play sound. Since otherwise the hardware
> is, usually, very similar across the devices on the same platform, it
> makes sense to reuse the same boardfile.
> 
> This series refactors the sc7180.c slightly and adds the functions to
> control clocks via adsp instead of controlling the hardware directly.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: qcom,sm8250: Add sc7180-qdsp6-sndcard
      commit: 5443d186163c6ab0084a5b23c901e0f9ba792463
[2/2] ASoC: qcom: sc7180: Add support for qdsp6 baked sound
      commit: 4531f512e3ef147f07d47bceb256c0af5ab130b7

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


