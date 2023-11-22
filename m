Return-Path: <devicetree+bounces-17961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 373BC7F48F0
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 15:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5B6228164F
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 14:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A4B24D100;
	Wed, 22 Nov 2023 14:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKGgRVou"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EAF4C3D6
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 14:29:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8380C433C7;
	Wed, 22 Nov 2023 14:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700663365;
	bh=0/z0t2JF8PlcN2JPqmU491oJkQrRrv5Qp/yEPfyB980=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=KKGgRVouTQCir2q60Kx3SSl85QVVMiPQzMZITMRG/7p3zyzRF6deLTUs2NnlGOfst
	 wtypqY9zi6L5Ck2/AictC9PhHrnqlNqVcmjrhGbe2LBjtTlchCJ/soRHQafuIMnkDD
	 GbKhXwRF8avjnWbk4WXX7Yqre9dlszq79bqr0WAYsROi8Gq60gIm/GSSg0LcJVefBM
	 yIOWY2KFWYRCwHwxf22uprpYorRmNB6nBs9tF5LnBp0khl/5P67qAZGWpUQ5HQbVvw
	 KAkdwgCNBwLBUAN3PWVPVyoP4A6a7CA7UgGQrm1sBKqOHSwJ8K6PhUhra7Yu9P3Rvt
	 LOmDCHyX7f/DA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
 linux-imx@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 alsa-devel@alsa-project.org, Chancel Liu <chancel.liu@nxp.com>
In-Reply-To: <20231122101959.30264-1-chancel.liu@nxp.com>
References: <20231122101959.30264-1-chancel.liu@nxp.com>
Subject: Re: (subset) [PATCH v3 0/3] Add audio device nodes for i.MX93
 platform
Message-Id: <170066336159.2181401.18066539425902688042.b4-ty@kernel.org>
Date: Wed, 22 Nov 2023 14:29:21 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 22 Nov 2023 18:19:56 +0800, Chancel Liu wrote:
> changes in v3
> - drop unused compatible string in fsl,mqs.yaml
> 
> changes in v2
> - Move MQS device node under "/" root node
> - Convert fsl,mqs.txt to yaml
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[3/3] ASoC: dt-bindings: fsl,mqs: Convert format to json-schema
      commit: 9996cd782a602f2542e110e2a4035dd6627bd520

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


