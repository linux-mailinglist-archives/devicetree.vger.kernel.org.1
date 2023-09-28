Return-Path: <devicetree+bounces-4314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1667B2020
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E89EC1C20980
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5FC450F3;
	Thu, 28 Sep 2023 14:51:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9063941AB8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36AC9C433A9;
	Thu, 28 Sep 2023 14:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912686;
	bh=JRSsDtLzeKIy9n8963zFa9jQq53Jmt6jQUGB+nO+3dY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KhbGXl685KDuzQMQKK4KmHyr+//v0EOw1ynKd8tpIaQUTBt/FLsLUQGAF3wnuO7F4
	 clilN7rRVCPqJszpWblnzRFq3F9LMannjpSmvgnruw/ALzEryN07eD0z+iTKKOSmok
	 jllSTmFRvrf3mpKFg7BMoC49YxjKfsL8TjZB/5WPfGTO5+2zvPVLsnVmmXiAjAuIPW
	 L/AvAFrrn+Mb0QCMWEXIOQcaJqRjMfMU+3Kzdcc6WReBBkU4IqPM7sHR3zKAM7FEM+
	 VeFnUMrVHX/JmS6NyJOgQG+Io0DyJ/lZYurUd/Z6jiXQZkORLvd7+Fzvmno++kSaSK
	 0qZ0NHK/9JORw==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 cy_huang@richtek.com
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Allen Lin <allen_lin@richtek.com>, 
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <1695872468-24433-1-git-send-email-cy_huang@richtek.com>
References: <1695872468-24433-1-git-send-email-cy_huang@richtek.com>
Subject: Re: [PATCH 0/2] ASoC: codecs: rtq9128: Add TDM input source select
Message-Id: <169591268524.2776105.13245316160946357436.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 16:51:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Thu, 28 Sep 2023 11:41:06 +0800, cy_huang@richtek.com wrote:
> This patch series create a TDM source select property and use it to
> decide which TDM data source is connected.
> 
> Following by the below patch disccuion
> https://lore.kernel.org/lkml/1695780376-32301-1-git-send-email-cy_huang@richtek.com/#t
> It may not be a good choice to add the user controlable mixer control
> item. Since it follows the board design, make it as a device property.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: rtq9128: Add TDM input source slect property
      commit: bf38a0be7c57e43303600b5afc9b740882b3ed87
[2/2] ASoC: codecs: rtq9128: Add TDM input source select
      commit: 54ac512048c98b720a8fbf5899308788dff8def0

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


